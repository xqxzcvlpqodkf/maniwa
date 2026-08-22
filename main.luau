--!nocheck

local LatestCommit = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.github.com/repos/xqxzcvlpqodkf/metamethod/commits/main")).sha
local LoaderUrl = "https://raw.githubusercontent.com/xqxzcvlpqodkf/metamethod/" .. LatestCommit .. "/loader.luau"
local Dependencies = loadstring(game:HttpGet(LoaderUrl))()
local rankFlag = Dependencies["rankFlag"]

local RunService = _G.utility.getService("RunService")
local Players = _G.utility.getService("Players")
local Lighting = _G.utility.getService("Lighting")
local ReplicatedStorage = _G.utility.getService("ReplicatedStorage")
local Workspace = _G.utility.getService("Workspace")
local UserInputService = _G.utility.getService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Delta = ReplicatedStorage:WaitForChild("Delta")
local DeltaFramework = require(Delta:WaitForChild("DeltaFramework"))
local RegionUtil = DeltaFramework:Get("RegionUtil")

local RemoteEvent = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("RemoteEvent")
local GunSettingsFolder = ReplicatedStorage:FindFirstChild("GunSettings")

local ScriptRunning = true

local State = {
    Fullbright = false,
    ESPBoxes = false,
    ESPTracers = false,
    ESPHealthBar = false,
    RoleESP = false,
    KeycardESP = false,
    WeaponESP = false,
    ScpESP = false,
    Spectating = false,
    SpectateTarget = nil,
    NotifyOnChange = false,
    Noclip = false,
    InfJump = false,
    TPWalkEnabled = false,
    TPWalkSpeed = 0.1,
    KillAura = false,
    VisualizeShots = false,
    SilentAim = false,
    SilentAimWallbang = false,
    SilentAimShowFOV = true,
    SilentAimFOVRadius = 150,
    SilentAimFOVDraw = nil,
    TargetPart = "Head",
    HitSound = "CS2",
}

local SCP_LIST = {
    "457", "049", "096", "173", "023", "966",
    "131", "066", "999", "106",
    "939-1", "939-2", "939-3", "939-4"
}

local FOUNDATION_TEAMS = {
    ["Administrative Department"] = true,
    ["Intelligence Agency"] = true,
    ["Internal Security Department"] = true,
    ["Medical Department"] = true,
    ["Mobile Task Force"] = true,
    ["Rapid Response Team"] = true,
    ["Scientific Department"] = true,
    ["Security Department"] = true,
}

local TEAM_FRIENDS = {
    ["Class - D"] = { ["Class - D"] = true, ["Chaos Insurgency"] = true, ["Scientific Department"] = true,},
    ["Chaos Insurgency"] = { ["Class - D"] = true, ["Chaos Insurgency"] = true, ["Scientific Department"] = true,},
    ["Administrative Department"] = FOUNDATION_TEAMS,
    ["Intelligence Agency"] = FOUNDATION_TEAMS,
    ["Internal Security Department"] = FOUNDATION_TEAMS,
    ["Medical Department"] = FOUNDATION_TEAMS,
    ["Mobile Task Force"] = FOUNDATION_TEAMS,
    ["Rapid Response Team"] = FOUNDATION_TEAMS,
    ["Scientific Department"] = FOUNDATION_TEAMS,
    ["Security Department"] = FOUNDATION_TEAMS
}

local DefaultLighting = {
    Ambient = Lighting.Ambient,
    OutdoorAmbient = Lighting.OutdoorAmbient,
    Brightness = Lighting.Brightness,
    ClockTime = Lighting.ClockTime,
    GlobalShadows = Lighting.GlobalShadows,
    FogEnd = Lighting.FogEnd
}

local DrawingESPCache = {}
local ScpCache = {}
local Connections = {}
local PlayerDropdown = nil
local ScpLabels = {}
local ScpStatusCache = {}

local DEFAULT_FIRE_DELAY = 0.15
local LastFireTime = 0
local RaycastParamsObj = RaycastParams.new()
RaycastParamsObj.FilterType = Enum.RaycastFilterType.Exclude
RaycastParamsObj.IgnoreWater = true
RaycastParamsObj.RespectCanCollide = true

local originalNamecall
local reloadFn = nil
local cachedGunTable = nil
local lastGcScan = 0

local function CheckForMod(player)
    if rankFlag(player) then
        Rayfield:Notify({
            Title = "Moderator Detected",
            Content = "A moderator is in the server: " .. player.Name,
            Duration = 20,
            Image = 4483362458
        })
    end
end

local function CreateDrawingESP(player)
    if DrawingESPCache[player] then return end
    
    local esp = {
        BoxOutline = Drawing.new("Square"),
        Box = Drawing.new("Square"),
        HealthBarOutline = Drawing.new("Square"),
        HealthBar = Drawing.new("Square"),
        Name = Drawing.new("Text"),
        Role = Drawing.new("Text"),
        Keycard = Drawing.new("Text"),
        Weapon = Drawing.new("Text"),
        Tracer = Drawing.new("Line")
    }

    esp.BoxOutline.Thickness = 3
    esp.BoxOutline.Color = Color3.fromRGB(0, 0, 0)
    esp.BoxOutline.Filled = false
    esp.BoxOutline.Visible = false

    esp.Box.Thickness = 1
    esp.Box.Filled = false
    esp.Box.Visible = false

    esp.HealthBarOutline.Thickness = 1
    esp.HealthBarOutline.Color = Color3.fromRGB(0, 0, 0)
    esp.HealthBarOutline.Filled = true
    esp.HealthBarOutline.Visible = false

    esp.HealthBar.Thickness = 1
    esp.HealthBar.Filled = true
    esp.HealthBar.Visible = false

    esp.Name.Size = 13
    esp.Name.Center = true
    esp.Name.Outline = true
    esp.Name.Color = Color3.fromRGB(255, 255, 255)
    esp.Name.Visible = false

    esp.Role.Size = 11
    esp.Role.Center = true
    esp.Role.Outline = true
    esp.Role.Visible = false

    esp.Keycard.Size = 11
    esp.Keycard.Center = true
    esp.Keycard.Outline = true
    esp.Keycard.Color = Color3.fromRGB(255, 215, 0)
    esp.Keycard.Visible = false

    esp.Weapon.Size = 11
    esp.Weapon.Center = true
    esp.Weapon.Outline = true
    esp.Weapon.Color = Color3.fromRGB(255, 100, 100)
    esp.Weapon.Visible = false

    esp.Tracer.Thickness = 1.5
    esp.Tracer.Visible = false

    DrawingESPCache[player] = esp
end

local function RemoveDrawingESP(player)
    local esp = DrawingESPCache[player]
    if esp then
        for _, obj in pairs(esp) do
            if obj and obj.Remove then
                obj:Remove()
            end
        end
        DrawingESPCache[player] = nil
    end
end

local function ClearAllDrawingESP()
    for player, _ in pairs(DrawingESPCache) do
        RemoveDrawingESP(player)
    end
    DrawingESPCache = {}
end

local function IsClassDHostile(player)
    local char = player.Character
    if not char then return false end
    if player.Team and player.Team.Name ~= "Class - D" then return false end
    if char:HasTag("EquippedGun") then return true end
    if char:HasTag("Escaped") then return true end
    if char:HasTag("CrossedLine") then
        local authorizer = char:FindFirstChild("Authorizer")

        if not authorizer or not authorizer:IsA("ObjectValue") or not authorizer.Value then
            return true
        end

        return false
    end

    return false
end

local function IsWhitelisted(tP)
    local MyTeam = LocalPlayer.Team and LocalPlayer.Team.Name or "Unknown"
    local TargetTeam = tP.Team and tP.Team.Name or "Unknown"

    if MyTeam == TargetTeam then return true end
    if TEAM_FRIENDS[MyTeam] and TEAM_FRIENDS[MyTeam][TargetTeam] then return true end

    return false
end

local function IsValidTarget(player)
    if player == LocalPlayer then return false end

    local MyTeam = LocalPlayer.Team and LocalPlayer.Team.Name or "Unknown"
    local TargetTeam = player.Team and player.Team.Name or "Unknown"

    if MyTeam == "Class - D" and TargetTeam == "Class - D" then
        return false
    end

    local isHostileClassD = (TargetTeam == "Class - D" and IsClassDHostile(player))

    if IsWhitelisted(player) and not isHostileClassD then
        return false
    end

    return player.Character 
        and player.Character:FindFirstChild("Humanoid")
        and player.Character.Humanoid.Health > 0
        and player.Character:FindFirstChild("HumanoidRootPart")
        and player.Character:FindFirstChild(State.TargetPart)
end

local function GetMuzzlePosition(character, equippedTool)
    if equippedTool then
        local Muzzle = equippedTool:FindFirstChild("Muzzle", true) or equippedTool:FindFirstChild("Handle")
        if Muzzle then return Muzzle.Position end
    end

    local part = character:FindFirstChild(State.TargetPart) or character:FindFirstChild("Head")
    return part.Position
end

local function CheckLineOfSight(origin, targetPos, localChar, targetChar)
    RaycastParamsObj.FilterDescendantsInstances = {localChar, targetChar}
    local Result = workspace:Raycast(origin, targetPos - origin, RaycastParamsObj)
    return Result == nil
end

local function GetClosestPlayerInFOV()
    if not State.SilentAim then return nil, nil end

    local MPOS = UserInputService:GetMouseLocation()
    local ClosestPlayer = nil
    local ShortestDistance = State.SilentAimFOVRadius or 150
    local local_char = LocalPlayer.Character

    local currentCam = workspace.CurrentCamera

    if not currentCam or not currentCam:IsA("Camera") then return nil, nil end

    for _, player in ipairs(Players:GetPlayers()) do
        if IsValidTarget(player) then
            local TargetPart = player.Character and player.Character:FindFirstChild(State.TargetPart)

            if TargetPart then
                local ScreenPos, OnScreen = currentCam.WorldToViewportPoint(currentCam, TargetPart.Position)

                if OnScreen then
                    local Target2DPos = Vector2.new(ScreenPos.X, ScreenPos.Y)
                    local Dist = (MPOS - Target2DPos).Magnitude

                    if Dist < ShortestDistance then
                        if not State.SilentAimWallbang and local_char then
                            local equipped_tool = local_char:FindFirstChildOfClass("Tool")
                            local muzzle_pos = GetMuzzlePosition(local_char, equipped_tool)

                            if not CheckLineOfSight(muzzle_pos, TargetPart.Position, local_char, player.Character) then
                                continue
                            end
                        end

                        ShortestDistance = Dist
                        ClosestPlayer = player
                    end
                end
            end
        end
    end

    return ClosestPlayer, ShortestDistance
end

local function InitializeGunData()
    if cachedGunTable and reloadFn then return true end
    if os.clock() - lastGcScan < 3 then return false end
    lastGcScan = os.clock()

    local gc = getgc(true)
    for i = 1, #gc do
        local obj = gc[i]
        if type(obj) == "function" and islclosure(obj) then
            local info = debug.getinfo(obj)
            if info then
                if info.name == "Reload" and info.numparams == 0 then
                    reloadFn = obj
                    local upvalues = debug.getupvalues(obj)
                    for k = 1, #upvalues do
                        local v = upvalues[k]
                        if type(v) == "table" and rawget(v, "CurrentAmmo") ~= nil then
                            cachedGunTable = v
                            break
                        end
                    end
                elseif info.name == "EquipGun" and not cachedGunTable then
                    local upvalues = debug.getupvalues(obj)
                    for k = 1, #upvalues do
                        local v = upvalues[k]
                        if type(v) == "table" and rawget(v, "CurrentAmmo") ~= nil then
                            cachedGunTable = v
                            break
                        end
                    end
                end
            end
        end
        if reloadFn and cachedGunTable then break end
    end
    
    return (cachedGunTable ~= nil)
end

task.spawn(InitializeGunData)

local function GetCurrentFireDelay(equippedTool)
    if cachedGunTable and type(cachedGunTable) == "table" then
        local rawRate = cachedGunTable.TBS or cachedGunTable.FireRate or cachedGunTable.Cooldown or cachedGunTable.Delay or cachedGunTable.ShotDelay
        if type(rawRate) == "number" and rawRate > 0 then
            return rawRate
        elseif type(cachedGunTable.RPM) == "number" and cachedGunTable.RPM > 0 then
            return 60 / cachedGunTable.RPM
        end
    end

    if equippedTool and GunSettingsFolder then
        local settingModule = GunSettingsFolder:FindFirstChild(equippedTool.Name)
        if settingModule and settingModule:IsA("ModuleScript") then
            local success, configData = pcall(require, settingModule)
            if success and type(configData) == "table" then
                local moduleRate = configData.TBS or configData.FireRate or configData.Cooldown or configData.Delay or configData.ShotDelay
                if type(moduleRate) == "number" and moduleRate > 0 then
                    return moduleRate
                elseif type(configData.RPM) == "number" and configData.RPM > 0 then
                    return 60 / configData.RPM
                end
            end
        end
    end

    return DEFAULT_FIRE_DELAY
end

local TargetDataCache = {}
local CachedRemoteArgs = {
    { {0, 0, 0}, true },
    Vector3.zero,
    nil
}

local function VisualizeShot(fromPos, toPos)
    local distance = (toPos - fromPos).Magnitude
    local tracer = Instance.new("Part")
    tracer.Anchored = true
    tracer.CanCollide = false
    tracer.Size = Vector3.new(0.1, 0.1, distance)
    tracer.CFrame = CFrame.lookAt(fromPos, toPos) * CFrame.new(0, 0, -distance / 2)
    tracer.Color = Color3.fromRGB(255, 255, 255)
    tracer.Material = Enum.Material.Neon
    tracer.Parent = Workspace
    
    task.delay(0.25, function()
        if tracer then tracer:Destroy() end
    end)
end

originalNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    
    if not checkcaller() and method == "FireServer" and self == RemoteEvent then
        local target, dist = GetClosestPlayerInFOV()

        if target then
            local localChar = LocalPlayer.Character
            
            if not localChar then 
                setnamecallmethod(method)
                return originalNamecall(self, ...) 
            end

            local EquippedTool = localChar:FindFirstChildOfClass("Tool")
            local MuzzlePos = GetMuzzlePosition(localChar, EquippedTool)
            local TheirPart = target.Character and target.Character:FindFirstChild(State.TargetPart)

            if not TheirPart or not MuzzlePos then
                setnamecallmethod(method)
                return originalNamecall(self, ...)
            end

            local args = {...}
            
            if type(args[1]) == "table" and type(args[1][1]) == "table" then
                local isPierce = args[1][1][4]
                if isPierce == nil then isPierce = true end

                args[1][1] = {
                    TheirPart.Position.X,
                    TheirPart.Position.Y,
                    TheirPart.Position.Z,
                    isPierce
                }
            end

            args[2] = MuzzlePos
            args[3] = TheirPart

            if State.VisualizeShots then
                VisualizeShot(MuzzlePos, TheirPart.Position)
            end
            
            print("Damaged somebody!")
            -- ADD HIT SOUND PLAY LOGIC HERE

            setnamecallmethod(method)
            return originalNamecall(self, unpack(args))
        end

        setnamecallmethod(method)
    end
    
    return originalNamecall(self, ...)
end)

local function GetClosestVisibleTarget(localChar, equippedTool)
    local LocalHead = localChar:FindFirstChild("Head")
    if not LocalHead then return nil, nil end

    local LocalPos = LocalHead.Position
    local ClosestPlayer = nil
    local ClosestDistance = math.huge
    local players = Players:GetPlayers()

    for i = 1, #players do
        local TargetPlayer = players[i]
        if TargetPlayer == LocalPlayer then continue end

        local targetTeam = TargetPlayer.Team and TargetPlayer.Team.Name or "Unknown"
        local myTeam = LocalPlayer.Team and LocalPlayer.Team.Name or "Unknown"

        if myTeam == "Class - D" and targetTeam == "Class - D" then continue end

        if targetTeam == "Class - D" then
            if not IsClassDHostile(TargetPlayer) then continue end
        else
            if IsWhitelisted(TargetPlayer) then continue end
        end

        local TargetChar = TargetPlayer.Character
        local TargetPart = TargetChar and TargetChar:FindFirstChild(State.TargetPart)
        local TargetHumanoid = TargetChar and TargetChar:FindFirstChildOfClass("Humanoid")

        if TargetPart and TargetHumanoid and TargetHumanoid.Health > 0 then
            local TargetPos = TargetPart.Position
            local Distance = (TargetPos - LocalPos).Magnitude

            if Distance < ClosestDistance then
                local MuzzlePos = GetMuzzlePosition(localChar, equippedTool)
                local MyLook = LocalHead.CFrame.LookVector
                local TargetLook = TargetPart.CFrame.LookVector
                local DirToTarget = (TargetPos - LocalPos).Unit
                local DirToMe = -DirToTarget

                local ICanSee = MyLook:Dot(DirToTarget) > 0
                local TheyCanSee = TargetLook:Dot(DirToMe) > 0

                if (ICanSee or TheyCanSee or Distance <= 50) then
                    if CheckLineOfSight(MuzzlePos, TargetPos, localChar, TargetChar) then
                        ClosestDistance = Distance
                        ClosestPlayer = TargetPlayer
                        
                        TargetDataCache.hitPart = TargetPart
                        TargetDataCache.hitPos = TargetPos
                        TargetDataCache.muzzlePos = MuzzlePos
                    end
                end
            end
        end
    end

    return ClosestPlayer, (ClosestPlayer and TargetDataCache or nil)
end

local function GetServerRegion()
    local attrRegion = ReplicatedStorage:GetAttribute("Region")
    return attrRegion and tostring(attrRegion) or "Unknown"
end

local function GetKeycardLevel(player)
    if not player.Character then return "None" end
    local bestCard = "None"
    local cardRanks = {
        ["L1 Keycard"] = 1, ["L2 Keycard"] = 2, ["L3 Keycard"] = 3,
        ["L4 Keycard"] = 4, ["O5 Keycard"] = 5
    }

    local function CheckContainer(container)
        for _, item in ipairs(container:GetChildren()) do
            if item:IsA("Tool") then
                for cardName, rank in pairs(cardRanks) do
                    if string.find(item.Name, cardName) then
                        if rank > (cardRanks[bestCard] or 0) then bestCard = cardName end
                    end
                end
            end
        end
    end

    CheckContainer(player.Character)
    local backpack = player:FindFirstChildOfClass("Backpack")
    if backpack then CheckContainer(backpack) end
    return bestCard
end

local function GetEquippedWeapon(player)
    if not player.Character then return "None" end

    for _, item in ipairs(player.Character:GetChildren()) do
        if item:IsA("Tool") then
            if item:GetAttribute("LastReload") ~= nil or item:FindFirstChild("Ammo") or item:FindFirstChild("CurrentAmmo") then
                return item.Name
            end
        end
    end

    return "None"
end

local function GetPlayerNamesList()
    local names = {}

    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then table.insert(names, plr.Name) end
    end

    if #names == 0 then table.insert(names, "None") end
    return names
end

local function SetCharacterAnchored(anchored)
    if LocalPlayer.Character then
        local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if hrp then hrp.Anchored = anchored end
    end
end

local function StopSpectating()
    State.Spectating = false

    if LocalPlayer.Character then
        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        Camera.CameraSubject = humanoid or LocalPlayer.Character
    end

    Camera.CameraType = Enum.CameraType.Custom
    task.delay(0.5, function() SetCharacterAnchored(false) end)
end

local function StartSpectating(targetName)
    if not targetName or targetName == "None" then return end
    local targetPlayer = Players:FindFirstChild(targetName)
    if not targetPlayer or targetPlayer == LocalPlayer then return end

    local character = targetPlayer.Character
    if not character then return end

    local targetPart = character:FindFirstChild("Head") or character:FindFirstChild("HumanoidRootPart")
    if not targetPart then return end

    SetCharacterAnchored(true)
    State.Spectating = true
    Camera.CameraType = Enum.CameraType.Custom
    Camera.CameraSubject = targetPart
end

local function ClearScpESP()
    for model, hl in pairs(ScpCache) do
        if hl then hl:Destroy() end
    end
    ScpCache = {}
end

local function UpdateScpESP()
    if not State.ScpESP then
        if next(ScpCache) then ClearScpESP() end
        return
    end

    local scpFolder = Workspace:FindFirstChild("SCPs")
    if not scpFolder then ClearScpESP() return end

    local currentModels = {}
    for _, obj in ipairs(scpFolder:GetChildren()) do
        if obj:IsA("Model") and obj.Name ~= "SCP-938" and obj.Name ~= "SCP-087" then
            currentModels[obj] = true
            if not ScpCache[obj] or not ScpCache[obj].Parent then
                local hl = Instance.new("Highlight")
                hl.Name = "SCPHighlight"
                hl.FillColor = Color3.fromRGB(255, 50, 50)
                hl.OutlineColor = Color3.fromRGB(255, 255, 255)
                hl.FillTransparency = 0.6
                hl.OutlineTransparency = 0.1
                hl.Adornee = obj
                hl.Parent = obj
                ScpCache[obj] = hl
            end
        end
    end

    for obj, hl in pairs(ScpCache) do
        if not currentModels[obj] then
            if hl then hl:Destroy() end
            ScpCache[obj] = nil
        end
    end
end

local function RenderDrawingESP()
    for _, player in ipairs(Players:GetPlayers()) do
        if player == LocalPlayer then
            RemoveDrawingESP(player)
            continue
        end

        local char = player.Character
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local head = char and char:FindFirstChild("Head")

        if not (char and hum and hrp and head and hum.Health > 0) then
            if DrawingESPCache[player] then
                for _, obj in pairs(DrawingESPCache[player]) do
                    obj.Visible = false
                end
            end
            continue
        end

        local hrpPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)

        if not onScreen then
            if DrawingESPCache[player] then
                for _, obj in pairs(DrawingESPCache[player]) do
                    obj.Visible = false
                end
            end
            continue
        end

        CreateDrawingESP(player)
        local esp = DrawingESPCache[player]

        local teamColor = player.TeamColor and player.TeamColor.Color or Color3.fromRGB(0, 170, 255)

        local headPos = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 0.5, 0))
        local legPos = Camera:WorldToViewportPoint(hrp.Position - Vector3.new(0, 3, 0))

        local boxHeight = math.abs(headPos.Y - legPos.Y)
        local boxWidth = boxHeight * 0.65
        local boxPos = Vector2.new(hrpPos.X - boxWidth / 2, headPos.Y)

        local showName = State.ESPBoxes or State.ESPTracers or State.ESPHealthBar or State.RoleESP or State.KeycardESP or State.WeaponESP

        esp.BoxOutline.Size = Vector2.new(boxWidth, boxHeight)
        esp.BoxOutline.Position = boxPos
        esp.BoxOutline.Visible = State.ESPBoxes

        esp.Box.Size = Vector2.new(boxWidth, boxHeight)
        esp.Box.Position = boxPos
        esp.Box.Color = teamColor
        esp.Box.Visible = State.ESPBoxes

        local maxHealth = hum.MaxHealth > 0 and hum.MaxHealth or 100
        local healthPercent = math.clamp(hum.Health / maxHealth, 0, 1)
        local barHeight = boxHeight * healthPercent
        local barPos = Vector2.new(boxPos.X - 6, boxPos.Y + (boxHeight - barHeight))

        esp.HealthBarOutline.Size = Vector2.new(4, boxHeight + 2)
        esp.HealthBarOutline.Position = Vector2.new(boxPos.X - 7, boxPos.Y - 1)
        esp.HealthBarOutline.Visible = State.ESPHealthBar

        esp.HealthBar.Size = Vector2.new(2, barHeight)
        esp.HealthBar.Position = barPos
        esp.HealthBar.Color = Color3.fromRGB(255, 0, 0):Lerp(Color3.fromRGB(0, 255, 0), healthPercent)
        esp.HealthBar.Visible = State.ESPHealthBar

        esp.Name.Text = player.Name
        esp.Name.Position = Vector2.new(boxPos.X + boxWidth / 2, boxPos.Y - 16)
        esp.Name.Visible = showName

        local textOffset = 0

        esp.Role.Visible = State.RoleESP
        if State.RoleESP then
            esp.Role.Text = player.Team and string.upper(player.Team.Name) or "NO TEAM"
            esp.Role.Color = teamColor
            esp.Role.Position = Vector2.new(boxPos.X + boxWidth / 2, boxPos.Y + boxHeight + textOffset)
            textOffset = textOffset + 12
        end

        esp.Keycard.Visible = State.KeycardESP
        if State.KeycardESP then
            esp.Keycard.Text = string.upper(GetKeycardLevel(player))
            esp.Keycard.Position = Vector2.new(boxPos.X + boxWidth / 2, boxPos.Y + boxHeight + textOffset)
            textOffset = textOffset + 12
        end

        esp.Weapon.Visible = State.WeaponESP
        if State.WeaponESP then
            esp.Weapon.Text = string.upper(GetEquippedWeapon(player))
            esp.Weapon.Position = Vector2.new(boxPos.X + boxWidth / 2, boxPos.Y + boxHeight + textOffset)
            textOffset = textOffset + 12
        end

        esp.Tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
        esp.Tracer.To = Vector2.new(hrpPos.X, hrpPos.Y)
        esp.Tracer.Color = teamColor
        esp.Tracer.Visible = State.ESPTracers
    end
end

local function GetScpPosition(scpId)
    local scpFolder = Workspace:FindFirstChild("SCPs")
    if not scpFolder then return nil end

    local model = scpFolder:FindFirstChild("SCP-" .. scpId)
    if not model then return nil end

    if scpId == "096" then
        local scpPart = model:FindFirstChild("096")
        if scpPart then return scpPart.Position end
    elseif scpId == "131" then
        local red = model:FindFirstChild("Red")
        local yellow = model:FindFirstChild("Yellow")
        if red and yellow and red:FindFirstChild("HumanoidRootPart") then return red.HumanoidRootPart.Position end
    elseif scpId == "066" then
        local body = model:FindFirstChild("Body")
        if body then return body.Position end
    elseif scpId == "106" or scpId:sub(1,3) == "939" then
        local root = model:FindFirstChild("RootPart") or model:FindFirstChild("HumanoidRootPart")
        if root then return root.Position end
    else
        local hrp = model:FindFirstChild("HumanoidRootPart")
        if hrp then return hrp.Position end
    end

    return nil
end

local function CheckScpStatuses()
    for _, scpId in ipairs(SCP_LIST) do
        local pos = GetScpPosition(scpId)
        local statusText = "UNKNOWN"

        if not pos then
            statusText = "Not Spawned"
        else
            local isStrict = RegionUtil:IsInSCPCC(pos, scpId, true)
            statusText = isStrict and "Contained" or "Breached"
        end

        local oldStatus = ScpStatusCache[scpId]
        if oldStatus and oldStatus ~= statusText and State.NotifyOnChange then
            Rayfield:Notify({
                Title = "SCP Status Update",
                Content = "SCP-" .. scpId .. " is now " .. statusText,
                Duration = 4,
                Image = 4483362458
            })
        end
        ScpStatusCache[scpId] = statusText
        if ScpLabels[scpId] then
            ScpLabels[scpId]:Set({ Title = "SCP-" .. scpId, Content = "Status: " .. statusText })
        end
    end
end

local function UnloadScript()
    ScriptRunning = false

    for key in pairs(State) do
        if typeof(State[key]) == "boolean" then
            State[key] = false
        end
    end

    for _, conn in ipairs(Connections) do
        if conn and conn.Connected then conn:Disconnect() end
    end
    Connections = {}

    if State.Spectating then StopSpectating() end
    if State.SilentAimFOVDraw then
        State.SilentAimFOVDraw:Remove()
        State.SilentAimFOVDraw = nil
    end

    ClearAllDrawingESP()
    ClearScpESP()

    if LocalPlayer.Character then
        for _, part in ipairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = true
            end
        end
    end

    Lighting.Ambient = DefaultLighting.Ambient
    Lighting.OutdoorAmbient = DefaultLighting.OutdoorAmbient
    Lighting.Brightness = DefaultLighting.Brightness
    Lighting.ClockTime = DefaultLighting.ClockTime
    Lighting.GlobalShadows = DefaultLighting.GlobalShadows
    Lighting.FogEnd = DefaultLighting.FogEnd

    Rayfield:Destroy()
end

local Window = Rayfield:CreateWindow({
    Name = "SCP | Roleplay",
    Icon = 0,
    LoadingTitle = "Utility Script",
    LoadingSubtitle = "by Assistant",
    Theme = "Default",
    Width = 650,
    Height = 600,
    ConfigurationSaving = { Enabled = false },
    Discord = { Enabled = false },
    KeySystem = false
})

local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateParagraph({ Title = "Server Information", Content = "Current region: " .. GetServerRegion() })

MainTab:CreateSection("Movement")
MainTab:CreateToggle({ 
    Name = "Noclip", 
    CurrentValue = false, 
    Flag = "NoclipToggle", 
    Callback = function(Value) 
        State.Noclip = Value 
        if not Value and LocalPlayer.Character then
            for _, part in ipairs(LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = true
                end
            end
        end
    end 
})
MainTab:CreateToggle({ Name = "Infinite Jump", CurrentValue = false, Flag = "InfJumpToggle", Callback = function(Value) State.InfJump = Value end })
MainTab:CreateToggle({ Name = "TP Walk", CurrentValue = false, Flag = "TPWalkToggle", Callback = function(Value) State.TPWalkEnabled = Value end })
MainTab:CreateSlider({
    Name = "TP Walk Speed", Range = {0.1, 1}, Increment = 0.05, Suffix = "Multiplier", CurrentValue = 0.1, Flag = "TPWalkSlider", Callback = function(Value) State.TPWalkSpeed = Value end
})

local VisualsTab = Window:CreateTab("Visuals", 4483362458)
VisualsTab:CreateSection("World & Lighting")
VisualsTab:CreateToggle({
    Name = "Fullbright", CurrentValue = false, Flag = "FullbrightToggle",
    Callback = function(Value)
        State.Fullbright = Value
        if not Value then
            Lighting.Ambient = DefaultLighting.Ambient
            Lighting.OutdoorAmbient = DefaultLighting.OutdoorAmbient
            Lighting.Brightness = DefaultLighting.Brightness
            Lighting.ClockTime = DefaultLighting.ClockTime
            Lighting.GlobalShadows = DefaultLighting.GlobalShadows
            Lighting.FogEnd = DefaultLighting.FogEnd
        end
    end,
})

VisualsTab:CreateSection("ESP Visuals")
VisualsTab:CreateToggle({ Name = "ESP Boxes", CurrentValue = false, Flag = "ESPBoxesToggle", Callback = function(Value) State.ESPBoxes = Value end })
VisualsTab:CreateToggle({ Name = "ESP Tracers", CurrentValue = false, Flag = "ESPTracersToggle", Callback = function(Value) State.ESPTracers = Value end })
VisualsTab:CreateToggle({ Name = "ESP Health Bar", CurrentValue = false, Flag = "ESPHealthBarToggle", Callback = function(Value) State.ESPHealthBar = Value end })
VisualsTab:CreateToggle({ Name = "Role Text ESP", CurrentValue = false, Flag = "RoleESPToggle", Callback = function(Value) State.RoleESP = Value end })
VisualsTab:CreateToggle({ Name = "Keycard Level ESP", CurrentValue = false, Flag = "KeycardESPToggle", Callback = function(Value) State.KeycardESP = Value end })
VisualsTab:CreateToggle({ Name = "Equipped Weapon ESP", CurrentValue = false, Flag = "WeaponESPToggle", Callback = function(Value) State.WeaponESP = Value end })
VisualsTab:CreateToggle({ Name = "SCP Entities ESP", CurrentValue = false, Flag = "ScpESPToggle", Callback = function(Value) State.ScpESP = Value; if not Value then ClearScpESP() end end })

VisualsTab:CreateSection("Camera & Spectate")
PlayerDropdown = VisualsTab:CreateDropdown({
    Name = "Select Target", Options = GetPlayerNamesList(), CurrentOption = { GetPlayerNamesList()[1] }, MultipleOptions = false, Flag = "SpectatePlayerDropdown",
    Callback = function(Option)
        local selectedName = typeof(Option) == "table" and Option[1] or Option
        State.SpectateTarget = selectedName
        if State.Spectating then StartSpectating(selectedName) end
    end,
})
VisualsTab:CreateToggle({
    Name = "Spectate Target", CurrentValue = false, Flag = "SpectateToggle",
    Callback = function(Value)
        if Value and State.SpectateTarget then StartSpectating(State.SpectateTarget) else StopSpectating() end
    end,
})

local CombatTab = Window:CreateTab("Combat", 4483362458)
CombatTab:CreateSection("Targeting Settings")
CombatTab:CreateDropdown({
    Name = "Target Hit Part", 
    Options = {"Head", "HumanoidRootPart", "LowerTorso"}, 
    CurrentOption = {"Head"}, 
    MultipleOptions = false, 
    Flag = "HitPartDropdown",
    Callback = function(Option)
        local selected = typeof(Option) == "table" and Option[1] or Option
        State.TargetPart = selected
    end,
})

CombatTab:CreateDropdown({
    Name = "Hit Sound",
    Options = {"CS2", "CS2 Variant", "Neverlose", "Rust", "Skeet"},
    CurrentOption = {"CS2"},
    MultipleOptions = false,
    Flag = "HitSoundDropdown",
    Callback = function(Option)
        local selected = typeof(Option) == "table" and Option[1] or Option
        State.HitSound = selected
    end,
})

CombatTab:CreateToggle({ Name = "Kill Aura", CurrentValue = false, Flag = "KillAuraToggle", Callback = function(Value) State.KillAura = Value end })
CombatTab:CreateToggle({ Name = "Visualize Shots", CurrentValue = false, Flag = "VisualizeShotsToggle", Callback = function(Value) State.VisualizeShots = Value end })

CombatTab:CreateDivider()

CombatTab:CreateToggle({ Name = "Silent Aim", CurrentValue = false, Flag = "SilentAimToggle", Callback = function(Value) State.SilentAim = Value end})
CombatTab:CreateToggle({ Name = "Wallbang", CurrentValue = false, Flag = "WallbangToggle", Callback = function(Value) State.SilentAimWallbang = Value end})

CombatTab:CreateToggle({ Name = "Show FOV", CurrentValue = true, Flag = "ShowFOVToggle", Callback = function(Value) State.SilentAimShowFOV = Value end})

CombatTab:CreateSlider({
    Name = "FOV Size", 
    Range = {30, 800}, 
    Increment = 1, 
    Suffix = "px", 
    CurrentValue = 150, 
    Flag = "FOVRadiusSlider", 
    Callback = function(Value) 
        State.SilentAimFOVRadius = Value
    end
})

local ScpsTab = Window:CreateTab("SCPs", 4483362458)
ScpsTab:CreateSection("Notifications")
ScpsTab:CreateToggle({ Name = "Notification On Change", CurrentValue = false, Flag = "NotifyOnChangeToggle", Callback = function(Value) State.NotifyOnChange = Value end })

ScpsTab:CreateSection("Entity Status Tracker")

for _, scpId in ipairs(SCP_LIST) do
    ScpLabels[scpId] = ScpsTab:CreateParagraph({ Title = "SCP-" .. scpId, Content = "Status: CHECKING..." })
end

local OthersTab = Window:CreateTab("Settings", 4483362458)
OthersTab:CreateSection("Script Management")
OthersTab:CreateButton({ Name = "Unload Script", Callback = function() UnloadScript() end })

table.insert(Connections, RunService.Heartbeat:Connect(function()
    if not State.KillAura then return end

    local LocalChar = LocalPlayer.Character
    
    if not LocalChar then return end

    local EquippedTool = LocalChar:FindFirstChildOfClass("Tool")

    if not EquippedTool then return end

    if not cachedGunTable then
        InitializeGunData()
    end

    local CurrentTime = os.clock()
    local FireDelay = GetCurrentFireDelay(EquippedTool)
    
    if CurrentTime - LastFireTime < FireDelay then return end

    local TargetPlayer, Data = GetClosestVisibleTarget(LocalChar, EquippedTool)

    if Data and TargetPlayer then
        if cachedGunTable and type(cachedGunTable.CurrentAmmo) == "number" then
            if cachedGunTable.CurrentAmmo <= 0 then return end
            
            cachedGunTable.CurrentAmmo = math.max(0, cachedGunTable.CurrentAmmo - 1)
            
            local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")

            if playerGui then
                local weaponUI = playerGui:FindFirstChild("WeaponUI", true) or playerGui:FindFirstChild("Main", true)

                if weaponUI and weaponUI:FindFirstChild("Clip") then
                    local ammoStr = tostring(math.floor(cachedGunTable.CurrentAmmo))
                    weaponUI.Clip.Text = ammoStr

                    if weaponUI.Clip:FindFirstChild("Back") then
                        weaponUI.Clip.Back.Text = ammoStr
                    end
                end
            end
        end

        LastFireTime = CurrentTime

        CachedRemoteArgs[1][1][1] = Data.hitPos.X
        CachedRemoteArgs[1][1][2] = Data.hitPos.Y
        CachedRemoteArgs[1][1][3] = Data.hitPos.Z
        CachedRemoteArgs[2] = Data.muzzlePos
        CachedRemoteArgs[3] = Data.hitPart

        RemoteEvent:FireServer(unpack(CachedRemoteArgs))

        print("Damaged somebody!")
        -- ADD HIT SOUND PLAY LOGIC HERE

        if State.VisualizeShots then
            VisualizeShot(Data.muzzlePos, Data.hitPos)
        end
    end
end))

table.insert(Connections, UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Space and State.InfJump and LocalPlayer.Character then
        local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        
        if hrp and humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            
            local jumpVel = 50
            if humanoid.UseJumpPower then
                jumpVel = humanoid.JumpPower > 0 and humanoid.JumpPower or 50
            else
                local gravity = workspace.Gravity
                local jumpHeight = humanoid.JumpHeight > 0 and humanoid.JumpHeight or 7.2
                jumpVel = math.sqrt(2 * gravity * jumpHeight)
            end

            local currentVel = hrp.AssemblyLinearVelocity
            hrp.AssemblyLinearVelocity = Vector3.new(currentVel.X, jumpVel, currentVel.Z)
        end
    end
end))

table.insert(Connections, RunService.RenderStepped:Connect(function()
    RenderDrawingESP()

    if State.Fullbright then
        Lighting.Ambient = Color3.fromRGB(255, 255, 255)
        Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        Lighting.Brightness = 2
        Lighting.ClockTime = 14
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 1e5
    end

    if LocalPlayer.Character then
        local humanoid = LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        local hrp = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

        if hrp and humanoid and State.TPWalkEnabled and humanoid.MoveDirection.Magnitude > 0 then
            hrp.CFrame = hrp.CFrame + (humanoid.MoveDirection * State.TPWalkSpeed)
        end
    end

    if State.Spectating and State.SpectateTarget then
        local targetPlayer = Players:FindFirstChild(State.SpectateTarget)

        if targetPlayer and targetPlayer.Character then
            local targetPart = targetPlayer.Character:FindFirstChild("Head") or targetPlayer.Character:FindFirstChild("HumanoidRootPart")
            if targetPart and Camera.CameraSubject ~= targetPart then Camera.CameraSubject = targetPart end
        end
    end

    if State.SilentAimShowFOV then
        if not State.SilentAimFOVDraw then
            local NewCircle = Drawing.new("Circle")
            NewCircle.Radius = State.SilentAimFOVRadius or 150
            NewCircle.Thickness = 1.5
            NewCircle.Color = Color3.fromRGB(255, 255, 255)
            NewCircle.Transparency = 1
            NewCircle.Filled = false
            NewCircle.Visible = true
            State.SilentAimFOVDraw = NewCircle
        else
            State.SilentAimFOVDraw.Visible = true
            if State.SilentAimFOVDraw.Radius ~= State.SilentAimFOVRadius then
                State.SilentAimFOVDraw.Radius = State.SilentAimFOVRadius
            end
            State.SilentAimFOVDraw.Position = UserInputService:GetMouseLocation()
        end
    else
        if State.SilentAimFOVDraw then
            State.SilentAimFOVDraw:Remove()
            State.SilentAimFOVDraw = nil
        end
    end
end))

task.spawn(function()
    while ScriptRunning do
        task.wait(1)
        pcall(CheckScpStatuses)
    end
end)

local function RefreshPlayerList()
    if PlayerDropdown then PlayerDropdown:Refresh(GetPlayerNamesList()) end
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        task.spawn(CheckForMod, player)
    end
end

table.insert(Connections, Players.PlayerAdded:Connect(function(player)
    RefreshPlayerList()
    task.spawn(CheckForMod, player)
end))

table.insert(Connections, Players.PlayerRemoving:Connect(function(player)
    RemoveDrawingESP(player)
    RefreshPlayerList()
    
    if State.Spectating and State.SpectateTarget == player.Name then 
        StopSpectating() 
    end

    task.spawn(function()
        if rankFlag(player) then
            Rayfield:Notify({
                Title = "Moderator Left",
                Content = "A moderator has left the server: " .. player.Name,
                Duration = 20,
                Image = 4483362458
            })
        end
    end)
end))

table.insert(Connections, RunService.Stepped:Connect(function()
    if State.Noclip and LocalPlayer.Character then
        for _, part in ipairs(LocalPlayer.Character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end
end))

task.spawn(function()
    while ScriptRunning do
        task.wait(0.5)
        UpdateScpESP()

        if not cachedGunTable then
            InitializeGunData()
        end

        if cachedGunTable and cachedGunTable.Obj and reloadFn then
            local currentAmmo = cachedGunTable.CurrentAmmo
            local reserveAmmo = cachedGunTable.Ammo

            if type(currentAmmo) == "number" and type(reserveAmmo) == "number" then
                if currentAmmo == 0 and reserveAmmo > 0 then
                    local upvalues = debug.getupvalues(reloadFn)

                    for i = 1, #upvalues do
                        if type(upvalues[i]) == "boolean" and upvalues[i] == true then
                            debug.setupvalue(reloadFn, i, false)
                        end
                    end

                    if cachedGunTable.Reload and cachedGunTable.Reload < 1.25 then
                        cachedGunTable.Reload = 2.25
                    end
                    
                    local success, err = pcall(reloadFn)
                    if success then
                        local reloadDelay = (cachedGunTable.Pistol and 1.25 or 2.25) + 0.3
                        task.wait(reloadDelay)
                    else
                        warn("Reload execution error:", err)
                    end
                end
            end
        end
    end
end)
--!nocheck

-- Script Path: game:GetService("Players")["1IllIlIIIIlIIlllIllI"].PlayerScripts.Extras
-- 0.42s for decompilation.
-- Executor: 67 (2.6.7)

local Tagged, u1711, u1714, u1740, u1755, u283, u46, u48, u49, u50, u51, u57, u59
local v1 = game:GetService("ReplicatedStorage")
v1 = v1:WaitForChild("Delta")
local DeltaFramework = require(v1:WaitForChild("DeltaFramework"))
v1 = DeltaFramework:Get("Networking")
local Remotes = DeltaFramework.ReplicatedStorage:WaitForChild("Remotes")
local v2 = v1:Retrieve("Remotes/UpdateReplicationU")
v2:Callback(function(p1, p2) -- Line: 9 -- upvalues: DeltaFramework (val)
    local v1, v2, v3
    if not p1 then
        return
    end
    local ClassName = p1.ClassName
    if ClassName == "Attachment" then
        local TweenService = DeltaFramework.TweenService
        v1 = TweenInfo.new(1)
        v2 = {}
        if p2 ~= true then
            v3 = CFrame.new(0, 0.2, 0) * p2
        else
            v3 = CFrame.new(0, 0.2, 0)
            if not v3 then
                v3 = CFrame.new(0, 0.2, 0) * p2
            end
        end
        v2.CFrame = v3
        TweenService:Create(p1, v1, v2):Play()
        return
    end
    if ClassName == "Motor6D" then
        local TweenService_2 = DeltaFramework.TweenService
        v1 = TweenInfo.new(1)
        v2 = {}
        if p2 ~= true then
            v3 = CFrame.new(-5.96046448e-08, -0.799985707, 1.1920929e-07) * p2
        else
            v3 = CFrame.new(-5.96046448e-08, -0.799985707, 1.1920929e-07)
            if not v3 then
                v3 = CFrame.new(-5.96046448e-08, -0.799985707, 1.1920929e-07) * p2
            end
        end
        v2.C1 = v3
        TweenService_2:Create(p1, v1, v2):Play()
        return
    end
    local TweenService_3 = DeltaFramework.TweenService
    v1 = TweenInfo.new(0.5)
    v2 = {}
    if p2 ~= true then
        v3 = CFrame.new(p1.C0.p) * p2
    else
        v3 = CFrame.new(-5.96046448e-08, -0.799985707, 1.1920929e-07)
        if not v3 then
            v3 = CFrame.new(p1.C0.p) * p2
        end
    end
    v2.C0 = v3
    TweenService_3:Create(p1, v1, v2):Play()
end)
u1711, u1714 = DeltaFramework:Get("Utility", "RegionUtil")
u46, u1740, u48, u49, u50, u51 = DeltaFramework:Get("KillEffects", "SitePolicies", "GetSetting", "IsRK", "HasWeapon", "HasTool")
u57, u1755, u59 = DeltaFramework:Get("Animations", "Clipboard", "GetHumanoid")
local u63 = DeltaFramework:Get("Minimap")
local Alarms = DeltaFramework.ReplicatedStorage:WaitForChild("Alarms")
local TVsHacked = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local WDB = DeltaFramework.ReplicatedStorage:WaitForChild("WDB")
local Breach076 = DeltaFramework.ReplicatedStorage:WaitForChild("Breach076")
local Breach682 = DeltaFramework.ReplicatedStorage:WaitForChild("Breach682")
local Mode = DeltaFramework.ReplicatedStorage:WaitForChild("Mode")
local v3 = Remotes:WaitForChild("MiscEffects")
Remotes:WaitForChild("Squads")
local SCPTesting = Remotes:WaitForChild("SCPTesting")
local Generic = Remotes:WaitForChild("Generic")
local v4 = Remotes:WaitForChild("ToggleUI")
local Interact = Remotes:WaitForChild("Interact")
local v5 = v1:Retrieve("Event")
local Camera = Remotes:WaitForChild("Camera")
DeltaFramework.ReplicatedStorage:WaitForChild("GunSettings")
local Lighting = DeltaFramework.ReplicatedStorage.Lighting
local Sky = DeltaFramework.Lighting:WaitForChild("Sky")
local u141 = Lighting:WaitForChild("SCP-106 Dimension Atmosphere")
local u145 = Lighting:WaitForChild("SCP-093 Dimension Atmosphere")
local u149 = Lighting:WaitForChild("SCP-093 Dimension Sky")
local u153 = Lighting:WaitForChild("SCP-002 Atmosphere")
local u157 = Lighting:WaitForChild("SCP-002 Sky")
local Menu = DeltaFramework.PlayerGui:WaitForChild("Menu", 999999999)
local ControllerControls = Menu:WaitForChild("ControllerControls")
local v6 = ControllerControls:WaitForChild("ContentInGame"):WaitForChild("Control3")
local Label = v6:WaitForChild("Label")
local u180 = false
local u181 = nil
local u182 = nil
local u183 = nil
local u184 = nil
local u189 = Color3.new(1, 0, 0)
local u194 = Color3.fromRGB(102, 55, 55)
local u199 = Color3.fromRGB(148, 148, 148)
local u200 = {}
local u201 = nil
shared.CanQueueLinePrompt = true
local function UpdateRiotAlarms() -- Line: 80 -- upvalues: u182 (ref), DeltaFramework (val), u181 (ref)
    local PrimaryPart
    if u182 then
        return
    end
    u182 = true
    task.wait(2.5)
    local Tagged = DeltaFramework.CS:GetTagged("RiotAlarm")
    local v1 = {}
    local v2 = Tagged
    if not v2 then
        v2 = {}
    end
    for i, v in ipairs(v2) do
        PrimaryPart = v.PrimaryPart
        if PrimaryPart then
            table.insert(v1, {PrimaryPart, PrimaryPart.Position})
        end
    end
    u181 = v1
    u182 = nil
end
local v7 = DeltaFramework.CS:GetInstanceAddedSignal("RiotAlarm")
v7:Connect(UpdateRiotAlarms)
v7 = DeltaFramework.CS:GetInstanceRemovedSignal("RiotAlarm")
v7:Connect(UpdateRiotAlarms)
task.spawn(UpdateRiotAlarms)
function v7() -- Line: 108 -- upvalues: u184 (ref), u183 (ref), DeltaFramework (val)
    if u184 then
        return
    end
    u184 = true
    task.wait(2.5)
    u183 = DeltaFramework.CS:GetTagged("AutoDoor")
    u184 = nil
end
local v8 = DeltaFramework.CS:GetInstanceAddedSignal("AutoDoor")
v8:Connect(v7)
v8 = DeltaFramework.CS:GetInstanceRemovedSignal("AutoDoor")
v8:Connect(v7)
task.spawn(v7)
Tagged = DeltaFramework.CS:GetTagged("BroadcastTV")
local u253 = nil
local function v9() -- Line: 128 -- upvalues: u253 (ref), Tagged (ref), DeltaFramework (val)
    if u253 then
        return
    end
    u253 = true
    task.wait(2.5)
    Tagged = DeltaFramework.CS:GetTagged("BroadcastTV")
    u253 = nil
end
local v10 = DeltaFramework.CS:GetInstanceAddedSignal("BroadcastTV")
v10:Connect(v9)
v10 = DeltaFramework.CS:GetInstanceRemovedSignal("BroadcastTV")
v10:Connect(v9)
task.spawn(v9)
if workspace:GetAttribute("ServerHost") or 0 ~= 0 then
    u283 = true
    local v11 = workspace:GetAttributeChangedSignal("ServerHost")
    v11:Connect(function() -- Line: 147 -- upvalues: u283 (ref)
        local v1
        if workspace:GetAttribute("ServerHost") or 0 ~= 0 then
            v1 = true
        else
            v1 = false
        end
        u283 = v1
    end)
    local u299 = DeltaFramework.ReplicatedStorage:WaitForChild("002 HALLWAY")
    local u300 = nil
    local u301 = nil
    local u302 = nil
    local u303 = nil
    local u307 = math.random(60, 120)
    local v12 = {}
    shared.SquadMembers = v12
    if Mode.Value == "Roleplay" then
        workspace:WaitForChild("SCPs", 7.5)
        Mode.Changed:Connect(function() -- Line: 163 -- upvalues: UpdateRiotAlarms (val), u253 (ref), Tagged (ref), DeltaFramework (val)
            UpdateRiotAlarms()
            if u253 then
                return
            end
            u253 = true
            task.wait(2.5)
            Tagged = DeltaFramework.CS:GetTagged("BroadcastTV")
            u253 = nil
        end)
        v12 = workspace:GetAttributeChangedSignal("MapInternalId")
        v12:Connect(function() -- Line: 168 -- upvalues: UpdateRiotAlarms (val), u253 (ref), Tagged (ref), DeltaFramework (val)
            UpdateRiotAlarms()
            if u253 then
                return
            end
            u253 = true
            task.wait(2.5)
            Tagged = DeltaFramework.CS:GetTagged("BroadcastTV")
            u253 = nil
        end)
        v4.OnClientEvent:Connect(function(p1, p2) -- Line: 173 -- upvalues: DeltaFramework (val)
            if DeltaFramework.PlayerGui:FindFirstChild(p1) and p2 ~= nil then
                DeltaFramework.PlayerGui:FindFirstChild(p1).Enabled = p2
            end
        end)
        local SCPUIs = DeltaFramework.PlayerGui:WaitForChild("SCPUIs")
        local SCP938 = SCPUIs:WaitForChild("SCP938")
        local HealthBar = SCPUIs:WaitForChild("HealthBar")
        local ObjectiveBar = SCPUIs:WaitForChild("ObjectiveBar")
        local v13 = DeltaFramework.PlayerGui:WaitForChild("Dialogue")
        local Hints = v13:WaitForChild("Hints")
        local SideText = DeltaFramework.PlayerGui.Dialogue:WaitForChild("SideText")
        local u383 = nil
        local u384 = nil
        local u385 = nil
        function BossHint(p1, p2, p3, p4) -- Line: 187 -- upvalues: HealthBar (val), u1711 (val)
            if type(p2) == "boolean" then
                if HealthBar.Hints:FindFirstChild(p1) then
                    HealthBar.Hints:FindFirstChild(p1).Visible = p2
                end
                return
            end
            if p2 == "Destroy" then
                if HealthBar.Hints:FindFirstChild(p1) then
                    HealthBar.Hints:FindFirstChild(p1):Destroy()
                end
                return
            end
            local v1 = HealthBar.Hints:FindFirstChild(p1)
            local v2 = not v1
            if v2 then
                v1 = HealthBar.Hints.HintTemplate:Clone()
                v1.Name = p1
            end
            if v2 then
                v1.Text = p3 or ""
                v1.Back.Text = p3 or ""
            elseif not p3 then
            end
            if v2 then
                local v3 = p4
                if not v3 then
                    v3 = Color3.new(1, 1, 1)
                end
                v1.TextColor3 = v3
                v1.Back.TextColor3 = u1711:Shade(v1.TextColor3, 75)
            elseif not p4 then
            end
            if v2 then
                v1.Visible = true
                v1.Parent = HealthBar.Hints
            end
        end
        function ObjectiveHint(p1, p2, p3, p4) -- Line: 226 -- upvalues: ObjectiveBar (val), u1711 (val)
            if type(p2) ~= "boolean" then
                if p2 == "Destroy" then
                    if ObjectiveBar.Hints:FindFirstChild(p1) then
                        ObjectiveBar.Hints:FindFirstChild(p1):Destroy()
                    end
                    return
                end
                local v1 = ObjectiveBar.Hints:FindFirstChild(p1)
                local v2 = not v1
                if v2 then
                    v1 = ObjectiveBar.Hints.HintTemplate:Clone()
                    v1.Name = p1
                end
                if v2 then
                    v1.Text = p3 or ""
                    v1.Back.Text = p3 or ""
                elseif not p3 then
                end
                if v2 then
                    local v3 = p4
                    if not v3 then
                        v3 = Color3.new(1, 1, 1)
                    end
                    v1.TextColor3 = v3
                    v1.Back.TextColor3 = u1711:Shade(v1.TextColor3, 75)
                elseif not p4 then
                end
                if v2 then
                    v1.Visible = true
                    v1.Parent = ObjectiveBar.Hints
                end
                return
            elseif ObjectiveBar.Hints:FindFirstChild(p1) then
                ObjectiveBar.Hints:FindFirstChild(p1).Visible = p2
            end
        end
        function SideHint(p1, p2, p3, p4) -- Line: 263 -- upvalues: Hints (val), u1711 (val)
            local v1
            if type(p2) == "boolean" then
                if Hints:FindFirstChild(p1) then
                    Hints:FindFirstChild(p1).Visible = p2
                end
                return
            end
            if p2 == "Destroy" then
                if Hints:FindFirstChild(p1) then
                    Hints:FindFirstChild(p1):Destroy()
                end
                v1 = #Hints:GetChildren()
                if v1 <= 2 then
                    Hints.Visible = false
                end
                return
            end
            v1 = Hints:FindFirstChild(p1)
            local v2 = not v1
            if v2 then
                v1 = Hints.HintTemplate:Clone()
                v1.Name = p1
            end
            if v2 then
                v1.Text = p3 or ""
                v1.Back.Text = p3 or ""
            elseif not p3 then
            end
            if v2 then
                local v3 = p4
                if not v3 then
                    v3 = Color3.new(1, 1, 1)
                end
                v1.TextColor3 = v3
                v1.Back.TextColor3 = u1711:Shade(v1.TextColor3, 75)
            elseif not p4 then
            end
            if v2 then
                v1.Visible = true
                v1.Parent = Hints
            end
            Hints.Visible = true
        end
        local function v14(p1, p2) -- Line: 308 -- upvalues: SideText (val)
            local Text = p2
            if not Text then
                Text = SideText.Text
            end
            SideText.Text = Text
            SideText.Back.Text = SideText.Text
            SideText.Visible = p1
        end
        v5.OnClientEvent:Connect(function(p1, ...) -- Line: 314 -- upvalues: HealthBar (val), Mode (val), DeltaFramework (val), SideText (val), u384 (ref), u385 (ref), u383 (ref)
            local HumanoidRootPart, v1, v2, v3, v4
            if type(p1) ~= "string" then
                return
            end
            local v5 = {...}
            if p1 == "Setup SCP-682" then
                HealthBar.ImageColor3 = Color3.fromRGB(55, 207, 0)
                HealthBar.BossName.Text = "SCP - 682 \"Hard-to-Destroy Reptile\""
                HealthBar.BossName.Back.Text = HealthBar.BossName.Text
                local BossName = HealthBar.BossName
                BossName.TextColor3 = Color3.fromRGB(55, 207, 0)
                local Back = HealthBar.BossName.Back
                Back.TextColor3 = Color3.fromRGB(50, 0, 0)
                HealthBar.Position = UDim2.new(0.5, 0, 0, 30)
                HealthBar.Visible = true
                return
            end
            if p1 == "Setup Player SCP-076" then
                HealthBar.ImageColor3 = Color3.fromRGB(80, 80, 80)
                HealthBar.BossName.Text = "SCP - 076 \"Able\""
                HealthBar.BossName.Back.Text = HealthBar.BossName.Text
                local BossName_2 = HealthBar.BossName
                BossName_2.TextColor3 = Color3.fromRGB(125, 0, 0)
                local Back_2 = HealthBar.BossName.Back
                Back_2.TextColor3 = Color3.fromRGB(50, 0, 0)
                HealthBar.Position = UDim2.new(0.5, 0, 0, 30)
                HealthBar.Visible = true
                return
            end
            if p1 ~= "Setup SCP-076" then
                local Rising, v6
                if p1 == "Toggle Boss Bar" then
                    HealthBar.Visible = false
                    return
                end
                if p1 == "SCP-076 Crystal Hint" then
                    SideHint("SCP-076 Crystals", nil, "Shoot the red runes to teleport and gain health!", Color3.fromRGB(125, 70, 70))
                    return
                end
                if p1 == "SCP-076 Rising Setup" then
                    local u274 = script:FindFirstChild("SCP-076-2 Rig"):Clone()
                    local Character = DeltaFramework.Player.Character
                    if Character then
                        Character = DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")
                    end
                    pcall(function() -- Line: 503 -- upvalues: u274 (val)
                        local v1
                        if not (workspace:GetAttribute("HardMode")) then
                            v1 = "277939506"
                        else
                            v1 = "127959433"
                        end
                        u274.Head.face.Texture = "http://www.roblox.com/asset/?id=" .. v1
                    end)
                    HumanoidRootPart = u274.HumanoidRootPart
                    if not Character then
                        v4 = CFrame.new(-43.711, -63.632, -60.884)
                        v3 = v4 * CFrame.fromOrientation(0, -90, 0)
                    else
                        v3 = CFrame.new(Character.Position)
                        if not v3 then
                            v4 = CFrame.new(-43.711, -63.632, -60.884)
                            v3 = v4 * CFrame.fromOrientation(0, -90, 0)
                        end
                    end
                    HumanoidRootPart.CFrame = v3
                    u274.HumanoidRootPart.Anchored = true
                    u274:SetAttribute("NoAI", true)
                    u274.Parent = workspace
                    u384 = u274.Humanoid:LoadAnimation(u274.Rising)
                    u385 = u274.Humanoid:LoadAnimation(u274.Hidden)
                    u385:Play()
                    u383 = u274
                    return
                end
                if p1 == "SCP-076 Rising Play" then
                    if not u383 or not u383.Parent or not u385 then
                        return
                    end
                    local HumanoidRootPart_2 = u383.HumanoidRootPart
                    v2 = CFrame.new(-43.711, -63.632, -60.884)
                    HumanoidRootPart_2.CFrame = v2 * CFrame.fromOrientation(0, -90, 0)
                    u385:Stop()
                    u384:Play()
                    task.wait(0.5)
                    u383.RisingHighlight.Enabled = true
                    local TweenService = DeltaFramework.TweenService
                    local RisingHighlight = u383.RisingHighlight
                    v3 = TweenInfo.new(0.5)
                    TweenService:Create(RisingHighlight, v3, {OutlineTransparency = 0}):Play()
                    task.wait(7)
                    u383:Destroy()
                    return
                end
                if p1 ~= "Shield SCP-076" then
                    return
                end
                v1 = v5[1]
                if not v1 or type(v1) ~= "table" then
                    return
                end
                SideHint("SCP-076 Shield", nil, "Shoot nearby blue runes to weaken the shield!", Color3.fromRGB(68, 88, 125))
                local List = HealthBar.List
                local u400 = #v1
                local u401 = u400
                for i, v in ipairs(v1) do
                    local u418 = List.TemplateIcon:Clone()
                    u418.Name = "RuneIcon"
                    u418.Image = "rbxassetid://81300345105529"
                    u418.ImageColor3 = Color3.fromRGB(80, 188, 255)
                    u418.Visible = true
                    u418.Parent = List
                    v6 = TweenInfo.new(1)
                    DeltaFramework.TweenService:Create(u418, v6, {ImageTransparency = 0}):Play()
                    v6 = TweenInfo.new(1)
                    DeltaFramework.TweenService:Create(v, v6, {Transparency = 0}):Play()
                    v.Destroying:Connect(function() -- Line: 554 -- upvalues: u401 (ref), u418 (val), HealthBar (upval), u400 (val)
                        u401 = u401 - 1
                        if u418 then
                            u418:Destroy()
                        end
                        if HealthBar.Visible then
                            HealthBar.Shield.Size = UDim2.fromScale(u401 / u400, 1)
                        end
                    end)
                end
                return
            else
                local u84 = v5[1]
                local u88 = Mode.Value == "Roleplay"
                local Breach076 = DeltaFramework.ReplicatedStorage.Breach076
                if u88 then
                    local Attribute
                    HealthBar.ImageColor3 = Color3.fromRGB(80, 80, 80)
                    HealthBar.BossName.Text = "SCP - 076 \"Able\""
                    HealthBar.BossName.Back.Text = HealthBar.BossName.Text
                    local BossName_3 = HealthBar.BossName
                    BossName_3.TextColor3 = Color3.fromRGB(125, 0, 0)
                    local Back_3 = HealthBar.BossName.Back
                    Back_3.TextColor3 = Color3.fromRGB(50, 0, 0)
                    if u88 then
                        HealthBar.Fill.Visible = true
                        HealthBar.Shield.Visible = false
                    elseif u84:GetAttribute("Shielded") then
                        HealthBar.Fill.Visible = false
                        HealthBar.Shield.Visible = true
                        v3 = DeltaFramework.Lighting:FindFirstChild("SCP-076 Atmosphere")
                        if v3 then
                            local v7 = TweenInfo.new(1)
                            DeltaFramework.TweenService:Create(v3, v7, {Density = 0.85, Color = Color3.fromRGB(150, 82, 82)}):Play()
                        end
                    end
                    if Mode.Value ~= "SCP-076 Mission" then
                        HealthBar.Position = UDim2.new(0.5, 0, 0, 30)
                    else
                        SideHint("SCP-076 Crystals", nil, "Shoot the red runes to teleport and gain health!", Color3.fromRGB(125, 70, 70))
                        SideText.Text = "SCP-002 DIMENSION"
                        SideText.Back.Text = SideText.Text
                        SideText.Visible = true
                    end
                    HealthBar.Visible = true
                    local function UpdateGame(p1) -- Line: 381 -- upvalues: HealthBar (upval), Mode (upval), SideText (upval), u88 (val), u84 (val), DeltaFramework (upval), Breach076 (val)
                        local Attribute
                        if p1 <= 0 then
                            HealthBar.Visible = false
                            if Mode.Value == "SCP-076 Mission" then
                                SideHint("SCP-076 Crystals", "Destroy")
                                SideHint("SCP-076 Shield", "Destroy")
                            end
                            SideText.Text = SideText.Text
                            SideText.Back.Text = SideText.Text
                            SideText.Visible = false
                            if not u88 and u84:FindFirstChild("Humanoid") then
                                DeltaFramework.Player:SetAttribute("SCP076Damage", u84.Humanoid:GetAttribute("Contribution"))
                            end
                            return
                        end
                        if not u88 then
                            Attribute = u84.Humanoid.MaxHealth
                        else
                            Attribute = Breach076:GetAttribute("MaxHealth")
                        end
                        local v1 = p1 / Attribute
                        HealthBar.Fill.Size = UDim2.fromScale(v1, 1)
                        if Mode.Value ~= "SCP-076 Mission" then
                            return
                        end
                        local v2 = DeltaFramework.Lighting:FindFirstChild("SCP-076 Atmosphere")
                        local v3 = workspace:GetAttribute("GameStatus") or ""
                        local v4 = 1 - v1
                        if u88 then
                            if not v2 then
                                HealthBar.Fill.Size = UDim2.fromScale(v1, 1)
                                return
                            end
                            if v3 == "Phase 1" then
                                v2.Density = math.max(0.1, v4)
                                v2.Color = Color3.fromRGB(103, 85, 85)
                                return
                            end
                            if v3 == "Phase 2" then
                                v2.Density = v4
                                v2.Color = Color3.fromRGB(103, 56, 56)
                                return
                            end
                            if v3 == "Phase 3" then
                                v2.Density = v4
                                v2.Color = Color3.fromRGB(138, 75, 75)
                                return
                            end
                            if v3 == "Phase 4" then
                                v2.Density = 0.85
                                v2.Color = Color3.fromRGB(150, 82, 82)
                            end
                            return
                        elseif u84:GetAttribute("Shielded") then
                            HealthBar.Fill.Size = UDim2.fromScale(v1, 1)
                            return
                        end
                    end
                    if not u88 then
                        u84.Humanoid.HealthChanged:Connect(UpdateGame)
                        UpdateGame(u84.Humanoid.Health)
                    else
                        local AttributeChangedSignal = Breach076:GetAttributeChangedSignal("Health")
                        AttributeChangedSignal:Connect(function() -- Line: 430 -- upvalues: UpdateGame (val), Breach076 (val)
                            UpdateGame(Breach076:GetAttribute("Health"))
                        end)
                        Attribute = Breach076:GetAttribute("Health")
                        if not Attribute then
                            Attribute = u84.Humanoid.Health
                        end
                        UpdateGame(Attribute)
                    end
                    local AttributeChangedSignal_2 = u84:GetAttributeChangedSignal("Shielded")
                    AttributeChangedSignal_2:Connect(function() -- Line: 441 -- upvalues: u84 (val), DeltaFramework (upval), HealthBar (upval)
                        local v1
                        local Attribute = u84:GetAttribute("Shielded")
                        local v2 = DeltaFramework.Lighting:FindFirstChild("SCP-076 Atmosphere")
                        if Attribute then
                            HealthBar.Fill.Visible = false
                            HealthBar.Shield.ImageTransparency = 1
                            HealthBar.Shield.Size = UDim2.fromScale(1, 1)
                            HealthBar.Shield.Visible = true
                            v1 = TweenInfo.new(1)
                            DeltaFramework.TweenService:Create(HealthBar.Shield, v1, {ImageTransparency = 0}):Play()
                            v1 = TweenInfo.new(1)
                            DeltaFramework.TweenService:Create(HealthBar.Shield, v1, {ImageTransparency = 0}):Play()
                            if not v2 then
                                return
                            end
                            v1 = TweenInfo.new(1)
                            DeltaFramework.TweenService:Create(v2, v1, {Density = 0.85, Color = Color3.fromRGB(0, 6, 116)}):Play()
                            return
                        end
                        for i, v in ipairs(HealthBar.List:GetChildren()) do
                            if v.Name ~= "TemplateIcon" and not (v:IsA("UIListLayout")) then
                                v:Destroy()
                            end
                        end
                        HealthBar.Shield.Visible = false
                        HealthBar.Fill.Visible = true
                        if v2 then
                            local v3 = workspace:GetAttribute("GameStatus") or ""
                            local v4 = 1 - u84.Humanoid.Health / u84.Humanoid.MaxHealth
                            v1 = 0.75
                            local v5 = Color3.fromRGB(138, 75, 75)
                            if v3 == "Phase 1" then
                                v1 = math.max(0.1, v4)
                                v5 = Color3.fromRGB(103, 85, 85)
                            elseif v3 == "Phase 2" then
                                v1 = v4
                                v5 = Color3.fromRGB(103, 56, 56)
                            elseif v3 == "Phase 3" then
                                v1 = v4
                                v5 = Color3.fromRGB(138, 75, 75)
                            elseif v3 == "Phase 4" then
                                v1 = 0.85
                                v5 = Color3.fromRGB(150, 82, 82)
                            end
                            local v6 = TweenInfo.new(1)
                            DeltaFramework.TweenService:Create(v2, v6, {Density = v1, Color = v5}):Play()
                        end
                        SideHint("SCP-076 Shield", "Destroy")
                    end)
                    return
                elseif not u84 then
                    return
                else
                    if typeof(u84) ~= "Instance" then
                        return
                    end
                    if not (u84:FindFirstChild("Humanoid")) then
                        return
                    elseif not (u84:FindFirstChild("HumanoidRootPart")) then
                        return
                    end
                end
            end
        end)
        Remotes:WaitForChild("UpdateReplication").OnClientEvent:Connect(function(p1, p2) -- Line: 565 -- upvalues: DeltaFramework (val), Menu (val)
            local ClassName, v1
            print(p1, p2)
            if p1 == true or p1 == false then
                DeltaFramework.Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
                if not p1 then
                    DeltaFramework.Player.Character.Humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                    return
                end
                task.delay(1, function() -- Line: 573 -- upvalues: DeltaFramework (upval)
                    if DeltaFramework.Player.Character then
                        local State = DeltaFramework.Player.Character.Humanoid:GetState()
                        if State == Enum.HumanoidStateType.Physics then
                            for i, v in ipairs(DeltaFramework.Player.Character.Humanoid.Animator:GetPlayingAnimationTracks()) do
                                if not (string.find(v.Animation.AnimationId, "4807894684")) then
                                    v:Stop()
                                end
                            end
                        end
                    end
                end)
                return
            end
            if type(p1) ~= "table" or 1 >= #p1 then
                if p1 then
                    ClassName = p1.ClassName
                    if ClassName == "Attachment" then
                        v1 = TweenInfo.new(1)
                        DeltaFramework.TweenService:Create(p1, v1, {CFrame = p2}):Play()
                        return
                    end
                    if ClassName == "Motor6D" then
                        v1 = TweenInfo.new(1)
                        DeltaFramework.TweenService:Create(p1, v1, {C1 = p2}):Play()
                        return
                    end
                    v1 = TweenInfo.new(0.5)
                    DeltaFramework.TweenService:Create(p1, v1, {C0 = p2}):Play()
                    return
                end
                return
            end
            if type(p1[1]) == "string" then
                pcall(function() -- Line: 588 -- upvalues: Menu (upval), p1 (val)
                    local v1
                    if not (p1[3]) then
                        v1 = "ContentPlayers"
                    else
                        v1 = "ContentPlayersCasual"
                    end
                    Menu.RankedHide.MatchPrepare[v1][p1[1]].Queue.Visible = p1[2]
                end)
                return
            end
            if not p1 then
                return
            end
            ClassName = p1.ClassName
            if ClassName == "Attachment" then
                v1 = TweenInfo.new(1)
                DeltaFramework.TweenService:Create(p1, v1, {CFrame = p2}):Play()
                return
            end
            if ClassName == "Motor6D" then
                v1 = TweenInfo.new(1)
                DeltaFramework.TweenService:Create(p1, v1, {C1 = p2}):Play()
                return
            end
            v1 = TweenInfo.new(0.5)
            DeltaFramework.TweenService:Create(p1, v1, {C0 = p2}):Play()
        end)
        Remotes:WaitForChild("KillEffects").OnClientEvent:Connect(function(p1, p2) -- Line: 606 -- upvalues: u48 (val), u46 (val), DeltaFramework (val)
            local Character_3, v1, v2, v3, v4, v5
            if not p1 or not (u48("Kill Effects")) then
                return
            end
            if typeof(p1) == "Instance" then
                local Character
                for i3, j in ipairs(p2) do
                    v4 = u46
                    for i4, k in ipairs(j:split("%")) do
                        v4 = v4[k]
                    end
                    if v4 and type(v4) == "function" then
                        if not (v1:FindFirstChild("HumanoidRootPart")) then
                            return
                        end
                        v5 = vector.magnitude(workspace.CurrentCamera.CFrame.Position - v1:GetPivot().Position)
                        if v5 <= 256 then
                            Character = DeltaFramework.Player.Character
                            if Character then
                                Character = DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")
                            end
                            v4(v1, Character)
                        end
                    end
                end
                return
            end
            v1 = buffer.tostring(p1)
            local v6 = string.split(v1, "%%")
            local v7 = DeltaFramework.Players:FindFirstChild(v6[1])
            local Character_2 = v7
            if Character_2 then
                Character_2 = v7.Character
            end
            local Humanoid = Character_2
            if Humanoid then
                Humanoid = Character_2:FindFirstChild("Humanoid")
            end
            if not Humanoid or Humanoid.Health > 0 or not (Character_2:FindFirstChild("HumanoidRootPart")) then
                return
            end
            v4 = #v6
            v5 = 1
            for i = 2, v4, v5 do
                v2 = u46
                for i2, v in ipairs(v6[i]:split("%")) do
                    v2 = v2[v]
                end
                if v2 and type(v2) == "function" then
                    v3 = vector.magnitude(workspace.CurrentCamera.CFrame.Position - Character_2:GetPivot().Position)
                    if v3 <= 256 then
                        Character_3 = DeltaFramework.Player.Character
                        if Character_3 then
                            Character_3 = DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")
                        end
                        v2(Character_2, Character_3)
                    end
                end
            end
        end)
        local v15 = DeltaFramework.ReplicatedStorage:WaitForChild("Remotes")
        v15:WaitForChild("CameraU").OnClientEvent:Connect(function(p1, p2, p3, p4) -- Line: 658 -- upvalues: DeltaFramework (val)
            if not p1 or not (p1:FindFirstChild("Camera")) or not (p1.Camera:FindFirstChild("CamLight")) or not p1.Camera.PrimaryPart then
                return
            end
            local v1 = Vector3.new(p2, p3, p4)
            local v2 = TweenInfo.new(0.25)
            DeltaFramework.TweenService:Create(p1.Camera.PrimaryPart, v2, {CFrame = CFrame.lookAt(p1.Camera.PrimaryPart.Position, v1)}):Play()
        end)
        SCPTesting.OnClientEvent:Connect(function(p1, p2) -- Line: 668
            if not p2.Character or not (p2.Character:FindFirstChild("HumanoidRootPart")) or not (p2.Character:FindFirstChild("Humanoid")) or 0 >= p2.Character.Humanoid.Health then
                return
            end
            if p1 == "NotifyCD" then
                local u21 = script.ScientistTag:Clone()
                u21.Parent = p2.Character.HumanoidRootPart
                task.delay(30, function() -- Line: 676 -- upvalues: u21 (val)
                    pcall(function() -- Line: 677 -- upvalues: u21 (upval)
                        if u21 and u21.Parent then
                            u21:Destroy()
                        end
                    end)
                end)
                if shared.InMenu then
                    return
                end
                shared.Notification({Title = "A scientist needs a Class - D to test on!", Duration = 5, Text = "Head to " .. p2.Name .. " to be tested on! They are marked with a scientist icon."})
                return
            end
            if p1 ~= "NotifyGuard" then
                return
            end
            local u42 = script.ScientistTag:Clone()
            u42.Parent = p2.Character.HumanoidRootPart
            task.delay(30, function() -- Line: 691 -- upvalues: u42 (val)
                pcall(function() -- Line: 692 -- upvalues: u42 (upval)
                    if u42 and u42.Parent then
                        u42:Destroy()
                    end
                end)
            end)
            if shared.InMenu then
                return
            end
            shared.Notification({Title = "A scientist needs a guard escort!", Duration = 5, Text = "Head to " .. p2.Name .. " to escort their test! They are marked with a scientist icon."})
        end)
        function SetupListener(p1) -- Line: 705 -- upvalues: DeltaFramework (val)
            local Parent = p1.Parent
            if Parent and Parent.ClassName == "Camera" then
                pcall(function() -- Line: 709 -- upvalues: p1 (val), DeltaFramework (upval)
                    p1.Wire.TargetInstance = DeltaFramework.SoundService.AudioEqualizer
                end)
                pcall(function() -- Line: 711 -- upvalues: DeltaFramework (upval)
                    DeltaFramework.SoundService.AudioEqualizer.Wire.TargetInstance = DeltaFramework.SoundService:FindFirstChildOfClass("AudioDeviceOutput")
                end)
            end
        end
        task.spawn(function() -- Line: 715
            local CurrentCamera, CurrentCamera_2
            local function Repeat() -- Line: 716
                local CurrentCamera = workspace.CurrentCamera
                if CurrentCamera then
                    CurrentCamera = workspace.CurrentCamera:FindFirstChildOfClass("AudioListener")
                end
                if CurrentCamera then
                    SetupListener(CurrentCamera)
                end
            end
            local v1 = nil
            while true do
                CurrentCamera = workspace.CurrentCamera
                if CurrentCamera == v1 then
                    task.wait(10)
                else
                    CurrentCamera_2 = workspace.CurrentCamera
                    if CurrentCamera_2 then
                        CurrentCamera_2 = workspace.CurrentCamera:FindFirstChildOfClass("AudioListener")
                    end
                    if CurrentCamera_2 then
                        SetupListener(CurrentCamera_2)
                    end
                    v1 = CurrentCamera
                end
            end
        end)
        local u450 = nil
        local u451 = nil
        local u452 = nil
        local u453 = nil
        local u454 = nil
        local u455 = nil
        local u456 = nil
        local u457 = nil
        function Mute(p1) -- Line: 749 -- upvalues: DeltaFramework (val), u180 (ref), u457 (ref), u48 (val)
            local Character = DeltaFramework.Player.Character
            if Character then
                Character = DeltaFramework.Player.Character:FindFirstChild("Humanoid")
            end
            local Attribute = DeltaFramework.Player.Character:GetAttribute("Deaf")
            if Character then
                if not Attribute then
                    local AudioEqualizer = DeltaFramework.SoundService.AudioEqualizer
                    local Equalizer = DeltaFramework.SoundService.MassMute.Equalizer
                    local v1 = pcall(function() -- Line: 761 -- upvalues: p1 (val), u180 (upval), u457 (upval), DeltaFramework (upval), Attribute (val), AudioEqualizer (val), Equalizer (val), u48 (upval)
                        local v1
                        if not p1 then
                            if not p1 and u180 then
                                u180 = false
                                if u457 then
                                    u457:Disconnect()
                                end
                                v1 = TweenInfo.new(8)
                                DeltaFramework.TweenService:Create(DeltaFramework.SoundService.MassMute, v1, {Volume = 1}):Play()
                                v1 = TweenInfo.new(8)
                                DeltaFramework.TweenService:Create(script.Ringing, v1, {Volume = 0}):Play()
                                task.wait(8)
                                AudioEqualizer.Bypass = true
                                Equalizer.Enabled = false
                                script.Ringing:SetAttribute("Active", nil)
                                script.Ringing:Stop()
                            end
                            return
                        elseif not u180 then
                            u180 = true
                            u457 = DeltaFramework.Player.CharacterAdded:Connect(function() -- Line: 765
                                Mute(false)
                            end)
                            if Attribute then
                                v1 = TweenInfo.new(3)
                                DeltaFramework.TweenService:Create(DeltaFramework.SoundService.MassMute, v1, {Volume = 0}):Play()
                                return
                            end
                            v1 = TweenInfo.new(3)
                            DeltaFramework.TweenService:Create(DeltaFramework.SoundService.MassMute, v1, {Volume = 0.25}):Play()
                            AudioEqualizer.Bypass = false
                            Equalizer.Enabled = true
                            if not (u48("Ringing Sounds")) then
                                return
                            end
                            script.Ringing:SetAttribute("Active", true)
                            script.Ringing:Play()
                            task.delay(27, function() -- Line: 780 -- upvalues: DeltaFramework (upval)
                                if script.Ringing:GetAttribute("Active") then
                                    local v1 = TweenInfo.new(8)
                                    DeltaFramework.TweenService:Create(script.Ringing, v1, {Volume = 0}):Play()
                                    task.wait(8)
                                    script.Ringing:SetAttribute("Active", nil)
                                    script.Ringing:Stop()
                                end
                            end)
                            return
                        end
                    end)
                    if not v1 then
                        u180 = false
                        if u457 then
                            u457:Disconnect()
                        end
                        local v2 = TweenInfo.new(8)
                        DeltaFramework.TweenService:Create(DeltaFramework.SoundService.MassMute, v2, {Volume = 1}):Play()
                        v2 = TweenInfo.new(8)
                        DeltaFramework.TweenService:Create(script.Ringing, v2, {Volume = 0}):Play()
                        task.wait(8)
                        AudioEqualizer.Bypass = true
                        Equalizer.Enabled = false
                        script.Ringing:SetAttribute("Active", nil)
                        script.Ringing:Stop()
                    end
                    if u180 and Character and p1 == "SCP-066" then
                        task.spawn(function() -- Line: 832 -- upvalues: Character (val), u180 (upval), DeltaFramework (upval)
                            local Attack, Character_2, Name, Parent, SCPs, v1, v2, v3, v4
                            local SCP066EarCoverAnimation = Character:FindFirstChild("SCP066EarCoverAnimation")
                            if not SCP066EarCoverAnimation then
                                SCP066EarCoverAnimation = Instance.new("Animation")
                                SCP066EarCoverAnimation.AnimationId = "rbxassetid://98379357597969"
                                SCP066EarCoverAnimation.Name = "SCP066EarCoverAnimation"
                                SCP066EarCoverAnimation.Parent = Character
                            end
                            local u113 = Character:LoadAnimation(SCP066EarCoverAnimation)
                            u113:Play()
                            while u180 do
                                if not Character or DeltaFramework.Player.Character ~= Character.Parent then
                                    break
                                end
                                v1 = true
                                Character_2 = DeltaFramework.Player.Character
                                if Character_2 then
                                    Character_2 = DeltaFramework.Player.Character:FindFirstChildOfClass("Tool")
                                end
                                if Character_2 then
                                    Name = Character_2.Name
                                    if Name == "Tracker" then
                                        v1 = nil
                                    elseif Name ~= "Tablet" and Name ~= "Clipboard" and not (DeltaFramework.ReplicatedStorage.GunSettings:FindFirstChild(Name)) then
                                    end
                                end
                                if v1 then
                                    Parent = Character.Parent
                                    if Parent then
                                        Parent = Character.Parent:FindFirstChild("HumanoidRootPart")
                                    end
                                    if Parent then
                                        SCPs = workspace:FindFirstChild("SCPs")
                                        if SCPs then
                                            v2 = SCPs:FindFirstChild("SCP-066")
                                            if v2 then
                                                v2 = v2:FindFirstChild("Body")
                                                if v2 then
                                                    v3 = vector.magnitude(Parent.Position - v2.Position)
                                                    if v3 > 64 then
                                                        v1 = nil
                                                    else
                                                        v3 = nil
                                                        Attack = v2:FindFirstChild("Attack")
                                                        if not Attack then
                                                            v4 = v2:FindFirstChild("ClassicalBossMusic")
                                                            if v4 and v4.IsPlaying then
                                                                v3 = true
                                                            end
                                                        elseif Attack.IsPlaying then
                                                            v3 = true
                                                        end
                                                        if not v3 then
                                                            v1 = nil
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                if not v1 then
                                    pcall(function() -- Line: 902 -- upvalues: u113 (val)
                                        if u113.IsPlaying then
                                            u113:Stop(0.25)
                                        end
                                    end)
                                else
                                    pcall(function() -- Line: 900 -- upvalues: u113 (val)
                                        if not u113.IsPlaying then
                                            u113:Play(0.25)
                                        end
                                    end)
                                end
                                task.wait(0.1)
                            end
                            pcall(function() -- Line: 908 -- upvalues: u113 (val)
                                u113:Stop()
                            end)
                        end)
                    end
                    return
                elseif not p1 then
                    return
                end
            elseif p1 then
                return
            end
        end
        local u461 = false
        local u462 = false
        local u463 = nil
        local u464 = nil
        local u465 = false
        local u466 = false
        local u467 = false
        local u468 = nil
        local u469 = false
        local u470 = {}
        local u471 = {}
        local u472 = {"SlashPart", "ChainPart", "VoidGreatsword"}
        local function UpdateGenericUIText(p1, p2, p3) -- Line: 927 -- upvalues: DeltaFramework (val)
            local Text, v1
            if not (DeltaFramework.PlayerGui:FindFirstChild("SCPUIs")) then
                return
            end
            if p1 then
                DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text = p1
                DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Back.Text = p1
                DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Visible = true
                local TweenService = DeltaFramework.TweenService
                local v2 = TweenInfo.new(1)
                TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric, v2, {TextTransparency = 0}):Play()
                local TweenService_2 = DeltaFramework.TweenService
                v2 = TweenInfo.new(1)
                v1 = {TextTransparency = 0}
                TweenService_2:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Back, v2, v1):Play()
                if tonumber(p2) or not p2 then
                    local v3 = tonumber(p2)
                    if not v3 then
                        v2 = string.len(p1) / 4
                        v3 = math.clamp(v2, 5, 15)
                    end
                    local v4 = v3 + 1
                    task.delay(v4, function() -- Line: 954 -- upvalues: DeltaFramework (upval)
                        local Text = DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text
                        local v1 = TweenInfo.new(1)
                        DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric, v1, {TextTransparency = 1}):Play()
                        v1 = TweenInfo.new(1)
                        DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Back, v1, {TextTransparency = 1}):Play()
                        task.delay(1, function() -- Line: 960 -- upvalues: DeltaFramework (upval), Text (val)
                            if DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text == Text then
                                DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Visible = false
                                DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text = ""
                            end
                        end)
                    end)
                    return
                end
                if p2 == "087" and p3 then
                    local Text_2 = DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text
                    v1 = TweenInfo.new(1)
                    DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric, v1, {TextTransparency = 1}):Play()
                    v1 = TweenInfo.new(1)
                    DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Back, v1, {TextTransparency = 1}):Play()
                    task.delay(1, function() -- Line: 974 -- upvalues: DeltaFramework (upval), Text_2 (val)
                        if DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text == Text_2 then
                            DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Visible = false
                            DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text = ""
                        end
                    end)
                end
                return
            elseif not p2 and p3 then
                Text = DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text
                v1 = TweenInfo.new(1)
                DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric, v1, {TextTransparency = 1}):Play()
                v1 = TweenInfo.new(1)
                DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Back, v1, {TextTransparency = 1}):Play()
                task.delay(1, function() -- Line: 936 -- upvalues: DeltaFramework (upval), Text (val)
                    if DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text == Text then
                        DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Visible = false
                        DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text = ""
                    end
                end)
                return
            end
        end
        shared.DisplaySCPText = UpdateGenericUIText
        local function CameraTween(p1, p2, p3, p4, p5, p6, p7) -- Line: 986 -- upvalues: DeltaFramework (val)
            local u9
            if p3 then
                u9 = p3
            else
                u9 = CFrame.new()
            end
            if not shared.InMenu then
                DeltaFramework.PlayerGui.Backpack.Enabled = false
            end
            if DeltaFramework.Player.Character and DeltaFramework.Player.Character:FindFirstChild("Humanoid") then
                DeltaFramework.Player.Character.Humanoid:UnequipTools()
            end
            local Part = Instance.new("Part")
            Part.CastShadow = false
            Part.Transparency = 1
            Part.Anchored = true
            Part.CanCollide = false
            Part.Size = Vector3.new(1, 1, 1)
            Part.Name = "CameraTween"
            Part.Parent = workspace
            local u43 = false
            task.spawn(function() -- Line: 1006 -- upvalues: u43 (ref), DeltaFramework (upval), p5 (val)
                while not u43 do
                    task.spawn(function() -- Line: 1008 -- upvalues: DeltaFramework (upval), p5 (upval)
                        local v1
                        local v2 = pcall
                        local RequestStreamAroundAsync = DeltaFramework.Player.RequestStreamAroundAsync
                        if typeof(p5) ~= "CFrame" then
                            v1 = p5
                        else
                            v1 = Vector3.new(p5)
                            if not v1 then
                                v1 = p5
                            end
                        end
                        v2(RequestStreamAroundAsync, v1)
                    end)
                    task.wait(2)
                end
            end)
            local u54 = Instance.new("ColorCorrectionEffect", DeltaFramework.Lighting)
            local TweenService = DeltaFramework.TweenService
            local v1 = TweenInfo.new(1)
            TweenService:Create(u54, v1, {Brightness = -1}):Play()
            task.wait(2.5)
            local u71 = 0
            local u72 = false
            local v2 = DeltaFramework.RunService.RenderStepped:Connect(function(a1) -- Line: 1022 -- upvalues: u71 (ref), Part (val), DeltaFramework (upval), u9 (ref), p1 (val), p2 (val), p4 (val), p7 (val), p6 (val), u72 (ref)
                u71 = u71 + a1
                workspace.CurrentCamera.CameraSubject = Part
                DeltaFramework.Player.ReplicationFocus = Part
                Part.CFrame = u9 + p1:Lerp(p2, u71 / p4)
                workspace.CurrentCamera.CFrame = Part.CFrame
                if p7 then
                    if p6 == nil then
                        if not u72 then
                            u72 = true
                            p7()
                        end
                    elseif p6 and p6() and not u72 then
                        u72 = true
                        p7()
                    end
                end
            end)
            local v3 = TweenInfo.new(1)
            DeltaFramework.TweenService:Create(u54, v3, {Brightness = 0}):Play()
            task.delay(1, function() -- Line: 1039 -- upvalues: u54 (val)
                u54:Destroy()
            end)
            task.wait(p4)
            Part:Destroy()
            v2:Disconnect()
            task.delay(1, function() -- Line: 1047 -- upvalues: DeltaFramework (upval)
                DeltaFramework.Player.ReplicationFocus = nil
            end)
            if not shared.InMenu then
                DeltaFramework.PlayerGui.Backpack.Enabled = true
            end
            while not DeltaFramework.Player.Character do
                task.wait()
            end
            if workspace.CurrentCamera then
                workspace.CurrentCamera.CameraSubject = DeltaFramework.Player.Character:WaitForChild("Humanoid", 5)
            end
        end
        v3.OnClientEvent:Connect(function(p1, p2, p3) -- Line: 1062 -- upvalues: DeltaFramework (val), u1711 (val), u48 (val), u461 (ref), u462 (ref), SCP938 (val), CameraTween (val), u463 (ref), u467 (ref), u469 (ref), UpdateGenericUIText (val), u468 (ref), u470 (val), u465 (ref), u471 (val), u466 (ref), u464 (ref), u1755 (val), Mode (val), u59 (val), u472 (val), Generic (val), u57 (val), u1714 (val)
            local Player = DeltaFramework.Player
            if not Player then
                return
            else
                local Character, ColorCorrectionEffect, HumanoidRootPart, Shake, Sound, TweenService, TweenService_2, TweenService_3, TweenService_4, v1, v2, v3, v4, v5, v6
                if not p1 then
                    return
                end
                if p1 == "PitDeath" then
                    if not Player.Character then
                        return
                    end
                    ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
                    ColorCorrectionEffect.Brightness = 0
                    ColorCorrectionEffect.Enabled = true
                    ColorCorrectionEffect.Parent = game.Lighting
                    task.delay(5, function() -- Line: 1075 -- upvalues: ColorCorrectionEffect (val)
                        if ColorCorrectionEffect.Parent then
                            ColorCorrectionEffect:Destroy()
                        end
                    end)
                    Sound = Instance.new("Sound")
                    Sound.SoundId = "rbxassetid://119669684568685"
                    Sound.Volume = 0.2
                    Sound.PlaybackSpeed = 0.8
                    Sound.SoundGroup = DeltaFramework.SoundService.MassMute
                    Sound.Parent = Player.Character
                    TweenService = DeltaFramework.TweenService
                    v6 = TweenInfo.new(0.2)
                    TweenService:Create(Sound, v6, {Volume = 1.3}):Play()
                    TweenService_2 = DeltaFramework.TweenService
                    v6 = TweenInfo.new(0.8)
                    TweenService_2:Create(ColorCorrectionEffect, v6, {Brightness = -10}):Play()
                    Sound:Play()
                    Player.Character.Humanoid.Died:Wait(2)
                    Sound:Stop()
                    Sound.SoundId = "rbxassetid://4697381311"
                    Sound.Volume = 1
                    Sound:Play()
                    Sound.Ended:Once(function() -- Line: 1099 -- upvalues: Sound (val)
                        Sound:Destroy()
                    end)
                    task.wait(4)
                    TweenService_3 = DeltaFramework.TweenService
                    v6 = TweenInfo.new(0.8)
                    TweenService_3:Create(ColorCorrectionEffect, v6, {Brightness = 0}):Play()
                    task.wait(0.8)
                    ColorCorrectionEffect:Destroy()
                    return
                end
                if p1 == "PlaySound" then
                    u1711:PlaySound(p2, p3)
                    return
                end
                if p1 == "CameraShake" then
                    if not shared.Shake then
                        return
                    end
                    shared.Shake(p3, p2)
                    return
                end
                if p1 == "TempCameraShake" then
                    if not shared.Shake then
                        return
                    end
                    if tonumber(p2) then
                        shared.Shake("", (tonumber(p2)))
                        return
                    end
                    shared.Shake(p2, true)
                    task.wait(p3)
                    shared.Shake(p2, false)
                    return
                end
                if p1 == "TempFadeScreen" then
                    v1 = Instance.new("ColorCorrectionEffect", DeltaFramework.Lighting)
                    v1.Name = "TempFadeScreen"
                    TweenService_4 = DeltaFramework.TweenService
                    v5 = TweenInfo.new(p3[1])
                    TweenService_4:Create(v1, v5, {Brightness = -1}):Play()
                    task.wait(p3[1] + p3[2])
                    if not v1 or not v1.Parent then
                        return
                    end
                    local TweenService_5 = DeltaFramework.TweenService
                    v5 = TweenInfo.new(p3[3])
                    TweenService_5:Create(v1, v5, {Brightness = 0}):Play()
                    task.wait(p3[3])
                    if not v1 or not v1.Parent then
                        return
                    end
                    v1:Destroy()
                    return
                end
                if p1 == "TempBlurScreen" then
                    v1 = Instance.new("BlurEffect", DeltaFramework.Lighting)
                    v1.Name = "TempFadeScreen"
                    local TweenService_6 = DeltaFramework.TweenService
                    v5 = TweenInfo.new(p3[1])
                    TweenService_6:Create(v1, v5, {Size = p3[4] or 24}):Play()
                    task.wait(p3[1] + p3[2])
                    if not v1 or not v1.Parent then
                        return
                    end
                    local TweenService_7 = DeltaFramework.TweenService
                    v5 = TweenInfo.new(p3[3])
                    TweenService_7:Create(v1, v5, {Size = 0}):Play()
                    task.wait(p3[3])
                    if not v1 or not v1.Parent then
                        return
                    end
                    v1:Destroy()
                    return
                end
                if p1 == "TempEarRing" then
                    if p3 then
                        task.wait(p3)
                    end
                    if not (u48("Ringing Sounds")) or script.Ringing:GetAttribute("Active") or not Player or not Player.Character then
                        return
                    end
                    script.Ringing:SetAttribute("Active", true)
                    script.Ringing:Play()
                    task.wait(p3)
                    script.Ringing:Stop()
                    script.Ringing:SetAttribute("Active", false)
                    return
                end
                if p1 == "Event1" then
                    v1 = 7
                    v2 = 1
                    for i22 = 1, v1, v2 do
                        shared.Shake("Event Tremor", true)
                        script.DeepThud:Play()
                        task.wait(5)
                        shared.Shake("Event Tremor", false)
                        task.wait(30)
                    end
                    return
                end
                if p1 == "938" then
                    if p3 ~= "Near" or not p2 then
                        if p3 == "Hurt" then
                            if u462 then
                                return
                            end
                            v1 = math.random(1, 2)
                            u462 = true
                            if v1 == 1 then
                                local BlurEffect_2 = Instance.new("BlurEffect")
                                BlurEffect_2.Size = 10
                                BlurEffect_2.Parent = game.Lighting
                                local TweenService_8 = DeltaFramework.TweenService
                                v6 = TweenInfo.new(5)
                                TweenService_8:Create(BlurEffect_2, v6, {Size = 0}):Play()
                                task.wait(5)
                                BlurEffect_2:Destroy()
                            elseif v1 == 2 then
                                SCP938.Visible = true
                                SCP938.BackgroundTransparency = 0
                                local TweenService_9 = DeltaFramework.TweenService
                                v5 = TweenInfo.new(5)
                                TweenService_9:Create(SCP938, v5, {BackgroundTransparency = 1}):Play()
                                task.wait(5)
                                SCP938.Visible = false
                            end
                            u462 = false
                            return
                        end
                        return
                    end
                    if u461 then
                        return
                    end
                    v1 = {}
                    u461 = p2
                    if not u461.Parent or not (u461:HasTag("Possessed")) then
                        return
                    end
                    table.insert(v1, u461.Destroying:Once(function() -- Line: 1186 -- upvalues: u461 (upval)
                        u461 = nil
                    end))
                    table.insert(v1, Player.CharacterRemoving:Once(function() -- Line: 1189 -- upvalues: u461 (upval)
                        u461 = nil
                    end))
                    shared.Radio938 = true
                    while task.wait(0.5) do
                        if not u461 then
                            break
                        end
                        v3 = Player:DistanceFromCharacter(u461:GetPivot().Position)
                        if u461:HasTag("Possessed") and 20 >= v3 then
                            continue
                        end
                        u461 = nil
                        break
                    end
                    shared.Radio938 = false
                    v3 = v1
                    v4 = nil
                    v5 = nil
                    for i20, i21 in v3, v4, v5 do
                        i21:Disconnect()
                    end
                    return
                end
                if p1 == "SCP-076 Start Cutscene" then
                    local u432 = script:FindFirstChild("SCP-076-2 Rig"):Clone()
                    HumanoidRootPart = u432.HumanoidRootPart
                    v4 = CFrame.new(-25.832, 4.198, -1159.079)
                    HumanoidRootPart.CFrame = v4 * CFrame.fromOrientation(0, 3.141592653589793, 0)
                    u432.VoidGreatsword.Transparency = 0
                    u432.VoidGreatsword.Tip.Sparks.Enabled = true
                    u432.VoidGreatsword.Scrape.Playing = true
                    u432.Parent = workspace
                    local HumanoidRootPart_2 = u432.HumanoidRootPart
                    v4 = CFrame.new(-25.832, 4.198, -1159.079)
                    HumanoidRootPart_2.CFrame = v4 * CFrame.fromOrientation(0, 3.141592653589793, 0)
                    u432.HumanoidRootPart.Anchored = true
                    u432.Humanoid:LoadAnimation(u432.Run):Play()
                    u432.Humanoid.WalkSpeed = 25
                    task.delay(3, function() -- Line: 1285 -- upvalues: DeltaFramework (upval), u432 (val), u1711 (upval)
                        local v1, v2
                        pcall(function() -- Line: 1286 -- upvalues: DeltaFramework (upval), u432 (upval)
                            local v1 = TweenInfo.new(5)
                            local v2 = {}
                            local v3 = CFrame.new(-25.832, -0.302, -1033.169)
                            v2.CFrame = v3 * CFrame.fromOrientation(0, 3.141592653589793, 0)
                            DeltaFramework.TweenService:Create(u432.HumanoidRootPart, v1, v2):Play()
                        end)
                        for i, j in DeltaFramework.CS:GetTagged("SCP076Turret") do
                            if j:FindFirstChild("Main") then
                                v1 = 50
                                v2 = 1
                                for k = 1, v1, v2 do
                                    if not u432 or not u432.Parent or not j or not (j:FindFirstChild("Main")) then
                                        break
                                    end
                                    u1711:PlaySound(j.Main, 5174150739, {RollOffMaxDistance = 128, Volume = 2.5})
                                    u1711:PlaySound(u432.HumanoidRootPart, 3092866899, 1)
                                    for n, m in j.Main.Muzzle:GetChildren() do
                                        m:Emit(m:GetAttribute("EmitCount"))
                                    end
                                    task.wait(0.1)
                                end
                            end
                        end
                    end)
                    CameraTween(Vector3.new(-25.809999465942383, 4.631999969482422, -1145.467041015625), Vector3.new(-25.809999465942383, 4.631999969482422, -1042.8070068359375), nil, 5)
                    if not u432 or not u432.Parent then
                        return
                    end
                    u432:Destroy()
                    return
                end
                if p1 == "SCP-682 Start Cutscene" then
                    v4 = CFrame.Angles(0, -0.7853981633974483, 0)
                    CameraTween(Vector3.new(-456.4259948730469, 8.295999526977539, 544.6719970703125), Vector3.new(-510.1659851074219, 8.295999526977539, 598.4119873046875), v4, 15, Vector3.new(-456.4259948730469, 8.295999526977539, 544.6719970703125), nil, function() -- Line: 1322 -- upvalues: u1711 (upval)
                        task.spawn(function() -- Line: 1323 -- upvalues: u1711 (upval)
                            u1711:PlaySound(workspace, 9116892160, {RollOffMaxDistance = 200})
                            if shared.Shake then
                                shared.Shake("SCP-682 Step", 50)
                            end
                            task.wait(2)
                            u1711:PlaySound(workspace, 9116892199, {RollOffMaxDistance = 200})
                            if shared.Shake then
                                shared.Shake("SCP-682 Step", 50)
                            end
                            task.wait(3)
                            u1711:PlaySound(workspace, 9116892160, {RollOffMaxDistance = 200})
                            if shared.Shake then
                                shared.Shake("SCP-682 Step", 50)
                            end
                            task.wait(2)
                            u1711:PlaySound(workspace, 9116892199, {RollOffMaxDistance = 200})
                            if shared.Shake then
                                shared.Shake("SCP-682 Step", 50)
                            end
                            task.wait(2)
                            u1711:PlaySound(workspace, 9069546509, {RollOffMaxDistance = 200})
                            if shared.Shake then
                                shared.Shake("SCP-682 Step", 50)
                            end
                        end)
                    end)
                    return
                end
                if p1 == "SCP-682 End Cutscene 1" then
                    v4 = CFrame.Angles(0, -1.5707963267948966, 0)
                    CameraTween(Vector3.new(-699.14501953125, 11.291999816894531, 697.5689697265625), Vector3.new(-821.4249877929688, 11.291999816894531, 697.5689697265625), v4, 8, (Vector3.new(-699.14501953125, 11.291999816894531, 697.5689697265625)))
                    return
                end
                if p1 == "SCP-682 End Cutscene 2" then
                    v4 = CFrame.Angles(0, -1.5707963267948966, 0)
                    CameraTween(Vector3.new(-721.4559936523438, -149.3979949951172, 578.0670166015625), Vector3.new(-721.4559936523438, -109.39800262451172, 578.0670166015625), v4, 10, Vector3.new(-721.4559936523438, -129.3979949951172, 578.0670166015625), function() -- Line: 1383
                        local SCP682CC = workspace:FindFirstChild("SCP682CC")
                        if SCP682CC then
                            SCP682CC = workspace.SCP682CC:FindFirstChild("Acid")
                        end
                        return SCP682CC
                    end, function() -- Line: 1384 -- upvalues: DeltaFramework (upval), u1711 (upval)
                        local TweenService = DeltaFramework.TweenService
                        local v1 = TweenInfo.new(15)
                        TweenService:Create(workspace.SCP682CC.Acid, v1, {Position = workspace.SCP682CC.Acid.Position + Vector3.new(0, 35, 0)}):Play()
                        u1711:PlaySound(workspace.SCP682CC.Acid, 9066038215, {RollOffMaxDistance = 200})
                        local Sound = Instance.new("Sound")
                        Sound.SoundId = "rbxassetid://329308062"
                        Sound.RollOffMaxDistance = 50
                        Sound.Looped = true
                        Sound.Volume = 0.25
                        Sound.SoundGroup = DeltaFramework.SoundService.MassMute
                        Sound.Parent = workspace
                        Sound:Play()
                        task.delay(10, function() -- Line: 1399 -- upvalues: Sound (val)
                            if Sound and Sound.Parent then
                                Sound:Destroy()
                            end
                        end)
                    end)
                    return
                end
                if p1 ~= "PlayVideo" then
                    local Position_2, v7, v8, v9, v10, v11
                    if p1 == "SCP-299 Transformation" then
                        local FakeHead, Texture, u763, v12, v13
                        if not (u1711:IsCharacterValid(p2)) or not (p2:HasTag("299")) then
                            return
                        end
                        v1 = Color3.fromRGB(125, 125, 125)
                        v2 = Color3.fromRGB(255, 0, 0)
                        if not DeltaFramework.ReplicatedStorage.WDB.Value then
                            v3 = v1
                        else
                            v3 = v2
                        end
                        v4 = TweenInfo.new(2)
                        v5 = {Transparency = 0}
                        if u48("Low Graphics") then
                            u763 = p2
                            for i18, i19 in p2:GetDescendants() do
                                if i19.ClassName == "Shirt" then
                                    i19:Destroy()
                                elseif i19.ClassName ~= "ShirtGraphic" and i19.ClassName ~= "Pants" and i19:IsA("BasePart") and i19.Name ~= "HumanoidRootPart" and i19.Name ~= "Head" then
                                    if i19.ClassName == "MeshPart" then
                                        i19.TextureID = ""
                                    end
                                    i19.Color = v3
                                    i19.Material = Enum.Material.Wood
                                    i19.MaterialVariant = "Trunk"
                                end
                            end
                            if u763:FindFirstChild("FakeHead") then
                                u763.FakeHead.Transparency = 1
                            end
                            return
                        end
                        v6 = {
                            Enum.NormalId.Bottom,
                            Enum.NormalId.Top,
                            Enum.NormalId.Front,
                            Enum.NormalId.Back,
                            Enum.NormalId.Right,
                            Enum.NormalId.Left,
                        }
                        v7 = {}
                        v8 = {}
                        u763 = p2
                        for i8, i9 in p2:GetDescendants() do
                            if i9:IsA("BasePart") and i9.Name ~= "HumanoidRootPart" and i9.Name ~= "Head" and i9.Name ~= "FakeHead" then
                                table.insert(v8, i9)
                                v12 = v6
                                v11 = nil
                                v13 = nil
                                for i10, i11 in v12, v11, v13 do
                                    Texture = Instance.new("Texture")
                                    Texture.Name = "SCP-299 Transformation Texture"
                                    Texture.Texture = "rbxassetid://101210752721479"
                                    Texture.Color3 = v3
                                    Texture.Transparency = 1
                                    Texture.Face = i11
                                    table.insert(v7, Texture)
                                    Texture.Parent = i9
                                    DeltaFramework.TweenService:Create(Texture, v4, v5):Play()
                                end
                            end
                        end
                        if u763:FindFirstChild("FakeHead") then
                            DeltaFramework.TweenService:Create(u763.FakeHead, v4, v5):Play()
                        end
                        task.wait(2)
                        if not (u1711:IsCharacterValid(u763)) or not (u763:HasTag("299")) then
                            return
                        end
                        v9 = v8
                        v10 = nil
                        local v14 = nil
                        for i12, i13 in v9, v10, v14 do
                            if i13.ClassName == "MeshPart" then
                                i13.TextureID = ""
                            end
                            i13.Color = v3
                            i13.Material = Enum.Material.Wood
                            i13.MaterialVariant = "Trunk"
                        end
                        for i14, i15 in u763:GetChildren() do
                            if i15.ClassName == "Shirt" then
                                i15:Destroy()
                            elseif i15.ClassName ~= "ShirtGraphic" and i15.ClassName ~= "Pants" then
                            end
                        end
                        v9 = v7
                        v10 = nil
                        v14 = nil
                        for i16, i17 in v9, v10, v14 do
                            i17:Destroy()
                        end
                        return
                    end
                    if not p1 then
                        if not p1 then
                            return
                        elseif p1 ~= "FPSCamera" then
                            if p1 ~= "Toggle SCP-093 Portal" or p2 then
                                if p1 == "Facility Dust" and not p2 then
                                    Position_2 = "DustSmokePart"
                                    if workspace:FindFirstChild(Position_2) then
                                        workspace.DustSmokePart:Destroy()
                                    end
                                end
                                return
                            end
                            if not p3 or not (p3[1]) or not (p3[2]) then
                                return
                            end
                            p3[1].Transparency = 1
                            p3[2].Material = Enum.Material.Glass
                            p3[2].Transparency = 0.75
                            local TweenService_20 = DeltaFramework.TweenService
                            Position_2 = p3[2]
                            v4 = TweenInfo.new(5)
                            TweenService_20:Create(Position_2, v4, {Color = Color3.new(1, 1, 1)}):Play()
                            return
                        elseif not p2 then
                            u469 = p2
                            workspace:SetAttribute("FPS_Only", p2)
                            return
                        end
                    elseif Player.Character and Player.Character:FindFirstChild("Humanoid") and 0 < Player.Character.Humanoid.Health then
                        local Attribute, ColorCorrectionEffect_2, Lighting, UIColorCorrection087, u1755, u2470
                        local function Set1025(p1) -- Line: 1525 -- upvalues: u463 (upval), Player (val), DeltaFramework (upval), u467 (upval), u469 (upval)
                            if u463 then
                                u463:Disconnect()
                            end
                            if p1 then
                                return
                            end
                            u463 = Player.CharacterAdded:Connect(function() -- Line: 1532 -- upvalues: DeltaFramework (upval), u467 (upval), u469 (upval)
                                shared.Shake(nil, nil)
                                DeltaFramework.Lighting.FogEnd = 800
                                u467 = false
                                if DeltaFramework.Lighting:FindFirstChild("CBlind") then
                                    DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                end
                                if DeltaFramework.Lighting:FindFirstChild("Blurry") then
                                    DeltaFramework.Lighting:FindFirstChild("Blurry"):Destroy()
                                end
                                if u469 then
                                    workspace:SetAttribute("FPS_Only", false)
                                    u469 = false
                                end
                            end)
                        end
                        if p1 == "TextPopup" then
                            UpdateGenericUIText(p2, p3)
                            return
                        end
                        if p1 == "Marker" then
                            local Part = Instance.new("Part")
                            Part.Size = Vector3.new(0.009999999776482582, 0.009999999776482582, 0.009999999776482582)
                            Part.CastShadow = false
                            Part.Transparency = 1
                            Part.Anchored = true
                            Part.CanCollide = false
                            Part.CanTouch = false
                            Part.CanQuery = false
                            Part.CFrame = CFrame.new(p2)
                            Part.Name = "CustomMarker" .. p3
                            DeltaFramework.CS:AddTag(Part, "Objective")
                            v3 = DeltaFramework.ReplicatedStorage.LoadAsset.LocationMarker:Clone()
                            v3.TextLabel.Text = p3
                            v3.TextLabel.Back.Text = p3
                            v3.Parent = Part
                            v3.Enabled = true
                            Part.Parent = workspace
                            Character = DeltaFramework.Player.Character
                            task.spawn(function() -- Line: 1577 -- upvalues: DeltaFramework (upval), Character (val), Part (val)
                                while DeltaFramework.Player.Character == Character do
                                    if not (Part:IsDescendantOf(workspace)) then
                                        break
                                    end
                                    task.wait(1)
                                end
                                pcall(function() -- Line: 1582 -- upvalues: Part (upval)
                                    Part:Destroy()
                                end)
                            end)
                            return
                        end
                        if p1 == "Remove Marker" then
                            local u888 = workspace:FindFirstChild("CustomMarker" .. p2)
                            if not u888 then
                                return
                            end
                            pcall(function() -- Line: 1588 -- upvalues: u888 (val)
                                u888:Destroy()
                            end)
                            return
                        end
                        if p1 == "FPSCamera" then
                            if p2 and not (workspace:GetAttribute("FPS_Only")) then
                                u469 = true
                                if u463 then
                                    u463:Disconnect()
                                end
                                u463 = Player.CharacterAdded:Connect(function() -- Line: 1532 -- upvalues: DeltaFramework (upval), u467 (upval), u469 (upval)
                                    shared.Shake(nil, nil)
                                    DeltaFramework.Lighting.FogEnd = 800
                                    u467 = false
                                    if DeltaFramework.Lighting:FindFirstChild("CBlind") then
                                        DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                    end
                                    if DeltaFramework.Lighting:FindFirstChild("Blurry") then
                                        DeltaFramework.Lighting:FindFirstChild("Blurry"):Destroy()
                                    end
                                    if u469 then
                                        workspace:SetAttribute("FPS_Only", false)
                                        u469 = false
                                    end
                                end)
                            end
                            u469 = p2
                            workspace:SetAttribute("FPS_Only", p2)
                            return
                        end
                        if p1 == "Shake" then
                            if u463 then
                                u463:Disconnect()
                            end
                            if p2 then
                                u463 = Player.Character.Humanoid.Died:Connect(function() -- Line: 1605 -- upvalues: u467 (upval), DeltaFramework (upval)
                                    shared.Shake(nil, nil)
                                    if u467 then
                                        u467 = false
                                        DeltaFramework.Lighting.FogEnd = 800
                                    end
                                end)
                            end
                            shared.Shake(nil, p2)
                            if p3 then
                                return
                            end
                            if p2 then
                                if u463 then
                                    u463:Disconnect()
                                end
                                u463 = Player.CharacterAdded:Connect(function() -- Line: 1532 -- upvalues: DeltaFramework (upval), u467 (upval), u469 (upval)
                                    shared.Shake(nil, nil)
                                    DeltaFramework.Lighting.FogEnd = 800
                                    u467 = false
                                    if DeltaFramework.Lighting:FindFirstChild("CBlind") then
                                        DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                    end
                                    if DeltaFramework.Lighting:FindFirstChild("Blurry") then
                                        DeltaFramework.Lighting:FindFirstChild("Blurry"):Destroy()
                                    end
                                    if u469 then
                                        workspace:SetAttribute("FPS_Only", false)
                                        u469 = false
                                    end
                                end)
                            end
                            if not p2 or u467 then
                                if not p2 then
                                    if not u467 then
                                        return
                                    end
                                    u467 = false
                                    DeltaFramework.Lighting.FogEnd = 800
                                    return
                                end
                                return
                            end
                            u467 = true
                            DeltaFramework.Lighting.FogEnd = 50
                            while true do
                                task.wait(0.8)
                                if DeltaFramework.Lighting.FogEnd <= 0 or not u467 then
                                    break
                                end
                                Lighting = DeltaFramework.Lighting
                                Lighting.FogEnd = Lighting.FogEnd - 1
                            end
                            return
                        end
                        if p1 == "Static" then
                            local Attribute_2
                            local VideoFrame = Instance.new("VideoFrame")
                            VideoFrame.BackgroundTransparency = 1
                            VideoFrame.Size = UDim2.new(1, 0, 1, 0)
                            VideoFrame.BorderColor3 = Color3.new(0, 0, 0)
                            VideoFrame.Name = "087Static"
                            VideoFrame.BorderSizePixel = 0
                            VideoFrame.BackgroundColor3 = Color3.new(0, 0, 0)
                            VideoFrame.Video = "rbxassetid://5608411652"
                            local UIGradient = Instance.new("UIGradient")
                            UIGradient.Transparency = NumberSequence.new(1)
                            UIGradient.Parent = VideoFrame
                            if DeltaFramework.PlayerGui.SCPUIs:FindFirstChild("087Static") then
                                DeltaFramework.PlayerGui.SCPUIs["087Static"]:Destroy()
                            end
                            VideoFrame.Parent = DeltaFramework.PlayerGui.SCPUIs
                            local UIGradient_2 = VideoFrame.UIGradient
                            UIGradient_2.Transparency = NumberSequence.new(1)
                            VideoFrame.Visible = true
                            VideoFrame.Playing = true
                            while true do
                                task.wait(0.1)
                                UIGradient:SetAttribute("TrueTransparency", (UIGradient:GetAttribute("TrueTransparency") or 1) - 0.1)
                                UIGradient.Transparency = NumberSequence.new(UIGradient:GetAttribute("TrueTransparency"))
                                Attribute = VideoFrame.UIGradient:GetAttribute("TrueTransparency")
                                if Attribute <= 0 then
                                    break
                                end
                            end
                            task.wait(2)
                            while true do
                                task.wait(0.1)
                                UIGradient:SetAttribute("TrueTransparency", (UIGradient:GetAttribute("TrueTransparency") or 1) + 0.1)
                                UIGradient.Transparency = NumberSequence.new(UIGradient:GetAttribute("TrueTransparency"))
                                Attribute_2 = UIGradient:GetAttribute("TrueTransparency")
                                if 1 <= Attribute_2 then
                                    break
                                end
                            end
                            VideoFrame:Destroy()
                            return
                        end
                        if p1 == "Rush" then
                            if u468 then
                                pcall(function() -- Line: 1688 -- upvalues: u468 (upval)
                                    u468:Disconnect()
                                end)
                                u468 = nil
                            end
                            if not p2 then
                                return
                            end
                            UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("UIColorCorrection087")
                            if not UIColorCorrection087 then
                                UIColorCorrection087 = Instance.new("ColorCorrectionEffect")
                                UIColorCorrection087.Name = "UIColorCorrection087"
                                UIColorCorrection087.Parent = DeltaFramework.Lighting
                            end
                            local AttributeChangedSignal = DeltaFramework.Player.Character:GetAttributeChangedSignal("Inside087")
                            u468 = AttributeChangedSignal:Connect(function() -- Line: 1704 -- upvalues: DeltaFramework (upval), UIColorCorrection087 (ref), UpdateGenericUIText (upval), p3 (val)
                                local Attribute = DeltaFramework.Player.Character:GetAttribute("Inside087")
                                if Attribute then
                                    Attribute = 0 < DeltaFramework.Player.Character.Humanoid.Health
                                end
                                if Attribute then
                                    UIColorCorrection087.TintColor = Color3.fromRGB(255, 0, 0)
                                    UpdateGenericUIText("GO UP, escape the stairwell.", p3)
                                    return
                                end
                                UIColorCorrection087.TintColor = Color3.fromRGB(255, 255, 255)
                                UpdateGenericUIText("", nil, true)
                            end)
                            UIColorCorrection087.TintColor = Color3.fromRGB(255, 0, 0)
                            local PointLight = Instance.new("PointLight")
                            PointLight.Brightness = 2
                            PointLight.Color = Color3.fromRGB(255, 255, 255)
                            PointLight.Shadows = false
                            PointLight.Range = 20
                            PointLight.Parent = DeltaFramework.Player.Character.HumanoidRootPart
                            return
                        end
                        if p1 == "DragCamera" then
                            local Position_3, PrimaryPart
                            UIColorCorrection087 = Player.Character
                            u2470 = p3
                            while UIColorCorrection087 do
                                PrimaryPart = UIColorCorrection087.PrimaryPart
                                if not (UIColorCorrection087:GetAttribute("087")) or not u2470 or not u2470.Parent or not PrimaryPart or not (UIColorCorrection087:FindFirstChild("Humanoid")) or UIColorCorrection087.Humanoid.Health <= 0 then
                                    break
                                end
                                Position_3 = u2470.Position
                                v5 = CFrame.lookAt(PrimaryPart.Position, (Vector3.new(Position_3.X, PrimaryPart.Position.Y, Position_3.Z)))
                                v6 = table.pack(PrimaryPart.CFrame:ToOrientation())
                                v7 = v6[2]
                                v8 = table.pack(v5:ToOrientation())[2]
                                v10 = math.abs(v7 - v8)
                                if v10 < 0.2 then
                                    break
                                end
                                v10 = math.abs(v8 - v7 + 0.01)
                                if math.abs(v8 - v7 - 0.01) >= v10 then
                                    v9 = CFrame.fromEulerAnglesXYZ(v6[1], v7 - 0.01, v6[3])
                                else
                                    v9 = CFrame.fromEulerAnglesXYZ(v6[1], v7 + 0.01, v6[3])
                                end
                                PrimaryPart.CFrame = CFrame.new(PrimaryPart.Position) * v9
                                DeltaFramework.RunService.RenderStepped:Wait()
                            end
                            return
                        end
                        if p1 == "Sound" then
                            if p3 == "Crying" then
                                if not p2 then
                                    pcall(function() -- Line: 1766
                                        workspace.Lights.Normal:FindFirstChild("CryingPart"):Destroy()
                                    end)
                                    return
                                end
                                UIColorCorrection087 = DeltaFramework.ReplicatedStorage.CryingPart:Clone()
                                pcall(function() -- Line: 1770 -- upvalues: UIColorCorrection087 (val), DeltaFramework (upval)
                                    UIColorCorrection087.Parent = workspace.Lights.Normal
                                    UIColorCorrection087.Position = DeltaFramework.Player.Character.PrimaryPart.Position - Vector3.new(0, 15, 0)
                                    UIColorCorrection087.Crying:Play()
                                    UIColorCorrection087:SetAttribute("Last", os.time() + UIColorCorrection087.Crying.TimeLength)
                                end)
                                return
                            end
                            if not p3 then
                                return
                            end
                            UIColorCorrection087 = typeof(p3)
                            if UIColorCorrection087 ~= "table" then
                                return
                            end
                            if not p2 then
                                UIColorCorrection087 = u470[p3.Name]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3.Tween
                                if not UIColorCorrection087 then
                                    u470[p3.Name]:Destroy()
                                    return
                                end
                                UIColorCorrection087 = DeltaFramework.TweenService
                                v4 = u470[p3.Name]
                                v5 = TweenInfo.new(p3.Tween.TI)
                                UIColorCorrection087 = UIColorCorrection087:Create(v4, v5, p3.Tween.TweenTable)
                                UIColorCorrection087:Play()
                                UIColorCorrection087.Completed:wait()
                                u470[p3.Name]:Destroy()
                                return
                            end
                            UIColorCorrection087 = p3.ID
                            if not UIColorCorrection087 then
                                return
                            end
                            UIColorCorrection087 = Instance.new("Sound")
                            UIColorCorrection087.SoundId = "rbxassetid://" .. tostring(p3.ID)
                            UIColorCorrection087.RollOffMaxDistance = 50
                            UIColorCorrection087.Volume = p3.Volume or 1
                            UIColorCorrection087.PlaybackSpeed = 1
                            UIColorCorrection087.Name = p3.Name
                            UIColorCorrection087.SoundGroup = DeltaFramework.SoundService.MassMute
                            UIColorCorrection087.Parent = Player.Character
                            if p3.ID == "0" then
                                UIColorCorrection087:Destroy()
                                return
                            end
                            for k2, i7 in pairs(p3) do
                                pcall(function() -- Line: 1821 -- upvalues: UIColorCorrection087 (val), k2 (val), i7 (val)
                                    UIColorCorrection087[k2] = i7
                                end)
                            end
                            v3 = 0
                            while v3 < 5 do
                                if UIColorCorrection087.SoundId == "rbxassetid://0" or UIColorCorrection087.IsLoaded then
                                    break
                                end
                                v3 = v3 + task.wait()
                            end
                            if not UIColorCorrection087.IsLoaded or UIColorCorrection087.SoundId == "rbxassetid://0" then
                                UIColorCorrection087:Destroy()
                                return
                            end
                            if u470[p3.Name] then
                                u470[p3.Name]:Destroy()
                            end
                            UIColorCorrection087:Play()
                            if p3.Tween then
                                local TweenService_10 = DeltaFramework.TweenService
                                v7 = TweenInfo.new(p3.Tween.TI)
                                TweenService_10:Create(UIColorCorrection087, v7, p3.Tween.TweenTable):Play()
                            end
                            if UIColorCorrection087.Looped then
                                u470[p3.Name] = UIColorCorrection087
                                return
                            end
                            task.wait(UIColorCorrection087.TimeLength + 0.3)
                            UIColorCorrection087:Destroy()
                            return
                        end
                        if p1 == "Staring" then
                            local Check
                            if p2 then
                                if p2 then
                                    UIColorCorrection087 = u465
                                    if UIColorCorrection087 then
                                        return
                                    end
                                    u465 = true
                                    UIColorCorrection087 = RaycastParams.new()
                                    UIColorCorrection087.FilterType = Enum.RaycastFilterType.Exclude
                                    function Check(p1) -- Line: 1857 -- upvalues: DeltaFramework (upval)
                                        local Character, v1, v2
                                        if p1 then
                                            Character = p1
                                        else
                                            Character = DeltaFramework.Player.Character
                                        end
                                        v1, v2 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                            local Humanoid = Character
                                            if Humanoid then
                                                Humanoid = Character:FindFirstChild("Humanoid")
                                                if Humanoid then
                                                    Humanoid = 0 < Character.Humanoid.Health
                                                end
                                            end
                                            return Humanoid
                                        end)
                                        return v1 and v2
                                    end
                                    task.spawn(function() -- Line: 1867 -- upvalues: DeltaFramework (upval), u465 (upval), u1711 (upval), UIColorCorrection087 (val), u471 (upval)
                                        local v1, v2, v3, v4
                                        local Character = nil
                                        if not Character then
                                            Character = DeltaFramework.Player.Character
                                        end
                                        v3, v4 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                            local Humanoid = Character
                                            if Humanoid then
                                                Humanoid = Character:FindFirstChild("Humanoid")
                                                if Humanoid then
                                                    Humanoid = 0 < Character.Humanoid.Health
                                                end
                                            end
                                            return Humanoid
                                        end)
                                        local Character_2 = v3 and v4
                                        if Character_2 then
                                            Character_2 = DeltaFramework.Player.Character
                                        end
                                        if not Character_2 then
                                            u465 = false
                                            return
                                        end
                                        while true do
                                            DeltaFramework.RunService.RenderStepped:Wait()
                                            Character = pcall
                                            Character, v3 = Character(function() -- Line: 1879 -- upvalues: u465 (upval), Character_2 (val), DeltaFramework (upval)
                                                local v1 = u465
                                                if v1 then
                                                    local v2, v3
                                                    local Character = Character_2
                                                    if not Character then
                                                        Character = DeltaFramework.Player.Character
                                                    end
                                                    v2, v3 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                                        local Humanoid = Character
                                                        if Humanoid then
                                                            Humanoid = Character:FindFirstChild("Humanoid")
                                                            if Humanoid then
                                                                Humanoid = 0 < Character.Humanoid.Health
                                                            end
                                                        end
                                                        return Humanoid
                                                    end)
                                                    v1 = v2 and v3
                                                end
                                                return v1
                                            end)
                                            if not Character or not v3 then
                                                break
                                            end
                                            v4 = u1711:Characters()
                                            local Position = Character_2:GetPivot().Position
                                            for i, v in ipairs(v4) do
                                                if v ~= Character_2 then
                                                    local Character_3 = v
                                                    if not Character_3 then
                                                        Character_3 = DeltaFramework.Player.Character
                                                    end
                                                    v1, v2 = pcall(function() -- Line: 1862 -- upvalues: Character_3 (ref)
                                                        local Humanoid = Character_3
                                                        if Humanoid then
                                                            Humanoid = Character_3:FindFirstChild("Humanoid")
                                                            if Humanoid then
                                                                Humanoid = 0 < Character_3.Humanoid.Health
                                                            end
                                                        end
                                                        return Humanoid
                                                    end)
                                                    if v1 and v2 then
                                                        if not u465 then
                                                            break
                                                        end
                                                        UIColorCorrection087.FilterDescendantsInstances = {workspace.Lights, Character_2, v}
                                                        local Position_2 = v:GetPivot().Position
                                                        Character_3, v1 = pcall(function() -- Line: 1893 -- upvalues: Position (val), Position_2 (val), UIColorCorrection087 (upval), u471 (upval), v (val), DeltaFramework (upval)
                                                            local v1 = workspace:Raycast(Position, (Position_2 - Position).Unit, UIColorCorrection087)
                                                            local v2 = vector.magnitude(Position_2 - Position)
                                                            if v2 > 50 then
                                                                if not (u471[v.Name]) then
                                                                    return
                                                                end
                                                                pcall(function() -- Line: 1954 -- upvalues: u471 (upval), v (upval)
                                                                    u471[v.Name].Event:Disconnect()
                                                                end)
                                                                pcall(function() -- Line: 1958 -- upvalues: DeltaFramework (upval), u471 (upval), v (upval)
                                                                    local Clone = u471[v.Name].Clone
                                                                    local v1 = TweenInfo.new(0.7)
                                                                    DeltaFramework.TweenService:Create(Clone, v1, {CFrame = v.PrimaryPart.CFrame}):Play()
                                                                    task.wait(0.8)
                                                                    u471[v.Name].Clone:Destroy()
                                                                end)
                                                                u471[v.Name] = nil
                                                                if workspace:FindFirstChild(v.Name) then
                                                                    for i, i2 in ipairs(v:GetDescendants()) do
                                                                        if not (i2:IsA("BasePart")) then
                                                                            if i2:IsA("BillBoardGui") and i2.Name == "Tag" then
                                                                                i2.Enabled = true
                                                                            end
                                                                        elseif i2.Name ~= "HumanoidRootPart" and i2.Name ~= "face" and i2:GetAttribute("OGTransparencyS") then
                                                                            i2.Transparency = i2:GetAttribute("OGTransparencyS")
                                                                            i2:SetAttribute("OGTransparencyS", nil)
                                                                        end
                                                                    end
                                                                end
                                                                return
                                                            elseif not v1 then
                                                                if not (u471[v.Name]) then
                                                                    local Transparency
                                                                    v.Archivable = true
                                                                    v2 = v:Clone()
                                                                    v2.Name = "Fake"
                                                                    v2.PrimaryPart.Anchored = true
                                                                    v2.Parent = workspace
                                                                    v.Archivable = false
                                                                    u471[v.Name] = {Clone = v2}
                                                                    for j, k in v:GetDescendants() do
                                                                        if not (k:IsA("BasePart")) then
                                                                            if k:IsA("BillboardGui") and k.Name == "Tag" then
                                                                                k.Enabled = false
                                                                            end
                                                                        elseif k.Name ~= "HumanoidRootPart" and k.Name ~= "face" and k.Transparency ~= 1 then
                                                                            k:SetAttribute("OGTransparencyS", k.Transparency)
                                                                            k.Transparency = 1
                                                                        end
                                                                    end
                                                                    for n, m in v2:GetDescendants() do
                                                                        if m:IsA("BasePart") then
                                                                            m.CanCollide = false
                                                                            m.CanQuery = false
                                                                            m.Massless = true
                                                                        end
                                                                    end
                                                                end
                                                                if not (u471[v.Name]) or not (u471[v.Name].Clone) then
                                                                    return
                                                                end
                                                                v2 = u471[v.Name]
                                                                v2.Event = v.Humanoid.Animator.AnimationPlayed:Connect(function(p1) -- Line: 1931 -- upvalues: u471 (upval), v (upval)
                                                                    if not (u471[v.Name]) or not (u471[v.Name].Clone) then
                                                                        return
                                                                    end
                                                                    local v1 = true
                                                                    u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()
                                                                    for i, i2 in ipairs(u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()) do
                                                                        if i2.Animation == p1.Animation then
                                                                            v1 = false
                                                                            break
                                                                        end
                                                                    end
                                                                    if not v1 then
                                                                        return
                                                                    end
                                                                    for i3, j in ipairs(u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()) do
                                                                        j:Stop()
                                                                    end
                                                                    u471[v.Name].Clone.Humanoid.Animator:LoadAnimation(p1.Animation):Play()
                                                                end)
                                                                u471[v.Name].Clone:PivotTo(CFrame.new(Position_2, (Vector3.new(Position.X, Position_2.Y, Position.Z))))
                                                                return
                                                            end
                                                        end)
                                                        if not Character_3 and DeltaFramework.RunService:IsStudio() then
                                                            warn(v1)
                                                        end
                                                    end
                                                end
                                            end
                                            if not u465 then
                                                Character, v3, v4 = pairs(u471)
                                                for k, i2 in Character(u471) do
                                                    pcall(function() -- Line: 1989 -- upvalues: u471 (upval), k (val)
                                                        u471[k].Event:Disconnect()
                                                    end)
                                                    pcall(function() -- Line: 1993 -- upvalues: u471 (upval), k (val)
                                                        task.wait(0.8)
                                                        u471[k].Clone:Destroy()
                                                    end)
                                                    u471[k] = nil
                                                end
                                                pcall(function() -- Line: 2001 -- upvalues: u1711 (upval)
                                                    for i, v in ipairs(u1711:Characters()) do
                                                        for i2, i3 in ipairs(v:GetDescendants()) do
                                                            if not (i3:IsA("BasePart")) then
                                                                if i3:IsA("BillBoardGui") and i3.Name == "Tag" then
                                                                    i3.Enabled = true
                                                                end
                                                            elseif i3.Name ~= "HumanoidRootPart" and i3.Name ~= "face" and i3:GetAttribute("OGTransparencyS") then
                                                                i3.Transparency = i3:GetAttribute("OGTransparencyS")
                                                                i3:SetAttribute("OGTransparencyS", nil)
                                                            end
                                                        end
                                                    end
                                                end)
                                                u465 = false
                                                return
                                            end
                                        end
                                        u465 = false
                                    end)
                                    return
                                end
                                return
                            end
                            UIColorCorrection087 = u465
                            if UIColorCorrection087 then
                                u465 = false
                                return
                            end
                            if not p2 then
                                return
                            end
                            UIColorCorrection087 = u465
                            if UIColorCorrection087 then
                                return
                            end
                            u465 = true
                            UIColorCorrection087 = RaycastParams.new()
                            UIColorCorrection087.FilterType = Enum.RaycastFilterType.Exclude
                            function Check(p1) -- Line: 1857 -- upvalues: DeltaFramework (upval)
                                local Character, v1, v2
                                if p1 then
                                    Character = p1
                                else
                                    Character = DeltaFramework.Player.Character
                                end
                                v1, v2 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                    local Humanoid = Character
                                    if Humanoid then
                                        Humanoid = Character:FindFirstChild("Humanoid")
                                        if Humanoid then
                                            Humanoid = 0 < Character.Humanoid.Health
                                        end
                                    end
                                    return Humanoid
                                end)
                                return v1 and v2
                            end
                            task.spawn(function() -- Line: 1867 -- upvalues: DeltaFramework (upval), u465 (upval), u1711 (upval), UIColorCorrection087 (val), u471 (upval)
                                local v1, v2, v3, v4
                                local Character = nil
                                if not Character then
                                    Character = DeltaFramework.Player.Character
                                end
                                v3, v4 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                    local Humanoid = Character
                                    if Humanoid then
                                        Humanoid = Character:FindFirstChild("Humanoid")
                                        if Humanoid then
                                            Humanoid = 0 < Character.Humanoid.Health
                                        end
                                    end
                                    return Humanoid
                                end)
                                local Character_2 = v3 and v4
                                if Character_2 then
                                    Character_2 = DeltaFramework.Player.Character
                                end
                                if not Character_2 then
                                    u465 = false
                                    return
                                end
                                while true do
                                    DeltaFramework.RunService.RenderStepped:Wait()
                                    Character = pcall
                                    Character, v3 = Character(function() -- Line: 1879 -- upvalues: u465 (upval), Character_2 (val), DeltaFramework (upval)
                                        local v1 = u465
                                        if v1 then
                                            local v2, v3
                                            local Character = Character_2
                                            if not Character then
                                                Character = DeltaFramework.Player.Character
                                            end
                                            v2, v3 = pcall(function() -- Line: 1862 -- upvalues: Character (ref)
                                                local Humanoid = Character
                                                if Humanoid then
                                                    Humanoid = Character:FindFirstChild("Humanoid")
                                                    if Humanoid then
                                                        Humanoid = 0 < Character.Humanoid.Health
                                                    end
                                                end
                                                return Humanoid
                                            end)
                                            v1 = v2 and v3
                                        end
                                        return v1
                                    end)
                                    if not Character or not v3 then
                                        break
                                    end
                                    v4 = u1711:Characters()
                                    local Position = Character_2:GetPivot().Position
                                    for i, v in ipairs(v4) do
                                        if v ~= Character_2 then
                                            local Character_3 = v
                                            if not Character_3 then
                                                Character_3 = DeltaFramework.Player.Character
                                            end
                                            v1, v2 = pcall(function() -- Line: 1862 -- upvalues: Character_3 (ref)
                                                local Humanoid = Character_3
                                                if Humanoid then
                                                    Humanoid = Character_3:FindFirstChild("Humanoid")
                                                    if Humanoid then
                                                        Humanoid = 0 < Character_3.Humanoid.Health
                                                    end
                                                end
                                                return Humanoid
                                            end)
                                            if v1 and v2 then
                                                if not u465 then
                                                    break
                                                end
                                                UIColorCorrection087.FilterDescendantsInstances = {workspace.Lights, Character_2, v}
                                                local Position_2 = v:GetPivot().Position
                                                Character_3, v1 = pcall(function() -- Line: 1893 -- upvalues: Position (val), Position_2 (val), UIColorCorrection087 (upval), u471 (upval), v (val), DeltaFramework (upval)
                                                    local v1 = workspace:Raycast(Position, (Position_2 - Position).Unit, UIColorCorrection087)
                                                    local v2 = vector.magnitude(Position_2 - Position)
                                                    if v2 > 50 then
                                                        if not (u471[v.Name]) then
                                                            return
                                                        end
                                                        pcall(function() -- Line: 1954 -- upvalues: u471 (upval), v (upval)
                                                            u471[v.Name].Event:Disconnect()
                                                        end)
                                                        pcall(function() -- Line: 1958 -- upvalues: DeltaFramework (upval), u471 (upval), v (upval)
                                                            local Clone = u471[v.Name].Clone
                                                            local v1 = TweenInfo.new(0.7)
                                                            DeltaFramework.TweenService:Create(Clone, v1, {CFrame = v.PrimaryPart.CFrame}):Play()
                                                            task.wait(0.8)
                                                            u471[v.Name].Clone:Destroy()
                                                        end)
                                                        u471[v.Name] = nil
                                                        if workspace:FindFirstChild(v.Name) then
                                                            for i, i2 in ipairs(v:GetDescendants()) do
                                                                if not (i2:IsA("BasePart")) then
                                                                    if i2:IsA("BillBoardGui") and i2.Name == "Tag" then
                                                                        i2.Enabled = true
                                                                    end
                                                                elseif i2.Name ~= "HumanoidRootPart" and i2.Name ~= "face" and i2:GetAttribute("OGTransparencyS") then
                                                                    i2.Transparency = i2:GetAttribute("OGTransparencyS")
                                                                    i2:SetAttribute("OGTransparencyS", nil)
                                                                end
                                                            end
                                                        end
                                                        return
                                                    elseif not v1 then
                                                        if not (u471[v.Name]) then
                                                            local Transparency
                                                            v.Archivable = true
                                                            v2 = v:Clone()
                                                            v2.Name = "Fake"
                                                            v2.PrimaryPart.Anchored = true
                                                            v2.Parent = workspace
                                                            v.Archivable = false
                                                            u471[v.Name] = {Clone = v2}
                                                            for j, k in v:GetDescendants() do
                                                                if not (k:IsA("BasePart")) then
                                                                    if k:IsA("BillboardGui") and k.Name == "Tag" then
                                                                        k.Enabled = false
                                                                    end
                                                                elseif k.Name ~= "HumanoidRootPart" and k.Name ~= "face" and k.Transparency ~= 1 then
                                                                    k:SetAttribute("OGTransparencyS", k.Transparency)
                                                                    k.Transparency = 1
                                                                end
                                                            end
                                                            for n, m in v2:GetDescendants() do
                                                                if m:IsA("BasePart") then
                                                                    m.CanCollide = false
                                                                    m.CanQuery = false
                                                                    m.Massless = true
                                                                end
                                                            end
                                                        end
                                                        if not (u471[v.Name]) or not (u471[v.Name].Clone) then
                                                            return
                                                        end
                                                        v2 = u471[v.Name]
                                                        v2.Event = v.Humanoid.Animator.AnimationPlayed:Connect(function(p1) -- Line: 1931 -- upvalues: u471 (upval), v (upval)
                                                            if not (u471[v.Name]) or not (u471[v.Name].Clone) then
                                                                return
                                                            end
                                                            local v1 = true
                                                            u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()
                                                            for i, i2 in ipairs(u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()) do
                                                                if i2.Animation == p1.Animation then
                                                                    v1 = false
                                                                    break
                                                                end
                                                            end
                                                            if not v1 then
                                                                return
                                                            end
                                                            for i3, j in ipairs(u471[v.Name].Clone.Humanoid.Animator:GetPlayingAnimationTracks()) do
                                                                j:Stop()
                                                            end
                                                            u471[v.Name].Clone.Humanoid.Animator:LoadAnimation(p1.Animation):Play()
                                                        end)
                                                        u471[v.Name].Clone:PivotTo(CFrame.new(Position_2, (Vector3.new(Position.X, Position_2.Y, Position.Z))))
                                                        return
                                                    end
                                                end)
                                                if not Character_3 and DeltaFramework.RunService:IsStudio() then
                                                    warn(v1)
                                                end
                                            end
                                        end
                                    end
                                    if not u465 then
                                        Character, v3, v4 = pairs(u471)
                                        for k, i2 in Character(u471) do
                                            pcall(function() -- Line: 1989 -- upvalues: u471 (upval), k (val)
                                                u471[k].Event:Disconnect()
                                            end)
                                            pcall(function() -- Line: 1993 -- upvalues: u471 (upval), k (val)
                                                task.wait(0.8)
                                                u471[k].Clone:Destroy()
                                            end)
                                            u471[k] = nil
                                        end
                                        pcall(function() -- Line: 2001 -- upvalues: u1711 (upval)
                                            for i, v in ipairs(u1711:Characters()) do
                                                for i2, i3 in ipairs(v:GetDescendants()) do
                                                    if not (i3:IsA("BasePart")) then
                                                        if i3:IsA("BillBoardGui") and i3.Name == "Tag" then
                                                            i3.Enabled = true
                                                        end
                                                    elseif i3.Name ~= "HumanoidRootPart" and i3.Name ~= "face" and i3:GetAttribute("OGTransparencyS") then
                                                        i3.Transparency = i3:GetAttribute("OGTransparencyS")
                                                        i3:SetAttribute("OGTransparencyS", nil)
                                                    end
                                                end
                                            end
                                        end)
                                        u465 = false
                                        return
                                    end
                                end
                                u465 = false
                            end)
                            return
                        end
                        if p1 == "2950" then
                            if p3 == "Reveal" then
                                pcall(function() -- Line: 2020 -- upvalues: u466 (upval), DeltaFramework (upval)
                                    local v1
                                    if u466 then
                                        return
                                    end
                                    local Entity = workspace.SCPs["SCP-2950"].Entity
                                    u466 = true
                                    Entity.Parent.Ambience:Play()
                                    for i, v in ipairs(Entity:GetChildren()) do
                                        v1 = TweenInfo.new(1)
                                        DeltaFramework.TweenService:Create(v, v1, {Transparency = 0})
                                    end
                                    task.wait(3)
                                    for i2, i3 in ipairs(Entity:GetChildren()) do
                                        v1 = TweenInfo.new(1)
                                        DeltaFramework.TweenService:Create(i3, v1, {Transparency = 1})
                                    end
                                    u466 = false
                                    task.wait(5)
                                    if Entity and Entity.Parent then
                                        Entity.Parent.Ambience:Stop()
                                    end
                                end)
                                return
                            end
                            if p3 == "Tag" then
                                spawn(function() -- Line: 2046 -- upvalues: DeltaFramework (upval)
                                    local Character = DeltaFramework.Player.Character
                                    if Character then
                                        local ColorCorrectionEffect, ColorCorrectionEffect_2, Sound, Sound_2, Sound_3, Sound_4, TweenService, TweenService_2, TweenService_3, TweenService_4, v1, v2, v3, v4, v5, v6, v7, v8
                                        for i, v in ipairs(Character:GetChildren()) do
                                            if v.ClassName == "Sound" and v.SoundId == "rbxassetid://5948090748" then
                                                v:Destroy()
                                            end
                                        end
                                        pcall(function() -- Line: 2056 -- upvalues: DeltaFramework (upval)
                                            DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                        end)
                                        local v9 = 0
                                        local v10 = math.random(30, 60)
                                        while DeltaFramework.Player.Character == Character do
                                            if not (DeltaFramework.CS:HasTag(DeltaFramework.Player.Character, "SCP2950")) then
                                                break
                                            end
                                            v9 = v9 + task.wait(1)
                                            if v10 <= v9 then
                                                v9 = v9 - v10
                                                v10 = math.random(30, 60)
                                                v4 = math.random(1, 2)
                                                if v4 == 1 then
                                                    v5 = math.random(1, 10)
                                                    if v5 <= 5 then
                                                        Sound = Instance.new("Sound")
                                                        Sound.SoundId = "rbxassetid://9114352479"
                                                        Sound.Volume = 1
                                                        Sound.SoundGroup = DeltaFramework.SoundService.MassMute
                                                        Sound.PlayOnRemove = true
                                                        Sound.Parent = workspace
                                                        Sound:Destroy()
                                                    end
                                                    ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
                                                    ColorCorrectionEffect.Name = "SCP2950Darkness"
                                                    ColorCorrectionEffect.Parent = DeltaFramework.Lighting
                                                    v7 = TweenInfo.new(1)
                                                    DeltaFramework.TweenService:Create(ColorCorrectionEffect, v7, {Brightness = -0.1, Contrast = 0.25}):Play()
                                                    Sound_2 = Instance.new("Sound")
                                                    Sound_2.SoundId = "rbxassetid://1843755030"
                                                    Sound_2.Volume = 0
                                                    Sound_2.Name = "SCP2950"
                                                    Sound_2.PlaybackSpeed = 0.85
                                                    Sound_2.SoundGroup = DeltaFramework.SoundService.MassMute
                                                    Sound_2.Parent = workspace
                                                    Sound_2:Play()
                                                    TweenService = DeltaFramework.TweenService
                                                    v8 = TweenInfo.new(5)
                                                    TweenService:Create(Sound_2, v8, {Volume = 1}):Play()
                                                    local u217 = {}
                                                    for i2, i3 in ipairs(workspace.Lights:GetDescendants()) do
                                                        if i3:IsA("BasePart") then
                                                            table.insert(u217, i3)
                                                        end
                                                    end
                                                    v6 = #u217
                                                    v7 = 1
                                                    for j = 1, v6, v7 do
                                                        if 0 < u217[j].Transparency then
                                                            local Color = u217[j].Color
                                                            v2 = u217[j]
                                                            v2.Color = Color3.new(0, 0, 0)
                                                            task.delay(1, function() -- Line: 2122 -- upvalues: u217 (val), j (val), Color (val)
                                                                local v1 = math.floor(u217[j].Color.r * 255)
                                                                if v1 <= 0 then
                                                                    v1 = u217[j]
                                                                    v1.Color = Color
                                                                end
                                                            end)
                                                        end
                                                        local u158 = {}
                                                        for i4, k in ipairs(u217[j]:GetDescendants()) do
                                                            if k:IsA("Light") and k.Enabled then
                                                                table.insert(u158, k)
                                                            end
                                                        end
                                                        if 0 < #u158 then
                                                            v2 = #u158
                                                            v3 = 1
                                                            for n = 1, v2, v3 do
                                                                u158[n].Enabled = false
                                                            end
                                                            task.delay(1, function() -- Line: 2142 -- upvalues: u158 (val)
                                                                local v1
                                                                local v2 = #u158
                                                                local v3 = 1
                                                                for i = 1, v2, v3 do
                                                                    v1 = u158[i]
                                                                    v1.Enabled = true
                                                                end
                                                            end)
                                                        end
                                                        task.wait(0.01)
                                                    end
                                                    v1 = TweenInfo.new(1)
                                                    DeltaFramework.TweenService:Create(ColorCorrectionEffect, v1, {Brightness = 0, Contrast = 0}):Play()
                                                    v1 = TweenInfo.new(1)
                                                    DeltaFramework.TweenService:Create(Sound_2, v1, {Volume = 0}):Play()
                                                    task.wait(1)
                                                    ColorCorrectionEffect:Destroy()
                                                    Sound_2:Destroy()
                                                elseif v4 == 2 then
                                                    v5 = math.random(1, 10)
                                                    if v5 <= 5 then
                                                        Sound_3 = Instance.new("Sound")
                                                        Sound_3.SoundId = "rbxassetid://9125544285"
                                                        Sound_3.Volume = 1
                                                        Sound_3.SoundGroup = DeltaFramework.SoundService.MassMute
                                                        Sound_3.PlayOnRemove = true
                                                        Sound_3.Parent = workspace
                                                        Sound_3:Destroy()
                                                    end
                                                    ColorCorrectionEffect_2 = Instance.new("ColorCorrectionEffect")
                                                    ColorCorrectionEffect_2.Name = "SCP2950Darkness"
                                                    ColorCorrectionEffect_2.Parent = DeltaFramework.Lighting
                                                    v7 = TweenInfo.new(1)
                                                    DeltaFramework.TweenService:Create(ColorCorrectionEffect_2, v7, {Brightness = -0.5, Contrast = 1}):Play()
                                                    Sound_4 = Instance.new("Sound")
                                                    Sound_4.SoundId = "rbxassetid://9113126313"
                                                    Sound_4.Volume = 0
                                                    Sound_4.Name = "SCP2950"
                                                    Sound_4.PlaybackSpeed = 0.85
                                                    Sound_4.SoundGroup = DeltaFramework.SoundService.MassMute
                                                    Sound_4.Parent = workspace
                                                    Sound_4:Play()
                                                    TweenService_2 = DeltaFramework.TweenService
                                                    v8 = TweenInfo.new(5)
                                                    TweenService_2:Create(Sound_4, v8, {Volume = 1}):Play()
                                                    task.wait(math.random(12, 20))
                                                    TweenService_3 = DeltaFramework.TweenService
                                                    v8 = TweenInfo.new(1)
                                                    TweenService_3:Create(ColorCorrectionEffect_2, v8, {Brightness = 0, Contrast = 0}):Play()
                                                    TweenService_4 = DeltaFramework.TweenService
                                                    v8 = TweenInfo.new(1)
                                                    TweenService_4:Create(Sound_4, v8, {Volume = 0}):Play()
                                                    task.wait(1)
                                                    ColorCorrectionEffect_2:Destroy()
                                                    Sound_4:Destroy()
                                                end
                                            end
                                        end
                                    end
                                end)
                                return
                            end
                            if p3 ~= "TagEnd" then
                                return
                            end
                            UIColorCorrection087 = DeltaFramework.Player.Character
                            if not UIColorCorrection087 then
                                return
                            end
                            DeltaFramework.CS:RemoveTag(DeltaFramework.Player.Character, "SCP2950")
                            return
                        end
                        if p1 == "Blur" then
                            if not p2 then
                                UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("Blurry")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("Blurry")
                                UIColorCorrection087:Destroy()
                                UIColorCorrection087 = u463
                                if not UIColorCorrection087 then
                                    return
                                end
                                u463:Disconnect()
                                return
                            end
                            UIColorCorrection087 = Player
                            if UIColorCorrection087 then
                                UIColorCorrection087 = Player.Character
                            end
                            local BlurEffect = Instance.new("BlurEffect")
                            if p3 then
                                v4 = "BlurSCP"
                            else
                                v4 = "Blurry"
                            end
                            BlurEffect.Name = v4
                            if p3 then
                                v4 = 0
                            else
                                v4 = 10
                            end
                            BlurEffect.Size = v4
                            BlurEffect.Parent = DeltaFramework.Lighting
                            if p3 then
                                task.spawn(function() -- Line: 2229 -- upvalues: UIColorCorrection087 (val), BlurEffect (val), DeltaFramework (upval), Player (val)
                                    local v1, v2
                                    while task.wait(1) do
                                        if UIColorCorrection087.Parent and UIColorCorrection087:FindFirstChild("HumanoidRootPart") and 0 < UIColorCorrection087.Humanoid.Health then
                                            if BlurEffect.Name == "BlurSCP" and not (UIColorCorrection087:GetAttribute("966Target")) then
                                                if not BlurEffect then
                                                    break
                                                end
                                                v2 = TweenInfo.new(1)
                                                DeltaFramework.TweenService:Create(BlurEffect, v2, {Size = 0}):Play()
                                                task.wait(1)
                                                if not BlurEffect.Parent then
                                                    break
                                                end
                                                BlurEffect:Destroy()
                                                return
                                            end
                                            if Player.Character:GetAttribute("966Target") ~= "OnHold" then
                                                v1 = BlurEffect
                                                v1.Size = v1.Size + 0.5
                                            end
                                            continue
                                        end
                                        if not BlurEffect then
                                            break
                                        end
                                        v2 = TweenInfo.new(1)
                                        DeltaFramework.TweenService:Create(BlurEffect, v2, {Size = 0}):Play()
                                        task.wait(1)
                                        if not BlurEffect.Parent then
                                            break
                                        end
                                        BlurEffect:Destroy()
                                        return
                                    end
                                end)
                                return
                            end
                            if u463 then
                                u463:Disconnect()
                            end
                            u463 = Player.CharacterAdded:Connect(function() -- Line: 1532 -- upvalues: DeltaFramework (upval), u467 (upval), u469 (upval)
                                shared.Shake(nil, nil)
                                DeltaFramework.Lighting.FogEnd = 800
                                u467 = false
                                if DeltaFramework.Lighting:FindFirstChild("CBlind") then
                                    DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                end
                                if DeltaFramework.Lighting:FindFirstChild("Blurry") then
                                    DeltaFramework.Lighting:FindFirstChild("Blurry"):Destroy()
                                end
                                if u469 then
                                    workspace:SetAttribute("FPS_Only", false)
                                    u469 = false
                                end
                            end)
                            return
                        end
                        if p1 == "CBlind" then
                            if not p2 then
                                UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("CBlind")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("CBlind")
                                UIColorCorrection087:Destroy()
                                UIColorCorrection087 = u463
                                if not UIColorCorrection087 then
                                    return
                                end
                                u463:Disconnect()
                                return
                            end
                            UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("CBlind")
                            if UIColorCorrection087 then
                                return
                            end
                            UIColorCorrection087 = Instance.new("ColorCorrectionEffect")
                            UIColorCorrection087.Name = "CBlind"
                            UIColorCorrection087.Parent = DeltaFramework.Lighting
                            if not p3 then
                                UIColorCorrection087.Saturation = -1
                            else
                                local TweenService_11 = DeltaFramework.TweenService
                                v6 = TweenInfo.new(10)
                                u464 = TweenService_11:Create(UIColorCorrection087, v6, {Saturation = -1, Contrast = 1})
                                u464:Play()
                            end
                            if u463 then
                                u463:Disconnect()
                            end
                            u463 = Player.CharacterAdded:Connect(function() -- Line: 1532 -- upvalues: DeltaFramework (upval), u467 (upval), u469 (upval)
                                shared.Shake(nil, nil)
                                DeltaFramework.Lighting.FogEnd = 800
                                u467 = false
                                if DeltaFramework.Lighting:FindFirstChild("CBlind") then
                                    DeltaFramework.Lighting:FindFirstChild("CBlind"):Destroy()
                                end
                                if DeltaFramework.Lighting:FindFirstChild("Blurry") then
                                    DeltaFramework.Lighting:FindFirstChild("Blurry"):Destroy()
                                end
                                if u469 then
                                    workspace:SetAttribute("FPS_Only", false)
                                    u469 = false
                                end
                            end)
                            return
                        end
                        if p1 == "Deaf" then
                            Mute(p2)
                            return
                        end
                        if p1 == "SCP-939" then
                            local DisplaySCPText
                            UIColorCorrection087 = DeltaFramework.Lighting:FindFirstChild("SCP939EffectCC")
                            if UIColorCorrection087 then
                                return
                            end
                            UIColorCorrection087 = Player.Character
                            v3 = 0
                            ColorCorrectionEffect_2 = Instance.new("ColorCorrectionEffect")
                            ColorCorrectionEffect_2.Name = "SCP939EffectCC"
                            ColorCorrectionEffect_2.Parent = DeltaFramework.Lighting
                            local TweenService_12 = DeltaFramework.TweenService
                            v8 = TweenInfo.new(30)
                            v9 = {Contrast = 0.5, Saturation = -0.25}
                            TweenService_12:Create(ColorCorrectionEffect_2, v8, v9):Play()
                            v5 = 0
                            while Player.Character == UIColorCorrection087 do
                                if v3 >= 300 then
                                    break
                                end
                                v6 = task.wait()
                                v3 = v3 + v6
                                v5 = v5 + v6
                                if 30 <= v5 then
                                    v5 = v5 - 30
                                    if shared.DisplaySCPText then
                                        v7 = math.random(1, 100)
                                        if v7 <= 20 then
                                            v7 = {
                                                "What is going on..?",
                                                "I can't seem to remember where I was just now.",
                                                "I am so confused...",
                                                "My head...",
                                                "Everything feels so light.",
                                            }
                                            shared.DisplaySCPText(v7[math.random(1, #v7)])
                                        end
                                    end
                                end
                            end
                            if Player.Character ~= UIColorCorrection087 then
                                ColorCorrectionEffect_2:Destroy()
                                return
                            end
                            local TweenService_13 = DeltaFramework.TweenService
                            v9 = TweenInfo.new(10)
                            TweenService_13:Create(ColorCorrectionEffect_2, v9, {Contrast = 0, Saturation = 0}):Play()
                            v6 = 10
                            v7 = 1
                            for i6 = 1, v6, v7 do
                                task.wait(1)
                                if Player.Character ~= UIColorCorrection087 then
                                    break
                                end
                            end
                            pcall(function() -- Line: 2318 -- upvalues: ColorCorrectionEffect_2 (val)
                                ColorCorrectionEffect_2:Destroy()
                            end)
                            return
                        end
                        if p1 == "Hostile Marker" then
                            if not p2 then
                                return
                            else
                                UIColorCorrection087 = p2.Parent
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p2:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = script.Marker:Clone()
                                if not (p2.Parent.Name:find("SCP")) then
                                    UIColorCorrection087.Parent = p2.HumanoidRootPart
                                    local TweenService_18 = DeltaFramework.TweenService
                                    local ImageLabel_2 = UIColorCorrection087.ImageLabel
                                    v6 = TweenInfo.new(0.5)
                                    TweenService_18:Create(ImageLabel_2, v6, {ImageTransparency = 0}):Play()
                                    if p1 ~= "Hostile Marker 2" then
                                        v4 = 9.5
                                    else
                                        v4 = 19
                                    end
                                    task.wait(v4)
                                    if not UIColorCorrection087 or not UIColorCorrection087.Parent then
                                        return
                                    end
                                    local TweenService_19 = DeltaFramework.TweenService
                                    local ImageLabel_3 = UIColorCorrection087.ImageLabel
                                    v6 = TweenInfo.new(0.5)
                                    TweenService_19:Create(ImageLabel_3, v6, {ImageTransparency = 1}):Play()
                                    task.wait(0.5)
                                    if not UIColorCorrection087 then
                                        return
                                    end
                                    UIColorCorrection087:Destroy()
                                    return
                                else
                                    local SCPs_2 = u1755.SCPs
                                    if not (SCPs_2[p2.Name:split("-")[2]]) then
                                        UIColorCorrection087:Destroy()
                                        return
                                    else
                                        local ImageLabel = UIColorCorrection087.ImageLabel
                                        ImageLabel.Image = u1755.SCPs[p2.Name:split("-")[2]].Icon
                                    end
                                end
                            end
                        elseif p1 ~= "Hostile Marker 2" then
                            local Lights
                            if p1 == "SCP-076 Ranged Slash" then
                                if not p2 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                local u1644 = p3[2]
                                v4 = u1644.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                                local u1657 = script.SlashPart:Clone()
                                u1657.CFrame = v4
                                u1657.AlignOrientation.CFrame = v4
                                if Mode.Value ~= "Roleplay" then
                                    v10 = -28
                                else
                                    v10 = -40
                                end
                                u1657.LinearVelocity.VectorVelocity = Vector3.new(0, 0, v10)
                                u1657.Parent = workspace
                                if u1644.Name ~= "SCP-076-2" then
                                    u1657.AlignOrientation.Responsiveness = 1
                                end
                                local u1678 = {}
                                task.spawn(function() -- Line: 2370 -- upvalues: u1657 (val), p2 (val)
                                    while u1657 do
                                        if not u1657.Parent or not p2 or not (p2:FindFirstChild("HumanoidRootPart")) then
                                            break
                                        end
                                        u1657.AlignOrientation.CFrame = CFrame.lookAt(u1657.Position, p2.HumanoidRootPart.Position)
                                        task.wait(0.25)
                                    end
                                    if u1657 and u1657.Parent then
                                        u1657.AlignOrientation.Enabled = false
                                    end
                                end)
                                v7 = u1657.Touched:Connect(function(p1) -- Line: 2383 -- upvalues: u59 (upval), u1644 (val), u472 (upval), u1657 (val), u1678 (val), DeltaFramework (upval), UIColorCorrection087 (val), Generic (upval)
                                    if not p1.Parent then
                                        return
                                    else
                                        if not p1.Parent.Parent then
                                            return
                                        end
                                        local v1 = u59(p1)
                                        if not v1 then
                                            return
                                        else
                                            if v1.Parent == u1644 then
                                                return
                                            end
                                            if not (table.find(u472, p1.Name)) then
                                                local v2
                                                u1657:Destroy()
                                                local u25 = script.SoundBlock:Clone()
                                                u25.Position = u1657.Position
                                                u25.Parent = workspace
                                                u25.Sound.Looped = false
                                                u25.Sound.SoundId = "rbxassetid://2900321088"
                                                u25.Sound:Play()
                                                task.delay(5, function() -- Line: 2403 -- upvalues: u25 (val)
                                                    if u25 then
                                                        u25:Destroy()
                                                    end
                                                end)
                                                if not v1.Parent or u1678[v1] then
                                                    return
                                                end
                                                if v1.Parent:FindFirstChild("UpperTorso") then
                                                    v2 = script.AbleSlashHit1:Clone()
                                                    local v3 = script.AbleSlashHit2:Clone()
                                                    v2.Parent = v1.Parent.UpperTorso
                                                    v3.Parent = v1.Parent.UpperTorso
                                                    v2:Emit(1)
                                                    v3:Emit(1)
                                                end
                                                if not DeltaFramework.Player.Character or v1.Parent ~= DeltaFramework.Player.Character then
                                                    return
                                                end
                                                u1678[v1] = true
                                                v2 = v1.Health <= UIColorCorrection087.Damage
                                                Generic:FireServer(2, UIColorCorrection087.Damage, v2)
                                                if v2 then
                                                    shared.Announce("KilledBy", "SCP-076 | " .. UIColorCorrection087.DeathHint .. ".", Color3.fromRGB(255, 155, 75))
                                                end
                                                return
                                            elseif p1.Parent == workspace then
                                                return
                                            end
                                        end
                                    end
                                end)
                                if Mode.Value ~= "Roleplay" then
                                    v9 = 6
                                else
                                    v9 = 3
                                end
                                task.wait(v9)
                                v7:Disconnect()
                                if not u1657 then
                                    return
                                end
                                u1657:Destroy()
                                return
                            end
                            if p1 == "SCP-076 Vertical Slash" then
                                if not p2 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                local u1718 = p3[2]
                                v7 = CFrame.Angles(0, 0, 0)
                                v5 = v7 * u1718.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
                                v4 = v5 * CFrame.fromOrientation(0, 0, -90)
                                v5 = script.VerticalSlashModel:Clone()
                                local SlashPart = v5:WaitForChild("SlashPart", 1)
                                if SlashPart then
                                    SlashPart.CFrame = v4
                                    SlashPart.AlignOrientation.CFrame = v4
                                    SlashPart.LinearVelocity.VectorVelocity = Vector3.new(0, 0, -175)
                                    v5.Parent = workspace
                                    SlashPart.AlignOrientation.Responsiveness = 5
                                    u1755 = {}
                                    v8 = v5.TouchPart.Touched:Connect(function(p1) -- Line: 2473 -- upvalues: u59 (upval), u1718 (val), u472 (upval), SlashPart (val), u1755 (val), DeltaFramework (upval), UIColorCorrection087 (val), Generic (upval)
                                        if not p1.Parent then
                                            return
                                        else
                                            if not p1.Parent.Parent then
                                                return
                                            end
                                            local v1 = u59(p1)
                                            if not v1 then
                                                return
                                            else
                                                if v1.Parent == u1718 then
                                                    return
                                                end
                                                if not (table.find(u472, p1.Name)) then
                                                    SlashPart:Destroy()
                                                    local u25 = script.SoundBlock:Clone()
                                                    u25.Position = SlashPart.Position
                                                    u25.Parent = workspace
                                                    u25.Sound.Looped = false
                                                    u25.Sound.SoundId = "rbxassetid://2900321088"
                                                    u25.Sound:Play()
                                                    task.delay(5, function() -- Line: 2493 -- upvalues: u25 (val)
                                                        if u25 then
                                                            u25:Destroy()
                                                        end
                                                    end)
                                                    if not v1.Parent then
                                                        return
                                                    else
                                                        local v2
                                                        if u1755[v1] then
                                                            return
                                                        end
                                                        if v1.Parent:FindFirstChild("UpperTorso") then
                                                            v2 = script.AbleSlashHit1:Clone()
                                                            local v3 = script.AbleSlashHit2:Clone()
                                                            v2.Parent = v1.Parent.UpperTorso
                                                            v3.Parent = v1.Parent.UpperTorso
                                                            v2:Emit(1)
                                                            v3:Emit(1)
                                                        end
                                                        if not DeltaFramework.Player.Character then
                                                            return
                                                        else
                                                            if v1.Parent ~= DeltaFramework.Player.Character then
                                                                return
                                                            end
                                                            if not v1.Parent then
                                                                u1755[v1] = true
                                                                v2 = v1.Health <= UIColorCorrection087.Damage
                                                                Generic:FireServer(2, UIColorCorrection087.Damage, v2)
                                                                if v2 then
                                                                    shared.Announce("KilledBy", "SCP-076 | " .. UIColorCorrection087.DeathHint .. ".", Color3.fromRGB(255, 155, 75))
                                                                end
                                                                return
                                                            elseif DeltaFramework.CS:HasTag(v1.Parent, "TutorialImmunity") then
                                                                return
                                                            end
                                                        end
                                                    end
                                                elseif p1.Parent == workspace then
                                                    return
                                                end
                                            end
                                        end
                                    end)
                                    task.wait(1.5)
                                    v8:Disconnect()
                                end
                                if not v5 then
                                    return
                                end
                                v5:Destroy()
                                return
                            end
                            if p1 == "SCP-076 Chain Grab" then
                                if not p2 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("RightHand")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p2:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                local u1790 = p3[2]
                                local u1798 = script:WaitForChild("ChainPart"):Clone()
                                pcall(function() -- Line: 2538 -- upvalues: u1798 (val), u1790 (val)
                                    u1798.ChainBeam.Attachment1 = u1790.LeftHand.LeftGripAttachment
                                end)
                                pcall(function() -- Line: 2539 -- upvalues: u1798 (val), p2 (val)
                                    u1798.AlignPosition.Attachment1 = p2.HumanoidRootPart.RootAttachment
                                end)
                                u1798.Position = u1790.LeftHand.Position
                                u1798.Parent = workspace
                                n = false
                                v6 = u1798.Touched:Connect(function(p1) -- Line: 2545 -- upvalues: u59 (upval), u1790 (val), u472 (upval), u1798 (val), p2 (val), DeltaFramework (upval), n (ref), u57 (upval)
                                    if not p1.Parent then
                                        return
                                    else
                                        if not p1.Parent.Parent then
                                            return
                                        end
                                        local v1 = u59(p1)
                                        if not v1 then
                                            if not (table.find(u472, p1.Name)) then
                                                local HumanoidRootPart
                                                u1798:Destroy()
                                                if not v1 or v1.Parent ~= p2 or p2 ~= DeltaFramework.Player.Character or not (p2:FindFirstChild("HumanoidRootPart")) or not (p2:FindFirstChild("Humanoid")) or not u1790 or not (u1790:FindFirstChild("HumanoidRootPart")) or n then
                                                    return
                                                end
                                                n = true
                                                HumanoidRootPart = p2.HumanoidRootPart
                                                HumanoidRootPart.Anchored = true
                                                local Sound = Instance.new("Sound")
                                                Sound.SoundId = "rbxassetid://9116384473"
                                                Sound.RollOffMaxDistance = 50
                                                Sound.SoundGroup = DeltaFramework.SoundService.MassMute
                                                Sound.PlayOnRemove = true
                                                Sound.Parent = HumanoidRootPart
                                                Sound:Play()
                                                local v2 = script.Stars:Clone()
                                                v2.Parent = HumanoidRootPart
                                                v2:Emit(25)
                                                u57:Play("SCP076Bind")
                                                task.wait(1.5)
                                                u57:Stop("SCP076Bind")
                                                if HumanoidRootPart and HumanoidRootPart.Parent and p2:FindFirstChild("HumanoidRootPart") then
                                                    HumanoidRootPart.Anchored = false
                                                end
                                                if v2 then
                                                    v2:Destroy()
                                                end
                                                return
                                            elseif p1.Parent == workspace then
                                                return
                                            end
                                        elseif v1.Parent == u1790 then
                                            return
                                        end
                                    end
                                end)
                                task.wait(3)
                                v6:Disconnect()
                                if u1798 then
                                    u1798:Destroy()
                                end
                                return
                            end
                            if p1 == "SCP-076 Summon Swords" then
                                if not p2 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                local u1832 = p3[2]
                                local function DoSword(p1) -- Line: 2640 -- upvalues: u1832 (val), u1711 (upval), DeltaFramework (upval), UIColorCorrection087 (val), Generic (upval), u59 (upval), u472 (upval)
                                    local VoidGreatswordMini, v1, v2
                                    local v3 = u1832.Name ~= "SCP-076-2"
                                    local v4 = CFrame.new(p1)
                                    if not v3 then
                                        v1 = 100
                                    else
                                        v1 = 10
                                    end
                                    local v5 = v4 * CFrame.new(0, v1, 0)
                                    local u25 = script.Rift:Clone()
                                    u25.CFrame = v5 * CFrame.fromOrientation(0, 3.141592653589793, 1.5707963267948966)
                                    u25.Parent = workspace
                                    if not v3 then
                                        VoidGreatswordMini = script.VoidGreatsword
                                    else
                                        VoidGreatswordMini = script.VoidGreatswordMini
                                    end
                                    local u41 = VoidGreatswordMini:Clone()
                                    if not v3 then
                                        v2 = -16.934
                                    else
                                        v2 = -4.292
                                    end
                                    v1 = v5 * CFrame.new(0, v2, 0)
                                    u41.CFrame = v1 * CFrame.fromOrientation(0, 1.5707963267948966, -3.141592653589793)
                                    u41.RiftParticlesBlack.Enabled = true
                                    u41.Anchored = true
                                    u41.Parent = workspace
                                    local u124 = nil
                                    local Colosseum = workspace:FindFirstChild("Colosseum")
                                    if Colosseum then
                                        local Colosseum_2 = workspace:FindFirstChild("Colosseum")
                                        Colosseum = Colosseum_2:FindFirstChild("InvisibleBarriers")
                                    end
                                    local v6 = RaycastParams.new()
                                    v6.FilterType = Enum.RaycastFilterType.Exclude
                                    v2 = {}
                                    local Lights = workspace.Lights
                                    v2[1] = workspace.MorphAssets
                                    v2[2] = Lights
                                    v2[3] = workspace.SCPs
                                    v2[4] = Colosseum
                                    v2[5] = table.unpack(u1711:Characters())
                                    v6.FilterDescendantsInstances = v2
                                    v2 = workspace:Raycast(v5.Position, Vector3.new(0, -200, 0), v6)
                                    if not v2 then
                                        return
                                    else
                                        local v7, v8
                                        if not v2.Position then
                                            return
                                        end
                                        local u113 = v2.Position + Vector3.new(0, 1.5, 0)
                                        if not (workspace:GetAttribute("HardMode")) then
                                            u124 = script.Telegraph:Clone()
                                            u124:SetPrimaryPartCFrame(CFrame.new(u113))
                                            u124.Parent = workspace
                                            local TelegraphBorder = u124.TelegraphBorder
                                            v8 = TweenInfo.new(5)
                                            DeltaFramework.TweenService:Create(TelegraphBorder, v8, {Transparency = 0.8}):Play()
                                            local TelegraphOutline = u124.TelegraphOutline
                                            v8 = TweenInfo.new(5)
                                            DeltaFramework.TweenService:Create(TelegraphOutline, v8, {Transparency = 0.5}):Play()
                                        end
                                        if v3 then
                                            task.wait(4)
                                        end
                                        for i, v in ipairs(u25:GetDescendants()) do
                                            if v:IsA("ParticleEmitter") then
                                                v.Enabled = true
                                            end
                                        end
                                        v8 = TweenInfo.new(0.5)
                                        DeltaFramework.TweenService:Create(u41, v8, {Transparency = 0}):Play()
                                        u41.Anchored = false
                                        if not v3 then
                                            v7 = 0.5
                                        else
                                            v7 = 0.2
                                        end
                                        task.wait(v7)
                                        if v3 then
                                            task.delay(1, function() -- Line: 2687 -- upvalues: u25 (val)
                                                if u25 then
                                                    u25:Destroy()
                                                end
                                            end)
                                        end
                                        if u41 then
                                            local HumanoidRootPart
                                            local v9 = {}
                                            local u217 = false
                                            local v10 = nil
                                            if workspace:GetAttribute("MapOriginal") ~= "Roleplay" then
                                                v10 = u41.Touched:Connect(function(p1) -- Line: 2714 -- upvalues: u217 (ref), u59 (upval), u1832 (upval), u472 (upval), u124 (ref), DeltaFramework (upval), u25 (val), u41 (val), u113 (ref), UIColorCorrection087 (upval), Generic (upval)
                                                    if not p1.Parent then
                                                        return
                                                    else
                                                        if not p1.Parent.Parent or u217 then
                                                            return
                                                        end
                                                        local v1 = u59(p1)
                                                        if not v1 then
                                                            if not (table.find(u472, p1.Name)) then
                                                                u217 = true
                                                                if u124 then
                                                                    local TweenService = DeltaFramework.TweenService
                                                                    local v2 = TweenInfo.new(0.1)
                                                                    TweenService:Create(u124.TelegraphBorder, v2, {Transparency = 1}):Play()
                                                                    local TweenService_2 = DeltaFramework.TweenService
                                                                    v2 = TweenInfo.new(0.1)
                                                                    TweenService_2:Create(u124.TelegraphOutline, v2, {Transparency = 1}):Play()
                                                                end
                                                                task.delay(0.05, function() -- Line: 2730 -- upvalues: u25 (upval), u41 (upval), u124 (upval)
                                                                    if u25 then
                                                                        u25:Destroy()
                                                                    end
                                                                    if u41 then
                                                                        u41:Destroy()
                                                                    end
                                                                    if u124 then
                                                                        u124:Destroy()
                                                                    end
                                                                end)
                                                                local u55 = script.SoundBlock:Clone()
                                                                u55.Position = u113
                                                                u55.Parent = workspace
                                                                u55.Sound.Looped = false
                                                                u55.Sound.SoundId = "rbxassetid://7158347304"
                                                                u55.Sound:Play()
                                                                task.delay(10, function() -- Line: 2744 -- upvalues: u55 (val)
                                                                    if u55 then
                                                                        u55:Destroy()
                                                                    end
                                                                end)
                                                                if not DeltaFramework.Player.Character then
                                                                    return
                                                                else
                                                                    if not (DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")) then
                                                                        return
                                                                    end
                                                                    local v3 = vector.magnitude(DeltaFramework.Player.Character.HumanoidRootPart.Position - u113)
                                                                    if 10 < v3 then
                                                                        return
                                                                    end
                                                                    if not DeltaFramework.Player.Character then
                                                                        v3 = v1
                                                                        if v3 then
                                                                            v3 = v1.Health <= UIColorCorrection087.Damage
                                                                        end
                                                                        Generic:FireServer(2, UIColorCorrection087.Damage, v3)
                                                                        if not v3 then
                                                                            DeltaFramework.Player.Character:SetAttribute("076Slowdown", true)
                                                                            task.delay(3, function() -- Line: 2761 -- upvalues: DeltaFramework (upval)
                                                                                DeltaFramework.Player.Character:SetAttribute("076Slowdown", nil)
                                                                            end)
                                                                        else
                                                                            shared.Announce("KilledBy", "SCP-076 | " .. UIColorCorrection087.DeathHint .. ".", Color3.fromRGB(255, 155, 75))
                                                                        end
                                                                        shared.Shake("SCP-076 Sword", 25)
                                                                        u55.EvilMist:Emit(20)
                                                                        u55.EvilMist2:Emit(20)
                                                                        task.wait(0.5)
                                                                        return
                                                                    elseif DeltaFramework.CS:HasTag(DeltaFramework.Player.Character, "TutorialImmunity") then
                                                                        return
                                                                    end
                                                                end
                                                            elseif p1.Parent == workspace then
                                                                return
                                                            end
                                                        elseif v1.Parent == u1832 then
                                                            return
                                                        end
                                                    end
                                                end)
                                            else
                                                HumanoidRootPart = DeltaFramework.Player.Character.HumanoidRootPart
                                                local Humanoid = DeltaFramework.Player.Character.Humanoid
                                                task.delay(0.25, function() -- Line: 2702 -- upvalues: HumanoidRootPart (val), Humanoid (val), u113 (ref), UIColorCorrection087 (upval), Generic (upval)
                                                    if not HumanoidRootPart or not Humanoid then
                                                        return
                                                    end
                                                    local v1 = vector.magnitude(HumanoidRootPart.Position - u113)
                                                    if 10 < v1 then
                                                        return
                                                    end
                                                    v1 = Humanoid.Health <= UIColorCorrection087.Damage
                                                    Generic:FireServer(2, UIColorCorrection087.Damage, v1)
                                                    if v1 then
                                                        shared.Announce("KilledBy", "SCP-076 | " .. UIColorCorrection087.DeathHint .. ".", Color3.fromRGB(255, 155, 75))
                                                    end
                                                end)
                                            end
                                            local VectorForce = u41:FindFirstChild("VectorForce")
                                            if VectorForce then
                                                VectorForce.Enabled = true
                                            end
                                            u41.Anchored = false
                                            if not v3 then
                                                task.wait(10)
                                            end
                                            if v10 and v10.Connected then
                                                v10:Disconnect()
                                            end
                                            if u25 then
                                                u25:Destroy()
                                            end
                                            if u41 then
                                                u41:Destroy()
                                            end
                                            if u124 then
                                                u124:Destroy()
                                            end
                                            return
                                        elseif u41.Parent then
                                            return
                                        end
                                    end
                                end
                                n = type(p2)
                                if n ~= "table" then
                                    DoSword(p2)
                                    return
                                end
                                n, v6, v7 = ipairs(p2)
                                for i4, i5 in n(p2) do
                                    task.spawn(DoSword, i5)
                                    task.wait(0.25)
                                end
                                return
                            end
                            if p1 == "SCP-076 Crystal Slash" then
                                if not p2 then
                                    return
                                end
                                UIColorCorrection087 = p2:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                v4 = CFrame.lookat(p3[2].Position, p2.HumanoidRootPart.Position)
                                n = script.SlashPart:Clone()
                                n.CFrame = v4
                                n.AlignOrientation.CFrame = v4
                                n.LinearVelocity.VectorVelocity = Vector3.new(0, 0, -15)
                                n.Parent = workspace
                                local u1882 = {}
                                task.spawn(function() -- Line: 2820 -- upvalues: n (val), p2 (val)
                                    while n do
                                        if not n.Parent or not p2 or not (p2:FindFirstChild("HumanoidRootPart")) or not (n:FindFirstChild("AlignOrientation")) then
                                            break
                                        end
                                        n.AlignOrientation.CFrame = CFrame.lookAt(n.Position, p2.HumanoidRootPart.Position)
                                        task.wait(0.25)
                                    end
                                    if n and n.Parent and n:FindFirstChild("AlignOrientation") then
                                        n.AlignOrientation.Enabled = false
                                    end
                                end)
                                v7 = n.Touched:Connect(function(p1) -- Line: 2833 -- upvalues: u59 (upval), u472 (upval), n (val), u1882 (val), UIColorCorrection087 (val), Generic (upval)
                                    if not p1.Parent then
                                        return
                                    else
                                        if not p1.Parent.Parent then
                                            return
                                        end
                                        local v1 = u59(p1)
                                        if not v1 then
                                            if not (table.find(u472, p1.Name)) then
                                                n:Destroy()
                                                if not v1 or u1882[v1] then
                                                    return
                                                end
                                                u1882[v1] = true
                                                local v2 = v1.Health <= UIColorCorrection087.Damage
                                                Generic:FireServer(2, UIColorCorrection087.Damage, v2)
                                                if v2 then
                                                    shared.Announce("KilledBy", "SCP-076 | " .. UIColorCorrection087.DeathHint .. ".", Color3.fromRGB(255, 155, 75))
                                                end
                                                return
                                            elseif p1.Parent == workspace then
                                                return
                                            end
                                        elseif v1.Parent.Name == "SCP-076-2" then
                                            return
                                        end
                                    end
                                end)
                                task.wait(10)
                                v7:Disconnect()
                                if not n then
                                    return
                                end
                                n:Destroy()
                                return
                            end
                            if p1 == "Toggle SCP-093 Disc" then
                                local Children_4, Children_5
                                if not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087, Children_4, Children_5 = p3[1]:GetChildren()
                                for n, m in UIColorCorrection087:GetChildren() do
                                    m.Transparency = 1
                                end
                                UIColorCorrection087 = p3[2]
                                if not p2 then
                                    v3 = 1
                                else
                                    v3 = 0
                                end
                                UIColorCorrection087.Transparency = v3
                                return
                            end
                            if p1 == "Toggle SCP-093 Portal" then
                                local Children_6, Children_7
                                if not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[2]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087 = p3[3]
                                if not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087, Children_6, Children_7 = p3[3]:GetChildren()
                                for j, k in UIColorCorrection087:GetChildren() do
                                    k.Transparency = 1
                                end
                                UIColorCorrection087 = p3[1]
                                if not p2 then
                                    v3 = 1
                                else
                                    v3 = 0
                                end
                                UIColorCorrection087.Transparency = v3
                                if p2 then
                                    UIColorCorrection087 = p3[2]:FindFirstChild("ViginetteGui")
                                    if UIColorCorrection087 then
                                        UIColorCorrection087 = p3[2].ViginetteGui
                                        UIColorCorrection087.Enabled = false
                                    end
                                    UIColorCorrection087 = p3[2]
                                    UIColorCorrection087.Color = Color3.fromRGB(150, 150, 150)
                                    UIColorCorrection087 = p3[2]
                                    UIColorCorrection087.Material = Enum.Material.Neon
                                    UIColorCorrection087 = p3[2]
                                    UIColorCorrection087.Transparency = 1
                                    UIColorCorrection087 = DeltaFramework.TweenService
                                    v4 = p3[2]
                                    j = TweenInfo.new(5)
                                    UIColorCorrection087 = UIColorCorrection087:Create(v4, j, {Color = Color3.fromRGB(0, 255, 200)})
                                    UIColorCorrection087:Play()
                                    UIColorCorrection087 = p3[4]
                                    if not UIColorCorrection087 then
                                        return
                                    end
                                    p3[2]:SetAttribute("Room", p3[4])
                                    p3[2]:SetAttribute("State", true)
                                    return
                                end
                                UIColorCorrection087 = p3[2]:FindFirstChild("ViginetteGui")
                                if UIColorCorrection087 then
                                    UIColorCorrection087.Frame.Transparency = 1
                                    UIColorCorrection087.Enabled = true
                                    local TweenService_14 = DeltaFramework.TweenService
                                    j = UIColorCorrection087.Frame
                                    v6 = TweenInfo.new(5)
                                    TweenService_14:Create(j, v6, {Transparency = 0.1}):Play()
                                end
                                p3[2].Material = Enum.Material.Glass
                                p3[2].Transparency = 0.75
                                local TweenService_15 = DeltaFramework.TweenService
                                j = p3[2]
                                v6 = TweenInfo.new(5)
                                TweenService_15:Create(j, v6, {Color = Color3.new(1, 1, 1)}):Play()
                                p3[2]:SetAttribute("Room", nil)
                                task.wait(5)
                                j = "Room"
                                if not (p3[2]:GetAttribute(j)) then
                                    p3[2]:SetAttribute("State", nil)
                                    if UIColorCorrection087 then
                                        UIColorCorrection087.Enabled = false
                                    end
                                end
                                task.wait()
                                if p3[2] then
                                    j = "Room"
                                    if not (p3[2]:GetAttribute(j)) then
                                        j = "State"
                                        if not (p3[2]:GetAttribute(j)) and UIColorCorrection087 then
                                            local TweenService_16 = DeltaFramework.TweenService
                                            j = UIColorCorrection087.Frame
                                            v6 = TweenInfo.new(2)
                                            TweenService_16:Create(j, v6, {Transparency = 1}):Play()
                                        end
                                    end
                                end
                                task.wait(2)
                                if not (p3[2]) then
                                    return
                                end
                                j = "Room"
                                if p3[2]:GetAttribute(j) then
                                    return
                                end
                                j = "State"
                                if p3[2]:GetAttribute(j) or not UIColorCorrection087 then
                                    return
                                end
                                UIColorCorrection087.Enabled = false
                                return
                            end
                            if p1 == "SCP-093 Dimension End" then
                                local SurfaceGui, SurfaceGui_2
                                if not p2 or not p3 then
                                    return
                                end
                                UIColorCorrection087 = p3[1]
                                if not UIColorCorrection087 then
                                    return
                                end
                                script.DeepThud:Play()
                                p2.Transparency = 0
                                UIColorCorrection087 = {
                                    Blue = Color3.fromRGB(0, 47, 255),
                                    Green = Color3.fromRGB(13, 255, 0),
                                    Purple = Color3.fromRGB(149, 0, 255),
                                    Red = Color3.fromRGB(255, 0, 0),
                                    Yellow = Color3.fromRGB(255, 200, 0),
                                }
                                v3 = {
                                    "WE SEE YOU",
                                    "HELP US HELP US HELP US HELP US HELP US",
                                    "THEY ARE ALIVE",
                                    "DO NOT TOUCH IT DO NOT TOUCH IT",
                                    "WE DO NOT WANT THIS",
                                    "FIND HIM",
                                    "BREAK IT DO NOT BREAK IT BREAK IT DO NOT DO NOT DO NOT BREAK",
                                }
                                v4 = {"rbxassetid://112769255041421", "rbxassetid://74111930937831", "rbxassetid://104150735076469"}
                                Position = p3[2]
                                if Position then
                                    Position = p3[2]
                                    Position.Color = Color3.fromRGB(43, 30, 24)
                                    Position = p3[2]
                                    Position.Material = Enum.Material.Neon
                                    Position = DeltaFramework.TweenService
                                    v7 = p3[2]
                                    v8 = TweenInfo.new(7)
                                    Position = Position:Create(v7, v8, {Color = UIColorCorrection087[p2.Name]})
                                    Position:Play()
                                end
                                Position, v6, v7 = ipairs(p3[1]:GetChildren())
                                for i, v in Position(p3[1]:GetChildren()) do
                                    if v:FindFirstChild("Screen") then
                                        SurfaceGui_2 = v.Screen.SurfaceGui
                                        if math.random(1, 4) ~= 1 then
                                            SurfaceGui_2.TextLabel.Text = v3[math.random(1, #v3)]
                                            v11 = TweenInfo.new(5)
                                            DeltaFramework.TweenService:Create(SurfaceGui_2.TextLabel, v11, {TextTransparency = 0}):Play()
                                        else
                                            SurfaceGui_2.ImageLabel.Image = v4[math.random(1, #v4)]
                                            v11 = TweenInfo.new(4)
                                            DeltaFramework.TweenService:Create(SurfaceGui_2.ImageLabel, v11, {ImageTransparency = 0}):Play()
                                        end
                                    end
                                end
                                Position = task.wait
                                Position(30)
                                if p2 then
                                    Position = p2.Parent
                                    if Position then
                                        p2.Transparency = 1
                                    end
                                end
                                Position = p3[2]
                                if Position then
                                    Position = p3[1].Parent
                                    if Position then
                                        Position = p3[2]
                                        Position.Color = Color3.fromRGB(113, 80, 63)
                                        Position = p3[2]
                                        Position.Material = Enum.Material.Concrete
                                    end
                                end
                                Position, v6, v7 = ipairs(p3[1]:GetChildren())
                                for i2, i3 in Position(p3[1]:GetChildren()) do
                                    if i3:FindFirstChild("Screen") then
                                        SurfaceGui = i3.Screen.SurfaceGui
                                        SurfaceGui.TextLabel.Text = ""
                                        SurfaceGui.TextLabel.TextTransparency = 1
                                        SurfaceGui.ImageLabel.Image = ""
                                        SurfaceGui.ImageLabel.ImageTransparency = 1
                                    end
                                end
                                return
                            end
                            if p1 == "Facility Dust" then
                                UIColorCorrection087 = workspace:FindFirstChild("DustSmokePart")
                                if UIColorCorrection087 then
                                    workspace.DustSmokePart:Destroy()
                                end
                                UIColorCorrection087 = Player.Character:FindFirstChild("HumanoidRootPart")
                                if not UIColorCorrection087 then
                                    return
                                end
                                if not p2 then
                                    UIColorCorrection087 = workspace:FindFirstChild("DustSmokePart")
                                    if UIColorCorrection087 then
                                        workspace.DustSmokePart:Destroy()
                                        return
                                    end
                                    return
                                end
                                UIColorCorrection087 = RaycastParams.new()
                                UIColorCorrection087.FilterType = Enum.RaycastFilterType.Exclude
                                v3 = {}
                                local MorphAssets = workspace:FindFirstChild("MorphAssets")
                                Position = workspace:FindFirstChild("Lights")
                                local SCPs = workspace:FindFirstChild("SCPs")
                                local RoleplayPathMods = workspace:FindFirstChild("RoleplayPathMods")
                                v3[1] = MorphAssets
                                v3[2] = Position
                                v3[3] = SCPs
                                v3[4] = RoleplayPathMods
                                v3[5] = table.unpack(u1711:Characters())
                                UIColorCorrection087.FilterDescendantsInstances = v3
                                Position_2 = Player.Character.HumanoidRootPart.Position
                                v4 = u1714:IsInLocation("Outside", Position_2)
                                Position = 0
                                local function CalculateRoofHeight() -- Line: 3010 -- upvalues: Position_2 (ref), UIColorCorrection087 (val), Position (ref)
                                    local v1 = workspace:Raycast(Position_2, Vector3.new(0, 300, 0), UIColorCorrection087)
                                    if v1 then
                                        Position = math.abs(v1.Position.Y - Position_2.Y) + 5
                                        return
                                    end
                                    Position = 70
                                end
                                v7 = workspace:Raycast(Position_2, Vector3.new(0, 300, 0), UIColorCorrection087)
                                if not v7 then
                                    Position = 70
                                else
                                    v8 = math.abs(v7.Position.Y - Position_2.Y)
                                    Position = v8 + 5
                                end
                                v7 = script.DustSmokePart:Clone()
                                v7.Position = Position_2 + Vector3.new(0, Position, 0)
                                v7.Parent = workspace
                                v7.Dust.Enabled = not v4
                                v7.Smoke.Enabled = not v4
                                if p3 then
                                    script.TremorRumble:Play()
                                end
                                if shared.Shake then
                                    shared.Shake("Facility Dust", 50)
                                end
                                v8 = 0
                                u2470 = p3
                                while v7 do
                                    if not v7.Parent or not Player.Character or not (Player.Character:FindFirstChild("HumanoidRootPart")) then
                                        break
                                    end
                                    if u2470 and u2470 <= v8 then
                                        break
                                    end
                                    Position_2 = Player.Character.HumanoidRootPart.Position
                                    v4 = u1714:IsInLocation("Outside", Position_2)
                                    v9 = workspace:Raycast(Position_2, Vector3.new(0, 300, 0), UIColorCorrection087)
                                    if not v9 then
                                        Position = 70
                                    else
                                        v10 = math.abs(v9.Position.Y - Position_2.Y)
                                        Position = v10 + 5
                                    end
                                    v7.Position = Position_2 + Vector3.new(0, Position, 0)
                                    v7.Dust.Enabled = not v4
                                    v7.Smoke.Enabled = not v4
                                    v8 = v8 + task.wait(2)
                                end
                                if v7 and v7.Parent then
                                    v7:Destroy()
                                end
                                return
                            end
                            if p1 ~= "SCP-299 Pierce" then
                                return
                            elseif not p2 then
                                return
                            else
                                UIColorCorrection087 = p2.Name
                                if UIColorCorrection087 == "GrowthPoint" then
                                    Position_2 = p2.Name
                                    if Position_2 ~= "GrowthPoint" then
                                        UIColorCorrection087 = p2.HumanoidRootPart
                                    else
                                        UIColorCorrection087 = p2
                                    end
                                    Position_2 = {"rbxassetid://9119232293"}
                                    v7 = Position_2[math.random(1, #Position_2)]
                                    u1711:PlaySound(UIColorCorrection087, v7)
                                    local Position_5 = UIColorCorrection087.Position
                                    v7 = (UIColorCorrection087.CFrame * CFrame.new(0, 0, -5)).Position - UIColorCorrection087.Position
                                    v9 = {}
                                    local MorphAssets_2 = workspace:FindFirstChild("MorphAssets")
                                    Lights = workspace:FindFirstChild("Lights")
                                    local MorphAssets_3 = workspace:FindFirstChild("MorphAssets")
                                    v9[1] = MorphAssets_2
                                    v9[2] = Lights
                                    v9[3] = MorphAssets_3
                                    v9[4] = table.unpack(u1711:Characters())
                                    v4 = u1711:CastRay(Position_5, v7, false, v9)
                                    if p2.Name ~= "GrowthPoint" then
                                        Position = UIColorCorrection087:FindFirstChild("FrontAttachment")
                                    else
                                        Position = p2
                                    end
                                    if not Position then
                                        Position = Instance.new("Attachment")
                                        Position.Name = "FrontAttachment"
                                        Position.Orientation = Vector3.new(0, 90, 0)
                                        Position.Parent = UIColorCorrection087
                                    end
                                    if not (script:FindFirstChild("BranchSpear")) then
                                        return
                                    end
                                    local u2583 = script.BranchSpear:Clone()
                                    u2583.CFrame = UIColorCorrection087.CFrame
                                    u2583.PrismaticConstraint.Attachment0 = Position
                                    if Position == p2 then
                                        u2583.PrismaticConstraint.Attachment1.CFrame = Position.CFrame
                                    end
                                    if v4 then
                                        u2583.PrismaticConstraint.UpperLimit = v4.Distance * 0.4
                                    end
                                    u2583.Parent = workspace
                                    if DeltaFramework.RunService:IsStudio() then
                                        u2583.Transparency = 0.5
                                    end
                                    local TweenService_17 = DeltaFramework.TweenService
                                    v10 = TweenInfo.new(0.25)
                                    TweenService_17:Create(u2583, v10, {Size = Vector3.new(1, 1, 5)}):Play()
                                    local u2625 = {}
                                    local u2626 = false
                                    task.delay(1, function() -- Line: 3104 -- upvalues: u2583 (val), u2626 (ref), UIColorCorrection087 (val), DeltaFramework (upval), u1711 (upval)
                                        if not u2583 or not u2583.Parent then
                                            return
                                        end
                                        u2626 = true
                                        u2583.CFrame = UIColorCorrection087.CFrame * CFrame.new(0, 0, -5)
                                        u2583.CanCollide = true
                                        u2583.PrismaticConstraint.Enabled = false
                                        local v1 = TweenInfo.new(4)
                                        DeltaFramework.TweenService:Create(u2583, v1, {Color = Color3.new(0, 0, 0)}):Play()
                                        u1711:PlaySound(u2583, "rbxassetid://9119232293")
                                        task.wait(5)
                                        if u2583 and u2583.Parent then
                                            u2583:Destroy()
                                        end
                                    end)
                                    u2583.Touched:Connect(function(p1) -- Line: 3121 -- upvalues: u2626 (ref), u59 (upval), u1711 (upval), u2625 (val), DeltaFramework (upval), UIColorCorrection087 (val), u57 (upval)
                                        local Parent
                                        if u2626 or not p1.Parent or not p1.Parent.Parent then
                                            return
                                        end
                                        local v1 = u59(p1)
                                        if not v1 or not (u1711:IsCharacterValid(v1.Parent)) or u2625[v1] or v1.Parent:HasTag("Infected") or v1.Parent:HasTag("076") then
                                            return
                                        end
                                        u2625[v1] = true
                                        local v2 = {"rbxassetid://7214216646"}
                                        Parent = v1.Parent
                                        local HumanoidRootPart = Parent.HumanoidRootPart
                                        local PlayerFromCharacter = DeltaFramework.Players:GetPlayerFromCharacter(Parent)
                                        if not PlayerFromCharacter then
                                            return
                                        end
                                        u1711:PlaySound(UIColorCorrection087, v2[math.random(1, #v2)])
                                        if PlayerFromCharacter ~= DeltaFramework.Player then
                                            return
                                        end
                                        HumanoidRootPart.Anchored = true
                                        u57:Play("Pierced")
                                        task.wait(1)
                                        if HumanoidRootPart and HumanoidRootPart.Parent then
                                            HumanoidRootPart.Anchored = false
                                        end
                                    end)
                                    return
                                else
                                    UIColorCorrection087 = u1711:IsCharacterValid(p2)
                                    if not UIColorCorrection087 then
                                        return
                                    end
                                end
                            end
                        end
                    end
                elseif not p3 then
                    return
                elseif not (p3[1]) then
                    return
                else
                    if not (p3[1].Parent) then
                        return
                    end
                    if not p2 then
                        if not p2 then
                            p3[1].Video = ""
                            p3[1].Visible = false
                            return
                        end
                        p3[1].Visible = true
                        p3[1].Video = p3[2]
                        while p3[1].Video do
                            if p3[1].IsLoaded then
                                break
                            end
                            task.wait()
                        end
                        p3[1]:Play()
                        v1 = p3[1].Ended:Once(function() -- Line: 1418 -- upvalues: p3 (val)
                            if not (p3[1]) or not (p3[1].Parent) then
                                return
                            end
                            if p3[1].Video == "rbxassetid://107510005009523" and shared.TabletSystem.SCPTestInfo then
                                shared.TabletSystem.SCPTestInfo.Briefed = true
                            end
                            local v1 = p3[1]
                            v1.Video = ""
                            v1 = p3[1]
                            v1.Visible = true
                        end)
                        task.wait(60)
                        if not v1 or not v1.Connected then
                            return
                        end
                        v1:Disconnect()
                        return
                    elseif not (p3[2]) then
                        return
                    end
                end
            end
        end)
        local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ
        local u498 = 0
        local u499 = 0
        task.spawn(function() -- Line: 3184 -- upvalues: DeltaFramework (val)
            local ZombieColor = DeltaFramework.Lighting:WaitForChild("ZombieColor", 9999)
            if ZombieColor then
                ZombieColor.Changed:Connect(function() -- Line: 3188 -- upvalues: DeltaFramework (upval), ZombieColor (val)
                    DeltaFramework.PlayerGui.SCPUIs.SCP008Text.Visible = ZombieColor.Enabled
                    if DeltaFramework.PlayerGui.SCPUIs.SCP938Text.Visible and DeltaFramework.PlayerGui.SCPUIs.SCP008Text.Visible then
                        DeltaFramework.PlayerGui.SCPUIs.SCP938Text.Visible = false
                    end
                end)
            end
        end)
        local u507 = Color3.new(0, 0, 0)
        local u512 = Color3.fromRGB(255, 255, 255)
        local u517 = Color3.fromRGB(33, 33, 33)
        local u518 = 0
        local u519 = 0
        local u520 = nil
        local u521 = nil
        local u522 = nil
        local u523 = nil
        local u524 = nil
        local u1812 = nil
        local u1844 = nil
        local u527 = nil
        local u528 = nil
        local u529 = nil
        local u530 = false
        local u531 = false
        local u532 = false
        local WeaponUI = DeltaFramework.PlayerGui:WaitForChild("WeaponUI")
        local FullScreenUI = DeltaFramework.PlayerGui:WaitForChild("FullScreenUI")
        local v16 = DeltaFramework.PlayerGui:WaitForChild("Leaderboard")
        local Content = v16:WaitForChild("Content")
        local u552 = false
        local u553 = false
        local u554 = nil
        local u555 = false
        local u556 = true
        local u557 = 0
        local u558 = false
        local v17 = {}
        local u560 = 0
        local u561 = 0
        function UpdateRainbowScythe(p1, p2, p3) -- Line: 3242
            local v1, v2, v3, v4
            local v5 = {"Blade", "Bottom_Highlight", "Chains_Highlight", "Stick_Highlight"}
            v2, v3, v1 = p2, p3, p1
            for i, v in ipairs(v5) do
                if v ~= "Blade" then
                    v4 = v1:FindFirstChild(v)
                else
                    v4 = v2
                end
                if v4 then
                    v4.Color = v3
                end
            end
            if v2 then
                local PointLight = v2:FindFirstChild("PointLight")
                if PointLight then
                    PointLight.Color = v3
                end
            end
            for i2, j in v1:GetDescendants() do
                if j.ClassName == "ParticleEmitter" then
                    j.Color = ColorSequence.new(v3)
                end
            end
        end
        local u563 = nil
        local u567 = DeltaFramework:Get("Compact")
        local u568 = 0
        local u569 = 0
        local u570 = 999
        local u571 = 999
        local u572 = false
        local u573 = {"YOU MUST MOVE", "THEY ARE AFTER YOU", "YOU CAN SENSE THEM APPROACHING"}
        local u577 = {"PRAISE THE ETERNAL BLAZING SUN", "YOU MUST SEE THE SUN", "YOU CAN SENSE SALVATION", "GO OUTSIDE"}
        local u582 = nil
        local u591 = true
        if DeltaFramework:Device() == "Mobile" then
            local u592 = nil
            local Folder = Instance.new("Folder")
            local u596 = {}
            local u597 = nil
            local u598 = {}
            local u599 = {}
            function shared.SetProximityPromptEnabled(p1, p2) -- Line: 3293 -- upvalues: u599 (val)
                if p2 then
                    u599[p1] = nil
                    return
                end
                u599[p1] = true
            end
            task.spawn(function() -- Line: 3301 -- upvalues: u597 (ref), u1711 (val), DeltaFramework (val), u598 (ref)
                local Humanoid, HumanoidRootPart, v1, v2
                while true do
                    task.wait(1)
                    v1 = {}
                    if not u597 then
                        u598 = v1
                    else
                        v2 = u1711:Characters()
                        for i, v in ipairs(v2) do
                            if v ~= DeltaFramework.Player.Character then
                                Humanoid = v:FindFirstChild("Humanoid")
                                if Humanoid and Humanoid.Sit then
                                    HumanoidRootPart = v:FindFirstChild("HumanoidRootPart")
                                    if HumanoidRootPart then
                                        table.insert(v1, HumanoidRootPart.Position)
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            local function SetUpProximityPrompts() -- Line: 3330 -- upvalues: u592 (ref), Folder (val), u596 (ref), DeltaFramework (val)
                local DeserializeTable, X, Z, v1, v2, v3, v4, v5
                local Attribute = workspace:GetAttribute("ProximityPrompts")
                if not Attribute then
                    u592 = nil
                    Folder:ClearAllChildren()
                    for k, v in pairs(u596) do
                        v:Destroy()
                    end
                    u596 = {}
                    return
                end
                local HttpService = game:GetService("HttpService")
                local HttpService_2 = game:GetService("HttpService")
                local v6 = HttpService:JSONDecode(buffer.tostring(HttpService_2:JSONDecode(Attribute)))
                function DeserializeTable(p1) -- Line: 3336 -- upvalues: DeserializeTable (val)
                    local v1, v2
                    local v3 = p1
                    for k, v in pairs(p1) do
                        if type(v) ~= "table" then
                            if type(v) == "table" then
                                v = DeserializeTable(v)
                            end
                            v1 = v
                        elseif 1 < #v then
                            if v[1] == "v2" then
                                v1 = Vector3.new(v[2], v[3], v[4])
                            elseif v[1] ~= "c3" then
                                v1 = DeserializeTable(v)
                            else
                                v1 = Color3.new(v[2], v[3], v[4])
                            end
                        end
                        rawset(v3, k, v1)
                    end
                    return v3
                end
                local v7 = {Default = {}, CDC = {}, S1 = {}, S3 = {}}
                u592 = {}
                Folder:ClearAllChildren()
                for k2, i in pairs(u596) do
                    i:Destroy()
                end
                u596 = {}
                for i2, j in ipairs((DeserializeTable(v6))) do
                    local Part = Instance.new("Part")
                    Part.CastShadow = false
                    Part.Transparency = 1
                    Part.CanCollide = false
                    Part.CanTouch = false
                    Part.CanQuery = false
                    Part.Anchored = true
                    v5 = j[1]
                    v1 = j[2]
                    v3 = CFrame.new(v5)
                    Part.CFrame = v3 * CFrame.fromOrientation(v1.X, v1.Y, v1.Z)
                    v2 = j[3]
                    v3 = not v2
                    local ProximityPrompt = Instance.new("ProximityPrompt")
                    if not v3 then
                        v4 = "InteractionPrompt"
                    else
                        v4 = "SeatPrompt"
                    end
                    ProximityPrompt.Name = v4
                    if not v3 then
                        ProximityPrompt.ClickablePrompt = true
                        ProximityPrompt.Enabled = true
                        ProximityPrompt.RequiresLineOfSight = false
                        ProximityPrompt.MaxActivationDistance = 10
                        ProximityPrompt.ActionText = ""
                        ProximityPrompt.Style = Enum.ProximityPromptStyle.Custom
                        ProximityPrompt.ObjectText = ""
                        ProximityPrompt.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
                        ProximityPrompt.GamepadKeyCode = Enum.KeyCode.ButtonX
                        ProximityPrompt.KeyboardKeyCode = Enum.KeyCode.E
                        ProximityPrompt.HoldDuration = 0
                        ProximityPrompt:AddTag("L")
                        Part:SetAttribute("S", j[4])
                        if j[5] then
                            Part:AddTag("TutorialIgnore")
                        end
                        Part.Name = v2
                    else
                        ProximityPrompt.ClickablePrompt = false
                        ProximityPrompt.Enabled = true
                        ProximityPrompt.RequiresLineOfSight = false
                        ProximityPrompt.MaxActivationDistance = 6
                        ProximityPrompt.ActionText = "Sit"
                        ProximityPrompt.Style = Enum.ProximityPromptStyle.Default
                        ProximityPrompt.ObjectText = ""
                        ProximityPrompt.HoldDuration = 1
                        ProximityPrompt.Triggered:Connect(function() -- Line: 3404 -- upvalues: Part (val), DeltaFramework (upval), ProximityPrompt (val)
                            local PartBoundsInBox = workspace:GetPartBoundsInBox(Part.CFrame, (Vector3.new(6, 6, 6)))
                            local u31 = nil
                            if PartBoundsInBox then
                                local v1
                                for i, v in ipairs(PartBoundsInBox) do
                                    if v:IsA("Seat") then
                                        v1 = vector.magnitude(v.Position - Part.Position)
                                        if v1 <= 0.5 then
                                            u31 = v
                                            break
                                        end
                                    end
                                end
                            end
                            if not u31 then
                                pcall(function() -- Line: 3421 -- upvalues: DeltaFramework (upval), Part (upval), ProximityPrompt (upval)
                                    DeltaFramework.Player.Character.HumanoidRootPart.CFrame = Part.CFrame + Vector3.new(0, 1.8020000457763672, 0)
                                    DeltaFramework.Player.Character.Humanoid.Sit = true
                                    ProximityPrompt.Enabled = false
                                    local WeldConstraint = Instance.new("WeldConstraint")
                                    WeldConstraint.Part0 = Part
                                    WeldConstraint.Part1 = DeltaFramework.Player.Character.HumanoidRootPart
                                    WeldConstraint.Name = "SeatWeld"
                                    WeldConstraint.Parent = Part
                                    local u25 = nil
                                    local PropertyChangedSignal = DeltaFramework.Player.Character.Humanoid:GetPropertyChangedSignal("Jump")
                                end)
                            else
                                pcall(function() -- Line: 3419 -- upvalues: u31 (ref), DeltaFramework (upval)
                                    u31:Sit(DeltaFramework.Player.Character.Humanoid)
                                end)
                            end
                        end)
                    end
                    ProximityPrompt.Parent = Part
                    Part.Parent = Folder
                    v4 = "Default"
                    X = v5.X
                    Z = v5.Z
                    if 205.28 > X then
                        if Z <= -470 then
                            v4 = "S3"
                        elseif -50 <= Z then
                            if 42 <= Z then
                                v4 = "S1"
                            elseif -200 > X then
                            end
                        end
                    elseif X <= 502.21 and -408.431 <= Z and Z <= -41.551 then
                        v4 = "CDC"
                    end
                    table.insert(v7[v4], {Part, v5, ProximityPrompt, v3})
                end
                u592 = v7
            end
            task.spawn(function() -- Line: 3499 -- upvalues: SetUpProximityPrompts (val)
                while shared.InMenu do
                    task.wait(1)
                end
                SetUpProximityPrompts()
            end)
            local v18 = workspace:GetAttributeChangedSignal("ProximityPrompts")
            v18:Connect(SetUpProximityPrompts)
            local u620 = nil
            local u621 = nil
            local u622 = {}
            local u623 = nil
            local u624 = nil
            DeltaFramework.RunService.Heartbeat:Connect(function(p1) -- Line: 3516 -- upvalues: Alarms (val), u568 (ref), fromEulerAnglesXYZ (val), u181 (ref), u283 (ref), DeltaFramework (val), u563 (ref), u557 (ref), u519 (ref), u570 (ref), u592 (ref), u596 (ref), u599 (val), Folder (val), u598 (ref), u597 (ref), u1714 (val), u465 (ref), u183 (ref), Interact (val), u530 (ref), u518 (ref), Mode (val), u1755 (val), u50 (val), SCPTesting (val), u63 (val), u554 (ref), u1740 (val), u567 (val), u621 (ref), u48 (val), Label (val), Breach076 (val), SCPUIs (val), Breach682 (val), u1711 (val), u571 (ref), u572 (ref), UpdateGenericUIText (val), u577 (val), u573 (val), u558 (ref), u620 (ref), u531 (ref), u532 (ref), u49 (val), u450 (ref), u451 (ref), u456 (ref), u452 (ref), u453 (ref), u454 (ref), u455 (ref), Content (val), u552 (ref), u51 (val), u560 (ref), u561 (ref), u591 (val), u498 (ref), u1812 (ref), u1844 (ref), u521 (ref), u522 (ref), u523 (ref), u524 (ref), u520 (ref), FullScreenUI (val), u499 (ref), Remotes (val), u528 (ref), WeaponUI (val), u529 (ref), TVsHacked (val), Tagged (ref), u527 (ref), u553 (ref), u299 (val), u569 (ref), u300 (ref), u301 (ref), u302 (ref), u303 (ref), u157 (val), Sky (val), Lighting (val), u153 (val), u307 (ref), u149 (val), u145 (val), u141 (val), u201 (ref), u189 (val), u199 (val), u194 (val), u200 (val), WDB (val), u582 (ref), u517 (val), u556 (ref), u555 (ref), u507 (val), u512 (val), u622 (val), u623 (ref), u624 (ref)
                local HumanoidRootPart, v1, v2, v3, v4
                if shared.InMenu then
                    return
                end
                local CurrentCamera = workspace.CurrentCamera
                local Position_2 = CurrentCamera.CFrame.Position
                if Alarms.Value then
                    u568 = u568 + p1
                    if 0.06666666666666667 <= u568 then
                        local Position_3
                        u568 = u568 - 0.06666666666666667
                        v3 = fromEulerAnglesXYZ(0, 0, u568)
                        v4 = u181
                        if not v4 then
                            v4 = {}
                        end
                        v1 = p1
                        for i, v in ipairs(v4) do
                            if not u283 then
                                Position_3 = v[2]
                            else
                                Position_3 = v[1].Position
                            end
                            v2 = vector.magnitude(Position_2 - Position_3)
                            if v2 <= 150 then
                                v2 = v[1]
                                v2.CFrame = v2.CFrame * v3
                            end
                        end
                    end
                end
                local Character = DeltaFramework.Player.Character
                if not u563 then
                    local HumanoidRootPart_2 = u563
                    if not HumanoidRootPart_2 then
                        HumanoidRootPart_2 = Character
                        if HumanoidRootPart_2 then
                            HumanoidRootPart_2 = Character:FindFirstChild("HumanoidRootPart")
                        end
                    end
                    u563 = HumanoidRootPart_2
                elseif u563.Parent ~= Character then
                    HumanoidRootPart = Character
                    if HumanoidRootPart then
                        HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                    end
                    u563 = HumanoidRootPart
                end
                local Humanoid = Character
                if Humanoid then
                    Humanoid = Character:FindFirstChild("Humanoid")
                end
                local Position = u563
                if Position then
                    Position = u563.Position
                end
                local u8452 = workspace:GetAttribute("MapOriginal") == "Roleplay"
                if Character then
                    u557 = u557 + v1
                    local u7093 = nil
                    if 0.05 <= u557 then
                        local Team, X, Z, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16
                        local v17 = u557
                        u557 = u557 - 0.05
                        u519 = math.min(1, u519 + v17)
                        if Character:HasTag("299") then
                            u570 = u570 + v17
                        end
                        if u592 and Position then
                            v16 = table.clone(u596)
                            for k, i2 in pairs(u596) do
                                v7 = vector.magnitude(Position - k)
                                if 12 < v7 then
                                    pcall(function() -- Line: 3582 -- upvalues: i2 (val), Folder (upval)
                                        i2.Parent = Folder
                                    end)
                                    v16[k] = nil
                                elseif not (u599[k]) then
                                end
                            end
                            v5 = Humanoid
                            if v5 then
                                v5 = not v5.Sit
                            end
                            v2 = "Default"
                            X = Position.X
                            Z = Position.Z
                            if 205.28 > X then
                                if Z <= -470 then
                                    v2 = "S3"
                                elseif -50 <= Z then
                                    if 42 <= Z then
                                        v2 = "S1"
                                    elseif -200 > X then
                                    end
                                end
                            elseif X <= 502.21 and -408.431 <= Z and Z <= -41.551 then
                                v2 = "CDC"
                            end
                            v6 = nil
                            v7 = u592[v2]
                            if v7 then
                                local v18
                                v8 = #v7
                                v9 = 1
                                for j = 1, v8, v9 do
                                    v10 = v7[j]
                                    v11 = v10[2]
                                    if not (u599[v11]) then
                                        v12 = vector.magnitude(Position - v11)
                                        if v12 <= 12 then
                                            v12 = nil
                                            v13 = v10[4]
                                            if v13 then
                                                for i3, k2 in ipairs(u598) do
                                                    v15 = vector.magnitude(v11 + Vector3.new(0, 0.18019999563694, 0) - k2)
                                                    if v15 <= 0.25 then
                                                        v12 = true
                                                        break
                                                    end
                                                end
                                            end
                                            if v12 then
                                                v16[v11] = nil
                                                v10[1].Parent = Folder
                                            else
                                                v18 = v10[1]
                                                v18.Parent = workspace
                                                v16[v11] = v18
                                                v14 = v5
                                                if not v14 then
                                                    v14 = not v13
                                                end
                                                v10[3].Enabled = v14
                                            end
                                            v6 = true
                                        end
                                    end
                                end
                            end
                            u596 = v16
                            u597 = v6
                        end
                        local Visible = DeltaFramework.PlayerGui.Utility.Version.Visible
                        u7093 = Character:GetAttribute("087Static")
                        if DeltaFramework.Player.Team and u563 then
                            local v19
                            if not (u1714:IsInLocation("SCP-087 Inner", (Vector3.new(Position.X, 10.668, Position.Z)))) then
                                u465 = false
                            else
                                if u465 then
                                    if not Humanoid then
                                        u465 = false
                                    elseif 0 < Humanoid.Health then
                                    end
                                end
                                Lights = workspace:FindFirstChild("Lights")
                                if Lights then
                                    Lights = Lights:FindFirstChild("Models")
                                    if Lights then
                                        Lights = Lights:FindFirstChild("CryingPart")
                                    end
                                end
                                if Lights then
                                    pcall(function() -- Line: 3676 -- upvalues: Humanoid (val), Lights (ref), Character (val)
                                        if not Humanoid or 0 >= Humanoid.Health then
                                            Lights:Destroy()
                                            return
                                        end
                                        Lights.Position = Character.PrimaryPart.Position - Vector3.new(0, 15, 0)
                                        if not Lights.Crying.IsPlaying then
                                            local v1 = os.time() - Lights:GetAttribute("Last")
                                            if 7 <= v1 then
                                                Lights.Crying:Play()
                                                Lights:SetAttribute("Last", os.time() + Lights.Crying.TimeLength)
                                            end
                                        end
                                    end)
                                end
                            end
                            Lights = shared.ToggledNVG
                            if Lights then
                                shared.ToggledNVG = nil
                            end
                            if 0.25 <= u519 then
                                local Frame, v20
                                u519 = u519 - 0.25
                                v2 = {}
                                v19 = u183
                                if not v19 then
                                    v19 = {}
                                end
                                for i4, n in ipairs(v19) do
                                    Frame = n:FindFirstChild("Frame")
                                    if Frame then
                                        Frame = Frame:FindFirstChild("Middle")
                                    end
                                    if Frame then
                                        v20 = vector.magnitude(Frame.Position - Position)
                                        if 20 >= v20 then
                                            table.insert(v2, n)
                                        end
                                    end
                                end
                                if v2[1] then
                                    Interact:FireServer(v2)
                                end
                            end
                            if not u530 then
                                if u530 then
                                    if not Lights then
                                        v2 = 0.25
                                    else
                                        v2 = 0
                                    end
                                elseif not Visible then
                                end
                            end
                            u518 = u518 + v1
                            if v2 <= u518 then
                                u518 = 0
                                Team = DeltaFramework.Player.Team
                                local Name = Team
                                if Name then
                                    Name = DeltaFramework.Player.Team.Name
                                end
                                if u563 then
                                    v6 = nil
                                    Value = nil
                                    local UnauthorizedWarning = DeltaFramework.PlayerGui.Utility.UnauthorizedWarning
                                    if Mode.Value ~= "Roleplay" then
                                        Text = UnauthorizedWarning.Text:find("Temporary area access")
                                        if Text then
                                            UnauthorizedWarning.TextTransparency = 1
                                            Text = UnauthorizedWarning.Back
                                            Text.TextTransparency = 1
                                            UnauthorizedWarning.Visible = false
                                            Text = UnauthorizedWarning.Back
                                            Text.Visible = false
                                        end
                                    elseif u8452 then
                                        if not Team then
                                            if Team and Name == "Class - D" then
                                                local Position_4 = u563.Position
                                                if not (u1714:IsInLocation("Queue Line", Position_4)) then
                                                    local Position_5 = u563.Position
                                                    if not (u1714:IsInLocation("Near Queue Line", Position_5)) then end
                                                elseif not (DeltaFramework.Player:HasTag("InTestQueue")) and shared.CanQueueLinePrompt and not (u50(DeltaFramework.Player, true)) and not (Character:FindFirstChild("Authorizer")) then
                                                    shared.CanQueueLinePrompt = false
                                                    task.delay(30, function() -- Line: 3817
                                                        shared.CanQueueLinePrompt = true
                                                    end)
                                                    if not (u50(DeltaFramework.Player)) then
                                                        shared.BottomPopup({
                                                            Title = "Join Test Queue",
                                                            Text = "Would you like to join the test queue?",
                                                            Duration = 10,
                                                            Prompt = function() -- Line: 3835 -- upvalues: SCPTesting (upval)
                                                                SCPTesting:FireServer("JoinTestQueue")
                                                            end,
                                                        })
                                                    else
                                                        shared.BottomPopup({
                                                            Title = "Join Test Queue",
                                                            Text = "Would you like to join the test queue? All of your weapons will be removed!",
                                                            Duration = 10,
                                                            Prompt = function() -- Line: 3826 -- upvalues: SCPTesting (upval)
                                                                SCPTesting:FireServer("JoinTestQueueRemoveWeapons")
                                                            end,
                                                        })
                                                    end
                                                end
                                            end
                                        elseif Name ~= "Class - D" and Name ~= "Chaos Insurgency" then
                                            v9 = 0
                                            local Backpack = DeltaFramework.Player:FindFirstChild("Backpack")
                                            if Backpack then
                                                for i5, m in ipairs(Backpack:GetChildren()) do
                                                    if m.Name == "O5 Keycard" then
                                                        v9 = 5
                                                        break
                                                    end
                                                    if m.Name ~= "L4 Keycard" then
                                                        if m.Name ~= "L3 Keycard" then
                                                            if m.Name ~= "L2 Keycard" then
                                                                if m.Name == "L1 Keycard" and v9 < 1 then
                                                                    v9 = 1
                                                                end
                                                            elseif v9 < 2 then
                                                                v9 = 4
                                                            end
                                                        elseif v9 < 3 then
                                                            v9 = 4
                                                        end
                                                    elseif v9 < 4 then
                                                        v9 = 4
                                                    end
                                                end
                                            end
                                            if DeltaFramework.Player.Character and v9 < 5 then
                                                local Tool = DeltaFramework.Player.Character:FindFirstChildOfClass("Tool")
                                                if Tool then
                                                    if Tool.Name == "O5 Keycard" then
                                                        v9 = 5
                                                    elseif Tool.Name ~= "L4 Keycard" then
                                                        if Tool.Name ~= "L3 Keycard" then
                                                            if Tool.Name ~= "L2 Keycard" then
                                                                if Tool.Name == "L1 Keycard" and v9 < 1 then
                                                                    v9 = 1
                                                                end
                                                            elseif v9 < 2 then
                                                                v9 = 2
                                                            end
                                                        elseif v9 < 3 then
                                                            v9 = 3
                                                        end
                                                    elseif v9 < 4 then
                                                        v9 = 4
                                                    end
                                                end
                                            end
                                            if not (u1714:IsInLocation("Control Room", u563.Position)) then
                                                local Attribute, AttributeChangedSignal, Attribute_3, Attribute_4, Back, Character_2, Character_3, Helmet, NVG, Parent_2, TabletSystem, TweenService, TweenService_2, ValidToHeal, u1127, u2439, u3112, u3141, u4109, u4248, u4299, u7102, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44
                                                local Attributes = DeltaFramework.ReplicatedStorage:GetAttributes()
                                                for k3, i52 in pairs(Attributes) do
                                                    if string.sub(k3, 0, 11) == "TempAuthSCP" then
                                                        v14 = string.sub(k3, 12)
                                                        v22 = u1755.SCPs[v14]
                                                        if v22 and v9 < v22.ClearanceLevel then
                                                            v24 = "SCP-" .. v14
                                                            if u1714:IsInLocation(v24, u563.Position) then
                                                                v6 = i52
                                                                Value = "TempAuthSCP" .. v14
                                                            else
                                                                v24 = "SCP-" .. v14 .. " Inner"
                                                                if not (u1714:IsInLocation(v24, u563.Position)) then
                                                                    continue
                                                                end
                                                            end
                                                            if not v6 then
                                                                Text = UnauthorizedWarning.Text:find("Temporary area access")
                                                                if Text then
                                                                    UnauthorizedWarning.TextTransparency = 1
                                                                    Text = UnauthorizedWarning.Back
                                                                    Text.TextTransparency = 1
                                                                    UnauthorizedWarning.Visible = false
                                                                    Text = UnauthorizedWarning.Back
                                                                    Text.Visible = false
                                                                end
                                                            elseif v6 <= 26 then
                                                                UnauthorizedWarning.Text = "Temporary area access ending in " .. tostring((math.max(1, (math.floor(v6))))) .. "s!"
                                                                UnauthorizedWarning.Back.Text = UnauthorizedWarning.Text
                                                                if not UnauthorizedWarning.Visible then
                                                                    Text = nil
                                                                    new = nil
                                                                    AttributeChangedSignal = DeltaFramework.ReplicatedStorage:GetAttributeChangedSignal(Value)
                                                                    Text = AttributeChangedSignal:Connect(function() -- Line: 3851 -- upvalues: DeltaFramework (upval), Value (ref), UnauthorizedWarning (val), new (ref), Text (ref)
                                                                        if DeltaFramework.ReplicatedStorage:GetAttribute(Value) then
                                                                            UnauthorizedWarning.Text = "Temporary area access ending in " .. tostring((math.max(1, (math.floor((DeltaFramework.ReplicatedStorage:GetAttribute(Value))))))) .. "s!"
                                                                            UnauthorizedWarning.Back.Text = UnauthorizedWarning.Text
                                                                            return
                                                                        end
                                                                        new:Disconnect()
                                                                        Text:Disconnect()
                                                                    end)
                                                                    UnauthorizedWarning.Visible = true
                                                                    UnauthorizedWarning.Back.Visible = true
                                                                    TweenService = DeltaFramework.TweenService
                                                                    v13 = TweenInfo.new(0.25)
                                                                    TweenService:Create(UnauthorizedWarning, v13, {TextTransparency = 0}):Play()
                                                                    TweenService_2 = DeltaFramework.TweenService
                                                                    Back = UnauthorizedWarning.Back
                                                                    v13 = TweenInfo.new(0.25)
                                                                    TweenService_2:Create(Back, v13, {TextTransparency = 0}):Play()
                                                                end
                                                            end
                                                            v6 = false
                                                            Value = Mode.Value
                                                            if Value == "Roleplay" then
                                                                v6 = u8452
                                                                if v6 then
                                                                    v6 = u1714:IsInLocation("SCP-093 Dimension", Position_2)
                                                                end
                                                            end
                                                            if v6 then
                                                                Value = DeltaFramework.ReplicatedStorage:FindFirstChild("093Sky")
                                                                if Value then
                                                                    Value = DeltaFramework.ReplicatedStorage["093Sky"]
                                                                    Value.Parent = DeltaFramework.Lighting
                                                                end
                                                            elseif not v6 then
                                                                Value = DeltaFramework.Lighting:FindFirstChild("093Sky")
                                                                if Value then
                                                                    Value = DeltaFramework.Lighting["093Sky"]
                                                                    Value.Parent = DeltaFramework.ReplicatedStorage
                                                                end
                                                            end
                                                            Value = Mode.Value
                                                            if Value == "Roleplay" then
                                                                Text = Position_2
                                                                Value = u1714:IsInCIVent(Text)
                                                                if not Value then
                                                                    Text = 70
                                                                    Value = Text <= Position_2.Y
                                                                end
                                                                if not Value then
                                                                    new = 93612648679072
                                                                else
                                                                    new = 103106747802899
                                                                end
                                                                u63:ChangeMap(new, false)
                                                                if not Value then
                                                                    new = Vector2.new(2322, 1390)
                                                                else
                                                                    new = Vector2.new(1611, 417)
                                                                end
                                                                u63:ChangeMapSize(new, false)
                                                                if not Value then
                                                                    new = Vector3.new(-37.44499969482422, 11, -179.9759979248047)
                                                                else
                                                                    new = Vector3.new(-106.66799926757812, 11, -100.22000122070312)
                                                                end
                                                                u63:ChangeMapCenter(new)
                                                            end
                                                            Value = DeltaFramework.Player:HasTag("ModIconISDCommand")
                                                            DeltaFramework.PlayerGui.Utility.ModIconISDCommand.Visible = Value
                                                            u4109 = if Name ~= "Internal Security Department" then Value else true
                                                            Text = nil
                                                            if Name == "Mobile Task Force" then
                                                                new = DeltaFramework.Player:GetAttribute("Subdivision")
                                                                Text = new
                                                            end
                                                            new = Text == "Beta-7"
                                                            u1127 = Text == "Alpha-1"
                                                            if u4109 then
                                                                u554 = true
                                                            end
                                                            Attribute_3 = DeltaFramework.Player:GetAttribute("Upgraded")
                                                            if Value then
                                                                v12 = 5000
                                                            elseif not Attribute_3 then
                                                                v12 = 250
                                                            else
                                                                v12 = 350
                                                            end
                                                            Helmet = Character:FindFirstChild("Helmet")
                                                            if Helmet then
                                                                Helmet = false
                                                                if Character.Helmet.ClassName == "ObjectValue" then
                                                                    Helmet = Character.Helmet.Value
                                                                    if Helmet then
                                                                        Helmet = Character.Helmet.Value:FindFirstChild("NVGGrip")
                                                                    end
                                                                end
                                                            end
                                                            Attribute_2 = nil
                                                            Gun_Ignore = nil
                                                            MorphAssets = nil
                                                            v22 = nil
                                                            NVG = DeltaFramework.Lighting:FindFirstChild("NVG")
                                                            if not NVG then
                                                                NVG = {Enabled = false}
                                                            end
                                                            if NVG.Enabled then
                                                                if Name == "Chaos Insurgency" then
                                                                    Parent_2 = Helmet
                                                                    if Parent_2 then
                                                                        Parent_2 = Helmet.Parent
                                                                        if Parent_2 then
                                                                            Parent_2 = Helmet.Parent:GetAttribute("Battery")
                                                                        end
                                                                    end
                                                                else
                                                                    Parent_2 = u1740.CheckActive("Limited Battery Scrambler Goggles")
                                                                    if not Parent_2 then end
                                                                end
                                                                v22 = Parent_2
                                                                if not Helmet then
                                                                    Attribute_4 = ""
                                                                elseif Helmet.Parent then
                                                                    Attribute_4 = Helmet.Parent:GetAttribute("Data")
                                                                end
                                                                v23 = u567:Decode("Helmet", Attribute_4)
                                                                v15 = if v23.Highlight ~= "ESP" then nil else true
                                                                Attribute_2 = v15
                                                                v15 = if v23.Highlight ~= "Hostile" then nil else true
                                                                Gun_Ignore = v15
                                                            end
                                                            v15 = Gun_Ignore
                                                            if v15 then
                                                                v15 = v22
                                                                if v15 then
                                                                    v15 = DeltaFramework.PlayerGui.Utility.Version.Visible
                                                                end
                                                            end
                                                            DeltaFramework.PlayerGui.Utility.ScramblePolicy.Visible = v15
                                                            if Name ~= "Chaos Insurgency" then
                                                                DeltaFramework.PlayerGui.Utility.ScramblePolicy.Label.Text = "^ Site Policy Scramblers for Red NVG"
                                                            else
                                                                DeltaFramework.PlayerGui.Utility.ScramblePolicy.Label.Text = "^ Red NVG Scramblers due to Night Ops doctrine"
                                                            end
                                                            if DeltaFramework.PlayerGui.Utility.ScramblePolicy.Visible then
                                                                v23 = tonumber(string.format("%.2f", (v22 or 5) / 5)) or 1
                                                                if DeltaFramework.PlayerGui.Utility.ScramblePolicy.Bar.Size.Y.Scale + 0.001 < v23 and not u621 then
                                                                    u621 = true
                                                                    v23 = DeltaFramework.TweenService
                                                                    v26 = math.max(0.1, v2)
                                                                    v25 = TweenInfo.new(v26, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, true)
                                                                    v23 = v23:Create(DeltaFramework.PlayerGui.Utility.ScramblePolicy.Bar, v25, {BackgroundColor3 = Color3.fromRGB(255, 128, 128)})
                                                                    InfectionTech = nil
                                                                    v23:Play()
                                                                end
                                                                v23 = DeltaFramework.TweenService
                                                                v25 = TweenInfo.new(0.5)
                                                                v26 = {}
                                                                v30 = tonumber(string.format("%.2f", (v22 or 5) / 5)) or 1
                                                                v26.Size = UDim2.new(1, 0, v30, 0)
                                                                v23:Create(DeltaFramework.PlayerGui.Utility.ScramblePolicy.Bar, v25, v26):Play()
                                                            end
                                                            if Name ~= "Staff" then
                                                                if Mode.Value ~= "Infection" then
                                                                    if Mode.Value == "Infection" and Name == "SCP-008" and shared.InfectionTech then
                                                                        InfectionTech = shared.InfectionTech
                                                                        if InfectionTech.Analysis then
                                                                            MorphAssets = true
                                                                        end
                                                                    end
                                                                elseif Name == "Beta-7" and shared.InfectionTech then
                                                                    InfectionTech = shared.InfectionTech
                                                                    if InfectionTech["Sixth Sense"] then
                                                                        Attribute_2 = true
                                                                    end
                                                                end
                                                            elseif Mode.Value == "SCP-3008" then
                                                                Attribute_2 = true
                                                            end
                                                            Parent = nil
                                                            InfectionTech = DeltaFramework.Player.Team
                                                            if InfectionTech then
                                                                if Name ~= "Security Department" then
                                                                    InfectionTech = if Name == "Scientific Department" then DeltaFramework.Player:GetAttribute("WithinTutorial") == "Scientific Department" else false
                                                                else
                                                                    InfectionTech = true
                                                                    if DeltaFramework.Player:GetAttribute("WithinTutorial") == "Security Department" then end
                                                                end
                                                            end
                                                            if not InfectionTech then
                                                                pcall(function() -- Line: 3992 -- upvalues: Parent (ref), u48 (upval), u8452 (val)
                                                                    local v1 = u48("New Player Tips")
                                                                    if v1 then
                                                                        v1 = u8452
                                                                    end
                                                                    Parent = v1
                                                                end)
                                                            end
                                                            v24 = false
                                                            if DeltaFramework.Player:FindFirstChild("Backpack") then
                                                                for i6, i62 in ipairs(DeltaFramework.Player.Backpack:GetChildren()) do
                                                                    if DeltaFramework.CS:HasTag(i62, "Ability") then
                                                                        v24 = true
                                                                        break
                                                                    end
                                                                end
                                                            end
                                                            if not v24 then
                                                                if Label.Text == "USE ABILITY" and not v24 then
                                                                    Label.TextColor3 = Color3.new(1, 1, 1)
                                                                    Label.Text = "SELECT / UNSELECT TOOL"
                                                                end
                                                            elseif Label.Text == "SELECT / UNSELECT TOOL" then
                                                                Label.TextColor3 = Color3.fromRGB(255, 89, 89)
                                                                Label.Text = "USE ABILITY"
                                                            end
                                                            v25 = false
                                                            v26 = false
                                                            if Character:HasTag("076") then
                                                                v26 = true
                                                                if u563:FindFirstChild("Marker") and u563.Marker.Enabled then
                                                                    u563.Marker.Enabled = false
                                                                end
                                                                if Breach076.Value then
                                                                    BossHint("SCP-682 Armor", "Destroy")
                                                                    v27 = Breach076:GetAttribute("Kills") or 0
                                                                    v28 = Breach076:GetAttribute("RequiredKills") or 100
                                                                    v29 = Breach076:GetAttribute("RageKills") or 5
                                                                    v30 = nil
                                                                    v34 = Breach076:GetAttribute("Health") or 100
                                                                    v31 = 0.86 * (v34 / (Breach076:GetAttribute("MaxHealth") or 100)) + 0.14
                                                                    v32 = v28
                                                                    v33 = v29
                                                                    for i7 = v29, v32, v33 do
                                                                        if v27 < i7 then
                                                                            v30 = i7 - v27
                                                                            break
                                                                        end
                                                                    end
                                                                    v32 = Character:GetAttribute("Rage")
                                                                    v25 = v32
                                                                    if v32 and not DeltaFramework.Lighting.RageColor.Enabled then
                                                                        ObjectiveHint("SCP-076 Rage", nil, "You are enraged and have a boost!", Color3.fromRGB(125, 70, 70))
                                                                    end
                                                                    if not SCPUIs.ObjectiveBar.Visible then
                                                                        SCPUIs.ObjectiveBar.Objective.Text = "Eliminate " .. v28 .. " People (" .. v27 .. " / " .. v28 .. ")"
                                                                        SCPUIs.ObjectiveBar.Objective.Back.Text = SCPUIs.ObjectiveBar.Objective.Text
                                                                        v33 = SCPUIs.ObjectiveBar.Objective
                                                                        v33.TextColor3 = Color3.fromRGB(125, 0, 0)
                                                                        v33 = SCPUIs.ObjectiveBar.Objective.Back
                                                                        v33.TextColor3 = Color3.fromRGB(50, 0, 0)
                                                                        v33 = SCPUIs.ObjectiveBar.Fill
                                                                        v33.Size = UDim2.fromScale(v31, 1)
                                                                        SCPUIs.ObjectiveBar.Visible = true
                                                                        if not v30 then
                                                                            if not v32 then
                                                                                ObjectiveHint("SCP-076 Rage", "Destroy")
                                                                            end
                                                                        elseif not v32 then
                                                                            if v30 ~= 1 then
                                                                                v38 = "people"
                                                                            else
                                                                                v38 = "person"
                                                                            end
                                                                            ObjectiveHint("SCP-076 Rage", nil, "Eliminate " .. v30 .. " more" .. v38 .. " for a 20 second boost", Color3.fromRGB(125, 70, 70))
                                                                        end
                                                                    else
                                                                        SCPUIs.ObjectiveBar.Objective.Text = "Eliminate " .. v28 .. " People (" .. v27 .. " / " .. v28 .. ")"
                                                                        SCPUIs.ObjectiveBar.Objective.Back.Text = SCPUIs.ObjectiveBar.Objective.Text
                                                                        v33 = SCPUIs.ObjectiveBar.Fill
                                                                        v33.Size = UDim2.fromScale(v31, 1)
                                                                        if not v30 then
                                                                            if not v32 then
                                                                                ObjectiveHint("SCP-076 Rage", "Destroy")
                                                                            end
                                                                        elseif not v32 then
                                                                            if v30 ~= 1 then
                                                                                v38 = "people"
                                                                            else
                                                                                v38 = "person"
                                                                            end
                                                                            ObjectiveHint("SCP-076 Rage", nil, "Eliminate " .. v30 .. " more " .. v38 .. " for a 20 second boost", Color3.fromRGB(125, 70, 70))
                                                                        end
                                                                    end
                                                                elseif SCPUIs.ObjectiveBar.Visible then
                                                                    SCPUIs.ObjectiveBar.Visible = false
                                                                    ObjectiveHint("SCP-076 Rage", "Destroy")
                                                                    BossHint("SCP-682 Armor", "Destroy")
                                                                end
                                                            elseif not Breach682.Value then
                                                                if SCPUIs.ObjectiveBar.Visible then
                                                                    SCPUIs.ObjectiveBar.Visible = false
                                                                    ObjectiveHint("SCP-076 Rage", "Destroy")
                                                                    BossHint("SCP-682 Armor", "Destroy")
                                                                end
                                                            elseif Breach682:GetAttribute("Armored") then
                                                                BossHint("SCP-682 Armor", nil, "SCP-682 has adapted to the bullets! You must get close to do damage.", Color3.fromRGB(30, 125, 49))
                                                            end
                                                            if not (Character:HasTag("299")) then
                                                                v28 = u573
                                                                v29 = nil
                                                                v30 = nil
                                                                for i8, i9 in v28, v29, v30 do
                                                                    if DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text == i9 then
                                                                        UpdateGenericUIText(nil, nil, true)
                                                                    end
                                                                end
                                                                u570 = 999
                                                                u571 = 999
                                                            else
                                                                v27 = u1711:Characters()
                                                                v28 = {}
                                                                v29 = workspace:FindFirstChild("MorphAssets")
                                                                v30 = workspace:FindFirstChild("Lights")
                                                                v31 = workspace:FindFirstChild("SCPs")
                                                                v32 = workspace:FindFirstChild("Gun_Ignore")
                                                                v28[1] = v29
                                                                v28[2] = v30
                                                                v28[3] = v31
                                                                v28[4] = v32
                                                                v28[5] = table.unpack(v27)
                                                                for i10, i11 in DeltaFramework.CS:GetTagged("Glass") do
                                                                    table.insert(v28, i11)
                                                                end
                                                                v29 = {}
                                                                for i12, i13 in u1711:Characters() do
                                                                    if not (i13:HasTag("Infected")) and not (i13:HasTag("076")) then
                                                                        table.insert(v29, i13)
                                                                    end
                                                                end
                                                                v31 = u1711:ClosestVisible(Character.HumanoidRootPart.Position, v29, v28, 256)
                                                                if v31 then
                                                                    if v31 then
                                                                        u571 = 0
                                                                    end
                                                                elseif u571 < 2 then
                                                                    u571 = u571 + v2
                                                                end
                                                                v33 = v31
                                                                if not v33 then
                                                                    v33 = u571 < 2
                                                                end
                                                                v31 = v33
                                                                if not v31 then
                                                                    v35 = "TOUCH AND ATTACK OTHER PLAYERS TO INFECT"
                                                                else
                                                                    v35 = "ATTACK OTHER PLAYERS OR YOU WILL DIE"
                                                                end
                                                                SCPUIs.SCP299Text.Text = "<font color=\"rgb(255, 152, 100)\">SCP - 299</font> INFECTION <font color=\"rgb(255,89,89)\">|</font> " .. v35
                                                                if not v31 then
                                                                    v35 = "TOUCH AND ATTACK OTHER PLAYERS TO INFECT"
                                                                else
                                                                    v35 = "ATTACK OTHER PLAYERS OR YOU WILL DIE"
                                                                end
                                                                SCPUIs.SCP299Text.Back.Text = "<font color=\"rgb(100,0,0)\">SCP - 299</font> INFECTION <font color=\"rgb(100,0,0)\">|</font> " .. v35
                                                                if v31 then
                                                                    if not u572 then
                                                                        UpdateGenericUIText("<font color=\"rgb(255,89,89)\">ATTACK THEM OR YOU WILL DIE</font>", 10)
                                                                        u570 = 0
                                                                    end
                                                                    u572 = true
                                                                    v25 = true
                                                                elseif 12 < u570 then
                                                                    u572 = false
                                                                    u570 = 0
                                                                    if not DeltaFramework.ReplicatedStorage.WDB.Value then
                                                                        v33 = u573
                                                                    else
                                                                        v33 = u577
                                                                    end
                                                                    v34 = v33[math.random(1, #v33)]
                                                                    UpdateGenericUIText(v34, 7)
                                                                elseif DeltaFramework.PlayerGui.SCPUIs.SCPGeneric.Text == "<font color=\"rgb(255,89,89)\">ATTACK THEM OR YOU WILL DIE</font>" then
                                                                    UpdateGenericUIText(nil, nil, true)
                                                                end
                                                            end
                                                            DeltaFramework.Lighting.RageColor.Enabled = v25
                                                            u4248 = if Name == "Medical Department" then not v26 else false
                                                            Attribute = u4248
                                                            if Attribute then
                                                                Attribute = DeltaFramework.Player:GetAttribute("Upgraded")
                                                            end
                                                            if shared.SquadMembers and shared.SquadMembers[1] then
                                                                u558 = true
                                                            end
                                                            v29 = Character:FindFirstChild("Authorizer")
                                                            if v29 and v29:IsA("ObjectValue") and v29.Value then
                                                                v29 = v29.Value
                                                                v30 = u1714:IsInSCPCC(Position)
                                                                if v29.Character and v29.Character:FindFirstChild("Head") and not (v29.Character.Head:FindFirstChild("FollowTag")) and not v30 then
                                                                    v31 = script.FollowTag:Clone()
                                                                    DeltaFramework.CS:AddTag(v31, "FollowTag")
                                                                    v31.Parent = v29.Character.Head
                                                                    u620 = true
                                                                end
                                                            end
                                                            TabletSystem = shared.TabletSystem
                                                            if TabletSystem then
                                                                TabletSystem = shared.TabletSystem.SCPTestInfo
                                                            end
                                                            u4299 = false
                                                            Character_2 = not v26
                                                            if Character_2 then
                                                                Character_2 = DeltaFramework.Player.Character
                                                                if Character_2 then
                                                                    if (DeltaFramework.Player.Character:GetAttribute("RP") or ""):sub(8, 8) == "1" then
                                                                        Character_2 = true
                                                                    else
                                                                        Character_2 = false
                                                                    end
                                                                end
                                                            end
                                                            Character_3 = new
                                                            if Character_3 then
                                                                Character_3 = not v26
                                                                if Character_3 then
                                                                    Character_3 = DeltaFramework.Player.Character
                                                                    if Character_3 then
                                                                        if (DeltaFramework.Player.Character:GetAttribute("RP") or ""):sub(6, 6) == "0" then
                                                                            Character_3 = true
                                                                        else
                                                                            Character_3 = false
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            u2439 = DeltaFramework.Player.Character:HasTag("CanRK")
                                                            if Lights then
                                                                u558 = false
                                                                u532 = false
                                                                u3112 = Team:GetAttribute("Team_Category") or ""
                                                                u3141 = false
                                                                if Name == "Rapid Response Team" then
                                                                    u3141 = Character
                                                                    if u3141 then
                                                                        if (Character:GetAttribute("RP") or ""):sub(8, 8) == "1" then
                                                                            u3141 = true
                                                                        else
                                                                            u3141 = false
                                                                        end
                                                                    end
                                                                end
                                                                function ValidToHeal(p1) -- Line: 4190 -- upvalues: DeltaFramework (upval), Team (val), Character (val), u3112 (val), Name (val)
                                                                    if not p1 then
                                                                        return
                                                                    else
                                                                        if not DeltaFramework.Player then
                                                                            return
                                                                        end
                                                                        local Team_2 = p1.Team
                                                                        if not Team or not Team_2 or not Character then
                                                                            return
                                                                        end
                                                                        local Character_2 = p1.Character
                                                                        if not Character_2 or Character_2:HasTag("076") then
                                                                            return
                                                                        end
                                                                        local v1 = Team_2:GetAttribute("Team_Category") or ""
                                                                        if u3112 == "NEUTRAL" then
                                                                            return true
                                                                        else
                                                                            if v1 == "NEUTRAL" then
                                                                                return true
                                                                            end
                                                                            if u3112 == "" then
                                                                                local v2 = Character:HasTag("Rogue")
                                                                                local Name_2 = Team_2.Name
                                                                                local v3 = Character_2:HasTag("Rogue")
                                                                                if not v3 then
                                                                                    v3 = Character_2:HasTag("EquippedGun")
                                                                                end
                                                                                if Name == "Chaos Insurgency" or Name == "Class - D" then
                                                                                    if Name_2 ~= "Chaos Insurgency" then
                                                                                        if Name_2 == "Class - D" or v1 == "HOSTILE" then
                                                                                            return true
                                                                                        end
                                                                                        return false
                                                                                    end
                                                                                    return true
                                                                                end
                                                                                if u3112 == "HOSTILE" then
                                                                                    if Name_2 == "Chaos Insurgency" or Name_2 == "Class - D" or v1 == "HOSTILE" then
                                                                                        return true
                                                                                    end
                                                                                    return false
                                                                                end
                                                                                if v2 then
                                                                                    return false
                                                                                end
                                                                                if Name_2 == "Chaos Insurgency" or Name_2 == "Class - D" then
                                                                                    if Name_2 == "Class - D" then
                                                                                        if not v3 then
                                                                                            return true
                                                                                        end
                                                                                        return false
                                                                                    end
                                                                                    return false
                                                                                end
                                                                                if v1 ~= "HOSTILE" then
                                                                                    return true
                                                                                end
                                                                                if Name_2 ~= "Class - D" then
                                                                                    return false
                                                                                end
                                                                                if not v3 then
                                                                                    return true
                                                                                end
                                                                                return false
                                                                            elseif v1 ~= "" and u3112 == v1 then
                                                                                return true
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                                Player = nil
                                                                function v38(p1, p2, p3) -- Line: 4229 -- upvalues: Name (val), u1714 (upval), Position (val), Player (ref), Attribute_2 (ref), u49 (upval), DeltaFramework (upval), u1711 (upval), u531 (upval), Lights (val), Gun_Ignore (ref), u3141 (val), Parent (ref), InfectionTech (val), Visible (val), u532 (upval), MorphAssets (ref), new (val), Character_3 (val), u1127 (val), u450 (upval), u4109 (val), u451 (upval), u456 (upval), u4248 (val), ValidToHeal (val), Character_2 (val), u452 (upval), u453 (upval), u454 (upval), u455 (upval), Attribute (val), u2439 (val), u3112 (val), u558 (upval), Content (upval), TabletSystem (val), u4299 (ref)
                                                                    local Authorizer, B7Highlight, Broken1Highlight, Broken2Highlight, Humanoid, Team, YellowHighlight, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10
                                                                    local Value = nil
                                                                    if Name == "Class - D" then
                                                                        if Name == "Scientific Department" and p1:FindFirstChild("HumanoidRootPart") then
                                                                            v5 = u1714:IsInLocation("CDC Inner", p1.HumanoidRootPart.Position)
                                                                            if v5 then
                                                                                v5 = p3
                                                                                if v5 then
                                                                                    v5 = p3:HasTag("InTestQueue")
                                                                                end
                                                                            end
                                                                            if v5 then
                                                                                Player = true
                                                                                if not (p2:FindFirstChild("FollowTag")) then
                                                                                    v6 = script.FollowTag:Clone()
                                                                                    v6.TextLabel.Text = "UNARMED"
                                                                                    v6.TextLabel.Back.Text = v6.TextLabel.Text
                                                                                    v6:AddTag("FollowTag")
                                                                                    v6.Parent = p2
                                                                                end
                                                                            end
                                                                        end
                                                                    elseif Name ~= "Chaos Insurgency" and Name ~= "Scientific Department" and Name ~= "Medical Department" then
                                                                        Value = p1:FindFirstChild("Authorizer")
                                                                        if Value and Value:IsA("ObjectValue") and Value.Value then
                                                                            Value = Value.Value
                                                                            if Value and not (u1714:IsInSCPCC(Position)) and Value.Character and Value.Character:FindFirstChild("Head") then
                                                                                Player = true
                                                                                if not (Value.Character.Head:FindFirstChild("FollowTag")) then
                                                                                    v6 = script.FollowTag:Clone()
                                                                                    v6.TextLabel.Text = "ESCORT"
                                                                                    v6.TextLabel.Back.Text = v6.TextLabel.Text
                                                                                    v6:AddTag("FollowTag")
                                                                                    v6.Parent = Value.Character.Head
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    v5 = vector.magnitude(p2.Position - Position)
                                                                    v6 = p1:HasTag("i")
                                                                    if not Attribute_2 then
                                                                        if not Attribute_2 then
                                                                            if u531 then
                                                                                if p1:FindFirstChild("TNCHighlight") then
                                                                                    p1.TNCHighlight:Destroy()
                                                                                end
                                                                            elseif not Lights and 250 > v5 and not v6 then
                                                                            end
                                                                        elseif v5 < 250 and not v6 then
                                                                            if 250 >= v5 then
                                                                                v8 = math.min(1, v5 / 250 * 2)
                                                                            else
                                                                                v8 = 1
                                                                            end
                                                                            p1.TNCHighlight.FillTransparency = v8
                                                                            if 250 >= v5 then
                                                                                v8 = v5 / 250
                                                                            else
                                                                                v8 = 1
                                                                            end
                                                                            p1.TNCHighlight.OutlineTransparency = v8
                                                                        end
                                                                    elseif v5 < 250 and not v6 and not (p1:FindFirstChild("TNCHighlight")) then
                                                                        local Highlight = Instance.new("Highlight")
                                                                        Highlight.Name = "TNCHighlight"
                                                                        if not p3 then
                                                                            local Attribute_3 = p1:GetAttribute("Team")
                                                                            if Attribute_3 ~= Name then
                                                                                v8 = Color3.fromRGB(245, 13, 98)
                                                                            elseif not (p1:HasTag("001")) then
                                                                                v8 = Color3.fromRGB(98, 13, 245)
                                                                            end
                                                                        elseif u49(DeltaFramework.Player, p3) then
                                                                        end
                                                                        Highlight.FillColor = v8
                                                                        if 250 >= v5 then
                                                                            v8 = math.min(1, v5 / 250 * 2)
                                                                        else
                                                                            v8 = 1
                                                                        end
                                                                        Highlight.FillTransparency = v8
                                                                        Highlight.OutlineColor = u1711:Shade(Highlight.FillColor, 55)
                                                                        if 250 >= v5 then
                                                                            v8 = v5 / 250
                                                                        else
                                                                            v8 = 1
                                                                        end
                                                                        Highlight.OutlineTransparency = v8
                                                                        Highlight.Parent = p1
                                                                    end
                                                                    if not Gun_Ignore then
                                                                        if not Gun_Ignore then
                                                                            if u531 then
                                                                                if p1:FindFirstChild("RedHighlight") then
                                                                                    p1.RedHighlight:Destroy()
                                                                                end
                                                                            elseif not Lights and 100 > v5 and not v6 then
                                                                            end
                                                                        elseif v5 < 100 and not v6 then
                                                                            if not p3 then
                                                                                v7 = false
                                                                                local Attribute_5 = p1:GetAttribute("Team")
                                                                                if Attribute_5 == Name then
                                                                                    v7 = not p1:HasTag("001")
                                                                                end
                                                                            else
                                                                                v7 = u49(DeltaFramework.Player, p3, true)
                                                                            end
                                                                            if v7 then
                                                                                p1.RedHighlight.OutlineColor = Color3.new(0, 1, 0)
                                                                            elseif not (p1:HasTag("Infected")) then
                                                                                local Attribute_6
                                                                                if not p3 then
                                                                                    Attribute_6 = ""
                                                                                elseif p3.Team then
                                                                                    Attribute_6 = p3.Team:GetAttribute("Team_Category")
                                                                                    if not Attribute_6 then
                                                                                        Attribute_6 = ""
                                                                                    end
                                                                                end
                                                                                if Attribute_6 ~= "NEUTRAL" then
                                                                                    p1.RedHighlight.OutlineColor = Color3.new(1, 0, 0)
                                                                                else
                                                                                    p1.RedHighlight.OutlineColor = Color3.new(1, 1, 0)
                                                                                end
                                                                            else
                                                                                p1.RedHighlight.OutlineColor = Color3.new(0, 1, 0)
                                                                            end
                                                                            if 100 >= v5 then
                                                                                v9 = v5 / 100
                                                                            else
                                                                                v9 = 1
                                                                            end
                                                                            p1.RedHighlight.OutlineTransparency = v9
                                                                            if not u3141 then
                                                                                p1.RedHighlight.FillTransparency = 1
                                                                            else
                                                                                p1.RedHighlight.FillTransparency = u1711:Lerp(0.5, 1, 1 - p1.Humanoid.Health / p1.Humanoid.MaxHealth)
                                                                                v9 = Color3.new(0, 1, 0)
                                                                                v1 = Color3.new(1, 0, 0)
                                                                                p1.RedHighlight.FillColor = v9:Lerp(v1, 1 - p1.Humanoid.Health / p1.Humanoid.MaxHealth)
                                                                            end
                                                                        end
                                                                    elseif v5 < 100 and not v6 and not (p1:FindFirstChild("RedHighlight")) then
                                                                        local Highlight_2 = Instance.new("Highlight")
                                                                        Highlight_2.Name = "RedHighlight"
                                                                        Highlight_2.FillTransparency = 1
                                                                        if not p3 then
                                                                            v8 = false
                                                                            local Attribute_4 = p1:GetAttribute("Team")
                                                                            if Attribute_4 == Name then
                                                                                v8 = not p1:HasTag("001")
                                                                            end
                                                                        else
                                                                            v8 = u49(DeltaFramework.Player, p3, true)
                                                                        end
                                                                        if v8 then
                                                                            Highlight_2.OutlineColor = Color3.new(0, 1, 0)
                                                                        elseif not (p1:HasTag("Infected")) then
                                                                            Team = p3
                                                                            if Team then
                                                                                Team = p3.Team
                                                                                if Team then
                                                                                    Team = p3.Team:GetAttribute("Team_Category") or ""
                                                                                end
                                                                            end
                                                                            if Team ~= "NEUTRAL" then
                                                                                Highlight_2.OutlineColor = Color3.new(1, 0, 0)
                                                                            else
                                                                                Highlight_2.OutlineColor = Color3.new(1, 1, 0)
                                                                            end
                                                                        else
                                                                            Highlight_2.OutlineColor = Color3.new(0, 1, 0)
                                                                        end
                                                                        if 100 >= v5 then
                                                                            v9 = v5 / 100
                                                                        else
                                                                            v9 = 1
                                                                        end
                                                                        Highlight_2.OutlineTransparency = v9
                                                                        Highlight_2.DepthMode = Enum.HighlightDepthMode.Occluded
                                                                        Highlight_2.Parent = p1
                                                                    end
                                                                    if not Parent then
                                                                        local NewPlayerHostileTip_2 = p1:FindFirstChild("NewPlayerHostileTip")
                                                                        if NewPlayerHostileTip_2 then
                                                                            pcall(function() -- Line: 4439 -- upvalues: p2 (val)
                                                                                p2.Hostile:Destroy()
                                                                            end)
                                                                            NewPlayerHostileTip_2:Destroy()
                                                                        end
                                                                    else
                                                                        v7 = nil
                                                                        if Name and p3 and p1 and not (p1:GetAttribute("HideCharacter")) then
                                                                            local Team_2 = p3.Team
                                                                            if Team_2 then
                                                                                local Name_2 = Team_2.Name
                                                                                if not v6 then
                                                                                    if not InfectionTech then
                                                                                        if Name == "Class - D" then
                                                                                            if Name_2 == "Class - D" then
                                                                                                if Name ~= "Class - D" and Name ~= "Chaos Insurgency" then
                                                                                                    if Name_2 == "Class - D" then
                                                                                                        if Name_2 ~= "Chaos Insurgency" then
                                                                                                            v9 = true
                                                                                                            if Name_2 ~= "Chaos Insurgency" then
                                                                                                                v9 = p1:HasTag("EquippedGun")
                                                                                                                if not v9 then
                                                                                                                    v9 = p1:HasTag("Escaped")
                                                                                                                    if not v9 then
                                                                                                                        v9 = p1:HasTag("CrossedLine")
                                                                                                                        if v9 then
                                                                                                                            Authorizer = p1:FindFirstChild("Authorizer")
                                                                                                                            if not Authorizer then
                                                                                                                                Authorizer = p3:GetAttribute("Janitor")
                                                                                                                            end
                                                                                                                            v9 = not Authorizer
                                                                                                                        end
                                                                                                                    end
                                                                                                                end
                                                                                                            end
                                                                                                            v7 = v9
                                                                                                        elseif p1:HasTag("Infiltrator") and not (p1:HasTag("Rogue")) then
                                                                                                            v7 = nil
                                                                                                        end
                                                                                                    elseif Name_2 ~= "Chaos Insurgency" then
                                                                                                    end
                                                                                                end
                                                                                            elseif Name_2 ~= "Chaos Insurgency" then
                                                                                                if Name_2 == "Scientific Department" then
                                                                                                    v9 = p1:HasTag("EquippedGun")
                                                                                                    if v9 then
                                                                                                        v9 = p1:HasTag("Escaped")
                                                                                                        if not v9 then
                                                                                                            v9 = p1:HasTag("CrossedLine")
                                                                                                            if v9 then
                                                                                                                v9 = not p1:FindFirstChild("Authorizer")
                                                                                                                if v9 then
                                                                                                                    v9 = not DeltaFramework.Player:GetAttribute("Janitor")
                                                                                                                end
                                                                                                            end
                                                                                                        end
                                                                                                    end
                                                                                                    v7 = v9
                                                                                                elseif Name_2 ~= "Medical Department" then
                                                                                                    if p1:HasTag("Escaped") then
                                                                                                        v9 = not p1:FindFirstChild("Authorizer")
                                                                                                        if v9 then
                                                                                                            v9 = not DeltaFramework.Player:GetAttribute("Janitor")
                                                                                                        end
                                                                                                    else
                                                                                                        v9 = p1:HasTag("CrossedLine")
                                                                                                        if not v9 then end
                                                                                                    end
                                                                                                    v7 = v9
                                                                                                end
                                                                                            end
                                                                                        elseif Name ~= "Chaos Insurgency" then
                                                                                        end
                                                                                        if p1 and p1:HasTag("001") then
                                                                                            v7 = not p1:HasTag("001")
                                                                                        end
                                                                                    elseif Name_2 ~= "Class - D" then
                                                                                        if Name_2 == "Chaos Insurgency" then end
                                                                                    elseif p3.Character and p3.Character:HasTag("EquippedGun") then
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                        v8 = nil
                                                                        if v7 and v5 < 125 then
                                                                            local CurrentCamera = workspace.CurrentCamera
                                                                            if CurrentCamera then
                                                                                _, v1 = CurrentCamera:WorldToScreenPoint(p2.Position)
                                                                                if v1 then
                                                                                    v8 = true
                                                                                end
                                                                            end
                                                                        end
                                                                        local NewPlayerHostileTip = p1:FindFirstChild("NewPlayerHostileTip")
                                                                        if not v8 then
                                                                            if p2 and not v8 then
                                                                                pcall(function() -- Line: 4428 -- upvalues: p2 (val)
                                                                                    p2.Hostile:Destroy()
                                                                                end)
                                                                            end
                                                                            if NewPlayerHostileTip then
                                                                                NewPlayerHostileTip:Destroy()
                                                                            end
                                                                        else
                                                                            if p2 and not (p2:FindFirstChild("Hostile")) then
                                                                                pcall(function() -- Line: 4404 -- upvalues: DeltaFramework (upval), p2 (val)
                                                                                    local v1 = DeltaFramework.ReplicatedStorage.LoadAsset.Hostile:Clone()
                                                                                    v1.Parent = p2
                                                                                end)
                                                                            end
                                                                            if v5 < 125 then -- yes
                                                                                if NewPlayerHostileTip then
                                                                                    NewPlayerHostileTip.Enabled = Visible
                                                                                else
                                                                                    local Highlight_3 = Instance.new("Highlight")
                                                                                    Highlight_3.Name = "NewPlayerHostileTip"
                                                                                    Highlight_3.FillTransparency = 1
                                                                                    Highlight_3.OutlineColor = Color3.new(1, 0, 0)
                                                                                    Highlight_3.OutlineTransparency = 0.25
                                                                                    Highlight_3.DepthMode = Enum.HighlightDepthMode.Occluded
                                                                                    Highlight_3.Enabled = Visible
                                                                                    Highlight_3.Parent = p1
                                                                                end
                                                                                u532 = true
                                                                            elseif NewPlayerHostileTip then
                                                                                NewPlayerHostileTip:Destroy()
                                                                            end
                                                                        end
                                                                    end
                                                                    if not MorphAssets then
                                                                        if not MorphAssets then
                                                                            if u531 then
                                                                                if p1:FindFirstChild("YellowHighlight") then
                                                                                    p1.YellowHighlight:Destroy()
                                                                                end
                                                                            elseif not Lights and 150 >= v5 and not v6 then
                                                                            end
                                                                        elseif v5 <= 150 and not v6 then
                                                                            YellowHighlight = p1.YellowHighlight
                                                                            if not p3 then
                                                                                v8 = 1
                                                                            elseif p3.Team and p3.Team.Name == "Beta-7" and p1:FindFirstChild("Humanoid") and p1.Humanoid.Health <= 75 and v5 <= 150 then
                                                                                v8 = v5 / 150
                                                                            end
                                                                            YellowHighlight.OutlineTransparency = v8
                                                                        end
                                                                    elseif v5 <= 150 and not v6 and not (p1:FindFirstChild("YellowHighlight")) then
                                                                        local Highlight_4 = Instance.new("Highlight")
                                                                        Highlight_4.Name = "YellowHighlight"
                                                                        Highlight_4.FillTransparency = 1
                                                                        Highlight_4.OutlineColor = Color3.new(1, 1, 0)
                                                                        if not p3 then
                                                                            v8 = 1
                                                                        elseif p3.Team and p3.Team.Name == "Beta-7" and p1:FindFirstChild("Humanoid") and p1.Humanoid.Health <= 75 and v5 <= 150 then
                                                                            v8 = v5 / 150
                                                                        end
                                                                        Highlight_4.OutlineTransparency = v8
                                                                        Highlight_4.DepthMode = Enum.HighlightDepthMode.Occluded
                                                                        Highlight_4.Parent = p1
                                                                    end
                                                                    if not new then
                                                                        if not new then
                                                                            if u531 then
                                                                                if p1:FindFirstChild("B7Highlight") then
                                                                                    p1.B7Highlight:Destroy()
                                                                                end
                                                                            elseif not Lights and not v6 then
                                                                            end
                                                                        elseif not v6 then
                                                                            if p1:HasTag("Infected") then
                                                                                local AlwaysOnTop_2
                                                                                if 100 >= v5 then
                                                                                    v8 = v5 / 100
                                                                                else
                                                                                    v8 = 1
                                                                                end
                                                                                p1.B7Highlight.OutlineTransparency = v8
                                                                                B7Highlight = p1.B7Highlight
                                                                                if not Character_3 then
                                                                                    AlwaysOnTop_2 = Enum.HighlightDepthMode.Occluded
                                                                                elseif v5 <= 50 then
                                                                                    AlwaysOnTop_2 = Enum.HighlightDepthMode.AlwaysOnTop
                                                                                end
                                                                                B7Highlight.DepthMode = AlwaysOnTop_2
                                                                            elseif p1.Name ~= "SCP-049-2" and p1.Name ~= "SCP-008-2" and p1:FindFirstChild("B7Highlight") then
                                                                                p1.B7Highlight:Destroy()
                                                                            end
                                                                        end
                                                                    elseif not v6 and not (p1:FindFirstChild("B7Highlight")) then
                                                                        if p1:HasTag("Infected") then
                                                                            local AlwaysOnTop
                                                                            local Highlight_5 = Instance.new("Highlight")
                                                                            Highlight_5.Name = "B7Highlight"
                                                                            Highlight_5.FillTransparency = 1
                                                                            Highlight_5.OutlineColor = u1711:Shade(Highlight_5.FillColor, 55)
                                                                            if 100 >= v5 then
                                                                                v8 = v5 / 100
                                                                            else
                                                                                v8 = 1
                                                                            end
                                                                            Highlight_5.OutlineTransparency = v8
                                                                            if not Character_3 then
                                                                                AlwaysOnTop = Enum.HighlightDepthMode.Occluded
                                                                            elseif v5 <= 50 then
                                                                                AlwaysOnTop = Enum.HighlightDepthMode.AlwaysOnTop
                                                                            end
                                                                            Highlight_5.DepthMode = AlwaysOnTop
                                                                            v8 = {}
                                                                            v8["001"] = Color3.fromRGB(255, 100, 100)
                                                                            v8["008"] = Color3.fromRGB(150, 255, 100)
                                                                            v8["016"] = Color3.fromRGB(100, 255, 178)
                                                                            v8["299"] = Color3.fromRGB(255, 152, 100)
                                                                            v8["409"] = Color3.fromRGB(150, 150, 255)
                                                                            for k, v in pairs(v8) do
                                                                                if p1:HasTag(k) then
                                                                                    Highlight_5.FillColor = v
                                                                                    break
                                                                                end
                                                                            end
                                                                            Highlight_5.Parent = p1
                                                                        elseif p1.Name ~= "SCP-049-2" then
                                                                        end
                                                                    end
                                                                    local Attribute_7 = u1127
                                                                    if Attribute_7 then
                                                                        Attribute_7 = p3
                                                                        if Attribute_7 then
                                                                            Attribute_7 = p3:GetAttribute("O5")
                                                                            if Attribute_7 then
                                                                                Attribute_7 = p3.Team
                                                                                if Attribute_7 then
                                                                                    Attribute_7 = if p3.Team.Name ~= "Chaos Insurgency" then if p3.Team:GetAttribute("Team_Category") or "" ~= "HOSTILE" then if v5 <= 25 then not v6 else false else false else false
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    if not Attribute_7 then
                                                                        if Attribute_7 then
                                                                            p1.A1Highlight.OutlineTransparency = v5 / 25
                                                                        elseif u450 and p1:FindFirstChild("A1Highlight") then
                                                                            p1.A1Highlight:Destroy()
                                                                        end
                                                                    elseif not (p1:FindFirstChild("A1Highlight")) then
                                                                        local Highlight_6 = Instance.new("Highlight")
                                                                        Highlight_6.Name = "A1Highlight"
                                                                        Highlight_6.FillTransparency = 1
                                                                        Highlight_6.OutlineColor = Color3.fromRGB(0, 100, 255)
                                                                        Highlight_6.OutlineTransparency = v5 / 25
                                                                        Highlight_6.DepthMode = Enum.HighlightDepthMode.Occluded
                                                                        Highlight_6.Parent = p1
                                                                        u450 = true
                                                                    end
                                                                    v8 = p1:HasTag("Unauthorized")
                                                                    if v8 then
                                                                        v8 = not v6
                                                                    end
                                                                    if not u4109 then
                                                                        if not u4109 then
                                                                            if u451 and p1:FindFirstChild("UnauthorizedHighlight") and not v8 then
                                                                                p1.UnauthorizedHighlight:Destroy()
                                                                            end
                                                                        elseif v8 then
                                                                            if 300 >= v5 then
                                                                                v2 = v5 / 300
                                                                            else
                                                                                v2 = 1
                                                                            end
                                                                            p1.UnauthorizedHighlight.FillTransparency = math.max(0.75, v2)
                                                                            if 300 >= v5 then
                                                                                v10 = v5 / 300
                                                                            else
                                                                                v10 = 1
                                                                            end
                                                                            p1.UnauthorizedHighlight.OutlineTransparency = v10
                                                                        end
                                                                    elseif v8 and not (p1:FindFirstChild("UnauthorizedHighlight")) then
                                                                        local Highlight_7 = Instance.new("Highlight")
                                                                        Highlight_7.Name = "UnauthorizedHighlight"
                                                                        Highlight_7.FillColor = Color3.fromRGB(255, 125, 100)
                                                                        if 300 >= v5 then
                                                                            v2 = v5 / 300
                                                                        else
                                                                            v2 = 1
                                                                        end
                                                                        Highlight_7.FillTransparency = math.max(0.75, v2)
                                                                        Highlight_7.OutlineColor = Color3.fromRGB(255, 125, 100)
                                                                        if 300 >= v5 then
                                                                            v10 = v5 / 300
                                                                        else
                                                                            v10 = 1
                                                                        end
                                                                        Highlight_7.OutlineTransparency = v10
                                                                        Highlight_7.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                                                        Highlight_7.Parent = p1
                                                                        u451 = true
                                                                    end
                                                                    v9 = false
                                                                    if Name == "Chaos Insurgency" then
                                                                        v9 = p1:HasTag("Infiltrator")
                                                                        if v9 then
                                                                            v9 = not v6
                                                                        end
                                                                    end
                                                                    if not v9 then
                                                                        if v9 then
                                                                            if 300 >= v5 then
                                                                                v3 = v5 / 300
                                                                            else
                                                                                v3 = 1
                                                                            end
                                                                            p1.InfiltratorHighlight.FillTransparency = math.max(0.75, v3)
                                                                            if 300 >= v5 then
                                                                                v1 = v5 / 300
                                                                            else
                                                                                v1 = 1
                                                                            end
                                                                            p1.InfiltratorHighlight.OutlineTransparency = v1
                                                                        elseif u456 and p1:FindFirstChild("InfiltratorHighlight") and not v9 then
                                                                            p1.InfiltratorHighlight:Destroy()
                                                                        end
                                                                    elseif not (p1:FindFirstChild("InfiltratorHighlight")) then
                                                                        local Highlight_8 = Instance.new("Highlight")
                                                                        Highlight_8.Name = "InfiltratorHighlight"
                                                                        Highlight_8.FillColor = Color3.fromRGB(100, 125, 255)
                                                                        if 300 >= v5 then
                                                                            v3 = v5 / 300
                                                                        else
                                                                            v3 = 1
                                                                        end
                                                                        Highlight_8.FillTransparency = math.max(0.75, v3)
                                                                        Highlight_8.OutlineColor = Color3.fromRGB(100, 125, 255)
                                                                        if 300 >= v5 then
                                                                            v1 = v5 / 300
                                                                        else
                                                                            v1 = 1
                                                                        end
                                                                        Highlight_8.OutlineTransparency = v1
                                                                        Highlight_8.DepthMode = Enum.HighlightDepthMode.Occluded
                                                                        Highlight_8.Parent = p1
                                                                        u456 = true
                                                                    end
                                                                    v10 = u4248
                                                                    if v10 then
                                                                        v10 = ValidToHeal(p3)
                                                                        if v10 then
                                                                            v10 = not v6
                                                                        end
                                                                    end
                                                                    if not u4248 then
                                                                        if not u452 then
                                                                            if u452 then
                                                                                Broken1Highlight = p1:FindFirstChild("Broken1Highlight")
                                                                                if Broken1Highlight then
                                                                                    local AlwaysOnTop_4
                                                                                    if not Character_2 then
                                                                                        AlwaysOnTop_4 = Enum.HighlightDepthMode.Occluded
                                                                                    elseif v5 <= 50 then
                                                                                        AlwaysOnTop_4 = Enum.HighlightDepthMode.AlwaysOnTop
                                                                                    end
                                                                                    Broken1Highlight.DepthMode = AlwaysOnTop_4
                                                                                end
                                                                            end
                                                                        elseif not u4248 then
                                                                            if p1:FindFirstChild("Broken1Highlight") then
                                                                                p1.Broken1Highlight:Destroy()
                                                                            end
                                                                        elseif p1:GetAttribute("Broken1") then
                                                                        end
                                                                    elseif p1:GetAttribute("Broken1") and v10 and not (p1:FindFirstChild("Broken1Highlight")) and p1:FindFirstChild(p1:GetAttribute("Broken1")) then
                                                                        local AlwaysOnTop_3
                                                                        local Highlight_9 = Instance.new("Highlight")
                                                                        Highlight_9.Name = "Broken1Highlight"
                                                                        Highlight_9.FillTransparency = 0.25
                                                                        Highlight_9.FillColor = Color3.new(0.5, 0, 0)
                                                                        Highlight_9.OutlineTransparency = 1
                                                                        if not Character_2 then
                                                                            AlwaysOnTop_3 = Enum.HighlightDepthMode.Occluded
                                                                        elseif v5 <= 50 then
                                                                            AlwaysOnTop_3 = Enum.HighlightDepthMode.AlwaysOnTop
                                                                        end
                                                                        Highlight_9.DepthMode = AlwaysOnTop_3
                                                                        Highlight_9.Adornee = p1:FindFirstChild(p1:GetAttribute("Broken1"))
                                                                        Highlight_9.Parent = p1
                                                                        u452 = true
                                                                    end
                                                                    if not u4248 then
                                                                        if not u453 then
                                                                            if u453 then
                                                                                Broken2Highlight = p1:FindFirstChild("Broken2Highlight")
                                                                                if Broken2Highlight then
                                                                                    local AlwaysOnTop_6
                                                                                    if not Character_2 then
                                                                                        AlwaysOnTop_6 = Enum.HighlightDepthMode.Occluded
                                                                                    elseif v5 <= 50 then
                                                                                        AlwaysOnTop_6 = Enum.HighlightDepthMode.AlwaysOnTop
                                                                                    end
                                                                                    Broken2Highlight.DepthMode = AlwaysOnTop_6
                                                                                end
                                                                            end
                                                                        elseif not u4248 then
                                                                            if p1:FindFirstChild("Broken2Highlight") then
                                                                                p1.Broken2Highlight:Destroy()
                                                                            end
                                                                        elseif p1:GetAttribute("Broken2") then
                                                                        end
                                                                    elseif p1:GetAttribute("Broken2") and v10 and not (p1:FindFirstChild("Broken2Highlight")) and p1:FindFirstChild(p1:GetAttribute("Broken2")) then
                                                                        local AlwaysOnTop_5
                                                                        local Highlight_10 = Instance.new("Highlight")
                                                                        Highlight_10.Name = "Broken2Highlight"
                                                                        Highlight_10.FillTransparency = 0.25
                                                                        Highlight_10.FillColor = Color3.new(0.5, 0, 0)
                                                                        Highlight_10.OutlineTransparency = 1
                                                                        if not Character_2 then
                                                                            AlwaysOnTop_5 = Enum.HighlightDepthMode.Occluded
                                                                        elseif v5 <= 50 then
                                                                            AlwaysOnTop_5 = Enum.HighlightDepthMode.AlwaysOnTop
                                                                        end
                                                                        Highlight_10.DepthMode = AlwaysOnTop_5
                                                                        Highlight_10.Adornee = p1:FindFirstChild(p1:GetAttribute("Broken2"))
                                                                        Highlight_10.Parent = p1
                                                                        u453 = true
                                                                    end
                                                                    if not u4248 then
                                                                        if u454 then
                                                                            if not u4248 then
                                                                                if p1:FindFirstChild("MAHighlight") then
                                                                                    p1.MAHighlight:Destroy()
                                                                                end
                                                                            elseif v10 and Character_2 and v5 <= 50 and p1:FindFirstChild("Humanoid") and p1.Humanoid.Health < 50 then
                                                                            end
                                                                        end
                                                                    elseif v10 and Character_2 and v5 <= 50 and p1:FindFirstChild("Humanoid") and p1.Humanoid.Health < 50 and not (p1:FindFirstChild("MAHighlight")) then
                                                                        local Highlight_11 = Instance.new("Highlight")
                                                                        Highlight_11.Name = "MAHighlight"
                                                                        Highlight_11.FillTransparency = 0.25
                                                                        Highlight_11.FillColor = Color3.new(0.25, 0, 0)
                                                                        Highlight_11.OutlineTransparency = 1
                                                                        Highlight_11.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                                                                        Highlight_11.Parent = p1
                                                                        u454 = true
                                                                    end
                                                                    local HealthTag = u455
                                                                    if HealthTag then
                                                                        HealthTag = p2:FindFirstChild("HealthTag")
                                                                    end
                                                                    if not Attribute then
                                                                        if v6 and HealthTag then
                                                                            HealthTag:Destroy()
                                                                            HealthTag = nil
                                                                        end
                                                                    elseif v10 and not HealthTag and not v6 then
                                                                        HealthTag = script.HealthTag:Clone()
                                                                        HealthTag.Parent = p2
                                                                        u455 = true
                                                                    end
                                                                    if Attribute and HealthTag then
                                                                        Humanoid = p1:FindFirstChild("Humanoid")
                                                                        if Humanoid then
                                                                            v3 = math.clamp(Humanoid.Health / Humanoid.MaxHealth, 0, 1)
                                                                            local v11 = Color3.fromHSV(v3 / 3, 1, 1)
                                                                            v4 = UDim2.new(v3, 0, 1, -2)
                                                                            local Fill = HealthTag.Bar.Fill
                                                                            local v12 = TweenInfo.new(0.1)
                                                                            DeltaFramework.TweenService:Create(Fill, v12, {Size = v4, BackgroundColor3 = v11}):Play()
                                                                            v12 = TweenInfo.new(0.1)
                                                                            DeltaFramework.TweenService:Create(Fill.UIStroke, v12, {Color = v11}):Play()
                                                                        end
                                                                    end
                                                                    if p3 and typeof(p3) == "Instance" and p3:IsA("Player") then
                                                                        local SquadMembers = shared.SquadMembers
                                                                        if not SquadMembers then
                                                                            SquadMembers = {}
                                                                        end
                                                                        v2 = table.find(SquadMembers, p3.Name)
                                                                        if v2 then
                                                                            v2 = u2439
                                                                            if not v2 then
                                                                                v2 = u49(DeltaFramework.Player, p3)
                                                                            end
                                                                        end
                                                                        local Team_3 = DeltaFramework.Player.Team
                                                                        local Team_4 = p3.Team
                                                                        if v2 and Team_3 and Team_4 then
                                                                            local Name_3 = Team_4.Name
                                                                            local v13 = u3112
                                                                            if not v13 then
                                                                                if Team_3 == "Class - D" then
                                                                                    v13 = "HOSTILE"
                                                                                elseif Team_3 ~= "Chaos Insurgency" then
                                                                                    v13 = "FOUNDATION"
                                                                                end
                                                                            end
                                                                            local Attribute_8 = Team_4:GetAttribute("Team_Category")
                                                                            if not Attribute_8 then
                                                                                if Name_3 == "Class - D" then
                                                                                    Attribute_8 = "HOSTILE"
                                                                                elseif Name_3 ~= "Chaos Insurgency" then
                                                                                    Attribute_8 = "FOUNDATION"
                                                                                end
                                                                            end
                                                                            local v14 = p1:HasTag("001")
                                                                            if v13 ~= Attribute_8 then
                                                                                v2 = false
                                                                            elseif v14 == p3.Character:HasTag("001") then
                                                                            end
                                                                            u558 = true
                                                                        end
                                                                        if not v2 then
                                                                            if not v2 and p1:FindFirstChild("SquadHighlight") then
                                                                                p1.SquadHighlight:Destroy()
                                                                            end
                                                                        elseif not (p1:FindFirstChild("SquadHighlight")) then
                                                                            v4 = Content:FindFirstChild(p3.Name)
                                                                            if v4 and v4.Front.TextColor3 ~= Color3.new(1, 1, 1) then
                                                                                local Highlight_12 = Instance.new("Highlight")
                                                                                Highlight_12.Name = "SquadHighlight"
                                                                                Highlight_12.FillTransparency = 1
                                                                                Highlight_12.OutlineColor = v4.Front.TextColor3
                                                                                Highlight_12.OutlineTransparency = 0
                                                                                Highlight_12.Parent = p1
                                                                            end
                                                                        end
                                                                    end
                                                                    if TabletSystem then
                                                                        if Value then
                                                                            if p1.Authorizer:IsA("ObjectValue") and p1.Authorizer.Value == DeltaFramework.Player then
                                                                                u4299 = true
                                                                            end
                                                                        elseif p1:FindFirstChild("Authorizer") and p1.Authorizer:IsA("ObjectValue") and p1.Authorizer.Value == DeltaFramework.Player then
                                                                            u4299 = true
                                                                        end
                                                                    end
                                                                end
                                                                if workspace:FindFirstChild("SCPs") then
                                                                    for i14, i142 in ipairs(workspace.SCPs:GetChildren()) do
                                                                        if i142.Name == "Combat AI" then
                                                                            v41 = i142:FindFirstChild("Head")
                                                                            if v41 then
                                                                                v38(i142, v41)
                                                                            end
                                                                        elseif i142.Name ~= "SCP-049-2" and i142.Name ~= "SCP-008-2" then
                                                                        end
                                                                    end
                                                                end
                                                                v39 = tostring(DeltaFramework.Player:GetAttribute("Tracking") or "")
                                                                for i15, i152 in ipairs(DeltaFramework.Players:GetPlayers()) do
                                                                    local Character_4 = i152.Character
                                                                    if Character_4 then
                                                                        v42 = Character_4:FindFirstChild("Head")
                                                                        if v42 and v42:IsA("BasePart") then
                                                                            local Rogue = u4109
                                                                            if Rogue then
                                                                                Rogue = v42:FindFirstChild("Rogue")
                                                                            end
                                                                            if not u4109 then
                                                                                if u554 then
                                                                                    v43 = Character_4:FindFirstChild("ISDHighlight")
                                                                                    if v43 then
                                                                                        v43:Destroy()
                                                                                        pcall(function() -- Line: 4732 -- upvalues: Character_4 (val)
                                                                                            Character_4.HumanoidRootPart.ISDRogueMarker:Destroy()
                                                                                        end)
                                                                                        if Rogue then
                                                                                            pcall(function() -- Line: 4733 -- upvalues: Rogue (val)
                                                                                                Rogue.AlwaysOnTop = false
                                                                                                Rogue.MaxDistance = 30
                                                                                            end)
                                                                                        end
                                                                                    end
                                                                                end
                                                                            elseif Rogue then
                                                                                if Rogue and not Rogue.AlwaysOnTop then
                                                                                    Rogue.AlwaysOnTop = true
                                                                                    Rogue.MaxDistance = v12
                                                                                end
                                                                                if not (Character_4:FindFirstChild("ISDHighlight")) then
                                                                                    v43 = Instance.new("Highlight")
                                                                                    v43.Name = "ISDHighlight"
                                                                                    v43.FillColor = Color3.new(1, 1, 1)
                                                                                    if not Value then
                                                                                        v44 = 0.9
                                                                                    else
                                                                                        v44 = 0.25
                                                                                    end
                                                                                    v43.FillTransparency = v44
                                                                                    v43.OutlineColor = Color3.new(1, 1, 1)
                                                                                    if not Value then
                                                                                        v44 = 0.75
                                                                                    else
                                                                                        v44 = 0.1
                                                                                    end
                                                                                    v43.OutlineTransparency = v44
                                                                                    v43.Parent = Character_4
                                                                                end
                                                                                if Character_4:FindFirstChild("HumanoidRootPart") and not (Character_4.HumanoidRootPart:FindFirstChild("ISDRogueMarker")) then
                                                                                    v43 = script.ISDRogueMarker:Clone()
                                                                                    v43.Parent = Character_4.HumanoidRootPart
                                                                                end
                                                                                if Value then
                                                                                    pcall(function() -- Line: 4724 -- upvalues: Character_4 (val)
                                                                                        Character_4.Head.Tag.MaxDistance = 5000
                                                                                    end)
                                                                                end
                                                                            elseif not (Character_4:HasTag("Unauthorized")) then
                                                                            end
                                                                            v43 = string.split(v39, ",")
                                                                            if v43 and table.find(v43, (tostring(i152.UserId))) then
                                                                                v43 = true
                                                                            end
                                                                            if not v43 then
                                                                                if not v43 then
                                                                                    if Character_4:FindFirstChild("TrackHighlight") then
                                                                                        Character_4:FindFirstChild("TrackHighlight"):Destroy()
                                                                                    end
                                                                                elseif v39 ~= "" then
                                                                                end
                                                                            elseif v39 ~= "" and i152:GetAttribute("TrackKills") then
                                                                                if not (Character_4:FindFirstChild("TrackHighlight")) then
                                                                                    v44 = Instance.new("Highlight")
                                                                                    v44.Name = "TrackHighlight"
                                                                                    v44.FillColor = Color3.new(1, 1, 1)
                                                                                    v44.FillTransparency = 0.25
                                                                                    v44.OutlineColor = Color3.new(1, 1, 1)
                                                                                    v44.OutlineTransparency = 0.1
                                                                                    v44.Parent = Character_4
                                                                                end
                                                                                pcall(function() -- Line: 4754 -- upvalues: Character_4 (val)
                                                                                    Character_4.Head.Tag.MaxDistance = 5000
                                                                                end)
                                                                            end
                                                                            if Character_4 ~= Character then
                                                                                v38(Character_4, v42, i152)
                                                                                if Name ~= "Class - D" and Name ~= "Chaos Insurgency" and Name ~= "Medical Department" and v42:FindFirstChild("FollowTag") then
                                                                                    v42.FollowTag.Enabled = Visible
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                                if not Player then
                                                                    if u620 then
                                                                        v40 = DeltaFramework.CS:GetTagged("FollowTag")
                                                                        if v40 then
                                                                            for i16, i162 in ipairs(v40) do
                                                                                i162:Destroy()
                                                                            end
                                                                            u620 = nil
                                                                        end
                                                                    elseif Name ~= "Class - D" and Name ~= "Chaos Insurgency" and Name == "Medical Department" then
                                                                    end
                                                                end
                                                                if u554 then
                                                                    u554 = nil
                                                                end
                                                                u530 = not Visible
                                                                v40 = Attribute_2
                                                                if not v40 then
                                                                    v40 = Gun_Ignore
                                                                    if not v40 then
                                                                        v40 = new
                                                                        if not v40 then
                                                                            v40 = u4248
                                                                            if not v40 then
                                                                                v40 = Attribute
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                                u531 = v40
                                                                v40 = DeltaFramework.Player:GetAttribute("Tracking") ~= nil
                                                                u552 = v40
                                                            elseif not u4109 and not new and not u1127 and not u530 and not u531 and not Attribute_2 and not Gun_Ignore and not MorphAssets and not Parent and not u532 and not InfectionTech and Visible and not u4248 and not Attribute and not u558 then
                                                                if not TabletSystem then
                                                                    if not (DeltaFramework.Player:GetAttribute("Tracking")) then
                                                                        if u620 then
                                                                            v35 = DeltaFramework.CS:GetTagged("FollowTag")
                                                                            if v35 then
                                                                                v36, v37, Player = ipairs(v35)
                                                                                for i17, i172 in ipairs(v35) do
                                                                                    i172:Destroy()
                                                                                end
                                                                                u620 = nil
                                                                            end
                                                                        end
                                                                        if u552 then
                                                                            u552 = false
                                                                            for i18, i182 in ipairs(DeltaFramework.Players:GetPlayers()) do
                                                                                if i182.Character and i182.Character:FindFirstChild("Humanoid") and 0 < i182.Character.Humanoid.Health then
                                                                                    v39 = i182.Character:FindFirstChild("TrackHighlight")
                                                                                    if v39 then
                                                                                        v39:Destroy()
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                elseif not TabletSystem.ReachedCC then
                                                                end
                                                            end
                                                            v35 = Character:GetAttribute("Interrogating")
                                                            if v35 then
                                                                v35 = workspace:FindFirstChild(Character:GetAttribute("Interrogating"))
                                                            end
                                                            if v35 then
                                                                i18 = "Authorized"
                                                                if v35:FindFirstChild(i18) then
                                                                    i18 = "InterrogationBeam"
                                                                    if not (Character:FindFirstChild(i18)) then
                                                                        pcall(function() -- Line: 4826 -- upvalues: Character (val), u563 (upval), DeltaFramework (upval), Visible (val)
                                                                            if workspace:GetAttribute("MapOriginal") ~= "Roleplay" or not (Character:FindFirstChild("HumanoidRootPart")) then
                                                                                return
                                                                            end
                                                                            local v1 = workspace:FindFirstChild("Sector 2")
                                                                            local SectionB = v1
                                                                            if SectionB then
                                                                                SectionB = v1:FindFirstChild("SectionB")
                                                                            end
                                                                            v1 = SectionB
                                                                            local InterrogationWaypoint = v1
                                                                            if InterrogationWaypoint then
                                                                                InterrogationWaypoint = v1:FindFirstChild("InterrogationWaypoint")
                                                                            end
                                                                            v1 = InterrogationWaypoint
                                                                            local Attachment = v1
                                                                            if Attachment then
                                                                                Attachment = v1:FindFirstChild("Attachment")
                                                                            end
                                                                            v1 = Attachment
                                                                            if not v1 then
                                                                                return
                                                                            end
                                                                            local v2 = script.Beam:Clone()
                                                                            v2.Name = "InterrogationBeam"
                                                                            v2.Attachment0 = u563.RootAttachment
                                                                            v2.Attachment1 = v1
                                                                            v2.Parent = Character
                                                                            DeltaFramework.PlayerGui.Utility.AuthNote.Visible = Visible
                                                                        end)
                                                                    end
                                                                end
                                                            elseif not v35 then
                                                                i18 = "InterrogationBeam"
                                                                if Character:FindFirstChild(i18) then
                                                                    Character.InterrogationBeam:Destroy()
                                                                elseif v35 then
                                                                    i18 = "Authorized"
                                                                    if v35:FindFirstChild(i18) then end
                                                                elseif DeltaFramework.PlayerGui.Utility.AuthNote.Visible then
                                                                    DeltaFramework.PlayerGui.Utility.AuthNote.Visible = false
                                                                end
                                                            else
                                                                i18 = "Authorized"
                                                                if v35:FindFirstChild(i18) then end
                                                            end
                                                            i18 = DeltaFramework.Player
                                                            v37 = u51(i18, "Authorize", true)
                                                            if v37 then
                                                                v37 = true
                                                                if Name == "Scientific Department" then
                                                                    v37 = not u4299
                                                                    if v37 then
                                                                        v37 = u1714:IsInLocation("CDC Inner", Position)
                                                                        if v37 then
                                                                            v37 = DeltaFramework.PlayerGui.Utility.Version.Visible
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            DeltaFramework.PlayerGui.Utility.AuthorizeTip.Visible = v37
                                                            if DeltaFramework.PlayerGui.Utility.AuthorizeTip.Visible then
                                                                v36 = DeltaFramework.PlayerGui.Utility.AuthorizeTip
                                                                if Name == "Intelligence Agency" then
                                                                    v37 = "Click on a Class - D to authorize | Click on a Foundation member to verify Infiltrator status"
                                                                elseif Name ~= "Internal Security Department" then
                                                                    v37 = "Click on a Class - D to authorize"
                                                                end
                                                                v36.Text = v37
                                                                DeltaFramework.PlayerGui.Utility.AuthorizeTip.Back.Text = DeltaFramework.PlayerGui.Utility.AuthorizeTip.Text
                                                            end
                                                            if not TabletSystem then
                                                                if not TabletSystem then
                                                                    if not TabletSystem then
                                                                        if TabletSystem and not TabletSystem.AuthorizedCD and u4299 and not TabletSystem.ReachedCC then
                                                                            if TabletSystem.Briefed then
                                                                                TabletSystem.AuthorizedCD = true
                                                                                shared.Missions.CloseMission("CDC Waypoint")
                                                                                shared.Missions.CloseMission("Briefing Room 1 Automation")
                                                                                shared.Missions.CloseMission("Briefing Room 2 Automation")
                                                                                shared.Missions.CreateMission("SCP-" .. TabletSystem.SCP .. " Waypoint")
                                                                                shared.BottomPopup({Title = "Go to the SCP's containment chamber", Text = "Make your way to the waypoint!", Duration = 5})
                                                                            else
                                                                                i18 = "CDC Inner"
                                                                                if not (u1714:IsInLocation(i18, Position)) then
                                                                                    i18 = "Briefing Area"
                                                                                    if u1714:IsInLocation(i18, Position) then end
                                                                                end
                                                                            end
                                                                        end
                                                                    elseif not TabletSystem.AuthorizedCD and u4299 and not TabletSystem.ReachedCC and not TabletSystem.Briefed then
                                                                        i18 = "CDC Inner"
                                                                        if u1714:IsInLocation(i18, Position) then
                                                                            shared.Missions.CloseMission("CDC Waypoint")
                                                                            i18 = "SCP-"
                                                                            shared.Missions.CloseMission(i18 .. TabletSystem.SCP .. " Waypoint")
                                                                            if u48("New Player Tips") and not (shared.Missions.IsActive("Briefing Room 1 Automation")) then
                                                                                v36 = true
                                                                                if shared.TXP then
                                                                                    i18 = shared.TXP
                                                                                    if i18["Scientific Department"] then
                                                                                        v37 = shared.TXP["Scientific Department"] or 0
                                                                                        i18 = 60
                                                                                        if i18 <= v37 then
                                                                                            v36 = nil
                                                                                        end
                                                                                    end
                                                                                end
                                                                                if v36 then
                                                                                    shared.Missions.CreateMission("Briefing Room 1 Automation")
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                elseif TabletSystem.AuthorizedCD and not u4299 and not TabletSystem.ReachedCC then
                                                                    TabletSystem.AuthorizedCD = false
                                                                    TabletSystem.Briefed = false
                                                                    i18 = "SCP-"
                                                                    shared.Missions.CloseMission(i18 .. TabletSystem.SCP .. " Waypoint")
                                                                    if u48("New Player Tips") and not (shared.Missions.IsActive("CDC Waypoint")) then
                                                                        v36 = true
                                                                        if shared.TXP then
                                                                            i18 = shared.TXP
                                                                            if i18["Scientific Department"] then
                                                                                v37 = shared.TXP["Scientific Department"] or 0
                                                                                i18 = 60
                                                                                if i18 <= v37 then
                                                                                    v36 = nil
                                                                                end
                                                                            end
                                                                        end
                                                                        if v36 then
                                                                            shared.Missions.CreateMission("CDC Waypoint")
                                                                        end
                                                                    end
                                                                    shared.BottomPopup({Title = "Class - D Needed!", Text = "Return back to the Class - D Cells and authorize another Class - D!", Duration = 10})
                                                                end
                                                            elseif not Team then
                                                                shared.EndTest()
                                                            elseif Team and Name == "Scientific Department" then
                                                            end
                                                            u560 = u560 + v1
                                                            if 2.5 < u560 then
                                                                u560 = u560 - 2.5
                                                            end
                                                            u561 = u561 + v1
                                                            if not u591 then
                                                                v19 = 0.033
                                                            else
                                                                v19 = 0.5
                                                            end
                                                            if v19 <= u561 then
                                                                if not u591 then
                                                                    v19 = 0.033
                                                                else
                                                                    v19 = 0.5
                                                                end
                                                                u561 = u561 - v19
                                                                if Position then
                                                                    v21 = Color3.fromHSV(u560 / 2.5, 1, 1)
                                                                    v19, v6, Value = ipairs(DeltaFramework.CS:GetTagged("SpecialAccessory"))
                                                                    for i19, i192 in ipairs(DeltaFramework.CS:GetTagged("SpecialAccessory")) do
                                                                        local new = i192.Name
                                                                        if new == "Rainbow Scythe" then
                                                                            v10 = i192:FindFirstChild("Blade")
                                                                            if v10 and v10.Transparency == 0 then
                                                                                v11 = vector.magnitude(Position - v10.Position)
                                                                                if v11 <= 128 then
                                                                                    UpdateRainbowScythe(i192, v10, v21)
                                                                                end
                                                                            end
                                                                        elseif new ~= "Rainbow 2025 Scythe" and new ~= "Miscellaneous|Rainbow Scythe" and new ~= "Miscellaneous|Rainbow 2025 Scythe" and new ~= "ScytheModel" then
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            u498 = u498 + v1
                                                            if 0.033 <= u498 then
                                                                u498 = u498 - 0.033
                                                                v17 = DeltaFramework.Lighting:FindFirstChild("UIColorCorrection087")
                                                                if v17 and Character and not (Character:HasTag("087Instance")) then
                                                                    v17:Destroy()
                                                                end
                                                                v16 = false
                                                                Lights = nil
                                                                v2 = nil
                                                                v21 = shared.ARDeviceSystem
                                                                if v21 then
                                                                    v21 = shared.ARDeviceSystem.System.InCamera
                                                                    if v21 then
                                                                        v21 = shared.ARDeviceSystem.System.InCamera:FindFirstChild("MountedBodycam")
                                                                    end
                                                                end
                                                                if v21 then
                                                                    Value = "ObjectValue"
                                                                    if v21:IsA(Value) then
                                                                        v21 = v21.Value
                                                                    end
                                                                    if v21 then
                                                                        v21 = v21:FindFirstChild("Cam")
                                                                    end
                                                                end
                                                                v19 = Character:FindFirstChild("Helmet")
                                                                if not v19 then
                                                                    v19 = nil
                                                                elseif v19.ClassName == "ObjectValue" then
                                                                    v19 = Character.Helmet.Value
                                                                end
                                                                v6 = nil
                                                                Value = shared.HasNVG
                                                                if not Value then
                                                                    Value = CurrentCamera.CameraSubject
                                                                    if Value then
                                                                        Value = CurrentCamera.CameraSubject.Name
                                                                        if Value == "CameraSystemPart" then end
                                                                    elseif v21 then
                                                                        Value = v19
                                                                        if Value then
                                                                            Value = v19:FindFirstChild("NVGGrip")
                                                                        end
                                                                        v8 = nil
                                                                        if not Value then
                                                                            i192 = CurrentCamera.CameraSubject
                                                                            if i192 then
                                                                                i192 = CurrentCamera.CameraSubject.Name
                                                                                if i192 == "CameraSystemPart" then end
                                                                            elseif v21 then
                                                                                i192 = nil
                                                                                new = ""
                                                                                if v19 then
                                                                                    Attribute_2 = v19:GetAttribute("Data")
                                                                                    new = u567:Decode("Helmet", Attribute_2 or "")
                                                                                end
                                                                                if Value and Value.Parent and Value.Parent:FindFirstChild("FrontLens") and Value:FindFirstChild("Motor6D") then
                                                                                    v10 = false
                                                                                    if Value.Motor6D.DesiredAngle <= 0 then
                                                                                        v10 = new.Scrambler
                                                                                        if not v10 then
                                                                                            v10 = false
                                                                                            Attribute_2 = 255
                                                                                            if math.floor(Value.Parent.FrontLens.Color.r * Attribute_2) == 255 then
                                                                                                v10 = DeltaFramework.PlayerGui.Utility.ScramblePolicy.Visible
                                                                                                if v10 then
                                                                                                    v11 = Value.Parent:GetAttribute("Battery") or 5
                                                                                                    v10 = 0.5 <= v11
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                    i192 = v10
                                                                                end
                                                                                if i192 then
                                                                                    v2 = i192
                                                                                    if u521 and u522 and u523 and u521.Transparency == 1 then
                                                                                        if Mode.Value ~= "Roleplay" then
                                                                                            if u563 and Character:HasTag("NVG") then
                                                                                                v10 = u1711
                                                                                                v12 = Position
                                                                                                v13 = {}
                                                                                                Attribute_2 = u522
                                                                                                v13[1] = Attribute_2
                                                                                                Gun_Ignore = u524
                                                                                                if not Gun_Ignore then
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = Character
                                                                                                    Attribute_2[6] = v19
                                                                                                else
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = u524
                                                                                                    Attribute_2[6] = Character
                                                                                                    Attribute_2[7] = v19
                                                                                                end
                                                                                                if v10:ClosestVisible(v12, v13, Attribute_2) then
                                                                                                    v16 = true
                                                                                                end
                                                                                            end
                                                                                            if not v16 and CurrentCamera.CameraSubject and CurrentCamera.CameraSubject.Name == "CameraSystemPart" then
                                                                                                v10 = u1711
                                                                                                MorphAssets = 0
                                                                                                Attribute_2 = CFrame.new(0, MorphAssets, -1)
                                                                                                v12 = (CurrentCamera.CameraSubject.CFrame * Attribute_2).Position
                                                                                                v13 = {}
                                                                                                Attribute_2 = u522
                                                                                                v13[1] = Attribute_2
                                                                                                Gun_Ignore = u524
                                                                                                if not Gun_Ignore then
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    InfectionTech = CurrentCamera.CameraSubject
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = InfectionTech
                                                                                                else
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = u524
                                                                                                    Attribute_2[6] = CurrentCamera.CameraSubject
                                                                                                end
                                                                                                if v10:ClosestVisible(v12, v13, Attribute_2) then
                                                                                                    v16 = true
                                                                                                end
                                                                                            end
                                                                                            if not v16 and v21 and v21.Parent and v21.Parent.Parent then
                                                                                                v10 = u1711
                                                                                                v13 = v21.CFrame
                                                                                                MorphAssets = 0
                                                                                                Attribute_2 = CFrame.new(0, MorphAssets, -1)
                                                                                                v12 = (v13 * Attribute_2).Position
                                                                                                v13 = {}
                                                                                                Attribute_2 = u522
                                                                                                v13[1] = Attribute_2
                                                                                                Gun_Ignore = u524
                                                                                                if not Gun_Ignore then
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    InfectionTech = v21.Parent.Parent
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = InfectionTech
                                                                                                else
                                                                                                    Attribute_2 = {}
                                                                                                    Gun_Ignore = workspace.Gun_Ignore
                                                                                                    MorphAssets = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = Gun_Ignore
                                                                                                    Attribute_2[2] = MorphAssets
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = u524
                                                                                                    Attribute_2[6] = v21.Parent.Parent
                                                                                                end
                                                                                                if v10:ClosestVisible(v12, v13, Attribute_2) then
                                                                                                    v16 = true
                                                                                                end
                                                                                            end
                                                                                            if v16 then
                                                                                                if not v16 and u1844 and Character and u563 then
                                                                                                    v10 = u1711
                                                                                                    v12 = u1844.Position
                                                                                                    v13 = {}
                                                                                                    Attribute_2 = u522
                                                                                                    v13[1] = Attribute_2
                                                                                                    Gun_Ignore = u524
                                                                                                    if not Gun_Ignore then
                                                                                                        Attribute_2 = {}
                                                                                                        Gun_Ignore = workspace.Gun_Ignore
                                                                                                        MorphAssets = workspace.MorphAssets
                                                                                                        Parent = u520
                                                                                                        if Parent then
                                                                                                            Parent = u520.Parent
                                                                                                        end
                                                                                                        Attribute_2[1] = Gun_Ignore
                                                                                                        Attribute_2[2] = MorphAssets
                                                                                                        Attribute_2[3] = u523
                                                                                                        Attribute_2[4] = Parent
                                                                                                        Attribute_2[5] = u1844
                                                                                                    else
                                                                                                        Attribute_2 = {}
                                                                                                        Gun_Ignore = workspace.Gun_Ignore
                                                                                                        MorphAssets = workspace.MorphAssets
                                                                                                        Parent = u520
                                                                                                        if Parent then
                                                                                                            Parent = u520.Parent
                                                                                                        end
                                                                                                        Attribute_2[1] = Gun_Ignore
                                                                                                        Attribute_2[2] = MorphAssets
                                                                                                        Attribute_2[3] = u523
                                                                                                        Attribute_2[4] = Parent
                                                                                                        Attribute_2[5] = u524
                                                                                                        Attribute_2[6] = u1844
                                                                                                    end
                                                                                                    if v10:ClosestVisible(v12, v13, Attribute_2) then
                                                                                                        v10 = u1711
                                                                                                        v12 = Position
                                                                                                        v13 = {}
                                                                                                        Attribute_2 = u522
                                                                                                        v13[1] = Attribute_2
                                                                                                        Gun_Ignore = u524
                                                                                                        if not Gun_Ignore then
                                                                                                            Attribute_2 = {}
                                                                                                            Gun_Ignore = workspace.Gun_Ignore
                                                                                                            MorphAssets = workspace.MorphAssets
                                                                                                            Parent = u520
                                                                                                            if Parent then
                                                                                                                Parent = u520.Parent
                                                                                                            end
                                                                                                            Attribute_2[1] = Gun_Ignore
                                                                                                            Attribute_2[2] = MorphAssets
                                                                                                            Attribute_2[3] = u523
                                                                                                            Attribute_2[4] = Parent
                                                                                                            Attribute_2[5] = Character
                                                                                                            Attribute_2[6] = v19
                                                                                                        else
                                                                                                            Attribute_2 = {}
                                                                                                            Gun_Ignore = workspace.Gun_Ignore
                                                                                                            MorphAssets = workspace.MorphAssets
                                                                                                            Parent = u520
                                                                                                            if Parent then
                                                                                                                Parent = u520.Parent
                                                                                                            end
                                                                                                            Attribute_2[1] = Gun_Ignore
                                                                                                            Attribute_2[2] = MorphAssets
                                                                                                            Attribute_2[3] = u523
                                                                                                            Attribute_2[4] = Parent
                                                                                                            Attribute_2[5] = u524
                                                                                                            Attribute_2[6] = Character
                                                                                                            Attribute_2[7] = v19
                                                                                                        end
                                                                                                        if not (v10:ClosestVisible(v12, v13, Attribute_2)) then
                                                                                                            v10 = false
                                                                                                            v13 = {u521.Position}
                                                                                                            Attribute_2 = {}
                                                                                                            MorphAssets = workspace.MorphAssets
                                                                                                            Attribute_2[1] = workspace.Gun_Ignore
                                                                                                            Attribute_2[2] = MorphAssets
                                                                                                            Attribute_2[3] = u523
                                                                                                            Attribute_2[4] = Character
                                                                                                            Attribute_2[5] = v19
                                                                                                            v11 = CurrentCamera:GetPartsObscuringTarget(v13, Attribute_2)
                                                                                                            v12, v13, Attribute_2 = ipairs(v11)
                                                                                                            for i20, i202 in ipairs(v11) do
                                                                                                                if i202 == u1844 then
                                                                                                                    v10 = true
                                                                                                                    break
                                                                                                                end
                                                                                                            end
                                                                                                            v16 = v10
                                                                                                            i192 = i192 or v10
                                                                                                        end
                                                                                                    end
                                                                                                end
                                                                                            elseif u1812 and Character and u563 then
                                                                                                v10 = u1711
                                                                                                v12 = u1812.Position
                                                                                                v13 = {}
                                                                                                Attribute_2 = u522
                                                                                                v13[1] = Attribute_2
                                                                                                i20 = u524
                                                                                                if not i20 then
                                                                                                    Attribute_2 = {}
                                                                                                    i20 = workspace.Gun_Ignore
                                                                                                    i202 = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = i20
                                                                                                    Attribute_2[2] = i202
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = u1812
                                                                                                else
                                                                                                    Attribute_2 = {}
                                                                                                    i20 = workspace.Gun_Ignore
                                                                                                    i202 = workspace.MorphAssets
                                                                                                    Parent = u520
                                                                                                    if Parent then
                                                                                                        Parent = u520.Parent
                                                                                                    end
                                                                                                    Attribute_2[1] = i20
                                                                                                    Attribute_2[2] = i202
                                                                                                    Attribute_2[3] = u523
                                                                                                    Attribute_2[4] = Parent
                                                                                                    Attribute_2[5] = u524
                                                                                                    Attribute_2[6] = u1812
                                                                                                end
                                                                                                if v10:ClosestVisible(v12, v13, Attribute_2) then
                                                                                                    v10 = u1711
                                                                                                    v12 = Position
                                                                                                    v13 = {}
                                                                                                    Attribute_2 = u522
                                                                                                    v13[1] = Attribute_2
                                                                                                    i20 = u524
                                                                                                    if not i20 then
                                                                                                        Attribute_2 = {}
                                                                                                        i20 = workspace.Gun_Ignore
                                                                                                        i202 = workspace.MorphAssets
                                                                                                        Parent = u520
                                                                                                        if Parent then
                                                                                                            Parent = u520.Parent
                                                                                                        end
                                                                                                        Attribute_2[1] = i20
                                                                                                        Attribute_2[2] = i202
                                                                                                        Attribute_2[3] = u523
                                                                                                        Attribute_2[4] = Parent
                                                                                                        Attribute_2[5] = Character
                                                                                                        Attribute_2[6] = v19
                                                                                                    else
                                                                                                        Attribute_2 = {}
                                                                                                        i20 = workspace.Gun_Ignore
                                                                                                        i202 = workspace.MorphAssets
                                                                                                        Parent = u520
                                                                                                        if Parent then
                                                                                                            Parent = u520.Parent
                                                                                                        end
                                                                                                        Attribute_2[1] = i20
                                                                                                        Attribute_2[2] = i202
                                                                                                        Attribute_2[3] = u523
                                                                                                        Attribute_2[4] = Parent
                                                                                                        Attribute_2[5] = u524
                                                                                                        Attribute_2[6] = Character
                                                                                                        Attribute_2[7] = v19
                                                                                                    end
                                                                                                    if not (v10:ClosestVisible(v12, v13, Attribute_2)) then
                                                                                                        v10 = false
                                                                                                        v13 = {u521.Position}
                                                                                                        Attribute_2 = {}
                                                                                                        i202 = workspace.MorphAssets
                                                                                                        Attribute_2[1] = workspace.Gun_Ignore
                                                                                                        Attribute_2[2] = i202
                                                                                                        Attribute_2[3] = u523
                                                                                                        Attribute_2[4] = Character
                                                                                                        Attribute_2[5] = v19
                                                                                                        v11 = CurrentCamera:GetPartsObscuringTarget(v13, Attribute_2)
                                                                                                        v12, v13, Attribute_2 = ipairs(v11)
                                                                                                        for i21, i212 in ipairs(v11) do
                                                                                                            if i212 == u1812 then
                                                                                                                v10 = true
                                                                                                                break
                                                                                                            end
                                                                                                        end
                                                                                                        v16 = v10
                                                                                                        i192 = i192 or v10
                                                                                                    end
                                                                                                end
                                                                                            end
                                                                                        else
                                                                                            v10 = vector.magnitude(Position_2 - u522.Position)
                                                                                            if v10 > 500 then end
                                                                                        end
                                                                                        if v16 then
                                                                                            v10, v11 = CurrentCamera:WorldToScreenPoint(u521.Position)
                                                                                            v16 = v11 and i192
                                                                                            if v11 then
                                                                                                v8 = not i192
                                                                                                if not i192 then
                                                                                                    Attribute_2 = "Camera096"
                                                                                                    if not (Character:HasTag(Attribute_2)) then
                                                                                                        u499 = u499 + 0.033
                                                                                                        if 0.5 <= u499 then
                                                                                                            Remotes.Update:FireServer("096")
                                                                                                        end
                                                                                                    end
                                                                                                else
                                                                                                    Attribute_2 = u521.Position
                                                                                                    v12 = vector.magnitude(Position_2 - Attribute_2)
                                                                                                    if v12 >= 20 then
                                                                                                        Attribute_2 = 30
                                                                                                        if FullScreenUI.Scrambler.Size.X.Offset < Attribute_2 then
                                                                                                            Attribute_2 = UDim2.new(0, 30, 0, 30)
                                                                                                            FullScreenUI.Scrambler.Size = Attribute_2
                                                                                                        end
                                                                                                    else
                                                                                                        Attribute_2 = UDim2.new(0, 30 + (20 - v12) * 5, 0, 30 + (20 - v12) * 5)
                                                                                                        FullScreenUI.Scrambler.Size = Attribute_2
                                                                                                    end
                                                                                                    Attribute_2 = UDim2.new(0, v10.X - FullScreenUI.Scrambler.Size.X.Offset / 2, 0, v10.Y + (140 - FullScreenUI.Scrambler.Size.X.Offset) / 3.67)
                                                                                                    FullScreenUI.Scrambler.Position = Attribute_2
                                                                                                end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                elseif not CurrentCamera.CameraSubject then
                                                                                    if not v21 and not u1812 and not u1844 then end
                                                                                elseif CurrentCamera.CameraSubject.Name == "CameraSystemPart" then
                                                                                end
                                                                                if not v8 then
                                                                                    u499 = 0
                                                                                end
                                                                                v10 = nil
                                                                                if u528 and u563 then
                                                                                    if not CurrentCamera.CameraSubject then
                                                                                        if not v21 and not (Character:HasTag("Saw023")) then
                                                                                            if Character:HasTag("NVG") then
                                                                                                v11 = u1711
                                                                                                v13 = Position
                                                                                                Attribute_2 = {}
                                                                                                i21 = u528
                                                                                                Attribute_2[1] = i21
                                                                                                i212 = u524
                                                                                                if not i212 then
                                                                                                    i21 = {}
                                                                                                    InfectionTech = u528.Parent
                                                                                                    i21[1] = workspace.Gun_Ignore
                                                                                                    i21[2] = workspace.MorphAssets
                                                                                                    i21[3] = u523
                                                                                                    i21[4] = InfectionTech
                                                                                                    i21[5] = Character
                                                                                                    i21[6] = v19
                                                                                                else
                                                                                                    i21 = {}
                                                                                                    InfectionTech = u528.Parent
                                                                                                    i21[1] = workspace.Gun_Ignore
                                                                                                    i21[2] = workspace.MorphAssets
                                                                                                    i21[3] = u523
                                                                                                    i21[4] = InfectionTech
                                                                                                    i21[5] = u524
                                                                                                    i21[6] = Character
                                                                                                    i21[7] = v19
                                                                                                end
                                                                                                if v11:ClosestVisible(v13, Attribute_2, i21) then
                                                                                                    v10 = true
                                                                                                end
                                                                                            end
                                                                                            if v10 and u563 then
                                                                                                v10 = u1711:IsFacing(u563.CFrame, u528.Position, 45)
                                                                                            end
                                                                                        end
                                                                                    elseif CurrentCamera.CameraSubject.Name == "CameraSystemPart" then
                                                                                    end
                                                                                end
                                                                                if v10 then
                                                                                    u529 = not u529
                                                                                    v11 = WeaponUI.SCP023LookAway
                                                                                    v11.TextTransparency = u1711:Lerp(WeaponUI.SCP023LookAway.TextTransparency, 0, (u498 + 0.033) * 2.5)
                                                                                    v11 = WeaponUI.SCP023LookAway
                                                                                    i21 = 0.25
                                                                                    v11.TextStrokeTransparency = u1711:Lerp(WeaponUI.SCP023LookAway.TextStrokeTransparency, i21, (u498 + 0.033) * 2.5)
                                                                                    Attribute_2 = WeaponUI.SCP023LookAway.Rotation
                                                                                    i212 = u529
                                                                                    if not i212 then
                                                                                        i21 = -15
                                                                                    else
                                                                                        i21 = 15
                                                                                    end
                                                                                    WeaponUI.SCP023LookAway.Rotation = u1711:Lerp(Attribute_2, i21, (u498 + 0.033) * 2.5)
                                                                                    v6 = true
                                                                                else
                                                                                    if WeaponUI.SCP023LookAway.TextTransparency < 1 then
                                                                                        u529 = not u529
                                                                                        v11 = WeaponUI.SCP023LookAway
                                                                                        i21 = 1
                                                                                        v11.TextTransparency = u1711:Lerp(WeaponUI.SCP023LookAway.TextTransparency, i21, (u498 + 0.033) * 2.5)
                                                                                        Attribute_2 = WeaponUI.SCP023LookAway.Rotation
                                                                                        i212 = u529
                                                                                        if not i212 then
                                                                                            i21 = -15
                                                                                        else
                                                                                            i21 = 15
                                                                                        end
                                                                                        WeaponUI.SCP023LookAway.Rotation = u1711:Lerp(Attribute_2, i21, (u498 + 0.033) * 2.5)
                                                                                        v6 = true
                                                                                    end
                                                                                    v11 = WeaponUI.SCP023LookAway
                                                                                    v11.TextStrokeTransparency = u1711:Lerp(WeaponUI.SCP023LookAway.TextStrokeTransparency, 1, (u498 + 0.033) * 2.5)
                                                                                end
                                                                            else
                                                                                i192 = u1812
                                                                                if not i192 then
                                                                                    i192 = u1844
                                                                                    if not i192 then end
                                                                                end
                                                                            end
                                                                        else
                                                                            i192 = Value:FindFirstChild("Motor6D")
                                                                            if i192 then
                                                                                i192 = Value.Motor6D.DesiredAngle
                                                                                new = 0
                                                                                if i192 <= new then
                                                                                    i192 = Value.Parent
                                                                                    if i192 then
                                                                                        i192 = Value.Parent:FindFirstChild("FrontLens")
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    else
                                                                        Value = u1812
                                                                        if not Value then
                                                                            Value = u1844
                                                                            if not Value then end
                                                                        end
                                                                    end
                                                                else
                                                                    Value = shared.HasNVG
                                                                    if Value ~= 0 then end
                                                                end
                                                                Value = FullScreenUI.Scrambler
                                                                Value.Visible = v16
                                                                Value = WeaponUI.SCP023LookAway
                                                                Value.Visible = v6
                                                                if v16 then
                                                                    Value = FullScreenUI.Scrambler.Video
                                                                    if Value == "" then
                                                                        Value = FullScreenUI.Scrambler
                                                                        Value.Video = "rbxassetid://5608411652"
                                                                    end
                                                                end
                                                                Value = TVsHacked.Value
                                                                if Value and Character then
                                                                    Value = ipairs
                                                                    v8 = Tagged
                                                                    if not v8 then
                                                                        v8 = {}
                                                                    end
                                                                    Value, v8, i192 = Value(v8)
                                                                    for i22, i222 in Value(v8) do
                                                                        if i222.Parent then
                                                                            Attribute_2 = true
                                                                            v11 = i222:FindFirstChild("Scrambler", Attribute_2)
                                                                            if v11 then
                                                                                if not v2 then
                                                                                    if v11.Playing then
                                                                                        v11:Pause()
                                                                                        v11.Visible = false
                                                                                    end
                                                                                elseif Position then
                                                                                    v12 = u1711
                                                                                    i21 = Position.X
                                                                                    v22 = math.abs(i222.Position.Y - Position.Y)
                                                                                    Parent = 5
                                                                                    if v22 > Parent then
                                                                                        i212 = Position.Y
                                                                                    else
                                                                                        i212 = i222.Position.Y
                                                                                    end
                                                                                    Attribute_2 = Vector3.new(i21, i212, Position.Z)
                                                                                    i21 = {}
                                                                                    i212 = i222
                                                                                    i21[1] = i212
                                                                                    if not u527 then
                                                                                        i212 = {}
                                                                                        Parent = workspace.MorphAssets
                                                                                        i212[1] = workspace.Gun_Ignore
                                                                                        i212[2] = Parent
                                                                                        i212[3] = u523
                                                                                        i212[4] = i222.Parent
                                                                                        i212[5] = Character
                                                                                        i212[6] = v19
                                                                                    else
                                                                                        i212 = {}
                                                                                        Parent = workspace.MorphAssets
                                                                                        i212[1] = workspace.Gun_Ignore
                                                                                        i212[2] = Parent
                                                                                        i212[3] = u523
                                                                                        i212[4] = i222.Parent
                                                                                        i212[5] = Character
                                                                                        i212[6] = v19
                                                                                        i212[7] = u527
                                                                                    end
                                                                                    if v12:ClosestVisible(Attribute_2, i21, i212) then
                                                                                        Attribute_2 = i222.Position
                                                                                        _, v13 = CurrentCamera:WorldToScreenPoint(Attribute_2)
                                                                                        if not v13 then
                                                                                            Attribute_2 = v11.Playing
                                                                                            if Attribute_2 then
                                                                                                v11:Pause()
                                                                                                v11.Visible = false
                                                                                            end
                                                                                        else
                                                                                            Attribute_2 = v11.Video
                                                                                            if Attribute_2 == "" then
                                                                                                v11.Video = "rbxassetid://5608411652"
                                                                                            end
                                                                                            v11.Visible = true
                                                                                            v11:Play()
                                                                                            local Lights = true
                                                                                        end
                                                                                    elseif v11.Playing then
                                                                                        v11:Pause()
                                                                                        v11.Visible = false
                                                                                    end
                                                                                elseif v11.Playing then
                                                                                    v11:Pause()
                                                                                    v11.Visible = false
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                                Value = FullScreenUI.Scrambler.Visible
                                                                if Value then
                                                                    Value = script.Hum.Volume
                                                                    if Value ~= 0 then
                                                                        Value = script.Hum.Volume
                                                                        if Value == 0.5 then
                                                                            Value = FullScreenUI.Scrambler.Visible
                                                                            if not Value and not Lights then
                                                                                Value = FullScreenUI.Scrambler.Playing
                                                                                if Value then
                                                                                    FullScreenUI.Scrambler:Pause()
                                                                                end
                                                                                Value = DeltaFramework.TweenService
                                                                                i192 = script.Hum
                                                                                i22 = TweenInfo.new(1)
                                                                                Value = Value:Create(i192, i22, {Volume = 0})
                                                                                Value:Play()
                                                                            end
                                                                        end
                                                                    else
                                                                        Value = FullScreenUI.Scrambler.Visible
                                                                        if Value then
                                                                            Value = FullScreenUI.Scrambler.Playing
                                                                            if not Value then
                                                                                FullScreenUI.Scrambler:Play()
                                                                            end
                                                                        end
                                                                        Value = DeltaFramework.TweenService
                                                                        i192 = script.Hum
                                                                        i22 = TweenInfo.new(1)
                                                                        Value = Value:Create(i192, i22, {Volume = 0.5})
                                                                        Value:Play()
                                                                    end
                                                                elseif not Lights then
                                                                end
                                                                Value = FullScreenUI.Scrambler.Playing
                                                                if Value then
                                                                    Value = FullScreenUI.Scrambler.Visible
                                                                    if not Value then
                                                                        FullScreenUI.Scrambler:Pause()
                                                                    end
                                                                end
                                                                Value = FullScreenUI.Scrambler.Playing
                                                                if Value then
                                                                    Value = script.Hum.IsPlaying
                                                                    if Value then
                                                                        Value = script.Hum.Volume
                                                                        if Value == 0.5 then
                                                                            Value = FullScreenUI.Scrambler.Playing
                                                                            if not Value and not Lights then
                                                                                Value = DeltaFramework.TweenService
                                                                                i192 = script.Hum
                                                                                i22 = TweenInfo.new(1)
                                                                                Value = Value:Create(i192, i22, {Volume = 0})
                                                                                Value:Play()
                                                                            end
                                                                        end
                                                                    else
                                                                        script.Hum:Play()
                                                                    end
                                                                elseif not Lights then
                                                                end
                                                            end
                                                            if u7093 and not u553 then
                                                                v17, u7102 = pcall(function() -- Line: 5229 -- upvalues: SCPUIs (upval)
                                                                    return SCPUIs["087Static"]
                                                                end)
                                                                if v17 and u7102 then
                                                                    Lights = u7102.Playing
                                                                    if not Lights then
                                                                        Lights = u7102.UIGradient
                                                                        Lights.Transparency = NumberSequence.new(1)
                                                                        u7102.Visible = true
                                                                        u7102.Playing = true
                                                                        u553 = u7093
                                                                        task.spawn(function() -- Line: 5238 -- upvalues: u7102 (val), u7093 (ref), Character (val), Humanoid (val), DeltaFramework (upval), u553 (upval)
                                                                            local Attribute, Attribute_2
                                                                            while task.wait(0.5) do
                                                                                if not u7102.Parent then
                                                                                    break
                                                                                end
                                                                                u7093 = Character:GetAttribute("087Static")
                                                                                if not u7093 then
                                                                                    Attribute_2 = u7102.UIGradient:GetAttribute("TrueTransparency")
                                                                                    if Attribute_2 >= 1 then
                                                                                        u7102.Playing = false
                                                                                        u7102.Visible = false
                                                                                        break
                                                                                    else
                                                                                        u7102.UIGradient:SetAttribute("TrueTransparency", u7102.UIGradient:GetAttribute("TrueTransparency") + 0.1)
                                                                                        u7102.UIGradient.Transparency = NumberSequence.new(u7102.UIGradient:GetAttribute("TrueTransparency"))
                                                                                    end
                                                                                else
                                                                                    Attribute = u7102.UIGradient:GetAttribute("TrueTransparency")
                                                                                    if 0 >= Attribute then
                                                                                        pcall(function() -- Line: 5248 -- upvalues: Character (upval), Humanoid (upval)
                                                                                            local Health
                                                                                            local v1 = shared
                                                                                            if not Humanoid then
                                                                                                Health = 100
                                                                                            else
                                                                                                Health = Humanoid.Health
                                                                                                if not Health then
                                                                                                    Health = 100
                                                                                                end
                                                                                            end
                                                                                            v1:DealDamage(Character, Health)
                                                                                        end)
                                                                                        task.delay(DeltaFramework.Players.RespawnTime, function() -- Line: 5250 -- upvalues: u7102 (upval)
                                                                                            u7102.Visible = false
                                                                                            u7102.Playing = false
                                                                                        end)
                                                                                        break
                                                                                    else
                                                                                        u7102.UIGradient:SetAttribute("TrueTransparency", u7102.UIGradient:GetAttribute("TrueTransparency") - 0.1)
                                                                                        u7102.UIGradient.Transparency = NumberSequence.new(u7102.UIGradient:GetAttribute("TrueTransparency"))
                                                                                    end
                                                                                end
                                                                            end
                                                                            u553 = false
                                                                        end)
                                                                    end
                                                                end
                                                            end
                                                            u7093 = if Position_2.Z <= -1349 then -1259 <= Position_2.X else false
                                                            if not (u1714:IsInLocation("002Hallway", Position_2)) then
                                                                Lights = -161.4
                                                                if Lights >= Position_2.X then
                                                                    v17 = u7093
                                                                else
                                                                    Lights = -133
                                                                    if Position_2.X < Lights then
                                                                        Lights = -1061
                                                                        if Position_2.Z < Lights then
                                                                            Lights = -1120
                                                                            if Lights < Position_2.Z and u563 then
                                                                                if u563 then
                                                                                    Lights = -1103.329
                                                                                    if u563.Position.Z < Lights then
                                                                                        Lights = 18
                                                                                        if Position_2.Y < Lights then
                                                                                            v17 = true
                                                                                            Lights = -138.4
                                                                                            if Position_2.X < Lights then end
                                                                                        end
                                                                                    end
                                                                                elseif u563 then
                                                                                    Lights = -1103.329
                                                                                    if Lights < u563.Position.Z then
                                                                                        v17 = true
                                                                                        Lights = 21
                                                                                        if Position_2.Y < Lights then end
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            else
                                                                Lights = workspace
                                                                if u299.Parent == Lights and u563 then
                                                                    v17 = true
                                                                    Lights = 6.5
                                                                    if Lights < u563.Position.Y then end
                                                                end
                                                            end
                                                            if not u299.Parent then
                                                                warn("002 HALLWAY IS MISSING. THIS IS A BUG.")
                                                            end
                                                            if DeltaFramework.ReplicatedStorage.WDB.Value then
                                                                v17 = false
                                                            end
                                                            u569 = u569 + v1
                                                            Lights = 1
                                                            if Lights <= u569 then
                                                                u569 = u569 - 1
                                                                v16 = workspace:FindFirstChild("SCPs")
                                                                if v16 then
                                                                    v16 = workspace.SCPs:FindFirstChild("SCP-002")
                                                                end
                                                                u300 = v16
                                                                v16 = u300
                                                                if v16 then
                                                                    v16 = u300:FindFirstChild("Out")
                                                                end
                                                                u301 = v16
                                                                v16 = u300
                                                                if v16 then
                                                                    v16 = u300:FindFirstChild("Out2")
                                                                end
                                                                u302 = v16
                                                                u303 = workspace:FindFirstChild("Sector 3")
                                                                if u303 then
                                                                    u303 = u303:FindFirstChild("S3Meshes")
                                                                    if u303 then
                                                                        u303 = u303:FindFirstChild("SCP002RemovableWall")
                                                                    end
                                                                end
                                                            end
                                                            if not v17 then
                                                                if u300 then
                                                                    Lights = workspace
                                                                    if u299.Parent == Lights then
                                                                        u299.Parent = DeltaFramework.ReplicatedStorage
                                                                    end
                                                                    if u301 then
                                                                        u301.Transparency = 0
                                                                        u301.CanCollide = true
                                                                        u301.CanQuery = true
                                                                    end
                                                                    if u302 then
                                                                        u302.Transparency = 0
                                                                        u302.CanCollide = true
                                                                        u302.CanQuery = true
                                                                    end
                                                                    if u303 then
                                                                        v16, Lights, v2 = u303:GetDescendants()
                                                                        for i23, i24 in u303:GetDescendants() do
                                                                            if i24:IsA("BasePart") then
                                                                                i24.Transparency = 0
                                                                                i24.CanCollide = true
                                                                                i24.CanQuery = true
                                                                                DeltaFramework.CS:RemoveTag(i24, "PunchThrough")
                                                                            elseif i24:IsA("Texture") then
                                                                                i24.Transparency = 0.35
                                                                            end
                                                                        end
                                                                    end
                                                                    Lights = Lighting
                                                                    if u157.Parent ~= Lights then
                                                                        Sky.Parent = DeltaFramework.Lighting
                                                                        u157.Parent = Lighting
                                                                        u153.Parent = Lighting
                                                                    end
                                                                end
                                                            elseif u300 and u8452 then
                                                                Lights = workspace
                                                                if u299.Parent ~= Lights then
                                                                    u299.Parent = workspace
                                                                end
                                                                if u301 then
                                                                    u301.Transparency = 1
                                                                    u301.CanCollide = false
                                                                    u301.CanQuery = false
                                                                end
                                                                if u302 then
                                                                    u302.Transparency = 1
                                                                    u302.CanCollide = false
                                                                    u302.CanQuery = false
                                                                end
                                                                if u303 then
                                                                    v16, Lights, v2 = u303:GetDescendants()
                                                                    for i25, i26 in u303:GetDescendants() do
                                                                        if i26:IsA("BasePart") then
                                                                            i26.Transparency = 1
                                                                            i26.CanCollide = false
                                                                            i26.CanQuery = false
                                                                            DeltaFramework.CS:AddTag(i26, "PunchThrough")
                                                                        elseif i26:IsA("Texture") then
                                                                            i26.Transparency = 1
                                                                        end
                                                                    end
                                                                end
                                                                if u7093 then
                                                                    Lights = DeltaFramework.Lighting
                                                                    if u157.Parent ~= Lights then
                                                                        Sky.Parent = Lighting
                                                                        u157.Parent = DeltaFramework.Lighting
                                                                        u153.Parent = DeltaFramework.Lighting
                                                                    end
                                                                end
                                                                if u7093 then
                                                                    Lights = 0
                                                                    if u307 > Lights then
                                                                        u307 = u307 - v1
                                                                    else
                                                                        u307 = math.random(60, 120)
                                                                        shared.Shake("SCP-002 Tremor", 100)
                                                                        script.TremorRumble:Play()
                                                                    end
                                                                end
                                                            end
                                                            Lights = if -499 >= Position_2.Z then if -1282 >= Position_2.X then Position_2.X < -11609 else true else true
                                                            v16 = not Lights
                                                            if not v16 then
                                                                if not v16 then
                                                                    Lights = u149.Parent
                                                                    if Lights ~= Lighting then
                                                                        pcall(function() -- Line: 5409 -- upvalues: Sky (upval), DeltaFramework (upval)
                                                                            Sky.Parent = DeltaFramework.Lighting
                                                                        end)
                                                                        pcall(function() -- Line: 5410 -- upvalues: u149 (upval), Lighting (upval)
                                                                            u149.Parent = Lighting
                                                                        end)
                                                                        pcall(function() -- Line: 5411 -- upvalues: u145 (upval), Lighting (upval)
                                                                            u145.Parent = Lighting
                                                                        end)
                                                                    end
                                                                end
                                                            elseif u8452 then
                                                                Lights = u149.Parent
                                                                if Lights ~= DeltaFramework.Lighting then
                                                                    pcall(function() -- Line: 5405 -- upvalues: Sky (upval), Lighting (upval)
                                                                        Sky.Parent = Lighting
                                                                    end)
                                                                    pcall(function() -- Line: 5406 -- upvalues: u149 (upval), DeltaFramework (upval)
                                                                        u149.Parent = DeltaFramework.Lighting
                                                                    end)
                                                                    pcall(function() -- Line: 5407 -- upvalues: u145 (upval), DeltaFramework (upval)
                                                                        u145.Parent = DeltaFramework.Lighting
                                                                    end)
                                                                end
                                                            end
                                                            v2 = if -499 >= Position_2.Z then if -11609 >= Position_2.X then Position_2.X < -16773 else true else true
                                                            Lights = not v2
                                                            if not Lights then
                                                                if not Lights and u141.Parent ~= Lighting then
                                                                    pcall(function() -- Line: 5421 -- upvalues: u141 (upval), Lighting (upval)
                                                                        u141.Parent = Lighting
                                                                    end)
                                                                end
                                                            elseif u8452 and u141.Parent ~= DeltaFramework.Lighting then
                                                                pcall(function() -- Line: 5418 -- upvalues: u141 (upval), DeltaFramework (upval)
                                                                    u141.Parent = DeltaFramework.Lighting
                                                                end)
                                                            end
                                                            if not Lights then
                                                                if u201 then
                                                                    for i27, i28 in DeltaFramework.CS:GetTagged("Copycat106Spotlight") do
                                                                        if i28 and i28 ~= u201 and i28.Parent then
                                                                            i28:Destroy()
                                                                        end
                                                                    end
                                                                    if u201 and u201.Parent then
                                                                        u201:Destroy()
                                                                    end
                                                                    u201 = nil
                                                                end
                                                            elseif u1714:IsInLocation("SCP-106 Copycat Corridor", Position_2) then
                                                                v19 = DeltaFramework.Player.Character
                                                                if u1711:IsCharacterValid(v19) then
                                                                    v2 = DeltaFramework.Player.Character:GetAttribute("SCP106DimLightStatus")
                                                                    v19 = DeltaFramework.Player.Character.HumanoidRootPart.Position
                                                                    if not u201 then
                                                                        u201 = script:FindFirstChild("CopycatSpotlight")
                                                                        if u201 then
                                                                            u201 = u201:Clone()
                                                                        end
                                                                        if u201 then
                                                                            u201.Parent = workspace
                                                                            u201:AddTag("Copycat106Spotlight")
                                                                        end
                                                                    end
                                                                    if u201 then
                                                                        if v2 == "Kill" then
                                                                            u201.SpotLight.Color = u189
                                                                        elseif v2 == "On" then
                                                                            u201.SpotLight.Color = u199
                                                                        elseif v2 ~= "Jump" then
                                                                            u201.SpotLight.Color = u194
                                                                        end
                                                                        i28 = Vector3.new(v19.X, 30, v19.Z)
                                                                        u201.Position = i28
                                                                        v6 = {}
                                                                        i28, v8, i192 = DeltaFramework.CS:GetTagged("Copycat106")
                                                                        for i29, i30 in i28:GetTagged(i192) do
                                                                            if u1711:IsCharacterValid(i30) then
                                                                                local u8200 = u200[i30]
                                                                                if not u8200 then
                                                                                    u8200 = script.CopycatSpotlight:Clone()
                                                                                    u200[i30] = u8200
                                                                                    u8200.Parent = workspace
                                                                                    u8200:AddTag("Copycat106Spotlight")
                                                                                end
                                                                                v6[u8200] = true
                                                                                v12 = i30.HumanoidRootPart.Position
                                                                                if v2 == "On" then
                                                                                    function Attribute_2() -- Line: 5479 -- upvalues: u8200 (ref), u199 (upval)
                                                                                        u8200.SpotLight.Color = u199
                                                                                    end
                                                                                    pcall(Attribute_2)
                                                                                elseif v2 ~= "Kill" then
                                                                                    i21 = "SpotLight"
                                                                                    if u8200:FindFirstChild(i21) then
                                                                                        function Attribute_2() -- Line: 5481 -- upvalues: u8200 (ref), u194 (upval)
                                                                                            u8200.SpotLight.Color = u194
                                                                                        end
                                                                                        pcall(Attribute_2)
                                                                                    end
                                                                                end
                                                                                u8200.Position = Vector3.new(v12.X, 30, v12.Z)
                                                                            else
                                                                                u200[i30] = nil
                                                                            end
                                                                        end
                                                                        i28, v8, i192 = DeltaFramework.CS:GetTagged("Copycat106Spotlight")
                                                                        for i31, i32 in i28:GetTagged(i192) do
                                                                            u8200 = v6[i32]
                                                                            if not u8200 then
                                                                                u8200 = u201
                                                                                if i32 ~= u8200 then
                                                                                    i32:Destroy()
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            if WDB.Value then
                                                                if DeltaFramework.PlayerGui:FindFirstChild("Utility") and DeltaFramework.PlayerGui.Utility:FindFirstChild("DayBreakInfo") then
                                                                    v2 = DeltaFramework.PlayerGui.Utility:WaitForChild("DayBreakInfo")
                                                                    v21 = tostring(WDB:GetAttribute("Infected") or 0)
                                                                    v2.Infected.Text = v21 .. " INFECTED"
                                                                    v19 = WDB:GetAttribute("Alive")
                                                                    if not v19 then
                                                                        v10 = v19
                                                                        if not v10 then
                                                                            v10 = "0"
                                                                        end
                                                                        i31 = tostring(v10)
                                                                        v2.Survivors.Text = i31 .. " SURVIVORS"
                                                                    elseif v19 == 1 then
                                                                        v10 = v19
                                                                        if not v10 then
                                                                            v10 = "0"
                                                                        end
                                                                        i31 = tostring(v10)
                                                                        v2.Survivors.Text = i31 .. " SURVIVOR"
                                                                    end
                                                                    if not Character then
                                                                        if v21 ~= "0" then
                                                                            v2.Objective.Text = "SURVIVE."
                                                                        else
                                                                            v2.Objective.Text = "PREPARE."
                                                                        end
                                                                    elseif Character:HasTag("001") then
                                                                        v2.Objective.Text = "CONSUME ALL!"
                                                                    end
                                                                end
                                                                if Lighting:FindFirstChild("WDBSky") then
                                                                    u582 = true
                                                                    Lighting.WDBSky.Parent = DeltaFramework.Lighting
                                                                end
                                                            elseif u582 and DeltaFramework.Lighting:FindFirstChild("WDBSky") then
                                                                u582 = nil
                                                                DeltaFramework.Lighting.WDBSky.Parent = Lighting
                                                            end
                                                            v2 = false
                                                            if Mode.Value == "Roleplay" then
                                                                v2 = u8452
                                                                if v2 then
                                                                    v2 = u1714:IsInLocation("SCP-087 Stairwell", Position_2)
                                                                end
                                                            end
                                                            v21 = nil
                                                            v19 = nil
                                                            v6 = nil
                                                            if not v2 then
                                                                i31 = Position_2
                                                                i28 = u1714:IsInLocation("SCP-299 Inner", i31)
                                                                if not i28 then
                                                                    i31 = Position_2
                                                                    i28 = u1714:IsInLocation("SCP-939 Inner", i31)
                                                                    if i28 then
                                                                        i31 = workspace:GetAttribute("SCP939SamplesPercentage") or 0
                                                                        i28 = math.max(0, i31) / 100
                                                                        v21 = math.lerp(800, 100, i28)
                                                                        i31 = Color3.fromRGB(47, 17, 17)
                                                                        v19 = u507:Lerp(i31, i28)
                                                                        v6 = i28
                                                                    end
                                                                else
                                                                    i28 = u1714:IsInLocation("SCP-299 Viewing Room", Position_2)
                                                                    if not i28 then
                                                                        v10 = workspace:GetAttribute("SCP299Humidity")
                                                                        if not v10 then
                                                                            v10 = 40
                                                                        end
                                                                        v8 = math.max(0, v10 - 40)
                                                                        i28 = v8 / 60
                                                                        v21 = math.lerp(800, 100, i28)
                                                                        if u556 and not u555 then
                                                                            v19 = u507:Lerp(u512, i28)
                                                                        end
                                                                    end
                                                                end
                                                            else
                                                                i28 = Character
                                                                if i28 then
                                                                    i28 = Character:GetAttribute("VialEffect087")
                                                                end
                                                                v19 = u517
                                                                if i28 == 1 then
                                                                    v8 = 150
                                                                elseif i28 ~= 0 then
                                                                    v8 = 50
                                                                else
                                                                    v8 = 100
                                                                end
                                                                v21 = v8
                                                            end
                                                            if not v6 then
                                                                i28 = u622.CC
                                                                if i28 then
                                                                    pcall(function() -- Line: 5602 -- upvalues: u622 (upval)
                                                                        u622.CC:Destroy()
                                                                    end)
                                                                    i28 = u622
                                                                    i28.CC = nil
                                                                    i28 = u622
                                                                    i28.Timer = nil
                                                                end
                                                            else
                                                                i28 = u622.CC
                                                                if not i28 then
                                                                    i28 = u622
                                                                    i28.CC = Instance.new("ColorCorrectionEffect")
                                                                    i28 = u622.CC
                                                                    i28.Name = "SCP939CC"
                                                                    i28 = u622
                                                                    i28.Parent = DeltaFramework.Lighting
                                                                end
                                                                i28 = 0.7
                                                                if i28 > v6 then
                                                                    i28 = 0.1
                                                                    if i28 > v6 then
                                                                        i28 = u622
                                                                        i28.Timer = nil
                                                                        i28 = u622.CC
                                                                        i28.Contrast = math.lerp(u622.CC.Contrast, 0, v1 / 5)
                                                                        i28 = u622.CC
                                                                        i28.Saturation = math.lerp(u622.CC.Saturation, 0, v1 / 5)
                                                                    else
                                                                        i28 = u622.CC
                                                                        i28.Contrast = math.lerp(u622.CC.Contrast, (v6 - 10) / 60 * 0.25, v1 / 5)
                                                                        i28 = u622.CC
                                                                        i28.Saturation = math.lerp(u622.CC.Saturation, -((v6 - 10) / 60 * 0.25), v1 / 5)
                                                                    end
                                                                else
                                                                    i28 = u622
                                                                    i192 = u622.Timer
                                                                    if not i192 then
                                                                        i192 = 30
                                                                    end
                                                                    i28.Timer = i192 + v1
                                                                    i28 = u622.Timer
                                                                    if 60 <= i28 then
                                                                        i28 = u622
                                                                        i28.Timer = i28.Timer - 60
                                                                        i28 = shared.DisplaySCPText
                                                                        if i28 then
                                                                            i28 = {
                                                                                "I feel lightheaded.",
                                                                                "How did I get here..?",
                                                                                "This area seems so strange...",
                                                                                "Where am I?",
                                                                                "What is going on..?",
                                                                            }
                                                                            v8 = shared.DisplaySCPText
                                                                            i31 = math.random(1, #i28)
                                                                            v8(i28[i31])
                                                                        end
                                                                    end
                                                                    i28 = u622.CC
                                                                    i28.Contrast = math.lerp(u622.CC.Contrast, 0.25, v1 / 5)
                                                                    i28 = u622.CC
                                                                    i28.Saturation = math.lerp(u622.CC.Saturation, -0.25, v1 / 5)
                                                                end
                                                            end
                                                            if not v21 then
                                                                i28 = u623
                                                                if i28 then
                                                                    i28 = DeltaFramework.Lighting
                                                                    i28.FogEnd = u623
                                                                end
                                                            else
                                                                i28 = u623
                                                                if not i28 then
                                                                    u623 = DeltaFramework.Lighting.FogEnd
                                                                end
                                                                i28 = DeltaFramework.Lighting.FogEnd
                                                                if v21 >= i28 then
                                                                    i28 = DeltaFramework.Lighting.FogEnd
                                                                    if i28 < v21 then
                                                                        i28 = DeltaFramework.Lighting
                                                                        i28.FogEnd = math.min(v21, DeltaFramework.Lighting.FogEnd + v1 * 50)
                                                                    end
                                                                else
                                                                    i28 = DeltaFramework.Lighting
                                                                    i28.FogEnd = math.max(v21, DeltaFramework.Lighting.FogEnd - v1 * 50)
                                                                end
                                                            end
                                                            if not v19 then
                                                                i28 = u624
                                                                if i28 then
                                                                    i28 = DeltaFramework.Lighting
                                                                    i28.FogColor = u624
                                                                end
                                                                return
                                                            end
                                                            i28 = u624
                                                            if not i28 then
                                                                u624 = DeltaFramework.Lighting.FogColor
                                                            end
                                                            i28 = DeltaFramework.Lighting.FogColor
                                                            if i28 == v19 then
                                                                return
                                                            end
                                                            i28 = DeltaFramework.Lighting.FogColor:Lerp(v19, v1)
                                                            v8 = math.abs(i28.R - v19.R)
                                                            i192 = 0.01
                                                            if v8 <= i192 then
                                                                v8 = math.abs(i28.G - v19.G)
                                                                i192 = 0.01
                                                                if v8 <= i192 then
                                                                    v8 = math.abs(i28.B - v19.B)
                                                                    i192 = 0.01
                                                                    if v8 <= i192 then
                                                                        i28 = v19
                                                                    end
                                                                end
                                                            end
                                                            DeltaFramework.Lighting.FogColor = i28
                                                            return
                                                        end
                                                    end
                                                end
                                            elseif v9 < 3 then
                                                v6 = DeltaFramework.ReplicatedStorage:GetAttribute("TempAuthControlRoom")
                                                i28 = "TempAuthControlRoom"
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end)
            function UpdateControllerUIOffset() -- Line: 5641 -- upvalues: ControllerControls (val), DeltaFramework (val)
                if ControllerControls.Visible then
                    local Buttons = DeltaFramework.PlayerGui.ARDevice.Main.Buttons
                    Buttons.Position = Buttons.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    DeltaFramework.PlayerGui.ARDevice.Main.Buttons.CameraExit.Text = "EXIT"
                    DeltaFramework.PlayerGui.Utility.CameraExit.Text = "EXIT"
                    local CameraLeft = DeltaFramework.PlayerGui.Utility.CameraLeft
                    CameraLeft.Position = CameraLeft.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    local CameraLeft2 = DeltaFramework.PlayerGui.Utility.CameraLeft2
                    CameraLeft2.Position = CameraLeft2.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    local CameraRight = DeltaFramework.PlayerGui.Utility.CameraRight
                    CameraRight.Position = CameraRight.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    local CameraRight2 = DeltaFramework.PlayerGui.Utility.CameraRight2
                    CameraRight2.Position = CameraRight2.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    local CameraExit = DeltaFramework.PlayerGui.Utility.CameraExit
                    CameraExit.Position = CameraExit.Position - UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                    return
                end
                local Buttons_2 = DeltaFramework.PlayerGui.ARDevice.Main.Buttons
                Buttons_2.Position = Buttons_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                DeltaFramework.PlayerGui.ARDevice.Main.Buttons.CameraExit.Text = "EXIT / Triangle"
                DeltaFramework.PlayerGui.Utility.CameraExit.Text = "EXIT / Triangle"
                local CameraLeft_2 = DeltaFramework.PlayerGui.Utility.CameraLeft
                CameraLeft_2.Position = CameraLeft_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                local CameraLeft2_2 = DeltaFramework.PlayerGui.Utility.CameraLeft2
                CameraLeft2_2.Position = CameraLeft2_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                local CameraRight_2 = DeltaFramework.PlayerGui.Utility.CameraRight
                CameraRight_2.Position = CameraRight_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                local CameraRight2_2 = DeltaFramework.PlayerGui.Utility.CameraRight2
                CameraRight2_2.Position = CameraRight2_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
                local CameraExit_2 = DeltaFramework.PlayerGui.Utility.CameraExit
                CameraExit_2.Position = CameraExit_2.Position + UDim2.fromOffset(0, ControllerControls.Size.Y.Offset)
            end
            local v19 = ControllerControls:GetPropertyChangedSignal("Visible")
            v19:Connect(UpdateControllerUIOffset)
            if not ControllerControls.Visible then
                local v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35
                local u807 = nil
                while not u807 do
                    u807 = DeltaFramework.TextChatService:FindFirstChildOfClass("ChatInputBarConfiguration")
                    task.wait(1)
                end
                local u820 = nil
                while not u820 do
                    u820 = DeltaFramework.TextChatService:FindFirstChildOfClass("BubbleChatConfiguration")
                    task.wait(1)
                end
                local u833 = v1:Retrieve("Remotes/Typing")
                local u834 = nil
                local u835 = nil
                local u836 = nil
                local v36 = u807:GetPropertyChangedSignal("IsFocused")
                v36:Connect(function() -- Line: 5696 -- upvalues: u834 (ref), u807 (ref), u833 (val), u836 (ref), u835 (ref), DeltaFramework (val)
                    u834 = u807.IsFocused
                    if not u807.IsFocused then
                        u833:FireServer(false)
                        u836 = nil
                    end
                    if u835 then
                        return
                    end
                    if not DeltaFramework.Player.Character then
                        u835 = true
                        u836 = nil
                        task.wait(0.5)
                        if not u807.IsFocused then
                            u833:FireServer(false)
                            u836 = nil
                        end
                        u835 = nil
                        return
                    end
                    if DeltaFramework.Player.Character.Name:sub(0, 7) == "Entity " or DeltaFramework.Player.Character:GetAttribute("EntityChat") then
                        return
                    end
                    u835 = true
                    u836 = nil
                    task.wait(0.5)
                    if not u807.IsFocused then
                        u833:FireServer(false)
                        u836 = nil
                    end
                    u835 = nil
                end)
                local u846 = nil
                DeltaFramework.UIS.InputBegan:Connect(function(p1, p2) -- Line: 5724 -- upvalues: u836 (ref), u846 (ref), u834 (ref), u835 (ref), u807 (ref), u833 (val), DeltaFramework (val)
                    if p1.KeyCode == Enum.KeyCode.Tilde then
                        u836 = true
                    elseif p1.KeyCode == Enum.KeyCode.BackSlash then
                        u836 = true
                    elseif p1.KeyCode == Enum.KeyCode.Slash then
                        u836 = true
                    elseif p1.KeyCode == Enum.KeyCode.LeftShift then
                        u846 = true
                    elseif p1.KeyCode == Enum.KeyCode.RightShift then
                        u846 = true
                    elseif u834 and not u835 then
                        u835 = true
                        task.wait(0.5)
                        if u807.IsFocused and not u836 and u807.TargetTextChannel ~= nil then
                            if u807.TargetTextChannel.Name == "RBXGeneral" then
                                u833:FireServer(u807.IsFocused)
                            elseif u807.TargetTextChannel.Name:sub(0, 7) == "RBXTeam" then
                                u833:FireServer(u807.IsFocused, true)
                            elseif u807.TargetTextChannel.Name:sub(0, 11) == "RBXWhisper:" then
                                local v1 = u807.TargetTextChannel.Name:sub(12)
                                local v2 = string.split(v1, "_")
                                if v2[1] ~= tostring(DeltaFramework.Player.UserId) then
                                    u833:FireServer(u807.IsFocused, (tonumber(v2[1])))
                                else
                                    u833:FireServer(u807.IsFocused, (tonumber(v2[2])))
                                end
                            end
                        end
                        u835 = nil
                        if not u807.IsFocused then
                            u836 = nil
                        end
                    end
                    if p1.KeyCode == Enum.KeyCode.Seven and u846 then
                        u836 = true
                    end
                end)
                DeltaFramework.UIS.InputEnded:Connect(function(p1) -- Line: 5769 -- upvalues: u846 (ref)
                    if p1.KeyCode == Enum.KeyCode.LeftShift then
                        u846 = nil
                    elseif p1.KeyCode == Enum.KeyCode.RightShift then
                        u846 = nil
                    end
                end)
                task.spawn(function() -- Line: 5775 -- upvalues: DeltaFramework (val), u833 (val)
                    local u0 = nil
                    local QuickChat = DeltaFramework.PlayerGui:WaitForChild("QuickChat")
                    local WheelFrame = QuickChat:WaitForChild("WheelFrame")
                    local PropertyChangedSignal = WheelFrame:GetPropertyChangedSignal("Visible")
                    PropertyChangedSignal:Connect(function() -- Line: 5778 -- upvalues: DeltaFramework (upval), u0 (ref), u833 (upval)
                        if not DeltaFramework.PlayerGui.QuickChat.WheelFrame.Visible then
                            u833:FireServer(false)
                            return
                        end
                        local v1 = os.time()
                        u0 = v1
                        task.wait(0.5)
                        if u0 ~= v1 or not DeltaFramework.PlayerGui.QuickChat.WheelFrame.Visible then
                            return
                        end
                        u0 = nil
                        u833:FireServer(true)
                    end)
                end)
                u833:Callback(function(p1, p2, p3) -- Line: 5799 -- upvalues: u820 (ref), DeltaFramework (val), u1711 (val)
                    local PresetMessage, u265, u266, v1, v2
                    if not p1 then
                        return
                    end
                    if type(p2) == "string" then
                        local v3 = vector.magnitude(p1.Position - workspace.CurrentCamera.CFrame.Position)
                        if u820.MaxDistance <= v3 then
                            return
                        end
                        PresetMessage = p1:FindFirstChild("PresetMessage")
                        local u21 = os.clock()
                        if not PresetMessage then
                            local v4
                            local TextLabel_2 = Instance.new("TextLabel")
                            TextLabel_2.Size = UDim2.fromScale(1, 1)
                            TextLabel_2.Text = "[PRESET] " .. p2
                            local v5 = Color3.new(1, 0.84, 0.38)
                            TextLabel_2.BackgroundColor3 = u1711:Shade(v5, 25)
                            TextLabel_2.BorderColor3 = u820.BackgroundColor3
                            TextLabel_2.BackgroundTransparency = u820.BackgroundTransparency
                            TextLabel_2.TextColor3 = u1711:Shade(u820.TextColor3, 75)
                            TextLabel_2.FontFace = u820.FontFace
                            TextLabel_2.TextSize = u820.TextSize
                            TextLabel_2.TextScaled = true
                            TextLabel_2.Name = "MessageLabel"
                            local UICorner = Instance.new("UICorner")
                            UICorner.CornerRadius = UDim.new(0, 12)
                            UICorner.Parent = TextLabel_2
                            local Tag = p1:FindFirstChild("Tag")
                            PresetMessage = Instance.new("BillboardGui")
                            local v6 = string.len(p2) / 8 + 2
                            PresetMessage.Size = UDim2.fromScale(v6, 0.4)
                            if not Tag then
                                v4 = 0.25
                            elseif Tag.StudsOffset.Z >= 0 then
                                v4 = 0.25
                            else
                                v4 = -0.1
                            end
                            PresetMessage.StudsOffset = Vector3.new(0, 0, v4)
                            PresetMessage.StudsOffsetWorldSpace = Vector3.new(0, 1.75, 0)
                            PresetMessage.Adornee = p1
                            TextLabel_2.Parent = PresetMessage
                            PresetMessage.Name = "PresetMessage"
                            PresetMessage.Enabled = true
                            PresetMessage.Parent = p1
                        else
                            pcall(function() -- Line: 5809 -- upvalues: PresetMessage (ref), p2 (val)
                                PresetMessage.MessageLabel.Text = "[PRESET] " .. p2
                            end)
                            pcall(function() -- Line: 5811 -- upvalues: DeltaFramework (upval), PresetMessage (ref), u820 (upval), u21 (val)
                                local v1 = TweenInfo.new(0.5)
                                DeltaFramework.TweenService:Create(PresetMessage.MessageLabel, v1, {TextTransparency = 0, BackgroundTransparency = u820.BackgroundTransparency, TextColor3 = Color3.new(0, 0, 0)}):Play()
                                task.wait(0.5)
                                local Attribute = PresetMessage:GetAttribute("Last")
                                if Attribute == u21 then
                                    v1 = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, true)
                                    DeltaFramework.TweenService:Create(PresetMessage.MessageLabel, v1, {TextColor3 = Color3.new(0, 0.25, 0)}):Play()
                                end
                            end)
                            local v7 = string.len(p2) / 8 + 2
                            PresetMessage.Size = UDim2.fromScale(v7, 0.4)
                        end
                        PresetMessage:SetAttribute("Last", u21)
                        task.delay(5, function() -- Line: 5857 -- upvalues: PresetMessage (ref), u21 (val), DeltaFramework (upval)
                            local Attribute = PresetMessage:GetAttribute("Last")
                            if Attribute == u21 then
                                pcall(function() -- Line: 5859 -- upvalues: DeltaFramework (upval), PresetMessage (upval)
                                    local v1 = TweenInfo.new(5)
                                    DeltaFramework.TweenService:Create(PresetMessage.MessageLabel, v1, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
                                end)
                                task.wait(5)
                                local Attribute_2 = PresetMessage:GetAttribute("Last")
                                if Attribute_2 == u21 then
                                    pcall(function() -- Line: 5866 -- upvalues: PresetMessage (upval)
                                        PresetMessage:Destroy()
                                    end)
                                end
                            end
                        end)
                        return
                    end
                    u265, u266, v2 = p1, p2, p3
                    PresetMessage = u265:FindFirstChild("TypingIndicator")
                    if not u266 then
                        if PresetMessage then
                            PresetMessage:Destroy()
                        end
                        return
                    end
                    if PresetMessage then
                        return
                    end
                    local v8 = vector.magnitude(u265.Position - workspace.CurrentCamera.CFrame.Position)
                    if u820.MaxDistance <= v8 then
                        return
                    end
                    local TextLabel = Instance.new("TextLabel")
                    TextLabel.Size = UDim2.fromScale(1, 1)
                    TextLabel.Text = "( . )"
                    TextLabel.TextScaled = true
                    if v2 then
                        local Color
                        if not DeltaFramework.Player.Team then
                            Color = DeltaFramework.Teams["Class - D"].TeamColor.Color
                        else
                            Color = DeltaFramework.Player.Team.TeamColor.Color
                        end
                        TextLabel.BackgroundColor3 = u1711:Shade(Color, 75)
                    elseif v2 ~= false then
                        TextLabel.BackgroundColor3 = u1711:Shade(u820.BackgroundColor3, 75)
                    else
                        local v9 = Color3.new(0.8, 0.4, 1)
                        TextLabel.BackgroundColor3 = u1711:Shade(v9, 75)
                    end
                    TextLabel.BorderColor3 = u820.BackgroundColor3
                    TextLabel.BackgroundTransparency = u820.BackgroundTransparency
                    TextLabel.TextColor3 = u1711:Shade(u820.TextColor3, 75)
                    TextLabel.FontFace = u820.FontFace
                    TextLabel.TextSize = u820.TextSize
                    local UICorner_2 = Instance.new("UICorner")
                    UICorner_2.CornerRadius = UDim.new(0, 12)
                    UICorner_2.Parent = TextLabel
                    local Tag_2 = u265:FindFirstChild("Tag")
                    PresetMessage = Instance.new("BillboardGui")
                    PresetMessage.Size = UDim2.fromScale(1, 0.3)
                    if not Tag_2 then
                        v1 = 0.25
                    elseif Tag_2.StudsOffset.Z >= 0 then
                        v1 = 0.25
                    else
                        v1 = -0.1
                    end
                    PresetMessage.StudsOffset = Vector3.new(0, 0, v1)
                    PresetMessage.StudsOffsetWorldSpace = Vector3.new(0, 1.75, 0)
                    PresetMessage.Adornee = u265
                    TextLabel.Parent = PresetMessage
                    PresetMessage.Name = "TypingIndicator"
                    PresetMessage.Enabled = true
                    PresetMessage.Parent = u265
                    task.spawn(function() -- Line: 5918 -- upvalues: u265 (val), PresetMessage (ref), TextLabel (val)
                        local v1, v2
                        while u265:IsDescendantOf(workspace) do
                            if PresetMessage.Parent ~= u265 then
                                break
                            end
                            v1 = 3
                            v2 = 1
                            for i = 1, v1, v2 do
                                if i == 1 then
                                    TextLabel.Text = "( . )"
                                elseif i ~= 2 then
                                    TextLabel.Text = "( . . . )"
                                else
                                    TextLabel.Text = "( . . )"
                                end
                                task.wait(0.5)
                            end
                            task.wait()
                        end
                    end)
                end)
                local u872 = v1:Retrieve("Remotes/CanChat")
                u872:Callback(function(p1) -- Line: 5947
                    p1:AddTag("CantChatWith")
                end)
                DeltaFramework.Players.PlayerAdded:Connect(function(p1) -- Line: 5951 -- upvalues: u872 (val)
                    u872:FireServer(p1.UserId)
                end)
                task.spawn(function() -- Line: 5955 -- upvalues: DeltaFramework (val), u872 (val)
                    for i, v in ipairs(DeltaFramework.Players:GetPlayers()) do
                        if v ~= DeltaFramework.Player then
                            u872:FireServer(v.UserId)
                            task.wait(1)
                        end
                    end
                end)
                local u886 = {}
                task.spawn(function() -- Line: 5967 -- upvalues: u886 (ref)
                    local AbsoluteSize, Parent, v1
                    while true do
                        for i, v in ipairs(u886) do
                            Parent = v.Parent
                            if Parent then
                                AbsoluteSize = v.AbsoluteSize
                                v1 = AbsoluteSize.X * -1
                                if v1 + Parent.AbsoluteSize.X < v.Position.X.Offset then
                                    v1 = v.Position.X.Offset - math.max(1, task.wait() * 50)
                                    v.Position = UDim2.new(0, v1, 0, 0)
                                elseif AbsoluteSize.X * -1 >= v.Position.X.Offset then
                                    v.Position = UDim2.new(0, v.Position.X.Offset + AbsoluteSize.X + 25, 0, 0)
                                else
                                    v.Position = UDim2.new(0, Parent.AbsoluteSize.X, 0, 0)
                                end
                            end
                        end
                    end
                end)
                while true do
                    task.wait(2.5)
                    debug.profilebegin("TimedLoop")
                    u1714:UpdateCustomZones()
                    v20 = {}
                    if not workspace.CurrentCamera then
                        v21 = Vector3.new(0, 0, 0)
                        for i, v in ipairs(DeltaFramework.CS:GetTagged("ReceptionScreenContent")) do
                            v27 = v:FindFirstAncestorWhichIsA("BasePart")
                            if v27 then
                                v28 = vector.magnitude(v21 - v27.Position)
                                if v28 <= 48 then
                                    table.insert(v20, v)
                                end
                            end
                        end
                        v22 = shared.ARDeviceSystem
                        if v22 then
                            v22 = shared.ARDeviceSystem.System.InCamera
                            if v22 then
                                v22 = shared.ARDeviceSystem.System.InCamera:FindFirstChild("MountedBodycam")
                            end
                        end
                        u520 = workspace:FindFirstChild("SCPs")
                        v23 = DeltaFramework.Player.Character
                        if v23 then
                            v23 = DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")
                        end
                        if v23 then
                            v26 = DeltaFramework.Player
                            v24 = DeltaFramework.CS:HasTag(v26, "Viewing")
                            if v24 and workspace.CurrentCamera then
                                if workspace.CurrentCamera.CameraSubject and workspace.CurrentCamera.CameraSubject.Name == "CameraSystemPart" then
                                    v24 = workspace.CurrentCamera.CFrame
                                    local CurrentCamera = workspace.CurrentCamera
                                    if shared.HasNVG and shared.HasNVG ~= 0 and u520 then
                                        u528 = u520:FindFirstChild("SCP-023")
                                        if u528 and v23 then
                                            u520 = u520:FindFirstChild("SCP-096")
                                            if u520 and v23 then
                                                if not DeltaFramework.ReplicatedStorage.Nuke.Value then
                                                    v25 = DeltaFramework.ReplicatedStorage.Alarms:GetAttribute("Blackout")
                                                    if not v25 then
                                                        u555 = v25
                                                        if DeltaFramework.ReplicatedStorage.Alarms:GetAttribute("SCP299Lights") == false then
                                                            if CurrentCamera and CurrentCamera.CameraSubject and CurrentCamera.CameraSubject.Name == "CameraSystemPart" and DeltaFramework.Player.Team and DeltaFramework.Player.Team.Name == "Internal Security Department" and DeltaFramework.Teams:FindFirstChild("Chaos Insurgency") then
                                                                local S3Meshes = nil
                                                                for i2, i3 in ipairs(DeltaFramework.CS:GetTagged("CCTVCamera")) do
                                                                    if i3:IsDescendantOf(workspace) and (i3.Name == CurrentCamera.CameraSubject:GetAttribute("CameraModel") or "") then
                                                                        S3Meshes = i3
                                                                        break
                                                                    end
                                                                end
                                                                if S3Meshes and S3Meshes.PrimaryPart and not u555 and not (S3Meshes:GetAttribute("Broken")) and not (S3Meshes:GetAttribute("Offline")) and not (workspace:GetAttribute("CamOutage")) and not DeltaFramework.ReplicatedStorage.Raid.Value then
                                                                    local Team = DeltaFramework.Player.Team
                                                                    if Team then
                                                                        Team = false
                                                                        if DeltaFramework.Player.Team.Name == "Internal Security Department" then
                                                                            Team = DeltaFramework.Player.Character
                                                                            if Team then
                                                                                if (DeltaFramework.Player.Character:GetAttribute("RP") or ""):sub(6, 6) == "0" then
                                                                                    Team = true
                                                                                else
                                                                                    Team = false
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    local Attribute = DeltaFramework.Player:GetAttribute("Upgraded")
                                                                    local u1228 = {}
                                                                    v31 = workspace:FindFirstChild("RoleplayPathMods")
                                                                    u1228[1] = S3Meshes
                                                                    u1228[2] = workspace.MorphAssets
                                                                    u1228[3] = workspace.Lights
                                                                    u1228[4] = v31
                                                                    u1228[5] = DeltaFramework.Player.Character
                                                                    u1228[6] = table.unpack(u1711:Characters())
                                                                    for j, k in DeltaFramework.CS:GetTagged("Glass") do
                                                                        table.insert(u1228, k)
                                                                    end
                                                                    local Position = S3Meshes.PrimaryPart.Position
                                                                    function v29(p1, p2) -- Line: 6183 -- upvalues: CurrentCamera (val), u1711 (val), Position (val), u1228 (val), Team (val), Attribute (val), Camera (val), S3Meshes (ref)
                                                                        if p1.Y <= 50 then
                                                                            local v1, v2
                                                                            _, v1 = CurrentCamera:WorldToScreenPoint(p1)
                                                                            if v1 then
                                                                                local Character
                                                                                v2 = u1711
                                                                                local v3 = {Position = Position}
                                                                                local v4 = {}
                                                                                if not (p2:IsA("Player")) then
                                                                                    Character = p2
                                                                                else
                                                                                    Character = p2.Character
                                                                                end
                                                                                v4[1] = Character
                                                                                v3.List = v4
                                                                                v3.Ignore = u1228
                                                                                if not (v2:ClosestVisible(v3)) then
                                                                                    v1 = nil
                                                                                end
                                                                            end
                                                                            if Team then
                                                                                v2 = vector.magnitude(Position - p1)
                                                                                if v2 <= 75 then
                                                                                    v1 = true
                                                                                end
                                                                            end
                                                                            if v1 then
                                                                                local v5
                                                                                v2 = vector.magnitude(Position - p1)
                                                                                if not Attribute then
                                                                                    v5 = 100
                                                                                else
                                                                                    v5 = 150
                                                                                end
                                                                                if v2 <= v5 then
                                                                                    Camera:FireServer(S3Meshes, "Mark", p2)
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    for i4, n in ipairs(DeltaFramework.Players:GetPlayers()) do
                                                                        if n.Team then
                                                                            v32 = n.Character
                                                                            if v32 then
                                                                                v33 = v32:FindFirstChild("HumanoidRootPart")
                                                                                if v33 then
                                                                                    v34 = n.Team
                                                                                    if v34 then
                                                                                        v34 = v34.Name
                                                                                    end
                                                                                    if v34 == "Chaos Insurgency" then
                                                                                        v29(v33.Position, n)
                                                                                    elseif v34 == "Class - D" then
                                                                                        if not (v32:HasTag("EquippedGun")) and not (v32:HasTag("CrossedLine")) and not (v32:HasTag("Escaped")) then
                                                                                            if not (v32:HasTag("Rogue")) and not (v32:HasTag("Infected")) then
                                                                                                continue
                                                                                            end
                                                                                            v29(v33.Position, n)
                                                                                            continue
                                                                                        end
                                                                                        v29(v33.Position, n)
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    for i5, m in ipairs(workspace.SCPs:GetChildren()) do
                                                                        v33 = u1755.SCPs
                                                                        if v33[m.Name:split("-")[2]] then
                                                                            v32 = m:FindFirstChild("HumanoidRootPart")
                                                                            if v32 then
                                                                                v33 = v32.Position
                                                                                v35 = m.Name .. " Inner"
                                                                                if not (u1714:IsInLocation(v35, v33)) then
                                                                                    v29(v33, m)
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                            S3Meshes = workspace:FindFirstChild("Sector 3")
                                                            u524 = S3Meshes
                                                            if u524 then
                                                                S3Meshes = u524:FindFirstChild("S3Meshes")
                                                                u524 = S3Meshes
                                                                if u524 then
                                                                    S3Meshes = u524:FindFirstChild("Window096Model1")
                                                                    u1812 = S3Meshes
                                                                    S3Meshes = u524:FindFirstChild("Window096Model2")
                                                                    u1844 = S3Meshes
                                                                    S3Meshes = u524:FindFirstChild("096 Box")
                                                                    u524 = S3Meshes
                                                                    if u524 then
                                                                        S3Meshes = u524:FindFirstChild("Frame")
                                                                    end
                                                                    if u1812 then
                                                                        S3Meshes = u1812:FindFirstChild("Window096")
                                                                        u1812 = S3Meshes
                                                                    end
                                                                    if u1844 then
                                                                        S3Meshes = u1844:FindFirstChild("Window096")
                                                                        u1844 = S3Meshes
                                                                    end
                                                                    S3Meshes, v26, v27 = DeltaFramework.CS:GetTagged("CheckOwned")
                                                                    for i52, i6 in S3Meshes:GetTagged("CheckOwned") do
                                                                        if i6:GetAttribute("Cosmetic") and shared.Cosmetics and shared.Cosmetics.Special then
                                                                            v29 = i6:GetAttribute("Cosmetic")
                                                                            v29 = v29:split("|")
                                                                            if shared.Cosmetics.Special[v29[1]] then
                                                                                v31 = shared.Cosmetics.Special[v29[1]]
                                                                                if table.find(v31, v29[2]) then
                                                                                    i6:Destroy()
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    S3Meshes = workspace:FindFirstChild("SCPs")
                                                                    if S3Meshes then
                                                                        S3Meshes = workspace.SCPs:FindFirstChild("SCP-966")
                                                                        if S3Meshes then
                                                                            S3Meshes, v26, v27 = ipairs(workspace.SCPs:GetChildren())
                                                                            for i7, i72 in S3Meshes(workspace.SCPs:GetChildren()) do
                                                                                if i72.Name == "SCP-966" and i72:GetAttribute("Recontain") ~= "END" then
                                                                                    if not (i72:FindFirstChild("Highlight")) then
                                                                                        pcall(function() -- Line: 6297 -- upvalues: i72 (val)
                                                                                            i72:Destroy()
                                                                                        end)
                                                                                    elseif i72:GetAttribute("Forced") then
                                                                                        i72.Highlight.FillTransparency = i72.Highlight.FillTransparency
                                                                                    elseif i72:GetAttribute("Recontain") == "Waiting" then
                                                                                        v30 = 0.6
                                                                                    elseif not DeltaFramework.Lighting.NVG.Enabled then
                                                                                        v30 = 1
                                                                                    else
                                                                                        v30 = 0.75
                                                                                    end
                                                                                end
                                                                            end
                                                                        end
                                                                    end
                                                                    debug.profileend("TimedLoop")
                                                                    continue
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                                v25 = not u1740.CheckActive("Advanced Electrical Circuit")
                                            end
                                        end
                                    end
                                    if CurrentCamera and CurrentCamera.CameraSubject and CurrentCamera.CameraSubject.Name == "CameraSystemPart" then end
                                    if not v22 and not u1812 and not u1844 then end
                                end
                                v24 = v23
                            end
                        end
                    else
                        v21 = workspace.CurrentCamera.CFrame.Position
                    end
                end
            else
                UpdateControllerUIOffset()
            end
        else
            u591 = DeltaFramework.UIS.PreferredInput == Enum.PreferredInput.Touch
        end
    else
        local v37 = 5
    end
else
    u283 = false
end

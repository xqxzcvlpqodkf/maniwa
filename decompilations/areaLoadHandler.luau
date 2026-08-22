-- Script Path: game:GetService("Players")["1IllIlIIIIlIIlllIllI"].PlayerGui.AreaLoading.AreaLoadHandler
-- 0.1s for decompilation.
-- Executor: 67 (2.6.7)

local u23, u24
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Delta = ReplicatedStorage:WaitForChild("Delta")
local DeltaFramework = require(Delta:WaitForChild("DeltaFramework"))
local u18 = DeltaFramework:Get("Utility")
u23, u24 = DeltaFramework:Get("RegionUtil", "GetSetting")
local u25 = 0
local u26 = 0
local Sky = DeltaFramework.Lighting:WaitForChild("Sky")
local Lighting = DeltaFramework.ReplicatedStorage:WaitForChild("Lighting")
local Atmosphere = Lighting:WaitForChild("Atmosphere")
local OutsideSky = Lighting:WaitForChild("OutsideSky")
local u48 = Lighting:WaitForChild("SCP-093 Atmosphere")
local u52 = Lighting:WaitForChild("SCP-093 Sky")
local u56 = Lighting:WaitForChild("SCP-093 Dimension Atmosphere")
local u60 = Lighting:WaitForChild("SCP-076 Atmosphere")
local u64 = Lighting:WaitForChild("SCP-076 Sky")
local u69 = DeltaFramework.Lighting:WaitForChild("SCP-076Colors")
local u73 = Lighting:WaitForChild("SCP-002 Sky")
local Rain1 = Lighting:WaitForChild("Rain1")
local Rain2 = Lighting:WaitForChild("Rain2")
local u82 = nil
local u83 = nil
local u84 = nil
local u85 = nil
local Time = Lighting:WaitForChild("Time")
local Time093 = Lighting:WaitForChild("Time093")
local StormFactor = Lighting:WaitForChild("StormFactor")
local u98 = {
    Outside = {Normal = Color3.fromRGB(252, 255, 255), Night = Color3.fromRGB(59, 64, 76), Storm = Color3.fromRGB(88, 89, 89)},
    SCP093 = {Normal = Color3.fromRGB(226, 177, 129), Night = Color3.fromRGB(81, 63, 46)},
}
local u126 = {}
local v1 = u98.Outside.Storm.G * 255 / 100
u126[1] = u98.Outside.Storm.R * 255 / 100
u126[2] = v1
u126[3] = u98.Outside.Storm.B * 255 / 100
local u142 = false
local OldSky = DeltaFramework.ReplicatedStorage:WaitForChild("OldSky")
local WDB = DeltaFramework.ReplicatedStorage:WaitForChild("WDB")
function SwitchLighting(p1) -- Line: 55 -- upvalues: DeltaFramework (val), u18 (val), u83 (ref), u84 (ref), u82 (ref), Atmosphere (val), Sky (val), Lighting (val), OldSky (val), OutsideSky (val), Rain1 (val), Rain2 (val), u85 (ref)
    if not p1 then
        local v1 = TweenInfo.new(2.5)
        DeltaFramework.TweenService:Create(Atmosphere, v1, {Density = 0}):Play()
        task.delay(2.5, function() -- Line: 171 -- upvalues: OutsideSky (upval), Lighting (upval), Atmosphere (upval)
            if OutsideSky.Parent == Lighting then
                Atmosphere.Density = 0.45
                Atmosphere.Parent = Lighting
            end
        end)
        OutsideSky.Parent = Lighting
        if not shared.Exposure then
            Sky.Parent = DeltaFramework.Lighting
        else
            OldSky.Parent = DeltaFramework.Lighting
        end
        Rain1.Parent = Lighting
        Rain2.Parent = Lighting
        if u83 then
            v1 = TweenInfo.new(1)
            DeltaFramework.TweenService:Create(u83, v1, {Volume = 0}):Play()
            v1 = TweenInfo.new(1)
            DeltaFramework.TweenService:Create(u84, v1, {Volume = 0}):Play()
        end
        if u82 then
            v1 = TweenInfo.new(1)
            DeltaFramework.TweenService:Create(u82, v1, {Volume = 0}):Play()
        end
        DeltaFramework.Lighting.ClockTime = 16
        return
    end
    local v2 = TweenInfo.new(1, Enum.EasingStyle.Cubic)
    DeltaFramework.TweenService:Create(DeltaFramework.Lighting, v2, {ExposureCompensation = 0.5}):Play()
    task.delay(3, function() -- Line: 61 -- upvalues: DeltaFramework (upval), u18 (upval)
        local v1, v2
        local v3 = 0
        while v3 < 15 do
            if DeltaFramework.Lighting.NVG.Enabled then
                v2 = 0
            elseif not shared.Exposure then
                v2 = -1
            else
                v2 = -1.5
            end
            DeltaFramework.Lighting.ExposureCompensation = u18:Lerp(0.5, v2, (math.sin(v3 / 15 * 3.141592653589793 / 2)))
            v3 = v3 + task.wait()
        end
        if DeltaFramework.Lighting.NVG.Enabled then
            v1 = 0
        elseif not shared.Exposure then
            v1 = -1
        else
            v1 = -1.5
        end
        DeltaFramework.Lighting.ExposureCompensation = v1
    end)
    if not u83 then
        u83 = Instance.new("Sound")
        u83.SoundId = "rbxassetid://6237183813"
        u83.Volume = 0
        u83.Looped = true
        u83.Name = "Rain"
        u83.SoundGroup = DeltaFramework.SoundService.MassMute
        u83.Parent = script
        u84 = Instance.new("Sound")
        u84.SoundId = "rbxassetid://6237183190"
        u84.Volume = 0
        u84.Looped = true
        u84.Name = "Rain2"
        u84.SoundGroup = DeltaFramework.SoundService.MassMute
        u84.Parent = script
        u82 = Instance.new("Sound")
        u82.SoundId = "rbxassetid://9136248704"
        u82.Volume = 0
        u82.Looped = true
        u82.Name = "Wind"
        u82.SoundGroup = DeltaFramework.SoundService.MassMute
        u82.Parent = script
        u83:Play()
        u84:Play()
        u82:Play()
    end
    v2 = TweenInfo.new(2.5)
    local v3 = {Density = 0.45}
    DeltaFramework.TweenService:Create(Atmosphere, v2, v3):Play()
    Sky.Parent = Lighting
    OldSky.Parent = Lighting
    OutsideSky.Parent = DeltaFramework.Lighting
    Atmosphere.Parent = DeltaFramework.Lighting
    Rain1.Parent = workspace.Lights
    Rain1:PivotTo(Rain1.OriginalCFrame.Value)
    Rain2.Parent = workspace.Lights
    Rain2:PivotTo(Rain2.OriginalCFrame.Value)
    if u85 then
        return
    end
    task.delay(2.5, function() -- Line: 117 -- upvalues: Rain2 (upval), u85 (upval)
        if Rain2.Parent == workspace.Lights then
            local Outside = workspace:FindFirstChild("Outside")
            if Outside then
                local v1 = Outside:FindFirstChild("Outdoors")
                if v1 then
                    v1 = v1:FindFirstChild("Destructables")
                    if v1 then
                        local WeldConstraint, v2, v3, v4
                        u85 = true
                        for i, v in ipairs(Rain2:GetChildren()) do
                            if v.ClassName == "Part" then
                                v3 = nil
                                v4 = (1 / 0)
                                for i2, i3 in ipairs(v1:GetChildren()) do
                                    v2 = vector.magnitude(i3:GetPivot().Position - v.Position)
                                    if v2 < v4 then
                                        v3 = i3
                                        v4 = v2
                                    end
                                end
                                if v3 and not (v3:FindFirstChild("RainWeld", true)) then
                                    WeldConstraint = Instance.new("WeldConstraint")
                                    WeldConstraint.Name = "RainWeld"
                                    WeldConstraint.Part0 = v
                                    if v3.ClassName ~= "Model" then
                                        WeldConstraint.Part1 = v3
                                    else
                                        WeldConstraint.Part1 = v3:FindFirstChildWhichIsA("BasePart", true)
                                    end
                                    WeldConstraint.Parent = v
                                    v.Anchored = false
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end
local Remotes = DeltaFramework.ReplicatedStorage:WaitForChild("Remotes")
Remotes:WaitForChild("NVG").OnClientEvent:Connect(function(p1) -- Line: 203 -- upvalues: DeltaFramework (val)
    local Part = Instance.new("Part")
    Part.CastShadow = false
    Part.Transparency = 1
    Part.Anchored = true
    Part.CanCollide = false
    Part.Size = Vector3.new(1, 1, 1)
    Part.Name = "HelicopterEscape"
    Part.Parent = workspace
    local u15 = Instance.new("ColorCorrectionEffect", DeltaFramework.Lighting)
    local TweenService = DeltaFramework.TweenService
    local v1 = TweenInfo.new(1)
    local v2 = {Brightness = -1}
    TweenService:Create(u15, v1, v2):Play()
    task.wait(2.5)
    local u32 = 0
    local u59 = nil
    for i, v in ipairs(DeltaFramework.CS:GetTagged("LandingPart")) do
        if v:IsDescendantOf(workspace) then
            u59 = v
            break
        end
    end
    if not u59 then
        u59 = {Position = Vector3.new(-77.93199920654297, -10.456999778747559, 938.4539794921875)}
    end
    local v3 = DeltaFramework.RunService.RenderStepped:Connect(function(p1) -- Line: 234 -- upvalues: u32 (ref), Part (val), u59 (ref)
        u32 = u32 + p1
        if workspace.CurrentCamera then
            workspace.CurrentCamera.CameraSubject = Part
            local v1 = u59.Position.Y + 10
            local v2 = CFrame.new((Vector3.new(u59.Position.X, v1, u59.Position.Z + 35)))
            local v3 = v2 + Vector3.new(0, u32 * 2, -u32 / 2)
            Part.CFrame = v3 * CFrame.Angles(0, 0, 0)
            workspace.CurrentCamera.CFrame = Part.CFrame
        end
    end)
    local v4 = TweenInfo.new(1)
    DeltaFramework.TweenService:Create(u15, v4, {Brightness = 0}):Play()
    task.delay(1, function() -- Line: 247 -- upvalues: u15 (val)
        u15:Destroy()
    end)
    if not p1 then
        v2 = 22.5
    else
        v2 = 5
    end
    task.wait(v2)
    Part:Destroy()
    v3:Disconnect()
    while not DeltaFramework.Player.Character do
        task.wait()
    end
    if not workspace.CurrentCamera then
        return
    end
    workspace.CurrentCamera.CameraSubject = DeltaFramework.Player.Character:WaitForChild("Humanoid", 5)
end)
local u168 = nil
local u169 = nil
DeltaFramework:Event("CharacterAdded", function(p1) -- Line: 265 -- upvalues: u169 (ref), DeltaFramework (val), u168 (ref)
    u169 = true
    task.wait(0.5)
    if DeltaFramework.Player.Character ~= p1 then
        return
    end
    u169 = nil
    local u10 = time()
    u168 = u10
    task.delay(5, function() -- Line: 278 -- upvalues: u168 (upval), u10 (val)
        if u168 == u10 then
            u168 = nil
        end
    end)
end)
local Update = DeltaFramework.ReplicatedStorage:WaitForChild("Update")
local Timer = Update:WaitForChild("Timer")
local Title = DeltaFramework.ReplicatedStorage.Update:WaitForChild("Title")
local u190 = 0
local u191 = false
local u192 = false
local u193 = {}
function shared.CheckIsPendingAreaLoad() -- Line: 321 -- upvalues: u193 (val)
    for k, v in pairs(u193) do
        if type(v) == "table" then
            return true
        end
    end
    return false
end
local u199 = DeltaFramework:Get("MMDebug")
local u208 = if DeltaFramework:Device() ~= "Console" then DeltaFramework.UIS.PreferredInput == Enum.PreferredInput.Gamepad else true
u199:SetFlag(script, "Unload Entirely", not u208)
u199:OnChange(script, "Unload Entirely", function(p1) -- Line: 336 -- upvalues: u193 (val)
    local v1 = p1
    for k, v in pairs(u193) do
        if v1 then
            pcall(function() -- Line: 339 -- upvalues: v (val)
                local Attribute
                for i, i2 in ipairs(v:QueryDescendants("FaceInstance,SurfaceGui")) do
                    if i2:IsA("FaceInstance") then
                        Attribute = i2:GetAttribute("q")
                        if Attribute then
                            i2.Transparency = Attribute
                            i2:SetAttribute("q", nil)
                        end
                    elseif i2:HasTag("SurfaceGui") then
                        i2:SetAttribute("LocalInvalid", nil)
                    end
                end
            end)
        elseif k == "S1" then
            local u69 = workspace:FindFirstChild("Sector 1")
            if u69 then
                pcall(function() -- Line: 361 -- upvalues: v (val), u69 (val)
                    v.Parent = u69
                end)
            end
        elseif k ~= "S1Meshes" then
            if k == "S2A" then
                local u60 = workspace:FindFirstChild("Sector 2")
                if u60 then
                    pcall(function() -- Line: 367 -- upvalues: v (val), u60 (val)
                        v.Parent = u60
                    end)
                end
            elseif k ~= "S2B" and k ~= "S2AMeshes" and k ~= "S2BMeshes" then
                if k == "S3" then
                    local u51 = workspace:FindFirstChild("Sector 3")
                    if u51 then
                        pcall(function() -- Line: 373 -- upvalues: v (val), u51 (val)
                            v.Parent = u51
                        end)
                    end
                elseif k ~= "S3Meshes" then
                    if k == "CI" then
                        local u42 = workspace:FindFirstChild("Chaos Insurgency")
                        if u42 then
                            pcall(function() -- Line: 379 -- upvalues: v (val), u42 (val)
                                v.Parent = u42
                            end)
                        end
                    elseif k ~= "CIMeshes" then
                        if k == "MSF1" then
                            local u33 = workspace:FindFirstChild("Medical Sector")
                            if u33 then
                                pcall(function() -- Line: 385 -- upvalues: v (val), u33 (val)
                                    v.Parent = u33
                                end)
                            end
                        elseif k ~= "MSF2" and k ~= "MSS" then
                            if k == "Helipad" then
                                local Outside = workspace:FindFirstChild("Outside")
                                if Outside then
                                    pcall(function() -- Line: 391 -- upvalues: v (val), Outside (val)
                                        v.Parent = Outside
                                    end)
                                end
                            elseif k ~= "Outdoors" then
                                pcall(function() -- Line: 394 -- upvalues: v (val)
                                    v.Parent = workspace
                                end)
                            end
                        end
                    end
                end
            end
        end
        u193[k] = nil
    end
end)
u199:SetFlag(script, "Print", false)
task.spawn(function() -- Line: 404 -- upvalues: DeltaFramework (val), u208 (ref), u193 (val)
    if not (DeltaFramework:Get("ConfigUtil"):GetPlayerValue("lowgraphics_disable_area_loading")) then
        return
    end
    while shared.InMenu do
        task.wait(1)
    end
    while not shared.Focused do
        task.wait(1)
    end
    task.wait(2.5)
    local v1 = {}
    local v2 = 5
    local v3 = 1
    for i = 1, v2, v3 do
        local u29 = 0
        local u30 = nil
        while u29 do
            task.wait()
        end
        table.insert(v1, 0)
    end
    v2 = 0
    u28 = 1
    v3 = #v1
    local v4 = 1
    for j = j, v3, v4 do
        v2 = v2 + v1[j]
    end
    v2 = v2 / #v1
    if v2 < 50 then
        u208 = true
        local function Do() -- Line: 450 -- upvalues: u193 (upval)
            local v1, v2, v3
            for k, v in pairs(u193) do
                if typeof(v) == "Instance" then
                    if typeof(v) == "table" then
                        v1 = #v
                        local u23 = v[1]
                        if 1 < v1 then
                            v2 = v1
                            v3 = 1
                            for i = 2, v2, v3 do
                                pcall(function() -- Line: 459 -- upvalues: v (ref), i (val), u23 (val)
                                    local v1 = v[i]
                                    v1.Parent = u23
                                end)
                            end
                        end
                        local v = u23
                    end
                    task.spawn(function() -- Line: 466 -- upvalues: k (val), v (ref), u193 (upval)
                        local u62
                        if k == "S1" then
                            u62 = workspace:WaitForChild("Sector 1")
                            if u62 then
                                pcall(function() -- Line: 471 -- upvalues: v (upval), u62 (val)
                                    v.Parent = u62
                                end)
                            end
                        elseif k == "S1Meshes" then
                            u62 = workspace:WaitForChild("Sector 1")
                            if u62 then
                                pcall(function() -- Line: 471 -- upvalues: v (upval), u62 (val)
                                    v.Parent = u62
                                end)
                            end
                        else
                            local u54
                            if k == "S2A" then
                                u54 = workspace:WaitForChild("Sector 2")
                                if u54 then
                                    pcall(function() -- Line: 477 -- upvalues: v (upval), u54 (val)
                                        v.Parent = u54
                                    end)
                                end
                            elseif k == "S2B" then
                                u54 = workspace:WaitForChild("Sector 2")
                                if u54 then
                                    pcall(function() -- Line: 477 -- upvalues: v (upval), u54 (val)
                                        v.Parent = u54
                                    end)
                                end
                            elseif k == "S2AMeshes" then
                                u54 = workspace:WaitForChild("Sector 2")
                                if u54 then
                                    pcall(function() -- Line: 477 -- upvalues: v (upval), u54 (val)
                                        v.Parent = u54
                                    end)
                                end
                            elseif k == "S2BMeshes" then
                                u54 = workspace:WaitForChild("Sector 2")
                                if u54 then
                                    pcall(function() -- Line: 477 -- upvalues: v (upval), u54 (val)
                                        v.Parent = u54
                                    end)
                                end
                            else
                                local u46
                                if k == "S3" then
                                    u46 = workspace:WaitForChild("Sector 3")
                                    if u46 then
                                        pcall(function() -- Line: 483 -- upvalues: v (upval), u46 (val)
                                            v.Parent = u46
                                        end)
                                    end
                                elseif k == "S3Meshes" then
                                    u46 = workspace:WaitForChild("Sector 3")
                                    if u46 then
                                        pcall(function() -- Line: 483 -- upvalues: v (upval), u46 (val)
                                            v.Parent = u46
                                        end)
                                    end
                                else
                                    local u38
                                    if k == "CI" then
                                        u38 = workspace:WaitForChild("Chaos Insurgency")
                                        if u38 then
                                            pcall(function() -- Line: 489 -- upvalues: v (upval), u38 (val)
                                                v.Parent = u38
                                            end)
                                        end
                                    elseif k == "CIMeshes" then
                                        u38 = workspace:WaitForChild("Chaos Insurgency")
                                        if u38 then
                                            pcall(function() -- Line: 489 -- upvalues: v (upval), u38 (val)
                                                v.Parent = u38
                                            end)
                                        end
                                    else
                                        local u30
                                        if k == "MSF1" then
                                            u30 = workspace:WaitForChild("Medical Sector")
                                            if u30 then
                                                pcall(function() -- Line: 495 -- upvalues: v (upval), u30 (val)
                                                    v.Parent = u30
                                                end)
                                            end
                                        elseif k == "MSF2" then
                                            u30 = workspace:WaitForChild("Medical Sector")
                                            if u30 then
                                                pcall(function() -- Line: 495 -- upvalues: v (upval), u30 (val)
                                                    v.Parent = u30
                                                end)
                                            end
                                        elseif k == "MSS" then
                                            u30 = workspace:WaitForChild("Medical Sector")
                                            if u30 then
                                                pcall(function() -- Line: 495 -- upvalues: v (upval), u30 (val)
                                                    v.Parent = u30
                                                end)
                                            end
                                        else
                                            local Outside
                                            if k == "Helipad" then
                                                Outside = workspace:WaitForChild("Outside")
                                                if Outside then
                                                    pcall(function() -- Line: 501 -- upvalues: v (upval), Outside (val)
                                                        v.Parent = Outside
                                                    end)
                                                end
                                            elseif k ~= "Outdoors" then
                                                pcall(function() -- Line: 504 -- upvalues: v (upval)
                                                    v.Parent = workspace
                                                end)
                                            else
                                                Outside = workspace:WaitForChild("Outside")
                                                if Outside then
                                                    pcall(function() -- Line: 501 -- upvalues: v (upval), Outside (val)
                                                        v.Parent = Outside
                                                    end)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        u193[k] = nil
                    end)
                elseif typeof(v) ~= "table" then
                end
            end
        end
        Do()
        task.delay(5, Do)
    end
end)
local u234 = 0
if DeltaFramework:Device() == "Mobile" then end
local u240 = nil
local u241 = nil
local u242 = nil
local u243 = nil
local u244 = nil
local u245 = nil
local u246 = nil
local u247 = nil
local u248 = nil
local u249 = nil
local u250 = nil
local u251 = nil
local u252 = nil
local u253 = nil
local u254 = nil
local u255 = nil
local u256 = nil
local u257 = nil
local u258 = nil
local u259 = nil
local u260 = nil
local u261 = nil
local u262 = nil
local TVsHacked = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local AttributeChangedSignal = TVsHacked:GetAttributeChangedSignal("State")
AttributeChangedSignal:Connect(function() -- Line: 551 -- upvalues: u241 (ref)
    u241 = nil
end)
local TVsHacked_2 = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local AttributeChangedSignal_2 = TVsHacked_2:GetAttributeChangedSignal("State079")
AttributeChangedSignal_2:Connect(function() -- Line: 555 -- upvalues: u243 (ref), u244 (ref)
    u243 = nil
    u244 = nil
end)
local TVsHacked_3 = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local AttributeChangedSignal_3 = TVsHacked_3:GetAttributeChangedSignal("State008")
AttributeChangedSignal_3:Connect(function() -- Line: 560 -- upvalues: u245 (ref)
    u245 = nil
end)
local TVsHacked_4 = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local AttributeChangedSignal_4 = TVsHacked_4:GetAttributeChangedSignal("State016")
AttributeChangedSignal_4:Connect(function() -- Line: 564 -- upvalues: u250 (ref)
    u250 = nil
end)
local TVsHacked_5 = DeltaFramework.ReplicatedStorage:WaitForChild("TVsHacked")
local AttributeChangedSignal_5 = TVsHacked_5:GetAttributeChangedSignal("State299")
AttributeChangedSignal_5:Connect(function() -- Line: 568 -- upvalues: u251 (ref)
    u251 = nil
end)
DeltaFramework.ReplicatedStorage:WaitForChild("Nuke").Changed:Connect(function() -- Line: 572 -- upvalues: u241 (ref), u243 (ref), u244 (ref), u245 (ref), u246 (ref), u247 (ref), u248 (ref), u249 (ref), u250 (ref), u251 (ref)
    u241 = nil
    u243 = nil
    u244 = nil
    u245 = nil
    u246 = nil
    u247 = nil
    u248 = nil
    u249 = nil
    u250 = nil
    u251 = nil
end)
local AttributeChangedSignal_6 = DeltaFramework.ReplicatedStorage:GetAttributeChangedSignal("CIDoctrine")
AttributeChangedSignal_6:Connect(function() -- Line: 585 -- upvalues: u241 (ref), u243 (ref), u244 (ref), u245 (ref), u246 (ref), u247 (ref), u248 (ref), u249 (ref), u250 (ref), u251 (ref)
    task.wait(1)
    u241 = nil
    u243 = nil
    u244 = nil
    u245 = nil
    u246 = nil
    u247 = nil
    u248 = nil
    u249 = nil
    u250 = nil
    u251 = nil
end)
local Mode = DeltaFramework.ReplicatedStorage:WaitForChild("Mode")
local u355 = Mode.Value == "Roleplay"
function IsEventOccuring() -- Line: 603 -- upvalues: DeltaFramework (val)
    local Value = DeltaFramework.ReplicatedStorage.Nuke.Value
    if not Value then
        Value = DeltaFramework.ReplicatedStorage.WDB.Value
        if not Value then
            Value = DeltaFramework.ReplicatedStorage.Breach076.Value
            if not Value then
                Value = DeltaFramework.ReplicatedStorage.Breach682.Value
            end
        end
    end
    return Value
end
local u358 = {}
Mode.Changed:Connect(function() -- Line: 609 -- upvalues: u355 (ref), Mode (val), u193 (val), u358 (ref), u252 (ref), u253 (ref), u254 (ref), u256 (ref), u257 (ref), u259 (ref), u260 (ref), u261 (ref), u262 (ref)
    local v1 = Mode.Value == "Roleplay"
    u355 = v1
    for k, v in pairs(u193) do
        if type(v) == "table" then
            for i, i2 in ipairs(v) do
                pcall(function() -- Line: 615 -- upvalues: i2 (val)
                    i2:Destroy()
                end)
            end
        elseif typeof(v) == "Instance" then
            pcall(function() -- Line: 618 -- upvalues: v (val)
                v:Destroy()
            end)
        end
        u193[k] = nil
    end
    for k2, j in pairs(u358) do
        pcall(function() -- Line: 625 -- upvalues: j (val)
            j:Disconnect()
        end)
    end
    u358 = {}
    pcall(function() -- Line: 630 -- upvalues: u252 (upval)
        u252:Destroy()
    end)
    pcall(function() -- Line: 631 -- upvalues: u253 (upval)
        u253:Destroy()
    end)
    pcall(function() -- Line: 632 -- upvalues: u254 (upval)
        u254:Destroy()
    end)
    pcall(function() -- Line: 633 -- upvalues: u256 (upval)
        u256:Destroy()
    end)
    pcall(function() -- Line: 634 -- upvalues: u257 (upval)
        u257:Destroy()
    end)
    pcall(function() -- Line: 635 -- upvalues: u259 (upval)
        u259:Destroy()
    end)
    pcall(function() -- Line: 636 -- upvalues: u260 (upval)
        u260:Destroy()
    end)
    pcall(function() -- Line: 637 -- upvalues: u261 (upval)
        u261:Destroy()
    end)
    pcall(function() -- Line: 638 -- upvalues: u262 (upval)
        u262:Destroy()
    end)
    u252 = nil
    u253 = nil
    u254 = nil
    u256 = nil
    u257 = nil
    u259 = nil
    u260 = nil
    u261 = nil
    u262 = nil
end)
local u377 = ""
local u378 = 0
local LoadAsset = DeltaFramework.ReplicatedStorage:WaitForChild("LoadAsset")
local SingleFan = LoadAsset:WaitForChild("SingleFan")
local LoadAsset_2 = DeltaFramework.ReplicatedStorage:WaitForChild("LoadAsset")
local QuadFans = LoadAsset_2:WaitForChild("QuadFans")
function LoadFan(p1) -- Line: 657 -- upvalues: QuadFans (val), SingleFan (val), DeltaFramework (val)
    local CFrame = p1.CFrame
    local Parent = p1.Parent
    if Parent then
        local v1
        if p1.Name ~= "QuadFansImposter" then
            v1 = SingleFan
        else
            v1 = QuadFans
        end
        local u14 = v1:Clone()
        for i, v in ipairs(u14:GetDescendants()) do
            if v.ClassName == "RemoteEvent" then
                v:Destroy()
            end
        end
        u14:PivotTo(CFrame)
        u14.Parent = Parent
        task.delay(1, function() -- Line: 678 -- upvalues: DeltaFramework (upval), u14 (ref), p1 (val), CFrame (val)
            DeltaFramework.CS:AddTag(u14, "LocalFan")
            p1:Destroy()
            if not (u14:IsDescendantOf(workspace)) then
                u14 = u14:Clone()
                u14:PivotTo(CFrame)
                u14.Parent = workspace:FindFirstChild("Map")
            end
            for i, v in ipairs(u14:GetChildren()) do
                pcall(function() -- Line: 690 -- upvalues: v (val)
                    v.Transparency = 0
                end)
            end
            if not p1 or not p1.Parent then
                return
            end
            task.wait(5)
            if not p1 or not p1.Parent then
                return
            end
            p1:Destroy()
        end)
        return
    else
        task.wait(1)
        Parent = p1.Parent
        if not Parent then
            return
        end
    end
end
local InstanceAddedSignal = DeltaFramework.CS:GetInstanceAddedSignal("FanImposter")
InstanceAddedSignal:Connect(LoadFan)
local InstanceAddedSignal_2 = DeltaFramework.CS:GetInstanceAddedSignal("FirstTimeRewardHologram")
InstanceAddedSignal_2:Connect(function(p1) -- Line: 705 -- upvalues: DeltaFramework (val)
    if not (DeltaFramework.Player:GetAttribute("FirstTime")) then
        p1:Destroy()
    end
end)
task.delay(5, function() -- Line: 711 -- upvalues: u378 (ref), u377 (ref), DeltaFramework (val)
    local v1 = tick() - u378
    if v1 < 4 then
        return
    end
    u377 = workspace:GetAttribute("MapOriginal")
    for i, v in ipairs(DeltaFramework.CS:GetTagged("FanImposter")) do
        LoadFan(v)
    end
    for i2, i3 in ipairs(DeltaFramework.CS:GetTagged("FirstTimeRewardHologram")) do
        if not (DeltaFramework.Player:GetAttribute("FirstTime")) then
            i3:Destroy()
        end
    end
end)
local AttributeChangedSignal_7 = workspace:GetAttributeChangedSignal("MapInternalId")
AttributeChangedSignal_7:Connect(function() -- Line: 727 -- upvalues: u377 (ref), u378 (ref), u193 (val), u358 (ref), u252 (ref), u253 (ref), u254 (ref), u256 (ref), u257 (ref), u259 (ref), u260 (ref), u261 (ref), u262 (ref), u241 (ref), u242 (ref), u243 (ref), u244 (ref), u245 (ref), u246 (ref), u247 (ref), u248 (ref), u249 (ref), u250 (ref), u251 (ref)
    u377 = ""
    u378 = tick()
    for k, v in pairs(u193) do
        if type(v) == "table" then
            for i, i2 in ipairs(v) do
                pcall(function() -- Line: 735 -- upvalues: i2 (val)
                    i2:Destroy()
                end)
            end
        elseif typeof(v) == "Instance" then
            pcall(function() -- Line: 738 -- upvalues: v (val)
                v:Destroy()
            end)
        end
        u193[k] = nil
    end
    for k2, j in pairs(u358) do
        pcall(function() -- Line: 745 -- upvalues: j (val)
            j:Disconnect()
        end)
    end
    u358 = {}
    pcall(function() -- Line: 750 -- upvalues: u252 (upval)
        u252:Destroy()
    end)
    pcall(function() -- Line: 751 -- upvalues: u253 (upval)
        u253:Destroy()
    end)
    pcall(function() -- Line: 752 -- upvalues: u254 (upval)
        u254:Destroy()
    end)
    pcall(function() -- Line: 753 -- upvalues: u256 (upval)
        u256:Destroy()
    end)
    pcall(function() -- Line: 754 -- upvalues: u257 (upval)
        u257:Destroy()
    end)
    pcall(function() -- Line: 755 -- upvalues: u259 (upval)
        u259:Destroy()
    end)
    pcall(function() -- Line: 756 -- upvalues: u260 (upval)
        u260:Destroy()
    end)
    pcall(function() -- Line: 757 -- upvalues: u261 (upval)
        u261:Destroy()
    end)
    pcall(function() -- Line: 758 -- upvalues: u262 (upval)
        u262:Destroy()
    end)
    u252 = nil
    u253 = nil
    u254 = nil
    u256 = nil
    u257 = nil
    u259 = nil
    u260 = nil
    u261 = nil
    u262 = nil
    task.wait(10)
    local v1 = tick() - u378
    if v1 < 9 then
        return
    end
    u377 = workspace:GetAttribute("MapOriginal")
    u241 = nil
    u242 = nil
    u243 = nil
    u244 = nil
    u245 = nil
    u246 = nil
    u247 = nil
    u248 = nil
    u249 = nil
    u250 = nil
    u251 = nil
end)
for i, j in DeltaFramework.SoundService:WaitForChild("FacilityAudio"):GetChildren() do
    j:Play()
end
local u457 = 0
local u458 = nil
local u459 = nil
DeltaFramework.RunService.RenderStepped:Connect(function(p1) -- Line: 799 -- upvalues: u25 (ref), u26 (ref), u377 (ref), u142 (ref), u56 (val), DeltaFramework (val), Time093 (val), Time (val), Atmosphere (val), u98 (val), StormFactor (val), u18 (val), u126 (val), u83 (ref), u84 (ref), u82 (ref), Rain1 (val), Rain2 (val), WDB (val), OutsideSky (val), OldSky (val), Lighting (val), u52 (val), u48 (val), u64 (val), u60 (val), u69 (val), u73 (val), u459 (ref), Sky (val), Mode (val), u190 (ref), u168 (ref), u169 (ref), u457 (ref), u24 (val), u234 (ref), u458 (ref), u199 (val), u355 (ref), u193 (val), u358 (ref), u23 (val), u241 (ref), u242 (ref), u243 (ref), u244 (ref), u245 (ref), u246 (ref), u247 (ref), u248 (ref), u249 (ref), u250 (ref), u251 (ref), u252 (ref), u260 (ref), u262 (ref), u256 (ref), u254 (ref), u253 (ref), u259 (ref), u257 (ref), u255 (ref), u258 (ref), u261 (ref), Title (val), Timer (val), u240 (ref), u192 (ref), u191 (ref)
    local v1, v2, v3, v4, v5, v6, v7, v8, v9
    u25 = u25 + p1
    u26 = u26 + 1
    local v10 = workspace.CurrentCamera.CFrame
    local Position = v10.Position
    if u377 ~= "Roleplay" then
        if u377 == "Roleplay" then
            if DeltaFramework.Lighting.ClockTime ~= 16 then
                DeltaFramework.Lighting.ClockTime = 16
                OldSky.Parent = Lighting
                u52.Parent = Lighting
                u48.Parent = Lighting
                u64.Parent = Lighting
                u60.Parent = Lighting
                u69.Enabled = false
            end
            v3 = Color3.fromRGB(0, 0, 0)
            if u377 ~= "Roleplay" then
                DeltaFramework.Lighting.ColorShift_Top = v3
                DeltaFramework.Lighting.OutdoorAmbient = v3
            else
                v4 = u73.Parent == DeltaFramework.Lighting
                if v4 then
                    if not u459 then
                        DeltaFramework.Lighting.Brightness = 0.7
                        DeltaFramework.Lighting.ColorShift_Bottom = Color3.fromRGB(195, 130, 130)
                        DeltaFramework.Lighting.ColorShift_Top = Color3.fromRGB(255, 117, 117)
                        DeltaFramework.Lighting.OutdoorAmbient = Color3.fromRGB(112, 44, 44)
                    end
                    u459 = true
                elseif u459 and not v4 then
                    DeltaFramework.Lighting.Brightness = 0
                    DeltaFramework.Lighting.ColorShift_Bottom = v3
                    DeltaFramework.Lighting.ColorShift_Top = v3
                    DeltaFramework.Lighting.OutdoorAmbient = v3
                    u459 = nil
                end
            end
            DeltaFramework.Lighting.EnvironmentDiffuseScale = 0
        elseif u377 ~= "Traitors" and u377 ~= "Legacy" and u377 ~= "EVENT" then
            if u377 == "SCP-093 Mission" then
                u52.Parent = DeltaFramework.Lighting
                u48.Parent = DeltaFramework.Lighting
                Sky.Parent = Lighting
                OldSky.Parent = Lighting
                u64.Parent = Lighting
                u60.Parent = Lighting
                u69.Enabled = false
                if workspace:GetAttribute("GameStatus") or "" == "Outside Hard" then
                    DeltaFramework.Lighting.Brightness = 0
                else
                    DeltaFramework.Lighting.Brightness = 3
                end
                DeltaFramework.Lighting.EnvironmentDiffuseScale = 1
                v3 = DeltaFramework.Lighting
                v3.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                v3 = DeltaFramework.Lighting
                v3.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
                DeltaFramework.Lighting.TimeOfDay = "16:00:00"
            elseif u377 == "SCP-076 Mission" then
                u64.Parent = DeltaFramework.Lighting
                u60.Parent = DeltaFramework.Lighting
                u69.Enabled = true
                Sky.Parent = Lighting
                OldSky.Parent = Lighting
                u52.Parent = Lighting
                u48.Parent = Lighting
                DeltaFramework.Lighting.Brightness = 0
                DeltaFramework.Lighting.EnvironmentDiffuseScale = 1
                v3 = DeltaFramework.Lighting
                v3.ColorShift_Top = Color3.fromRGB(216, 188, 174)
                v3 = DeltaFramework.Lighting
                v3.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
                DeltaFramework.Lighting.TimeOfDay = "00:52:53"
                DeltaFramework.Lighting.ExposureCompensation = 0
            elseif u377 ~= "MapTesting" then
                if Mode.Value == "Roleplay" then
                    v3 = Time.Value
                    DeltaFramework.Lighting.ClockTime = v3
                    v4 = DeltaFramework.Lighting:FindFirstChild("MapAtmosphere")
                    if v4 then
                        v5 = u98.Outside
                        v7 = nil
                        v8 = nil
                        if v3 < 8 then
                            v6 = v5.Night
                            v7 = v5.Normal
                            v8 = v3 / 8
                        elseif 17 >= v3 then
                            v6 = v5.Normal
                        else
                            v6 = v5.Normal
                            v7 = v5.Night
                            v8 = (v3 - 17) / 7
                        end
                        if not v8 then
                            v9 = v6
                        else
                            v9 = v6:Lerp(v7, v8)
                        end
                        if workspace:GetAttribute("Atmosphere_Color") ~= "" then
                            v1 = workspace:GetAttribute("OutsideColor3")
                            if v1 then
                                v9 = v9:Lerp(v1, (math.max(0.3, (12 - math.abs(v3 - 12)) * 0.0625)))
                            end
                        end
                        v4.Color = v9
                        v4.Decay = v9
                        v4.Glare = 0
                    end
                end
                DeltaFramework.Lighting.EnvironmentDiffuseScale = 0
                v3 = DeltaFramework.Lighting
                v3.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                v3 = DeltaFramework.Lighting
                v3.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
            else
                if DeltaFramework.Lighting.ClockTime ~= 16 then
                    DeltaFramework.Lighting.ClockTime = 16
                    Sky.Parent = DeltaFramework.Lighting
                    OldSky.Parent = Lighting
                    u52.Parent = Lighting
                    u48.Parent = Lighting
                    u64.Parent = Lighting
                    u60.Parent = Lighting
                    u69.Enabled = false
                end
                DeltaFramework.Lighting.Brightness = 0
                DeltaFramework.Lighting.EnvironmentDiffuseScale = 0
                v3 = DeltaFramework.Lighting
                v3.ColorShift_Top = Color3.fromRGB(0, 0, 0)
                v3 = DeltaFramework.Lighting
                v3.OutdoorAmbient = Color3.fromRGB(0, 0, 0)
            end
        end
    elseif u142 then
        if u56.Parent ~= DeltaFramework.Lighting then
            v3 = Time.Value
        else
            v3 = Time093.Value
        end
        DeltaFramework.Lighting.ClockTime = v3
        DeltaFramework.Lighting.EnvironmentDiffuseScale = 0
        Atmosphere.Haze = 10
        if u56.Parent ~= DeltaFramework.Lighting then
            v4 = "Outside"
        else
            v4 = "SCP093"
        end
        v5 = u98[v4]
        v7 = nil
        v8 = nil
        if v3 < 8 then
            v6 = v5.Night
            v7 = v5.Normal
            v8 = v3 / 8
        elseif 17 >= v3 then
            v6 = v5.Normal
        else
            v6 = v5.Normal
            v7 = v5.Night
            v8 = (v3 - 17) / 7
        end
        if not v8 then
            v9 = v6
        else
            v9 = v6:Lerp(v7, v8)
        end
        if workspace:GetAttribute("Atmosphere_Color") ~= "" then
            v1 = workspace:GetAttribute("OutsideColor3")
            if v1 then
                v9 = v9:Lerp(v1, (math.max(0.3, (12 - math.abs(v3 - 12)) * 0.0625)))
            end
        end
        if 0 < StormFactor.Value then
            v1 = StormFactor.Value
            if v4 == "Outside" then
                v9 = u18:Shade(v9, Color3.fromRGB(u126[1] * v1, u126[2] * v1, u126[3] * v1))
            end
            Atmosphere.Density = 0.6 + StormFactor.Value / 1000
        elseif math.floor(Atmosphere.Density * 100) ~= 55 then
            Atmosphere.Density = 0.6
        end
        if u83 then
            u83.Volume = math.max(0, StormFactor.Value / 200)
            u84.Volume = math.max(0, (StormFactor.Value - 25) / 100)
        end
        if u82 then
            u82.Volume = math.max(0, 0.75 + StormFactor.Value / 25)
        end
        if Rain1 then
            for i, v in ipairs(Rain1:QueryDescendants("ParticleEmitter")) do
                v.Rate = math.max(0, StormFactor.Value * 5)
            end
        end
        if Rain2 then
            for i2, i3 in ipairs(Rain2:QueryDescendants("ParticleEmitter")) do
                i3.Rate = math.max(0, StormFactor.Value * 5)
            end
        end
        if not WDB.Value then
            Atmosphere.Color = v9
            Atmosphere.Decay = v9
            u56.Color = v9
            u56.Decay = v9
            Atmosphere.Glare = 0
            if OutsideSky and OutsideSky.SunTextureId ~= "rbxasset://sky/sun.jpg" then
                DeltaFramework.Lighting.Brightness = 0
                OutsideSky.SunTextureId = "rbxasset://sky/sun.jpg"
                OutsideSky.MoonTextureId = "rbxasset://sky/moon.jpg"
            end
        else
            DeltaFramework.Lighting.Brightness = 0.2
            if OutsideSky and OutsideSky.SunTextureId ~= "http://www.roblox.com/asset/?id=15440081886" then
                OutsideSky.SunTextureId = "http://www.roblox.com/asset/?id=15440081886"
                OutsideSky.MoonTextureId = "http://www.roblox.com/asset/?id=15440081886"
            end
            if not (WDB:GetAttribute("DaybreakStarted")) then
                v2 = Color3.fromRGB(128, 0, 0)
                Atmosphere.Color = v9:Lerp(v2, (60 - WDB:GetAttribute("Timer")) / 60)
                v2 = Color3.fromRGB(128, 0, 0)
                Atmosphere.Decay = v9:Lerp(v2, (60 - WDB:GetAttribute("Timer")) / 60)
                Atmosphere.Glare = u18:Lerp(0, 4, (60 - WDB:GetAttribute("Timer")) / 60)
            else
                Atmosphere.Color = Color3.fromRGB(128, 0, 0)
                Atmosphere.Decay = Color3.fromRGB(128, 0, 0)
                Atmosphere.Glare = 4
            end
        end
    end
    if not shared.InMenu then
        u190 = math.max(0, u190 + p1)
    end
    if 0.05 <= u190 then
        if not u169 then
            local Z, v11, v12, v13, v14, v15, v16
            if not u168 then
                u457 = math.max(u457 - u190, 0)
            else
                u457 = 0
            end
            u190 = math.max(0, u190 - 0.05)
            if not WDB.Value then
                v3 = workspace:FindFirstChild("DaybreakEvP")
                if v3 then
                    v3:Destroy()
                end
            elseif WDB:GetAttribute("DaybreakStarted") and not (u24("Low Graphics")) then
                v4 = nil
                if workspace:FindFirstChild("DaybreakEvP") then
                    if not v4 then
                        v4 = workspace:FindFirstChild("DaybreakEvP")
                    end
                    if v4 and workspace.CurrentCamera then
                        v4.CFrame = v10
                    end
                else
                    v5 = Instance.new("Part")
                    v5.Massless = true
                    v5.CanCollide = false
                    v5.CanQuery = false
                    v5.CanTouch = false
                    v5.Anchored = true
                    v5.Transparency = 1
                    v5.Size = Vector3.new(100, 100, 100)
                    v5.Name = "DaybreakEvP"
                    v5.Parent = workspace
                    Lighting:WaitForChild("DaybreakParticle"):Clone().Parent = v5
                end
            end
            u234 = u234 + 1
            if 8 <= u234 then
                u234 = 1
                u458 = nil
            end
            v3 = u199:GetFlag(script, "Unload Entirely")
            v4 = u199:GetFlag(script, "Print")
            v5 = nil
            local u4496 = if -1349 >= Position.Z then Position.X < -1259 else true
            if u234 == 1 then
                if not u4496 then
                    if u193.SCP002Dimension and not u4496 then
                        if not v3 then
                            v7 = workspace:FindFirstChild("002 Dimension")
                            if v7 then
                                if v4 then
                                    print("Load SCP002Dimension")
                                end
                                for i46, i462 in ipairs(v7:QueryDescendants("FaceInstance")) do
                                    v2 = i462:GetAttribute("q")
                                    if v2 then
                                        i462.Transparency = v2
                                        i462:SetAttribute("q", nil)
                                    end
                                end
                                u193.SCP002Dimension = nil
                            end
                        else
                            if v4 then
                                print("Load SCP002Dimension")
                            end
                            u193.SCP002Dimension.Parent = workspace
                            u193.SCP002Dimension = nil
                        end
                    end
                elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.SCP002Dimension then
                    u193.SCP002Dimension = workspace:FindFirstChild("002 Dimension")
                    if u193.SCP002Dimension then
                        if not v3 then
                            if v4 then
                                print("Unload SCP002Dimension")
                            end
                            if not (u358[u193.SCP002Dimension.Name]) then
                                u358[u193.SCP002Dimension.Name] = u193.SCP002Dimension.DescendantAdded:Connect(function(p1) -- Line: 1147 -- upvalues: u193 (upval)
                                    if not (p1:IsA("FaceInstance")) then
                                        return
                                    end
                                    local Position = workspace.CurrentCamera.CFrame.Position
                                    local v1 = if -1349 >= Position.Z then Position.X < -1259 else true
                                    if not v1 then
                                        if not v1 and p1:GetAttribute("q") then
                                            p1.Transparency = p1:GetAttribute("q")
                                            p1:SetAttribute("q", nil)
                                        end
                                        return
                                    end
                                    if not (p1:GetAttribute("q")) then
                                        p1:SetAttribute("q", p1.Transparency)
                                        p1.Transparency = 1
                                        u193.SCP002Dimension = true
                                        return
                                    end
                                    if not v1 and p1:GetAttribute("q") then
                                        p1.Transparency = p1:GetAttribute("q")
                                        p1:SetAttribute("q", nil)
                                    end
                                end)
                            end
                            for i47, i472 in ipairs(u193.SCP002Dimension:QueryDescendants("FaceInstance")) do
                                if not (i472:GetAttribute("q")) then
                                    i472:SetAttribute("q", i472.Transparency)
                                    i472.Transparency = 1
                                end
                            end
                            u193.SCP002Dimension = true
                        else
                            if v4 then
                                print("Unload SCP002Dimension")
                            end
                            u193.SCP002Dimension.Parent = script
                        end
                        v5 = true
                    end
                end
                v7 = if -499 >= Position.Z then -1282 < Position.X else true
                if not v7 then
                    if u193.SCP093Dimension and not v7 then
                        if not v3 then
                            v8 = workspace:FindFirstChild("093 Dimension")
                            if v8 then
                                if v4 then
                                    print("Load SCP093Dimension")
                                end
                                for i48, i482 in ipairs(v8:QueryDescendants("FaceInstance")) do
                                    v13 = i482:GetAttribute("q")
                                    if v13 then
                                        i482.Transparency = v13
                                        i482:SetAttribute("q", nil)
                                    end
                                end
                                u193.SCP093Dimension = nil
                            end
                        else
                            if v4 then
                                print("Load SCP093Dimension")
                            end
                            u193.SCP093Dimension.Parent = workspace
                            u193.SCP093Dimension = nil
                        end
                    end
                elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.SCP093Dimension then
                    u193.SCP093Dimension = workspace:FindFirstChild("093 Dimension")
                    if u193.SCP093Dimension then
                        if not v3 then
                            if v4 then
                                print("Unload SCP093Dimension")
                            end
                            if not (u358[u193.SCP093Dimension.Name]) then
                                u358[u193.SCP093Dimension.Name] = u193.SCP093Dimension.DescendantAdded:Connect(function(p1) -- Line: 1237 -- upvalues: u193 (upval)
                                    if not (p1:IsA("FaceInstance")) then
                                        return
                                    end
                                    local Position = workspace.CurrentCamera.CFrame.Position
                                    local v1 = if -499 >= Position.Z then -1282 < Position.X else true
                                    local v2 = not v1
                                    if not v2 then
                                        if not v2 and p1:GetAttribute("q") then
                                            p1.Transparency = p1:GetAttribute("q")
                                            p1:SetAttribute("q", nil)
                                        end
                                        return
                                    end
                                    if not (p1:GetAttribute("q")) then
                                        p1:SetAttribute("q", p1.Transparency)
                                        p1.Transparency = 1
                                        u193.SCP093Dimension = true
                                        return
                                    end
                                    if not v2 and p1:GetAttribute("q") then
                                        p1.Transparency = p1:GetAttribute("q")
                                        p1:SetAttribute("q", nil)
                                    end
                                end)
                            end
                            for i49, i492 in ipairs(u193.SCP093Dimension:QueryDescendants("FaceInstance")) do
                                if not (i492:GetAttribute("q")) then
                                    i492:SetAttribute("q", i492.Transparency)
                                    i492.Transparency = 1
                                end
                            end
                            u193.SCP093Dimension = true
                        else
                            if v4 then
                                print("Unload SCP093Dimension")
                            end
                            u193.SCP093Dimension.Parent = script
                        end
                        v5 = true
                    end
                end
                v8 = if -1805 >= Position.Z then -11800 < Position.X else true
                if not v8 then
                    if u193.SCP106Dimension and not v8 then
                        if not v3 then
                            v9 = workspace:FindFirstChild("106 Dimension")
                            if v9 then
                                if v4 then
                                    print("Load SCP106Dimension")
                                end
                                for i50, i502 in ipairs(v9:QueryDescendants("FaceInstance")) do
                                    v14 = i502:GetAttribute("q")
                                    if v14 then
                                        i502.Transparency = v14
                                        i502:SetAttribute("q", nil)
                                    end
                                end
                                u193.SCP106Dimension = nil
                            end
                        else
                            if v4 then
                                print("Load SCP106Dimension")
                            end
                            u193.SCP106Dimension.Parent = workspace
                            u193.SCP106Dimension = nil
                        end
                    end
                elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.SCP106Dimension then
                    u193.SCP106Dimension = workspace:FindFirstChild("106 Dimension")
                    if u193.SCP106Dimension then
                        if not v3 then
                            if v4 then
                                print("Unload SCP106Dimension")
                            end
                            if not (u358[u193.SCP106Dimension.Name]) then
                                u358[u193.SCP106Dimension.Name] = u193.SCP106Dimension.DescendantAdded:Connect(function(p1) -- Line: 1320 -- upvalues: u193 (upval)
                                    if not (p1:IsA("FaceInstance")) then
                                        return
                                    end
                                    local Position = workspace.CurrentCamera.CFrame.Position
                                    local v1 = if -499 >= Position.Z then -1282 < Position.X else true
                                    local v2 = not v1
                                    if not v2 then
                                        if not v2 and p1:GetAttribute("q") then
                                            p1.Transparency = p1:GetAttribute("q")
                                            p1:SetAttribute("q", nil)
                                        end
                                        return
                                    end
                                    if not (p1:GetAttribute("q")) then
                                        p1:SetAttribute("q", p1.Transparency)
                                        p1.Transparency = 1
                                        u193.SCP106Dimension = true
                                        return
                                    end
                                    if not v2 and p1:GetAttribute("q") then
                                        p1.Transparency = p1:GetAttribute("q")
                                        p1:SetAttribute("q", nil)
                                    end
                                end)
                            end
                            for i51, i512 in ipairs(u193.SCP106Dimension:QueryDescendants("FaceInstance")) do
                                if not (i512:GetAttribute("q")) then
                                    i512:SetAttribute("q", i512.Transparency)
                                    i512.Transparency = 1
                                end
                            end
                            u193.SCP106Dimension = true
                        else
                            if v4 then
                                print("Unload SCP106Dimension")
                            end
                            u193.SCP106Dimension.Parent = script
                        end
                        v5 = true
                    end
                end
                v9 = true
                if u4496 then
                    v9 = true
                    if -441 >= Position.Z then
                        if Position.Z >= -465 then
                            v9 = if -572 < Position.Z then -15 < Position.X else false
                        elseif -510 < Position.Z then
                            v9 = true
                            if -25 >= Position.X then
                                v9 = true
                                if Position.X < -90 then end
                            end
                        end
                    end
                end
                if not v9 then
                    if u193.S3 and not v9 then
                        local u1724 = workspace:FindFirstChild("Sector 3")
                        if u1724 then
                            if not v3 then
                                v11 = u1724:FindFirstChild("S3")
                                if v11 then
                                    if v4 then
                                        print("Load S3")
                                    end
                                    for i53, i522 in ipairs(v11:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if i522:IsA("FaceInstance") then
                                            v16 = i522:GetAttribute("q")
                                            if v16 then
                                                i522.Transparency = v16
                                                i522:SetAttribute("q", nil)
                                            end
                                        elseif i522:HasTag("SurfaceGui") then
                                            i522:SetAttribute("LocalInvalid", nil)
                                        end
                                    end
                                    u193.S3 = nil
                                end
                            elseif type(u193.S3) == "table" then
                                if v4 then
                                    print("Load S3")
                                end
                                local u1737 = table.clone(u193.S3)
                                u193.S3 = true
                                task.spawn(function() -- Line: 1643 -- upvalues: u1737 (val), u168 (upval), u1724 (val), u193 (upval)
                                    local v1
                                    local u108 = u1737[1]
                                    local v2 = 0
                                    local v3 = 0
                                    for i, v in ipairs(u108:GetChildren()) do
                                        if v:IsA("Model") then
                                            table.insert(u1737, v)
                                            pcall(function() -- Line: 1653 -- upvalues: v (val)
                                                v.Parent = script
                                            end)
                                            v2 = v2 + 1
                                            if not u168 then
                                                v1 = 10
                                            else
                                                v1 = 100
                                            end
                                            if v1 <= v2 then
                                                v2 = 0
                                                task.wait()
                                            end
                                        elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                            table.insert(u1737, v)
                                            pcall(function() -- Line: 1665 -- upvalues: v (val)
                                                v.Parent = script
                                            end)
                                            v3 = v3 + 1
                                            if 150 <= v3 then
                                                v3 = 0
                                                task.wait()
                                            end
                                        end
                                    end
                                    local v4 = #u1737
                                    pcall(function() -- Line: 1679 -- upvalues: u108 (val), u1724 (upval)
                                        u108.Parent = u1724
                                    end)
                                    if 1 < v4 then
                                        local v5 = 0
                                        local v6 = v4
                                        local v7 = 1
                                        for i2 = 2, v6, v7 do
                                            v5 = v5 + 1
                                            pcall(function() -- Line: 1687 -- upvalues: u1737 (upval), i2 (val), u108 (val)
                                                local v1 = u1737[i2]
                                                v1.Parent = u108
                                            end)
                                            if not u168 then
                                                v1 = 10
                                            else
                                                v1 = 100
                                            end
                                            if v1 <= v5 then
                                                v5 = 0
                                                task.wait()
                                            end
                                        end
                                        task.wait()
                                    end
                                    u193.S3 = nil
                                end)
                            end
                        end
                    end
                    if u193.S3Meshes and not v9 then
                        local u1801 = workspace:FindFirstChild("Sector 3")
                        if u1801 then
                            if not v3 then
                                v11 = u1801:FindFirstChild("S3Meshes")
                                if v11 then
                                    if v4 then
                                        print("Load S3Meshes")
                                    end
                                    for i54, i532 in ipairs(v11:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if i532:IsA("FaceInstance") then
                                            v16 = i532:GetAttribute("q")
                                            if v16 then
                                                i532.Transparency = v16
                                                i532:SetAttribute("q", nil)
                                            end
                                        elseif i532:HasTag("SurfaceGui") then
                                            i532:SetAttribute("LocalInvalid", nil)
                                        end
                                    end
                                    u193.S3Meshes = nil
                                end
                            elseif type(u193.S3Meshes) == "table" then
                                if v4 then
                                    print("Load S3Meshes")
                                end
                                local u1820 = table.clone(u193.S3Meshes)
                                u193.S3Meshes = true
                                task.spawn(function() -- Line: 1745 -- upvalues: u1820 (val), u168 (upval), u1801 (val), u193 (upval)
                                    local v1
                                    local u108 = u1820[1]
                                    local v2 = 0
                                    local v3 = 0
                                    for i, v in ipairs(u108:GetChildren()) do
                                        if v:IsA("Model") then
                                            table.insert(u1820, v)
                                            pcall(function() -- Line: 1755 -- upvalues: v (val)
                                                v.Parent = script
                                            end)
                                            v2 = v2 + 1
                                            if not u168 then
                                                v1 = 10
                                            else
                                                v1 = 100
                                            end
                                            if v1 <= v2 then
                                                v2 = 0
                                                task.wait()
                                            end
                                        elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                            table.insert(u1820, v)
                                            pcall(function() -- Line: 1767 -- upvalues: v (val)
                                                v.Parent = script
                                            end)
                                            v3 = v3 + 1
                                            if 150 <= v3 then
                                                v3 = 0
                                                task.wait()
                                            end
                                        end
                                    end
                                    local v4 = #u1820
                                    pcall(function() -- Line: 1781 -- upvalues: u108 (val), u1801 (upval)
                                        u108.Parent = u1801
                                    end)
                                    if 1 < v4 then
                                        local v5 = 0
                                        local v6 = v4
                                        local v7 = 1
                                        for i2 = 2, v6, v7 do
                                            v5 = v5 + 1
                                            pcall(function() -- Line: 1789 -- upvalues: u1820 (upval), i2 (val), u108 (val)
                                                local v1 = u1820[i2]
                                                v1.Parent = u108
                                            end)
                                            if not u168 then
                                                v1 = 10
                                            else
                                                v1 = 100
                                            end
                                            if v1 <= v5 then
                                                v5 = 0
                                                task.wait()
                                            end
                                        end
                                        task.wait()
                                    end
                                    u193.S3Meshes = nil
                                end)
                            end
                        end
                    end
                elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.S3 then
                    v1 = workspace:FindFirstChild("Sector 3")
                    if v1 then
                        local v17
                        u193.S3 = v1:FindFirstChild("S3")
                        if u193.S3 then
                            if not v3 then
                                if v4 then
                                    print("Unload S3")
                                end
                                if not (u358[u193.S3.Name]) then
                                    u358[u193.S3.Name] = u193.S3.DescendantAdded:Connect(function(p1) -- Line: 1451 -- upvalues: u4496 (val), u193 (upval)
                                        if not p1 then
                                            return
                                        end
                                        local v1 = nil
                                        if p1:IsA("SurfaceGui") then
                                            v1 = true
                                        elseif p1:IsA("FaceInstance") then
                                            v1 = false
                                        end
                                        if v1 == nil then
                                            return
                                        end
                                        if v1 ~= true then
                                            local Position = workspace.CurrentCamera.CFrame.Position
                                            local v2 = if u4496 ~= false then if -465 >= Position.Z then if Position.Z < -465 then if -570 < Position.Z then if -26 >= Position.X then Position.X < -90 else true else false else false else true else true
                                            local v3 = not v2
                                            if v1 == true then
                                                if v3 then
                                                    p1:SetAttribute("LocalInvalid", true)
                                                    return
                                                end
                                                p1:SetAttribute("LocalInvalid", nil)
                                                return
                                            end
                                            if not v3 then
                                                if not v3 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            end
                                            if not (p1:GetAttribute("q")) then
                                                p1:SetAttribute("q", p1.Transparency)
                                                p1.Transparency = 1
                                                u193.S3 = true
                                                return
                                            end
                                            if not v3 and p1:GetAttribute("q") then
                                                p1.Transparency = p1:GetAttribute("q")
                                                p1:SetAttribute("q", nil)
                                            end
                                            return
                                        elseif not (p1:HasTag("SurfaceGui")) then
                                            return
                                        end
                                    end)
                                end
                                for i55, i542 in ipairs(u193.S3:QueryDescendants("FaceInstance,SurfaceGui")) do
                                    if not (i542:IsA("FaceInstance")) then
                                        if i542:HasTag("SurfaceGui") then
                                            i542:SetAttribute("LocalInvalid", true)
                                        end
                                    elseif not (i542:GetAttribute("q")) then
                                        i542:SetAttribute("q", i542.Transparency)
                                        i542.Transparency = 1
                                    end
                                end
                                u193.S3 = true
                            else
                                if v4 then
                                    print("Unload S3")
                                end
                                v11 = u193.S3
                                u193.S3 = true
                                v12 = {v11}
                                v2 = v11:GetChildren()
                                v13 = 0
                                v14 = 0
                                v15 = #v2
                                v16 = 1
                                for i552 = 1, v15, v16 do
                                    local u1366 = v2[i552]
                                    if u1366:IsA("Model") then
                                        table.insert(v12, u1366)
                                        pcall(function() -- Line: 1417 -- upvalues: u1366 (val)
                                            u1366.Parent = script
                                        end)
                                        v13 = v13 + 1
                                        if not u168 then
                                            v17 = 10
                                        else
                                            v17 = 100
                                        end
                                        if v17 <= v13 then
                                            v13 = 0
                                            task.wait()
                                        end
                                    elseif not (u1366:IsA("Folder")) and u1366:IsA("BasePart") then
                                        table.insert(v12, u1366)
                                        pcall(function() -- Line: 1429 -- upvalues: u1366 (val)
                                            u1366.Parent = script
                                        end)
                                        v14 = v14 + 1
                                        if 150 <= v14 then
                                            v14 = 0
                                            task.wait()
                                        end
                                    end
                                end
                                task.wait()
                                v12[1].Parent = script
                                u193.S3 = v12
                            end
                            v5 = true
                        end
                        if not u193.S3Meshes then
                            u193.S3Meshes = v1:FindFirstChild("S3Meshes")
                            if u193.S3Meshes then
                                if not v3 then
                                    if v4 then
                                        print("Unload S3Meshes")
                                    end
                                    if not (u358[u193.S3Meshes.Name]) then
                                        u358[u193.S3Meshes.Name] = u193.S3Meshes.DescendantAdded:Connect(function(p1) -- Line: 1569 -- upvalues: u4496 (val), u193 (upval)
                                            if not p1 then
                                                return
                                            end
                                            local v1 = nil
                                            if p1:IsA("SurfaceGui") then
                                                v1 = true
                                            elseif p1:IsA("FaceInstance") then
                                                v1 = false
                                            end
                                            if v1 == nil then
                                                return
                                            end
                                            if v1 ~= true then
                                                local Position = workspace.CurrentCamera.CFrame.Position
                                                local v2 = if u4496 ~= false then if -465 >= Position.Z then if Position.Z < -465 then if -570 < Position.Z then if -26 >= Position.X then Position.X < -90 else true else false else false else true else true
                                                local v3 = not v2
                                                if v1 == true then
                                                    if v3 then
                                                        p1:SetAttribute("LocalInvalid", true)
                                                        return
                                                    end
                                                    p1:SetAttribute("LocalInvalid", nil)
                                                    return
                                                end
                                                if not v3 then
                                                    if not v3 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                end
                                                if not (p1:GetAttribute("q")) then
                                                    p1:SetAttribute("q", p1.Transparency)
                                                    p1.Transparency = 1
                                                    u193.S3Meshes = true
                                                    return
                                                end
                                                if not v3 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            elseif not (p1:HasTag("SurfaceGui")) then
                                                return
                                            end
                                        end)
                                    end
                                    for i56, i562 in ipairs(u193.S3Meshes:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if not (i562:IsA("FaceInstance")) then
                                            if i562:HasTag("SurfaceGui") then
                                                i562:SetAttribute("LocalInvalid", true)
                                            end
                                        elseif not (i562:GetAttribute("q")) then
                                            i562:SetAttribute("q", i562.Transparency)
                                            i562.Transparency = 1
                                        end
                                    end
                                    u193.S3Meshes = true
                                else
                                    if v4 then
                                        print("Unload S3Meshes")
                                    end
                                    v11 = u193.S3Meshes
                                    u193.S3Meshes = true
                                    v12 = {v11}
                                    v2 = v11:GetChildren()
                                    v13 = 0
                                    v14 = 0
                                    v15 = #v2
                                    v16 = 1
                                    for i57 = 1, v15, v16 do
                                        local u1569 = v2[i57]
                                        if u1569:IsA("Model") then
                                            table.insert(v12, u1569)
                                            pcall(function() -- Line: 1535 -- upvalues: u1569 (val)
                                                u1569.Parent = script
                                            end)
                                            v13 = v13 + 1
                                            if not u168 then
                                                v17 = 10
                                            else
                                                v17 = 100
                                            end
                                            if v17 <= v13 then
                                                v13 = 0
                                                task.wait()
                                            end
                                        elseif not (u1569:IsA("Folder")) and u1569:IsA("BasePart") then
                                            table.insert(v12, u1569)
                                            pcall(function() -- Line: 1547 -- upvalues: u1569 (val)
                                                u1569.Parent = script
                                            end)
                                            v14 = v14 + 1
                                            if 150 <= v14 then
                                                v14 = 0
                                                task.wait()
                                            end
                                        end
                                    end
                                    task.wait()
                                    v12[1].Parent = script
                                    u193.S3Meshes = v12
                                end
                                v5 = true
                            end
                        end
                    end
                end
            else
                local v18
                if u234 == 2 then
                    v7 = true
                    if Position.Z >= -78 then
                        if Position.Z >= -5 then
                            v7 = u23:IsInLocation("Medical Sector", Position)
                            if not v7 then
                                v7 = u23:IsInLocation("Transformers Room", Position)
                            end
                        else
                            v7 = true
                            if 76 < Position.X then end
                        end
                    end
                    if not v7 then
                        if u193.S1 and not v7 then
                            v8 = workspace:FindFirstChild("Sector 1")
                            if v8 then
                                if not v3 then
                                    v9 = v8:FindFirstChild("S1")
                                    if v9 then
                                        if v4 then
                                            print("Load S1")
                                        end
                                        for i35, i352 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if i352:IsA("FaceInstance") then
                                                v14 = i352:GetAttribute("q")
                                                if v14 then
                                                    i352.Transparency = v14
                                                end
                                                i352:SetAttribute("q", nil)
                                            elseif i352:HasTag("SurfaceGui") then
                                                i352:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.S1 = nil
                                    end
                                else
                                    if v4 then
                                        print("Load S1")
                                    end
                                    u193.S1.Parent = v8
                                    u193.S1 = nil
                                end
                            end
                        end
                        if u193.S1Meshes and not v7 then
                            local u2258 = workspace:FindFirstChild("Sector 1")
                            if u2258 then
                                if not v3 then
                                    v9 = u2258:FindFirstChild("S1Meshes")
                                    if v9 then
                                        for i36, i362 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if i362:IsA("FaceInstance") then
                                                v14 = i362:GetAttribute("q")
                                                if v14 then
                                                    i362.Transparency = v14
                                                end
                                                i362:SetAttribute("q", nil)
                                            elseif i362:HasTag("SurfaceGui") then
                                                i362:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.S1Meshes = nil
                                    end
                                elseif type(u193.S1Meshes) == "table" then
                                    if v4 then
                                        print("Load S1Meshes")
                                    end
                                    local u2279 = table.clone(u193.S1Meshes)
                                    u193.S1Meshes = true
                                    task.spawn(function() -- Line: 2093 -- upvalues: u2279 (val), u168 (upval), u2258 (val), u193 (upval)
                                        local v1
                                        local u108 = u2279[1]
                                        local v2 = 0
                                        local v3 = 0
                                        for i, v in ipairs(u108:GetChildren()) do
                                            if v:IsA("Model") then
                                                table.insert(u2279, v)
                                                pcall(function() -- Line: 2103 -- upvalues: v (val)
                                                    v.Parent = script
                                                end)
                                                v2 = v2 + 1
                                                if not u168 then
                                                    v1 = 10
                                                else
                                                    v1 = 100
                                                end
                                                if v1 <= v2 then
                                                    v2 = 0
                                                    task.wait()
                                                end
                                            elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                                table.insert(u2279, v)
                                                pcall(function() -- Line: 2115 -- upvalues: v (val)
                                                    v.Parent = script
                                                end)
                                                v3 = v3 + 1
                                                if 150 <= v3 then
                                                    v3 = 0
                                                    task.wait()
                                                end
                                            end
                                        end
                                        local v4 = #u2279
                                        pcall(function() -- Line: 2129 -- upvalues: u108 (val), u2258 (upval)
                                            u108.Parent = u2258
                                        end)
                                        if 1 < v4 then
                                            local v5 = 0
                                            local v6 = v4
                                            local v7 = 1
                                            for i2 = 2, v6, v7 do
                                                v5 = v5 + 1
                                                pcall(function() -- Line: 2137 -- upvalues: u2279 (upval), i2 (val), u108 (val)
                                                    local v1 = u2279[i2]
                                                    v1.Parent = u108
                                                end)
                                                if not u168 then
                                                    v1 = 10
                                                else
                                                    v1 = 100
                                                end
                                                if v1 <= v5 then
                                                    v5 = 0
                                                    task.wait()
                                                end
                                            end
                                            task.wait()
                                        end
                                        u193.S1Meshes = nil
                                    end)
                                end
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 then
                        if not u193.S1 then
                            v8 = workspace:FindFirstChild("Sector 1")
                            if v8 then
                                if not u193.S1 then
                                    u193.S1 = v8:FindFirstChild("S1")
                                    if u193.S1 then
                                        if not v3 then
                                            if v4 then
                                                print("Unload S1")
                                            end
                                            if not (u358[u193.S1.Name]) then
                                                u358[u193.S1.Name] = u193.S1.DescendantAdded:Connect(function(p1) -- Line: 1858 -- upvalues: u23 (upval), u193 (upval)
                                                    if not p1 then
                                                        return
                                                    end
                                                    local v1 = nil
                                                    if p1:IsA("SurfaceGui") then
                                                        v1 = true
                                                    elseif p1:IsA("FaceInstance") then
                                                        v1 = false
                                                    end
                                                    if v1 == nil then
                                                        return
                                                    end
                                                    if v1 ~= true then
                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                        local v2 = true
                                                        if Position.Z >= -78 then
                                                            if Position.Z >= -5 then
                                                                v2 = u23:IsInLocation("Medical Sector", Position)
                                                            else
                                                                v2 = true
                                                                if 76 < Position.X then end
                                                            end
                                                        end
                                                        local v3 = not v2
                                                        if v1 == true then
                                                            if v3 then
                                                                p1:SetAttribute("LocalInvalid", true)
                                                                return
                                                            end
                                                            p1:SetAttribute("LocalInvalid", nil)
                                                            return
                                                        end
                                                        if not v3 then
                                                            if not v3 and p1:GetAttribute("q") then
                                                                p1.Transparency = p1:GetAttribute("q")
                                                                p1:SetAttribute("q", nil)
                                                            end
                                                            return
                                                        end
                                                        if not (p1:GetAttribute("q")) then
                                                            p1:SetAttribute("q", p1.Transparency)
                                                            p1.Transparency = 1
                                                            u193.S1 = true
                                                            return
                                                        end
                                                        if not v3 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                        return
                                                    end
                                                end)
                                            end
                                            for i37, i372 in ipairs(u193.S1:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if not (i372:IsA("FaceInstance")) then
                                                    if i372:HasTag("SurfaceGui") then
                                                        i372:SetAttribute("LocalInvalid", true)
                                                    end
                                                elseif not (i372:GetAttribute("q")) then
                                                    i372:SetAttribute("q", i372.Transparency)
                                                    i372.Transparency = 1
                                                end
                                            end
                                            u193.S1 = true
                                        else
                                            if v4 then
                                                print("Unload S1")
                                            end
                                            u193.S1.Parent = script
                                        end
                                        v5 = true
                                    end
                                end
                                if not u193.S1Meshes then
                                    u193.S1Meshes = v8:FindFirstChild("S1Meshes")
                                    if u193.S1Meshes then
                                        if not v3 then
                                            if v4 then
                                                print("Unload S1Meshes")
                                            end
                                            if not (u358[u193.S1Meshes.Name]) then
                                                u358[u193.S1Meshes.Name] = u193.S1Meshes.DescendantAdded:Connect(function(p1) -- Line: 1977 -- upvalues: u23 (upval), u193 (upval)
                                                    if not p1 then
                                                        return
                                                    end
                                                    local v1 = nil
                                                    if p1:IsA("SurfaceGui") then
                                                        v1 = true
                                                    elseif p1:IsA("FaceInstance") then
                                                        v1 = false
                                                    end
                                                    if v1 == nil then
                                                        return
                                                    end
                                                    if v1 ~= true then
                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                        local v2 = true
                                                        if Position.Z >= -78 then
                                                            if Position.Z >= -5 then
                                                                v2 = u23:IsInLocation("Medical Sector", Position)
                                                            else
                                                                v2 = true
                                                                if 76 < Position.X then end
                                                            end
                                                        end
                                                        local v3 = not v2
                                                        if v1 == true then
                                                            if v3 then
                                                                p1:SetAttribute("LocalInvalid", true)
                                                                return
                                                            end
                                                            p1:SetAttribute("LocalInvalid", nil)
                                                            return
                                                        end
                                                        if not v3 then
                                                            if not v3 and p1:GetAttribute("q") then
                                                                p1.Transparency = p1:GetAttribute("q")
                                                                p1:SetAttribute("q", nil)
                                                            end
                                                            return
                                                        end
                                                        if not (p1:GetAttribute("q")) then
                                                            p1:SetAttribute("q", p1.Transparency)
                                                            p1.Transparency = 1
                                                            u193.S1Meshes = true
                                                            return
                                                        end
                                                        if not v3 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                        return
                                                    end
                                                end)
                                            end
                                            for i38, i382 in ipairs(u193.S1Meshes:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if not (i382:IsA("FaceInstance")) then
                                                    if i382:HasTag("SurfaceGui") then
                                                        i382:SetAttribute("LocalInvalid", true)
                                                    end
                                                elseif not (i382:GetAttribute("q")) then
                                                    i382:SetAttribute("q", i382.Transparency)
                                                    i382.Transparency = 1
                                                end
                                            end
                                            u193.S1Meshes = true
                                        else
                                            if v4 then
                                                print("Unload S1Meshes")
                                            end
                                            v9 = u193.S1Meshes
                                            u193.S1Meshes = true
                                            v1 = {v9}
                                            v11 = v9:GetChildren()
                                            v12 = 0
                                            v2 = 0
                                            v13 = #v11
                                            v14 = 1
                                            for i39 = 1, v13, v14 do
                                                local u2041 = v11[i39]
                                                if u2041:IsA("Model") then
                                                    table.insert(v1, u2041)
                                                    pcall(function() -- Line: 1943 -- upvalues: u2041 (val)
                                                        u2041.Parent = script
                                                    end)
                                                    v12 = v12 + 1
                                                    if not u168 then
                                                        v18 = 10
                                                    else
                                                        v18 = 100
                                                    end
                                                    if v18 <= v12 then
                                                        v12 = 0
                                                        task.wait()
                                                    end
                                                elseif not (u2041:IsA("Folder")) and u2041:IsA("BasePart") then
                                                    table.insert(v1, u2041)
                                                    pcall(function() -- Line: 1955 -- upvalues: u2041 (val)
                                                        u2041.Parent = script
                                                    end)
                                                    v2 = v2 + 1
                                                    if 150 <= v2 then
                                                        v2 = 0
                                                        task.wait()
                                                    end
                                                end
                                            end
                                            task.wait()
                                            v1[1].Parent = script
                                            u193.S1Meshes = v1
                                        end
                                        v5 = true
                                    end
                                end
                            end
                        elseif u193.S1Meshes then
                        end
                    end
                    if Position.Z >= 474 then
                        if 474 <= Position.Z and u193.Entrance then
                            if not v3 then
                                v8 = workspace:FindFirstChild("Entrance")
                                if v8 then
                                    if v4 then
                                        print("Load Entrance")
                                    end
                                    for i40, i402 in ipairs(v8:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if i402:IsA("FaceInstance") then
                                            v13 = i402:GetAttribute("q")
                                            if v13 then
                                                i402.Transparency = v13
                                                i402:SetAttribute("q", nil)
                                            end
                                        elseif i402:HasTag("SurfaceGui") then
                                            i402:SetAttribute("LocalInvalid", nil)
                                        end
                                    end
                                    u193.Entrance = nil
                                end
                            else
                                if v4 then
                                    print("Load Entrance")
                                end
                                u193.Entrance.Parent = workspace
                                u193.Entrance = nil
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.Entrance then
                        u193.Entrance = workspace:FindFirstChild("Entrance")
                        if u193.Entrance then
                            if not v3 then
                                if v4 then
                                    print("Unload Entrance")
                                end
                                if not (u358[u193.Entrance.Name]) then
                                    u358[u193.Entrance.Name] = u193.Entrance.DescendantAdded:Connect(function(p1) -- Line: 2195 -- upvalues: u193 (upval)
                                        if not p1 then
                                            return
                                        end
                                        local v1 = nil
                                        if p1:IsA("SurfaceGui") then
                                            v1 = true
                                        elseif p1:IsA("FaceInstance") then
                                            v1 = false
                                        end
                                        if v1 == nil then
                                            return
                                        end
                                        if v1 ~= true then
                                            local v2 = workspace.CurrentCamera.CFrame.Position.Z < 474
                                            local v3 = not v2
                                            if v1 == true then
                                                if v3 then
                                                    p1:SetAttribute("LocalInvalid", true)
                                                    return
                                                end
                                                p1:SetAttribute("LocalInvalid", nil)
                                                return
                                            end
                                            if not v3 then
                                                if not v3 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            end
                                            if not (p1:GetAttribute("q")) then
                                                p1:SetAttribute("q", p1.Transparency)
                                                p1.Transparency = 1
                                                u193.Entrance = true
                                                return
                                            end
                                            if not v3 and p1:GetAttribute("q") then
                                                p1.Transparency = p1:GetAttribute("q")
                                                p1:SetAttribute("q", nil)
                                            end
                                            return
                                        elseif not (p1:HasTag("SurfaceGui")) then
                                            return
                                        end
                                    end)
                                end
                                for i41, i412 in ipairs(u193.Entrance:QueryDescendants("FaceInstance,SurfaceGui")) do
                                    if not (i412:IsA("FaceInstance")) then
                                        if i412:HasTag("SurfaceGui") then
                                            i412:SetAttribute("LocalInvalid", true)
                                        end
                                    elseif not (i412:GetAttribute("q")) then
                                        i412:SetAttribute("q", i412.Transparency)
                                        i412.Transparency = 1
                                    end
                                end
                                u193.Entrance = true
                            else
                                if v4 then
                                    print("Unload Entrance")
                                end
                                u193.Entrance.Parent = script
                            end
                            v5 = true
                        end
                    end
                    v8 = if Position.Z >= 474 then Position.X < -207 else true
                    if not v8 then
                        if u193.Helipad and not v8 then
                            v9 = workspace:FindFirstChild("Outside")
                            if v9 then
                                if not v3 then
                                    v9 = v9:FindFirstChild("Helipad")
                                    if v9 then
                                        if v4 then
                                            print("Load Helipad")
                                        end
                                        for i42, i422 in ipairs(v9:QueryDescendants("FaceInstance")) do
                                            if i422:IsA("FaceInstance") then
                                                v14 = i422:GetAttribute("q")
                                                if v14 then
                                                    i422.Transparency = v14
                                                    i422:SetAttribute("q", nil)
                                                end
                                            end
                                        end
                                        u193.Helipad = nil
                                    end
                                else
                                    if v4 then
                                        print("Load Helipad")
                                    end
                                    u193.Helipad.Parent = v9
                                    u193.Helipad = nil
                                end
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.Helipad then
                        v9 = workspace:FindFirstChild("Outside")
                        if v9 then
                            u193.Helipad = v9:FindFirstChild("Helipad")
                            if u193.Helipad then
                                if not v3 then
                                    if v4 then
                                        print("Unload Helipad")
                                    end
                                    if not (u358[u193.Helipad.Name]) then
                                        u358[u193.Helipad.Name] = u193.Helipad.DescendantAdded:Connect(function(p1) -- Line: 2311 -- upvalues: u193 (upval)
                                            if not (p1:IsA("FaceInstance")) then
                                                return
                                            end
                                            local Position = workspace.CurrentCamera.CFrame.Position
                                            local v1 = if Position.Z >= 474 then Position.X < -207 else true
                                            local v2 = not v1
                                            if not v2 then
                                                if not v2 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            end
                                            if not (p1:GetAttribute("q")) then
                                                p1:SetAttribute("q", p1.Transparency)
                                                p1.Transparency = 1
                                                u193.Helipad = true
                                                return
                                            end
                                            if not v2 and p1:GetAttribute("q") then
                                                p1.Transparency = p1:GetAttribute("q")
                                                p1:SetAttribute("q", nil)
                                            end
                                        end)
                                    end
                                    for i43, i432 in ipairs(u193.Helipad:QueryDescendants("FaceInstance")) do
                                        if i432:IsA("FaceInstance") and not (i432:GetAttribute("q")) then
                                            i432:SetAttribute("q", i432.Transparency)
                                            i432.Transparency = 1
                                        end
                                    end
                                    u193.Helipad = true
                                else
                                    if v4 then
                                        print("Unload Helipad")
                                    end
                                    u193.Helipad.Parent = script
                                end
                                v5 = true
                            end
                        end
                    end
                    if -324 >= Position.X then
                        v9 = true
                        if Position.Z >= 370 then
                            if 783 >= Position.Z then
                                v9 = false
                                if -279 < Position.X then
                                    v9 = workspace:FindFirstChild("Entrance")
                                    if v9 then
                                        v9 = workspace.Entrance:FindFirstChild("Outside Gate 4")
                                        if v9 then
                                            v9 = not DeltaFramework.CS:HasTag(workspace.Entrance["Outside Gate 4"], "Open")
                                        end
                                    end
                                end
                            else
                                v9 = true
                                if -279 < Position.X then end
                            end
                        end
                    else
                        v9 = true
                        if Position.Z < 642 then end
                    end
                    if not v9 then
                        if u193.Outdoors and not v9 then
                            v1 = workspace:FindFirstChild("Outside")
                            if v1 then
                                if not v3 then
                                    v1 = v1:FindFirstChild("Outdoors")
                                    if v1 then
                                        if v4 then
                                            print("Load Outdoors")
                                        end
                                        for i44, i442 in ipairs(v1:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if i442:IsA("FaceInstance") then
                                                v15 = i442:GetAttribute("q")
                                                if v15 then
                                                    i442.Transparency = v15
                                                    i442:SetAttribute("q", nil)
                                                end
                                            elseif i442:HasTag("SurfaceGui") then
                                                i442:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.Outdoors = nil
                                    end
                                else
                                    if v4 then
                                        print("Load Outdoors")
                                    end
                                    u193.Outdoors.Parent = v1
                                    u193.Outdoors = nil
                                end
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.Outdoors then
                        v1 = workspace:FindFirstChild("Outside")
                        if v1 then
                            u193.Outdoors = v1:FindFirstChild("Outdoors")
                            if u193.Outdoors then
                                if not v3 then
                                    if v4 then
                                        print("Unload Outdoors")
                                    end
                                    if not (u358[u193.Outdoors.Name]) then
                                        u358[u193.Outdoors.Name] = u193.Outdoors.DescendantAdded:Connect(function(p1) -- Line: 2407 -- upvalues: DeltaFramework (upval), u193 (upval)
                                            if not p1 then
                                                return
                                            end
                                            local v1 = nil
                                            if p1:IsA("SurfaceGui") then
                                                v1 = true
                                            elseif p1:IsA("FaceInstance") then
                                                v1 = false
                                            end
                                            if v1 == nil then
                                                return
                                            end
                                            if v1 ~= true then
                                                local Entrance
                                                local Position = workspace.CurrentCamera.CFrame.Position
                                                if -324 >= Position.X then
                                                    Entrance = true
                                                    if Position.Z >= 370 then
                                                        Entrance = true
                                                        if 783 >= Position.Z then
                                                            Entrance = false
                                                            if -279 < Position.X then
                                                                Entrance = workspace:FindFirstChild("Entrance")
                                                                if Entrance then
                                                                    Entrance = workspace.Entrance:FindFirstChild("Outside Gate 4")
                                                                    if Entrance then
                                                                        Entrance = not DeltaFramework.CS:HasTag(workspace.Entrance["Outside Gate 4"], "Open")
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                else
                                                    Entrance = true
                                                    if Position.Z < 642 then end
                                                end
                                                local v2 = not Entrance
                                                if v1 == true then
                                                    if v2 then
                                                        p1:SetAttribute("LocalInvalid", true)
                                                        return
                                                    end
                                                    p1:SetAttribute("LocalInvalid", nil)
                                                    return
                                                end
                                                if not v2 then
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                end
                                                if not (p1:GetAttribute("q")) then
                                                    p1:SetAttribute("q", p1.Transparency)
                                                    p1.Transparency = 1
                                                    u193.Outdoors = true
                                                    return
                                                end
                                                if not v2 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            elseif not (p1:HasTag("SurfaceGui")) then
                                                return
                                            end
                                        end)
                                    end
                                    for i45, i452 in ipairs(u193.Outdoors:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if not (i452:IsA("FaceInstance")) then
                                            if i452:HasTag("SurfaceGui") then
                                                i452:SetAttribute("LocalInvalid", true)
                                            end
                                        elseif not (i452:GetAttribute("q")) then
                                            i452:SetAttribute("q", i452.Transparency)
                                            i452.Transparency = 1
                                        end
                                    end
                                    u193.Outdoors = true
                                else
                                    if v4 then
                                        print("Unload Outdoors")
                                    end
                                    u193.Outdoors.Parent = script
                                end
                                v5 = true
                            end
                        end
                    end
                elseif u234 == 3 then
                    v7 = if Position.Y < 70 then not u23:IsInLocation("CI Stairs", Position) else false
                    if not v7 then
                        if u193.CI and not v7 then
                            v8 = workspace:FindFirstChild("Chaos Insurgency")
                            if v8 then
                                if not v3 then
                                    v9 = v8:FindFirstChild("CI")
                                    if v9 then
                                        if v4 then
                                            print("Load CI")
                                        end
                                        for i31, i312 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if i312:IsA("FaceInstance") then
                                                v14 = i312:GetAttribute("q")
                                                if v14 then
                                                    i312.Transparency = v14
                                                    i312:SetAttribute("q", nil)
                                                end
                                            elseif i312:HasTag("SurfaceGui") then
                                                i312:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.CI = nil
                                    end
                                else
                                    if v4 then
                                        print("Load CI")
                                    end
                                    u193.CI.Parent = v8
                                    u193.CI = nil
                                end
                                if u193.CIMeshes then
                                    if not v3 then
                                        v9 = v8:FindFirstChild("CIMeshes")
                                        if v9 then
                                            if v4 then
                                                print("Load CIMeshes")
                                            end
                                            for i32, i322 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i322:IsA("FaceInstance") then
                                                    v14 = i322:GetAttribute("q")
                                                    if v14 then
                                                        i322.Transparency = v14
                                                        i322:SetAttribute("q", nil)
                                                    end
                                                elseif i322:HasTag("SurfaceGui") then
                                                    i322:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.CIMeshes = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load CIMeshes")
                                        end
                                        u193.CIMeshes.Parent = v8
                                        u193.CIMeshes = nil
                                    end
                                end
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.CI then
                        v8 = workspace:FindFirstChild("Chaos Insurgency")
                        if v8 then
                            u193.CI = v8:FindFirstChild("CI")
                            if u193.CI then
                                if not v3 then
                                    if v4 then
                                        print("Unload CI")
                                    end
                                    if not (u358[u193.CI.Name]) then
                                        u358[u193.CI.Name] = u193.CI.DescendantAdded:Connect(function(p1) -- Line: 2531 -- upvalues: u193 (upval)
                                            if not p1 then
                                                return
                                            end
                                            local v1 = nil
                                            if p1:IsA("SurfaceGui") then
                                                v1 = true
                                            elseif p1:IsA("FaceInstance") then
                                                v1 = false
                                            end
                                            if v1 == nil then
                                                return
                                            end
                                            if v1 ~= true then
                                                local v2 = workspace.CurrentCamera.CFrame.Position.Y < 70
                                                if v1 == true then
                                                    if v2 then
                                                        p1:SetAttribute("LocalInvalid", true)
                                                        return
                                                    end
                                                    p1:SetAttribute("LocalInvalid", nil)
                                                    return
                                                end
                                                if not v2 then
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                end
                                                if not (p1:GetAttribute("q")) then
                                                    p1:SetAttribute("q", p1.Transparency)
                                                    p1.Transparency = 1
                                                    u193.CI = true
                                                    return
                                                end
                                                if not v2 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            elseif not (p1:HasTag("SurfaceGui")) then
                                                return
                                            end
                                        end)
                                    end
                                    for i33, i332 in ipairs(u193.CI:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if not (i332:IsA("FaceInstance")) then
                                            if i332:HasTag("SurfaceGui") then
                                                i332:SetAttribute("LocalInvalid", true)
                                            end
                                        elseif not (i332:GetAttribute("q")) then
                                            i332:SetAttribute("q", i332.Transparency)
                                            i332.Transparency = 1
                                        end
                                    end
                                    u193.CI = true
                                else
                                    if v4 then
                                        print("Unload CI")
                                    end
                                    u193.CI.Parent = script
                                end
                                v5 = true
                            end
                            if not u193.CIMeshes then
                                u193.CIMeshes = v8:FindFirstChild("CIMeshes")
                                if u193.CIMeshes then
                                    if not v3 then
                                        if v4 then
                                            print("Unload CIMeshes")
                                        end
                                        if not (u358[u193.CIMeshes.Name]) then
                                            u358[u193.CIMeshes.Name] = u193.CIMeshes.DescendantAdded:Connect(function(p1) -- Line: 2605 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local v2 = workspace.CurrentCamera.CFrame.Position.Y < 70
                                                    if v1 == true then
                                                        if v2 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v2 then
                                                        if not v2 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.CIMeshes = true
                                                        return
                                                    end
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i34, i342 in ipairs(u193.CIMeshes:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i342:IsA("FaceInstance")) then
                                                if i342:HasTag("SurfaceGui") then
                                                    i342:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i342:GetAttribute("q")) then
                                                i342:SetAttribute("q", i342.Transparency)
                                                i342.Transparency = 1
                                            end
                                        end
                                        u193.CIMeshes = true
                                    else
                                        if v4 then
                                            print("Unload CIMeshes")
                                        end
                                        u193.CIMeshes.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                    end
                elseif u234 == 4 then
                    v7 = true
                    if 623 >= Position.X then
                        v7 = true
                        if Position.Z >= -412.656 then
                            if -42 >= Position.Z then
                                v7 = if Position.X < 14 then if Position.Z >= -292.781 then -231.781 < Position.Z else true else false
                            else
                                v7 = true
                                if Position.X < 178 then end
                            end
                        end
                    end
                    if not u4496 then
                        v7 = true
                    end
                    if not v7 then
                        v8 = if Position.X >= -65 then u23:IsInLocation("Security Department", Position) else true
                        v7 = v8
                    end
                    if not v7 then
                        if u193.CDC and not v7 then
                            v8 = workspace:FindFirstChild("Class - D Cells")
                            if v8 then
                                if not v3 then
                                    v9 = v8:FindFirstChild("Outer")
                                    if v9 then
                                        if v4 then
                                            print("Load CDC")
                                        end
                                        for i29, i292 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if i292:IsA("FaceInstance") then
                                                v14 = i292:GetAttribute("q")
                                                if v14 then
                                                    i292.Transparency = v14
                                                    i292:SetAttribute("q", nil)
                                                end
                                            elseif i292:HasTag("SurfaceGui") then
                                                i292:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.CDC = nil
                                    end
                                else
                                    if v4 then
                                        print("Load CDC")
                                    end
                                    u193.CDC.Parent = v8
                                    u193.CDC = nil
                                end
                            end
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.CDC then
                        v8 = workspace:FindFirstChild("Class - D Cells")
                        if v8 then
                            u193.CDC = v8:FindFirstChild("Outer")
                            if u193.CDC then
                                if not v3 then
                                    if v4 then
                                        print("Unload CDC")
                                    end
                                    if not (u358[u193.CDC.Name]) then
                                        u358[u193.CDC.Name] = u193.CDC.DescendantAdded:Connect(function(p1) -- Line: 2776 -- upvalues: u23 (upval), u193 (upval)
                                            if not p1 then
                                                return
                                            end
                                            local v1 = nil
                                            if p1:IsA("SurfaceGui") then
                                                v1 = true
                                            elseif p1:IsA("FaceInstance") then
                                                v1 = false
                                            end
                                            if v1 == nil then
                                                return
                                            end
                                            if v1 ~= true then
                                                local Position = workspace.CurrentCamera.CFrame.Position
                                                local v2 = true
                                                if 623 >= Position.X then
                                                    v2 = true
                                                    if Position.Z >= -412.656 then
                                                        if -42 >= Position.Z then
                                                            v2 = if Position.X < 14 then if Position.Z >= -292.781 then -231.781 < Position.Z else true else false
                                                        else
                                                            v2 = true
                                                            if Position.X < 178 then end
                                                        end
                                                    end
                                                end
                                                if not v2 then
                                                    local v3 = if Position.X >= -65 then u23:IsInLocation("Security Department", Position) else true
                                                    v2 = v3
                                                end
                                                if v1 == true then
                                                    if v2 then
                                                        p1:SetAttribute("LocalInvalid", true)
                                                        return
                                                    end
                                                    p1:SetAttribute("LocalInvalid", nil)
                                                    return
                                                end
                                                if not v2 then
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                end
                                                if not (p1:GetAttribute("q")) then
                                                    p1:SetAttribute("q", p1.Transparency)
                                                    p1.Transparency = 1
                                                    u193.CDC = true
                                                    return
                                                end
                                                if not v2 and p1:GetAttribute("q") then
                                                    p1.Transparency = p1:GetAttribute("q")
                                                    p1:SetAttribute("q", nil)
                                                end
                                                return
                                            elseif not (p1:HasTag("SurfaceGui")) then
                                                return
                                            end
                                        end)
                                    end
                                    for i30, i302 in ipairs(u193.CDC:QueryDescendants("FaceInstance,SurfaceGui")) do
                                        if not (i302:IsA("FaceInstance")) then
                                            if i302:HasTag("SurfaceGui") then
                                                i302:SetAttribute("LocalInvalid", true)
                                            end
                                        elseif not (i302:GetAttribute("q")) then
                                            i302:SetAttribute("q", i302.Transparency)
                                            i302.Transparency = 1
                                        end
                                    end
                                    u193.CDC = true
                                else
                                    if v4 then
                                        print("Unload CDC")
                                    end
                                    u193.CDC.Parent = script
                                end
                                v5 = true
                            end
                        end
                    end
                elseif u234 == 5 then
                    if not u4496 then
                        v8 = u23:IsInLocation("Medical Sector", Position)
                        if not v8 then
                            v8 = u23:IsInLocation("MonorailS2", Position)
                            if not v8 then
                                v8 = u23:IsInLocation("Decontamination", Position)
                                if not v8 then
                                    v8 = u23:IsInLocation("Breach Shelter", Position)
                                end
                            end
                        end
                        v7 = not v8
                    elseif -16 > Position.Z then
                        if Position.X >= -102 then
                            if Position.Z >= -871 then
                                if Position.Z >= -650 then
                                    if Position.X >= -203 then
                                        v7 = u23:IsInLocation("Transformers Room")
                                        if not v7 then end
                                    end
                                elseif -49 >= Position.X and Position.X < -103 then
                                end
                            end
                        elseif Position.Z >= -124 then
                            if Position.Z < -294 and -418 < Position.Z then end
                        elseif -232 < Position.Z then
                        end
                    end
                    if not v7 then
                        if u193.S2A then
                            if not v7 then
                                Z = workspace:FindFirstChild("Sector 2")
                                if Z then
                                    if u193.S2A then
                                        if not v3 then
                                            v9 = Z:FindFirstChild("SectionA")
                                            if v9 then
                                                if v4 then
                                                    print("Load S2A")
                                                end
                                                for i24, i232 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                    if i232:IsA("FaceInstance") then
                                                        v14 = i232:GetAttribute("q")
                                                        if v14 then
                                                            i232.Transparency = v14
                                                            i232:SetAttribute("q", nil)
                                                        end
                                                    elseif i232:HasTag("SurfaceGui") then
                                                        i232:SetAttribute("LocalInvalid", nil)
                                                    end
                                                end
                                                u193.S2A = nil
                                            end
                                        elseif type(u193.S2A) == "table" then
                                            if v4 then
                                                print("Load S2A")
                                            end
                                            local u3964 = table.clone(u193.S2A)
                                            u193.S2A = true
                                            task.spawn(function() -- Line: 3166 -- upvalues: u3964 (val), u168 (upval), Z (ref), u193 (upval)
                                                local v1
                                                local u108 = u3964[1]
                                                local v2 = 0
                                                local v3 = 0
                                                for i, v in ipairs(u108:GetChildren()) do
                                                    if v:IsA("Model") then
                                                        table.insert(u3964, v)
                                                        pcall(function() -- Line: 3176 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v2 = v2 + 1
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v2 then
                                                            v2 = 0
                                                            task.wait()
                                                        end
                                                    elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                                        table.insert(u3964, v)
                                                        pcall(function() -- Line: 3188 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v3 = v3 + 1
                                                        if 150 <= v3 then
                                                            v3 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                end
                                                local v4 = #u3964
                                                pcall(function() -- Line: 3202 -- upvalues: u108 (val), Z (upval)
                                                    u108.Parent = Z
                                                end)
                                                if 1 < v4 then
                                                    local v5 = 0
                                                    local v6 = v4
                                                    local v7 = 1
                                                    for i2 = 2, v6, v7 do
                                                        v5 = v5 + 1
                                                        pcall(function() -- Line: 3210 -- upvalues: u3964 (upval), i2 (val), u108 (val)
                                                            local v1 = u3964[i2]
                                                            v1.Parent = u108
                                                        end)
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v5 then
                                                            v5 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                    task.wait()
                                                end
                                                u193.S2A = nil
                                            end)
                                        end
                                    end
                                    if u193.S2AMeshes then
                                        if not v3 then
                                            Z = Z:FindFirstChild("SectionAMeshes")
                                            if Z then
                                                if v4 then
                                                    print("Unload S2AMeshes")
                                                end
                                                for i25, i242 in ipairs(Z:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                    if i242:IsA("FaceInstance") then
                                                        v13 = i242:GetAttribute("q")
                                                        if v13 then
                                                            i242.Transparency = v13
                                                            i242:SetAttribute("q", nil)
                                                        end
                                                    elseif i242:HasTag("SurfaceGui") then
                                                        i242:SetAttribute("LocalInvalid", nil)
                                                    end
                                                end
                                                u193.S2AMeshes = nil
                                            end
                                        elseif type(u193.S2AMeshes) == "table" then
                                            if v4 then
                                                print("Load S2AMeshes")
                                            end
                                            local u4038 = table.clone(u193.S2AMeshes)
                                            u193.S2AMeshes = true
                                            task.spawn(function() -- Line: 3264 -- upvalues: u4038 (val), u168 (upval), Z (ref), u193 (upval)
                                                local v1
                                                local u108 = u4038[1]
                                                local v2 = 0
                                                local v3 = 0
                                                for i, v in ipairs(u108:GetChildren()) do
                                                    if v:IsA("Model") then
                                                        table.insert(u4038, v)
                                                        pcall(function() -- Line: 3274 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v2 = v2 + 1
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v2 then
                                                            v2 = 0
                                                            task.wait()
                                                        end
                                                    elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                                        table.insert(u4038, v)
                                                        pcall(function() -- Line: 3286 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v3 = v3 + 1
                                                        if 150 <= v3 then
                                                            v3 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                end
                                                local v4 = #u4038
                                                pcall(function() -- Line: 3300 -- upvalues: u108 (val), Z (upval)
                                                    u108.Parent = Z
                                                end)
                                                if 1 < v4 then
                                                    local v5 = 0
                                                    local v6 = v4
                                                    local v7 = 1
                                                    for i2 = 2, v6, v7 do
                                                        v5 = v5 + 1
                                                        pcall(function() -- Line: 3308 -- upvalues: u4038 (upval), i2 (val), u108 (val)
                                                            local v1 = u4038[i2]
                                                            v1.Parent = u108
                                                        end)
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v5 then
                                                            v5 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                    task.wait()
                                                end
                                                u193.S2AMeshes = nil
                                            end)
                                        end
                                    end
                                end
                            end
                        elseif not u193.S2AMeshes then
                        end
                    elseif u355 and u377 == "Roleplay" and u457 <= 0 then
                        if not u193.S2A then
                            v8 = workspace:FindFirstChild("Sector 2")
                            if v8 then
                                if not u193.S2A then
                                    u193.S2A = v8:FindFirstChild("SectionA")
                                    if u193.S2A then
                                        if not v3 then
                                            if v4 then
                                                print("Unload S2A")
                                            end
                                            if not (u358[u193.S2A.Name]) then
                                                u358[u193.S2A.Name] = u193.S2A.DescendantAdded:Connect(function(p1) -- Line: 2957 -- upvalues: u4496 (val), u23 (upval), u193 (upval)
                                                    if not p1 then
                                                        return
                                                    end
                                                    local v1 = nil
                                                    if p1:IsA("SurfaceGui") then
                                                        v1 = true
                                                    elseif p1:IsA("FaceInstance") then
                                                        v1 = false
                                                    end
                                                    if v1 == nil then
                                                        return
                                                    end
                                                    if v1 ~= true then
                                                        local v2
                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                        if u4496 == false then
                                                            local v3 = u23:IsInLocation("Medical Sector", Position)
                                                            if not v3 then
                                                                v3 = u23:IsInLocation("MonorailS2", Position)
                                                                if not v3 then
                                                                    v3 = u23:IsInLocation("Decontamination", Position)
                                                                    if not v3 then
                                                                        v3 = u23:IsInLocation("Breach Shelter", Position)
                                                                    end
                                                                end
                                                            end
                                                            v2 = not v3
                                                        elseif -16 > Position.Z then
                                                            if Position.X >= -102 then
                                                                if Position.Z >= -871 then
                                                                    if Position.Z >= -650 then
                                                                        v2 = false
                                                                        if Position.X >= -203 then end
                                                                    elseif -49 >= Position.X and Position.X < -103 then
                                                                    end
                                                                end
                                                            elseif Position.Z >= -124 then
                                                                if Position.Z < -294 and -418 < Position.Z then end
                                                            elseif -232 < Position.Z then
                                                            end
                                                        end
                                                        local v4 = not v2
                                                        if v1 == true then
                                                            if v4 then
                                                                p1:SetAttribute("LocalInvalid", true)
                                                                return
                                                            end
                                                            p1:SetAttribute("LocalInvalid", nil)
                                                            return
                                                        end
                                                        if not v4 then
                                                            if not v4 and p1:GetAttribute("q") then
                                                                p1.Transparency = p1:GetAttribute("q")
                                                                p1:SetAttribute("q", nil)
                                                            end
                                                            return
                                                        end
                                                        if not (p1:GetAttribute("q")) then
                                                            p1:SetAttribute("q", p1.Transparency)
                                                            p1.Transparency = 1
                                                            u193.S2A = true
                                                            return
                                                        end
                                                        if not v4 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                        return
                                                    end
                                                end)
                                            end
                                            for i26, i252 in ipairs(u193.S2A:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if not (i252:IsA("FaceInstance")) then
                                                    if i252:HasTag("SurfaceGui") then
                                                        i252:SetAttribute("LocalInvalid", true)
                                                    end
                                                elseif not (i252:GetAttribute("q")) then
                                                    i252:SetAttribute("q", i252.Transparency)
                                                    i252.Transparency = 1
                                                end
                                            end
                                            u193.S2A = true
                                        else
                                            if v4 then
                                                print("Unload S2A")
                                            end
                                            v9 = u193.S2A
                                            u193.S2A = true
                                            v1 = {v9}
                                            v11 = v9:GetChildren()
                                            v12 = 0
                                            v2 = 0
                                            v13 = #v11
                                            v14 = 1
                                            for i262 = 1, v13, v14 do
                                                local u3581 = v11[i262]
                                                if u3581:IsA("Model") then
                                                    table.insert(v1, u3581)
                                                    pcall(function() -- Line: 2923 -- upvalues: u3581 (val)
                                                        u3581.Parent = script
                                                    end)
                                                    v12 = v12 + 1
                                                    if not u168 then
                                                        v18 = 10
                                                    else
                                                        v18 = 100
                                                    end
                                                    if v18 <= v12 then
                                                        v12 = 0
                                                        task.wait()
                                                    end
                                                elseif not (u3581:IsA("Folder")) and u3581:IsA("BasePart") then
                                                    table.insert(v1, u3581)
                                                    pcall(function() -- Line: 2935 -- upvalues: u3581 (val)
                                                        u3581.Parent = script
                                                    end)
                                                    v2 = v2 + 1
                                                    if 150 <= v2 then
                                                        v2 = 0
                                                        task.wait()
                                                    end
                                                end
                                            end
                                            task.wait()
                                            v1[1].Parent = script
                                            u193.S2A = v1
                                        end
                                        v5 = true
                                    end
                                end
                                if not u193.S2AMeshes then
                                    u193.S2AMeshes = v8:FindFirstChild("SectionAMeshes")
                                    if u193.S2AMeshes then
                                        if not v3 then
                                            if v4 then
                                                print("Unload S2AMeshes")
                                            end
                                            if not (u358[u193.S2AMeshes.Name]) then
                                                u358[u193.S2AMeshes.Name] = u193.S2AMeshes.DescendantAdded:Connect(function(p1) -- Line: 3084 -- upvalues: u4496 (val), u23 (upval), u193 (upval)
                                                    if not p1 then
                                                        return
                                                    end
                                                    local v1 = nil
                                                    if p1:IsA("SurfaceGui") then
                                                        v1 = true
                                                    elseif p1:IsA("FaceInstance") then
                                                        v1 = false
                                                    end
                                                    if v1 == nil then
                                                        return
                                                    end
                                                    if v1 ~= true then
                                                        local v2
                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                        if u4496 == false then
                                                            local v3 = u23:IsInLocation("Medical Sector", Position)
                                                            if not v3 then
                                                                v3 = u23:IsInLocation("MonorailS2", Position)
                                                                if not v3 then
                                                                    v3 = u23:IsInLocation("Decontamination", Position)
                                                                    if not v3 then
                                                                        v3 = u23:IsInLocation("Breach Shelter", Position)
                                                                    end
                                                                end
                                                            end
                                                            v2 = not v3
                                                        elseif -16 > Position.Z then
                                                            if Position.X >= -102 then
                                                                if Position.Z >= -871 then
                                                                    if Position.Z >= -650 then
                                                                        v2 = false
                                                                        if Position.X >= -203 then end
                                                                    elseif -49 >= Position.X and Position.X < -103 then
                                                                    end
                                                                end
                                                            elseif Position.Z >= -124 then
                                                                if Position.Z < -294 and -418 < Position.Z then end
                                                            elseif -232 < Position.Z then
                                                            end
                                                        end
                                                        local v4 = not v2
                                                        if v1 == true then
                                                            if v4 then
                                                                p1:SetAttribute("LocalInvalid", true)
                                                                return
                                                            end
                                                            p1:SetAttribute("LocalInvalid", nil)
                                                            return
                                                        end
                                                        if not v4 then
                                                            if not v4 and p1:GetAttribute("q") then
                                                                p1.Transparency = p1:GetAttribute("q")
                                                                p1:SetAttribute("q", nil)
                                                            end
                                                            return
                                                        end
                                                        if not (p1:GetAttribute("q")) then
                                                            p1:SetAttribute("q", p1.Transparency)
                                                            p1.Transparency = 1
                                                            u193.S2AMeshes = true
                                                            return
                                                        end
                                                        if not v4 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                        return
                                                    end
                                                end)
                                            end
                                            for i27, i272 in ipairs(u193.S2AMeshes:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if not (i272:IsA("FaceInstance")) then
                                                    if i272:HasTag("SurfaceGui") then
                                                        i272:SetAttribute("LocalInvalid", true)
                                                    end
                                                elseif not (i272:GetAttribute("q")) then
                                                    i272:SetAttribute("q", i272.Transparency)
                                                    i272.Transparency = 1
                                                end
                                            end
                                            u193.S2AMeshes = true
                                        else
                                            if v4 then
                                                print("Unload S2AMeshes")
                                            end
                                            v9 = u193.S2AMeshes
                                            u193.S2AMeshes = true
                                            v1 = {v9}
                                            v11 = v9:GetChildren()
                                            v12 = 0
                                            v2 = 0
                                            v13 = #v11
                                            v14 = 1
                                            for i28 = 1, v13, v14 do
                                                local u3789 = v11[i28]
                                                if u3789:IsA("Model") then
                                                    table.insert(v1, u3789)
                                                    pcall(function() -- Line: 3050 -- upvalues: u3789 (val)
                                                        u3789.Parent = script
                                                    end)
                                                    v12 = v12 + 1
                                                    if not u168 then
                                                        v18 = 10
                                                    else
                                                        v18 = 100
                                                    end
                                                    if v18 <= v12 then
                                                        v12 = 0
                                                        task.wait()
                                                    end
                                                elseif not (u3789:IsA("Folder")) and u3789:IsA("BasePart") then
                                                    table.insert(v1, u3789)
                                                    pcall(function() -- Line: 3062 -- upvalues: u3789 (val)
                                                        u3789.Parent = script
                                                    end)
                                                    v2 = v2 + 1
                                                    if 150 <= v2 then
                                                        v2 = 0
                                                        task.wait()
                                                    end
                                                end
                                            end
                                            task.wait()
                                            v1[1].Parent = script
                                            u193.S2AMeshes = v1
                                        end
                                        v5 = true
                                    end
                                end
                            end
                        elseif u193.S2AMeshes then
                        end
                    end
                else
                    local v19
                    if u234 == 6 then
                        if not u4496 then
                            Z = u23:IsInLocation("Transformers Room", Position)
                            v7 = not Z
                        else
                            Z = Position.Z
                            if 138 > Z then
                                Z = Position.X
                                if 13 >= Z then
                                    Z = Position.Z
                                    if Z >= -871 then
                                        Z = Position.Z
                                        if Z >= -650 then
                                            v7 = false
                                            Z = Position.X
                                            if 148 < Z then
                                                v7 = false
                                                Z = Position.Z
                                                if -466 >= Z then end
                                            end
                                        else
                                            Z = Position.X
                                            if -49 >= Z then
                                                Z = Position.X
                                                if Z < -103 then end
                                            end
                                        end
                                    end
                                else
                                    Z = Position.Z
                                    if Z >= -124 then
                                        Z = Position.Z
                                        if Z < -294 then
                                            Z = Position.Z
                                            if -418 < Z then end
                                        end
                                    else
                                        Z = Position.Z
                                        if -232 < Z then end
                                    end
                                end
                            end
                        end
                        if not v7 then
                            Z = u193.S2B
                            if not Z then
                                Z = u193.S2BMeshes
                                if not Z then end
                            elseif not v7 then
                                Z = workspace:FindFirstChild("Sector 2")
                                if Z then
                                    if u193.S2B then
                                        if not v3 then
                                            v9 = Z:FindFirstChild("SectionB")
                                            if v9 then
                                                if v4 then
                                                    print("Load S2B")
                                                end
                                                for i14, i112 in ipairs(v9:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                    if i112:IsA("FaceInstance") then
                                                        v14 = i112:GetAttribute("q")
                                                        if v14 then
                                                            i112.Transparency = v14
                                                            i112:SetAttribute("q", nil)
                                                        end
                                                    elseif i112:HasTag("SurfaceGui") then
                                                        i112:SetAttribute("LocalInvalid", nil)
                                                    end
                                                end
                                                u193.S2B = nil
                                            end
                                        elseif type(u193.S2B) == "table" then
                                            if v4 then
                                                print("Load S2B")
                                            end
                                            local u4573 = table.clone(u193.S2B)
                                            u193.S2B = true
                                            task.spawn(function() -- Line: 3639 -- upvalues: u4573 (val), u168 (upval), Z (ref), u193 (upval)
                                                local v1
                                                local u108 = u4573[1]
                                                local v2 = 0
                                                local v3 = 0
                                                for i, v in ipairs(u108:GetChildren()) do
                                                    if v:IsA("Model") then
                                                        table.insert(u4573, v)
                                                        pcall(function() -- Line: 3649 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v2 = v2 + 1
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v2 then
                                                            v2 = 0
                                                            task.wait()
                                                        end
                                                    elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                                        table.insert(u4573, v)
                                                        pcall(function() -- Line: 3661 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v3 = v3 + 1
                                                        if 150 <= v3 then
                                                            v3 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                end
                                                local v4 = #u4573
                                                pcall(function() -- Line: 3675 -- upvalues: u108 (val), Z (upval)
                                                    u108.Parent = Z
                                                end)
                                                if 1 < v4 then
                                                    local v5 = 0
                                                    local v6 = v4
                                                    local v7 = 1
                                                    for i2 = 2, v6, v7 do
                                                        v5 = v5 + 1
                                                        pcall(function() -- Line: 3683 -- upvalues: u4573 (upval), i2 (val), u108 (val)
                                                            local v1 = u4573[i2]
                                                            v1.Parent = u108
                                                        end)
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v5 then
                                                            v5 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                    task.wait()
                                                end
                                                u193.S2B = nil
                                            end)
                                        end
                                    end
                                    if u193.S2BMeshes then
                                        if not v3 then
                                            Z = Z:FindFirstChild("SectionBMeshes")
                                            if Z then
                                                if v4 then
                                                    print("Load S2BMeshes")
                                                end
                                                for i15, i122 in ipairs(Z:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                    if i122:IsA("FaceInstance") then
                                                        v13 = i122:GetAttribute("q")
                                                        if v13 then
                                                            i122.Transparency = v13
                                                            i122:SetAttribute("q", nil)
                                                        end
                                                    elseif i122:HasTag("SurfaceGui") then
                                                        i122:SetAttribute("LocalInvalid", nil)
                                                    end
                                                end
                                                u193.S2BMeshes = nil
                                            end
                                        elseif type(u193.S2BMeshes) == "table" then
                                            if v4 then
                                                print("Load S2BMeshes")
                                            end
                                            local u4647 = table.clone(u193.S2BMeshes)
                                            u193.S2BMeshes = true
                                            task.spawn(function() -- Line: 3737 -- upvalues: u4647 (val), u168 (upval), Z (ref), u193 (upval)
                                                local v1
                                                local u108 = u4647[1]
                                                local v2 = 0
                                                local v3 = 0
                                                for i, v in ipairs(u108:GetChildren()) do
                                                    if v:IsA("Model") then
                                                        table.insert(u4647, v)
                                                        pcall(function() -- Line: 3747 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v2 = v2 + 1
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v2 then
                                                            v2 = 0
                                                            task.wait()
                                                        end
                                                    elseif not (v:IsA("Folder")) and v:IsA("BasePart") then
                                                        table.insert(u4647, v)
                                                        pcall(function() -- Line: 3759 -- upvalues: v (val)
                                                            v.Parent = script
                                                        end)
                                                        v3 = v3 + 1
                                                        if 150 <= v3 then
                                                            v3 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                end
                                                local v4 = #u4647
                                                pcall(function() -- Line: 3773 -- upvalues: u108 (val), Z (upval)
                                                    u108.Parent = Z
                                                end)
                                                if 1 < v4 then
                                                    local v5 = 0
                                                    local v6 = v4
                                                    local v7 = 1
                                                    for i2 = 2, v6, v7 do
                                                        v5 = v5 + 1
                                                        pcall(function() -- Line: 3781 -- upvalues: u4647 (upval), i2 (val), u108 (val)
                                                            local v1 = u4647[i2]
                                                            v1.Parent = u108
                                                        end)
                                                        if not u168 then
                                                            v1 = 10
                                                        else
                                                            v1 = 100
                                                        end
                                                        if v1 <= v5 then
                                                            v5 = 0
                                                            task.wait()
                                                        end
                                                    end
                                                    task.wait()
                                                end
                                                u193.S2BMeshes = nil
                                            end)
                                        end
                                    end
                                end
                            end
                        else
                            Z = u355
                            if Z then
                                Z = u377
                                if Z == "Roleplay" then
                                    Z = u457
                                    if Z <= 0 then
                                        Z = u193.S2B
                                        if not Z then
                                            Z = workspace:FindFirstChild("Sector 2")
                                            if Z then
                                                if not u193.S2B then
                                                    v9 = Z:FindFirstChild("SectionB")
                                                    if v9 then
                                                        if not v3 then
                                                            if v4 then
                                                                print("Unload S2B")
                                                            end
                                                            u193.S2B = v9
                                                            if not (u358[u193.S2B.Name]) then
                                                                u358[u193.S2B.Name] = u193.S2B.DescendantAdded:Connect(function(p1) -- Line: 3432 -- upvalues: u4496 (val), u193 (upval)
                                                                    if not p1 then
                                                                        return
                                                                    end
                                                                    local v1 = nil
                                                                    if p1:IsA("SurfaceGui") then
                                                                        v1 = true
                                                                    elseif p1:IsA("FaceInstance") then
                                                                        v1 = false
                                                                    end
                                                                    if v1 == nil then
                                                                        return
                                                                    end
                                                                    if v1 ~= true then
                                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                                        local v2 = true
                                                                        if u4496 ~= false then
                                                                            v2 = true
                                                                            if 123 > Position.Z then
                                                                                if 13 >= Position.X then
                                                                                    v2 = true
                                                                                    if Position.Z >= -871 then
                                                                                        if Position.Z >= -650 then
                                                                                            v2 = 72 < Position.X
                                                                                        else
                                                                                            v2 = true
                                                                                            if -49 >= Position.X then
                                                                                                v2 = true
                                                                                                if Position.X < -103 then end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                elseif Position.Z < -124 then
                                                                                    v2 = true
                                                                                    if -232 < Position.Z then end
                                                                                elseif Position.Z < -294 then
                                                                                    v2 = true
                                                                                    if -418 < Position.Z then end
                                                                                end
                                                                            end
                                                                        end
                                                                        local v3 = not v2
                                                                        if v1 == true then
                                                                            if v3 then
                                                                                p1:SetAttribute("LocalInvalid", true)
                                                                                return
                                                                            end
                                                                            p1:SetAttribute("LocalInvalid", nil)
                                                                            return
                                                                        end
                                                                        if not v3 then
                                                                            if not v3 and p1:GetAttribute("q") then
                                                                                p1.Transparency = p1:GetAttribute("q")
                                                                                p1:SetAttribute("q", nil)
                                                                            end
                                                                            return
                                                                        end
                                                                        if not (p1:GetAttribute("q")) then
                                                                            p1:SetAttribute("q", p1.Transparency)
                                                                            p1.Transparency = 1
                                                                            u193.S2B = true
                                                                            return
                                                                        end
                                                                        if not v3 and p1:GetAttribute("q") then
                                                                            p1.Transparency = p1:GetAttribute("q")
                                                                            p1:SetAttribute("q", nil)
                                                                        end
                                                                        return
                                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                                        return
                                                                    end
                                                                end)
                                                            end
                                                            for i16, i132 in ipairs(u193.S2B:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                                if not (i132:IsA("FaceInstance")) then
                                                                    if i132:HasTag("SurfaceGui") then
                                                                        i132:SetAttribute("LocalInvalid", true)
                                                                    end
                                                                elseif not (i132:GetAttribute("q")) then
                                                                    i132:SetAttribute("q", i132.Transparency)
                                                                    i132.Transparency = 1
                                                                end
                                                            end
                                                            u193.S2B = true
                                                        else
                                                            if v4 then
                                                                print("Unload S2B")
                                                            end
                                                            v1 = v9
                                                            u193.S2B = true
                                                            v11 = {v1}
                                                            v12 = v1:GetChildren()
                                                            v2 = 0
                                                            v13 = 0
                                                            v14 = #v12
                                                            v15 = 1
                                                            for i142 = 1, v14, v15 do
                                                                local u4189 = v12[i142]
                                                                if u4189:IsA("Model") then
                                                                    table.insert(v11, u4189)
                                                                    pcall(function() -- Line: 3396 -- upvalues: u4189 (val)
                                                                        u4189.Parent = script
                                                                    end)
                                                                    v2 = v2 + 1
                                                                    if not u168 then
                                                                        v19 = 10
                                                                    else
                                                                        v19 = 100
                                                                    end
                                                                    if v19 <= v2 then
                                                                        v2 = 0
                                                                        task.wait()
                                                                    end
                                                                elseif not (u4189:IsA("Folder")) and u4189:IsA("BasePart") then
                                                                    table.insert(v11, u4189)
                                                                    pcall(function() -- Line: 3408 -- upvalues: u4189 (val)
                                                                        u4189.Parent = script
                                                                    end)
                                                                    v13 = v13 + 1
                                                                    if 150 <= v13 then
                                                                        v13 = 0
                                                                        task.wait()
                                                                    end
                                                                end
                                                            end
                                                            task.wait()
                                                            v11[1].Parent = script
                                                            u193.S2B = v11
                                                        end
                                                        v5 = true
                                                    end
                                                end
                                                if not u193.S2BMeshes then
                                                    u193.S2BMeshes = Z:FindFirstChild("SectionBMeshes")
                                                    if u193.S2BMeshes then
                                                        if not v3 then
                                                            if v4 then
                                                                print("Unload S2BMeshes")
                                                            end
                                                            if not (u358[u193.S2BMeshes.Name]) then
                                                                u358[u193.S2BMeshes.Name] = u193.S2BMeshes.DescendantAdded:Connect(function(p1) -- Line: 3558 -- upvalues: u4496 (val), u193 (upval)
                                                                    if not p1 then
                                                                        return
                                                                    end
                                                                    local v1 = nil
                                                                    if p1:IsA("SurfaceGui") then
                                                                        v1 = true
                                                                    elseif p1:IsA("FaceInstance") then
                                                                        v1 = false
                                                                    end
                                                                    if v1 == nil then
                                                                        return
                                                                    end
                                                                    if v1 ~= true then
                                                                        local Position = workspace.CurrentCamera.CFrame.Position
                                                                        local v2 = true
                                                                        if u4496 ~= false then
                                                                            v2 = true
                                                                            if 123 > Position.Z then
                                                                                if 13 >= Position.X then
                                                                                    v2 = true
                                                                                    if Position.Z >= -871 then
                                                                                        if Position.Z >= -650 then
                                                                                            v2 = 72 < Position.X
                                                                                        else
                                                                                            v2 = true
                                                                                            if -49 >= Position.X then
                                                                                                v2 = true
                                                                                                if Position.X < -103 then end
                                                                                            end
                                                                                        end
                                                                                    end
                                                                                elseif Position.Z < -124 then
                                                                                    v2 = true
                                                                                    if -232 < Position.Z then end
                                                                                elseif Position.Z < -294 then
                                                                                    v2 = true
                                                                                    if -418 < Position.Z then end
                                                                                end
                                                                            end
                                                                        end
                                                                        local v3 = not v2
                                                                        if v1 == true then
                                                                            if v3 then
                                                                                p1:SetAttribute("LocalInvalid", true)
                                                                                return
                                                                            end
                                                                            p1:SetAttribute("LocalInvalid", nil)
                                                                            return
                                                                        end
                                                                        if not v3 then
                                                                            if not v3 and p1:GetAttribute("q") then
                                                                                p1.Transparency = p1:GetAttribute("q")
                                                                                p1:SetAttribute("q", nil)
                                                                            end
                                                                            return
                                                                        end
                                                                        if not (p1:GetAttribute("q")) then
                                                                            p1:SetAttribute("q", p1.Transparency)
                                                                            p1.Transparency = 1
                                                                            u193.S2BMeshes = true
                                                                            return
                                                                        end
                                                                        if not v3 and p1:GetAttribute("q") then
                                                                            p1.Transparency = p1:GetAttribute("q")
                                                                            p1:SetAttribute("q", nil)
                                                                        end
                                                                        return
                                                                    elseif not (p1:HasTag("SurfaceGui")) then
                                                                        return
                                                                    end
                                                                end)
                                                            end
                                                            for i17, i152 in ipairs(u193.S2BMeshes:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                                if not (i152:IsA("FaceInstance")) then
                                                                    if i152:HasTag("SurfaceGui") then
                                                                        i152:SetAttribute("LocalInvalid", true)
                                                                    end
                                                                elseif not (i152:GetAttribute("q")) then
                                                                    i152:SetAttribute("q", i152.Transparency)
                                                                    i152.Transparency = 1
                                                                end
                                                            end
                                                            u193.S2BMeshes = true
                                                        else
                                                            if v4 then
                                                                print("Unload S2BMeshes")
                                                            end
                                                            v1 = u193.S2BMeshes
                                                            u193.S2BMeshes = true
                                                            v11 = {v1}
                                                            v12 = v1:GetChildren()
                                                            v2 = 0
                                                            v13 = 0
                                                            v14 = #v12
                                                            v15 = 1
                                                            for i162 = 1, v14, v15 do
                                                                local u4398 = v12[i162]
                                                                if u4398:IsA("Model") then
                                                                    table.insert(v11, u4398)
                                                                    pcall(function() -- Line: 3524 -- upvalues: u4398 (val)
                                                                        u4398.Parent = script
                                                                    end)
                                                                    v2 = v2 + 1
                                                                    if not u168 then
                                                                        v19 = 10
                                                                    else
                                                                        v19 = 100
                                                                    end
                                                                    if v19 <= v2 then
                                                                        v2 = 0
                                                                        task.wait()
                                                                    end
                                                                elseif not (u4398:IsA("Folder")) and u4398:IsA("BasePart") then
                                                                    table.insert(v11, u4398)
                                                                    pcall(function() -- Line: 3536 -- upvalues: u4398 (val)
                                                                        u4398.Parent = script
                                                                    end)
                                                                    v13 = v13 + 1
                                                                    if 150 <= v13 then
                                                                        v13 = 0
                                                                        task.wait()
                                                                    end
                                                                end
                                                            end
                                                            task.wait()
                                                            v11[1].Parent = script
                                                            u193.S2BMeshes = v11
                                                        end
                                                        v5 = true
                                                    end
                                                end
                                            end
                                        else
                                            Z = u193.S2BMeshes
                                        end
                                    end
                                end
                            end
                        end
                        Z = true
                        if Position.Z >= -111 then
                            Z = true
                            if 114 >= Position.Z then
                                Z = true
                                if 153 >= Position.X then
                                    Z = true
                                    if Position.X >= -54 then
                                        Z = false
                                        if 90 < Position.Z then
                                            Z = Position.X < 22
                                        end
                                    end
                                end
                            end
                        end
                        v9 = if Position.Y >= -25 then if Position.Z >= -90 then if Position.X >= -60 then if 16 < Position.Z then if Position.X < -9 then -21 < Position.Y else false else false else true else true else true
                        v1 = -21 < Position.Y
                        if not v9 then
                            if u193.MSF1 and not v9 then
                                v11 = workspace:FindFirstChild("Medical Sector")
                                if v11 then
                                    if not v3 then
                                        v12 = v11:FindFirstChild("Floor 1")
                                        if v12 then
                                            if v4 then
                                                print("Load MSF1")
                                            end
                                            for i18, i172 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i172:IsA("FaceInstance") then
                                                    v18 = i172:GetAttribute("q")
                                                    if v18 then
                                                        i172.Transparency = v18
                                                        i172:SetAttribute("q", nil)
                                                    end
                                                elseif i172:HasTag("SurfaceGui") then
                                                    i172:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.MSF1 = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load MSF1")
                                        end
                                        u193.MSF1.Parent = v11
                                        u193.MSF1 = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.MSF1 then
                            v11 = workspace:FindFirstChild("Medical Sector")
                            if v11 then
                                v12 = v11:FindFirstChild("Floor 1")
                                if v12 then
                                    if not v3 then
                                        if v4 then
                                            print("Unload MSF1")
                                        end
                                        if not (u358[v12.Name]) then
                                            u358[v12.Name] = v12.DescendantAdded:Connect(function(p1) -- Line: 3857 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = true
                                                    if Position.Y >= -25 then
                                                        v2 = true
                                                        if Position.Z >= -111 then
                                                            v2 = true
                                                            if 114 >= Position.Z then
                                                                v2 = true
                                                                if 153 >= Position.X then
                                                                    v2 = true
                                                                    if Position.X >= -54 then
                                                                        if 16 >= Position.Z then
                                                                            v2 = if 90 < Position.Z then Position.X < 22 else false
                                                                        elseif Position.X < -9 then
                                                                            v2 = true
                                                                            if -25 < Position.Y then end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                    local v3 = not v2
                                                    if v1 == true then
                                                        if v3 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v3 then
                                                        if not v3 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.MSF1 = true
                                                        return
                                                    end
                                                    if not v3 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i19, i182 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i182:IsA("FaceInstance")) then
                                                if i182:HasTag("SurfaceGui") then
                                                    i182:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i182:GetAttribute("q")) then
                                                i182:SetAttribute("q", i182.Transparency)
                                                i182.Transparency = 1
                                            end
                                        end
                                        u193.MSF1 = true
                                    else
                                        if v4 then
                                            print("Unload MSF1")
                                        end
                                        u193.MSF1 = v12
                                        u193.MSF1.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                        if not v1 then
                            if u193.MSF2 and not v1 then
                                v11 = workspace:FindFirstChild("Medical Sector")
                                if v11 then
                                    if not v3 then
                                        v12 = v11:FindFirstChild("Floor 2")
                                        if v12 then
                                            if v4 then
                                                print("Load MSF2")
                                            end
                                            for i20, i192 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i192:IsA("FaceInstance") then
                                                    v18 = i192:GetAttribute("q")
                                                    if v18 then
                                                        i192.Transparency = v18
                                                        i192:SetAttribute("q", nil)
                                                    end
                                                elseif i192:HasTag("SurfaceGui") then
                                                    i192:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.MSF2 = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load MSF2")
                                        end
                                        u193.MSF2.Parent = v11
                                        u193.MSF2 = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.MSF2 then
                            v11 = workspace:FindFirstChild("Medical Sector")
                            if v11 then
                                v12 = v11:FindFirstChild("Floor 2")
                                if v12 then
                                    if not v3 then
                                        if v4 then
                                            print("Unload MSF2")
                                        end
                                        if not (u358[v12.Name]) then
                                            u358[v12.Name] = v12.DescendantAdded:Connect(function(p1) -- Line: 3984 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = true
                                                    if -25 >= Position.Y then
                                                        v2 = true
                                                        if Position.Z >= -111 then
                                                            v2 = true
                                                            if 114 >= Position.Z then
                                                                v2 = true
                                                                if 153 >= Position.X then
                                                                    v2 = true
                                                                    if Position.X >= -54 then
                                                                        if 16 >= Position.Z then
                                                                            v2 = if 90 < Position.Z then Position.X < 22 else false
                                                                        elseif Position.X < -9 then
                                                                            v2 = true
                                                                            if -25 < Position.Y then end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                    local v3 = not v2
                                                    if v1 == true then
                                                        if v3 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v3 then
                                                        if not v3 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.MSF2 = true
                                                        return
                                                    end
                                                    if not v3 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i21, i202 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i202:IsA("FaceInstance")) then
                                                if i202:HasTag("SurfaceGui") then
                                                    i202:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i202:GetAttribute("q")) then
                                                i202:SetAttribute("q", i202.Transparency)
                                                i202.Transparency = 1
                                            end
                                        end
                                        u193.MSF2 = true
                                    else
                                        if v4 then
                                            print("Unload MSF2")
                                        end
                                        u193.MSF2 = v12
                                        u193.MSF2.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                        if not Z then
                            if u193.MSS and not Z then
                                v11 = workspace:FindFirstChild("Medical Sector")
                                if v11 then
                                    if not v3 then
                                        v12 = v11:FindFirstChild("Staircase")
                                        if v12 then
                                            if v4 then
                                                print("Load MSS")
                                            end
                                            for i22, i212 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i212:IsA("FaceInstance") then
                                                    v18 = i212:GetAttribute("q")
                                                    if v18 then
                                                        i212.Transparency = v18
                                                        i212:SetAttribute("q", nil)
                                                    end
                                                elseif i212:HasTag("SurfaceGui") then
                                                    i212:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.MSS = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load MSS")
                                        end
                                        u193.MSS.Parent = v11
                                        u193.MSS = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.MSS then
                            v11 = workspace:FindFirstChild("Medical Sector")
                            if v11 then
                                v12 = v11:FindFirstChild("Staircase")
                                if v12 then
                                    if not v3 then
                                        if v4 then
                                            print("Unload MSS")
                                        end
                                        if not (u358[v12.Name]) then
                                            u358[v12.Name] = v12.DescendantAdded:Connect(function(p1) -- Line: 4111 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = true
                                                    if Position.Z >= -111 then
                                                        v2 = true
                                                        if 114 >= Position.Z then
                                                            v2 = true
                                                            if 153 >= Position.X then
                                                                v2 = true
                                                                if Position.X >= -54 then
                                                                    if 16 >= Position.Z then
                                                                        v2 = if 90 < Position.Z then Position.X < 22 else false
                                                                    elseif Position.X < -9 then
                                                                        v2 = true
                                                                        if -25 < Position.Y then end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                    local v3 = not v2
                                                    if v1 == true then
                                                        if v3 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v3 then
                                                        if not v3 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.MSS = true
                                                        return
                                                    end
                                                    if not v3 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i23, i222 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i222:IsA("FaceInstance")) then
                                                if i222:HasTag("SurfaceGui") then
                                                    i222:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i222:GetAttribute("q")) then
                                                i222:SetAttribute("q", i222.Transparency)
                                                i222.Transparency = 1
                                            end
                                        end
                                        u193.MSS = true
                                    else
                                        if v4 then
                                            print("Unload MSS")
                                        end
                                        u193.MSS = v12
                                        u193.MSS.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                    elseif u234 == 7 then
                        Z = u23:IsInLocation("SCP-682", Position)
                        v7 = not Z
                        if not v7 then
                            Z = u193.SCP682CC
                            if Z and not v7 then
                                if not v3 then
                                    Z = workspace:FindFirstChild("SCP682CC")
                                    if Z then
                                        if v4 then
                                            print("Load SCP682CC")
                                        end
                                        for i4, j in ipairs(Z:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if j:IsA("FaceInstance") then
                                                v13 = j:GetAttribute("q")
                                                if v13 then
                                                    j.Transparency = v13
                                                    j:SetAttribute("q", nil)
                                                end
                                            elseif j:HasTag("SurfaceGui") then
                                                j:SetAttribute("LocalInvalid", nil)
                                            end
                                        end
                                        u193.SCP682CC = nil
                                    end
                                else
                                    if v4 then
                                        print("Load SCP682CC")
                                    end
                                    Z = u193.SCP682CC
                                    Z.Parent = workspace
                                    Z = u193
                                    Z.SCP682CC = nil
                                end
                            end
                        else
                            Z = u355
                            if Z then
                                Z = u377
                                if Z == "Roleplay" then
                                    Z = u457
                                    if Z <= 0 then
                                        Z = u193.SCP682CC
                                        if not Z then
                                            Z = u193
                                            Z.SCP682CC = workspace:FindFirstChild("SCP682CC")
                                            Z = u193.SCP682CC
                                            if Z then
                                                if not v3 then
                                                    if v4 then
                                                        print("Unload SCP682CC")
                                                    end
                                                    Z = u358[u193.SCP682CC.Name]
                                                    if not Z then
                                                        Z = u358
                                                        Z[u193.SCP682CC.Name] = u193.SCP682CC.DescendantAdded:Connect(function(p1) -- Line: 4234 -- upvalues: u23 (upval), u193 (upval)
                                                            if not p1 then
                                                                return
                                                            end
                                                            local v1 = nil
                                                            if p1:IsA("SurfaceGui") then
                                                                v1 = true
                                                            elseif p1:IsA("FaceInstance") then
                                                                v1 = false
                                                            end
                                                            if v1 == nil then
                                                                return
                                                            end
                                                            if v1 ~= true then
                                                                local v2 = not u23:IsInLocation("SCP-682", workspace.CurrentCamera.CFrame.Position)
                                                                if v1 == true then
                                                                    if v2 then
                                                                        p1:SetAttribute("LocalInvalid", true)
                                                                        return
                                                                    end
                                                                    p1:SetAttribute("LocalInvalid", nil)
                                                                    return
                                                                end
                                                                if not v2 then
                                                                    if not v2 and p1:GetAttribute("q") then
                                                                        p1.Transparency = p1:GetAttribute("q")
                                                                        p1:SetAttribute("q", nil)
                                                                    end
                                                                    return
                                                                end
                                                                if not (p1:GetAttribute("q")) then
                                                                    p1:SetAttribute("q", p1.Transparency)
                                                                    p1.Transparency = 1
                                                                    u193.MSS = true
                                                                    return
                                                                end
                                                                if not v2 and p1:GetAttribute("q") then
                                                                    p1.Transparency = p1:GetAttribute("q")
                                                                    p1:SetAttribute("q", nil)
                                                                end
                                                                return
                                                            elseif not (p1:HasTag("SurfaceGui")) then
                                                                return
                                                            end
                                                        end)
                                                    end
                                                    Z, v9, v1 = ipairs(u193.SCP682CC:QueryDescendants("FaceInstance,SurfaceGui"))
                                                    for i5, k in Z(u193.SCP682CC:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                        if not (k:IsA("FaceInstance")) then
                                                            if k:HasTag("SurfaceGui") then
                                                                k:SetAttribute("LocalInvalid", true)
                                                            end
                                                        elseif not (k:GetAttribute("q")) then
                                                            k:SetAttribute("q", k.Transparency)
                                                            k.Transparency = 1
                                                        end
                                                    end
                                                    Z = u193
                                                    Z.SCP682CC = true
                                                else
                                                    if v4 then
                                                        print("Unload SCP682CC")
                                                    end
                                                    Z = u193.SCP682CC
                                                    Z.Parent = script
                                                end
                                                v5 = true
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        Z = true
                        if 623 >= Position.X then
                            if Position.X < 215 then
                                Z = true
                                if Position.Z < -346 then end
                            elseif Position.X >= 178 then
                                Z = true
                                if Position.X >= 14 then
                                    Z = Position.Z < -412.656
                                end
                            else
                                Z = true
                                if -190 < Position.Z then end
                            end
                        end
                        if not u4496 then
                            Z = true
                        end
                        if not Z then
                            if u193.CDCInner and not Z then
                                v9 = workspace:FindFirstChild("Class - D Cells")
                                if v9 then
                                    if not v3 then
                                        v1 = v9:FindFirstChild("Inner")
                                        if v1 then
                                            if v4 then
                                                print("Load CDCInner")
                                            end
                                            for i6, n in ipairs(v1:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if n:IsA("FaceInstance") then
                                                    v15 = n:GetAttribute("q")
                                                    if v15 then
                                                        n.Transparency = v15
                                                        n:SetAttribute("q", nil)
                                                    end
                                                elseif n:HasTag("SurfaceGui") then
                                                    n:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.CDCInner = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load CDCInner")
                                        end
                                        u193.CDCInner.Parent = v9
                                        u193.CDCInner = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.CDCInner then
                            v9 = workspace:FindFirstChild("Class - D Cells")
                            if v9 then
                                u193.CDCInner = v9:FindFirstChild("Inner")
                                if u193.CDCInner then
                                    if not v3 then
                                        if v4 then
                                            print("Unload CDCInner")
                                        end
                                        if not (u358[u193.CDCInner.Name]) then
                                            u358[u193.CDCInner.Name] = u193.CDCInner.DescendantAdded:Connect(function(p1) -- Line: 4358 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = true
                                                    if 623 >= Position.X then
                                                        if Position.X < 215 then
                                                            v2 = true
                                                            if Position.Z < -330 then end
                                                        elseif Position.X >= 178 then
                                                            v2 = if Position.X >= 14 then Position.Z < -412.656 else true
                                                        else
                                                            v2 = true
                                                            if -190 < Position.Z then end
                                                        end
                                                    end
                                                    if v1 == true then
                                                        if v2 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v2 then
                                                        if not v2 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.CDCInner = true
                                                        return
                                                    end
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i7, m in ipairs(u193.CDCInner:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (m:IsA("FaceInstance")) then
                                                if m:HasTag("SurfaceGui") then
                                                    m:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (m:GetAttribute("q")) then
                                                m:SetAttribute("q", m.Transparency)
                                                m.Transparency = 1
                                            end
                                        end
                                        u193.CDCInner = true
                                    else
                                        if v4 then
                                            print("Unload CDCInner")
                                        end
                                        u193.CDCInner.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                        v9 = if -252 >= Position.X then if -900 >= Position.Z then if Position.Z >= -1188 then Position.X < -518 else true else true else true
                        if not u4496 then
                            v9 = true
                        end
                        if not v9 then
                            if u193.S3SCP106CC and not v9 then
                                v1 = workspace:FindFirstChild("Sector 3")
                                if v1 then
                                    if not v3 then
                                        v11 = v1:FindFirstChild("SCP-106 CC")
                                        if v11 then
                                            if v4 then
                                                print("Load S3SCP106CC")
                                            end
                                            for i8, i52 in ipairs(v11:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i52:IsA("FaceInstance") then
                                                    v16 = i52:GetAttribute("q")
                                                    if v16 then
                                                        i52.Transparency = v16
                                                        i52:SetAttribute("q", nil)
                                                    end
                                                elseif i52:HasTag("SurfaceGui") then
                                                    i52:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.S3SCP106CC = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load S3SCP106CC")
                                        end
                                        u193.S3SCP106CC.Parent = v1
                                        u193.S3SCP106CC = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.S3SCP106CC then
                            v1 = workspace:FindFirstChild("Sector 3")
                            if v1 then
                                u193.S3SCP106CC = v1:FindFirstChild("SCP-106 CC")
                                if u193.S3SCP106CC then
                                    if not v3 then
                                        if v4 then
                                            print("Unload S3SCP106CC")
                                        end
                                        if not (u358[u193.S3SCP106CC.Name]) then
                                            u358[u193.S3SCP106CC.Name] = u193.S3SCP106CC.DescendantAdded:Connect(function(p1) -- Line: 4490 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = if -252 >= Position.X then if -900 >= Position.Z then if Position.Z >= -1188 then Position.X < -518 else true else true else true
                                                    if v1 == true then
                                                        if v2 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v2 then
                                                        if not v2 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.S3SCP106CC = true
                                                        return
                                                    end
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i9, i62 in ipairs(u193.S3SCP106CC:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i62:IsA("FaceInstance")) then
                                                if i62:HasTag("SurfaceGui") then
                                                    i62:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i62:GetAttribute("q")) then
                                                i62:SetAttribute("q", i62.Transparency)
                                                i62.Transparency = 1
                                            end
                                        end
                                        u193.S3SCP106CC = true
                                    else
                                        if v4 then
                                            print("Unload S3SCP106CC")
                                        end
                                        u193.S3SCP106CC.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                        v1 = if -3.65 >= Position.Y then if Position.Z >= -1125 then if -710 >= Position.Z then -20 < Position.X else true else true else true
                        if not u4496 then
                            v1 = true
                        end
                        if not v1 then
                            if u193.S3SCP939CC and not v1 then
                                v11 = workspace:FindFirstChild("Sector 3")
                                if v11 then
                                    if not v3 then
                                        v12 = v11:FindFirstChild("SCP-939 CC")
                                        if v12 then
                                            if v4 then
                                                print("Load S3SCP939CC")
                                            end
                                            for i10, i72 in ipairs(v12:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i72:IsA("FaceInstance") then
                                                    v18 = i72:GetAttribute("q")
                                                    if v18 then
                                                        i72.Transparency = v18
                                                        i72:SetAttribute("q", nil)
                                                    end
                                                elseif i72:HasTag("SurfaceGui") then
                                                    i72:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.S3SCP939CC = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load S3SCP939CC")
                                        end
                                        u193.S3SCP939CC.Parent = v11
                                        u193.S3SCP939CC = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.S3SCP939CC then
                            v11 = workspace:FindFirstChild("Sector 3")
                            if v11 then
                                u193.S3SCP939CC = v11:FindFirstChild("SCP-939 CC")
                                if u193.S3SCP939CC then
                                    if not v3 then
                                        if v4 then
                                            print("Unload S3SCP939CC")
                                        end
                                        if not (u358[u193.S3SCP939CC.Name]) then
                                            u358[u193.S3SCP939CC.Name] = u193.S3SCP939CC.DescendantAdded:Connect(function(p1) -- Line: 4621 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    local v2 = if -3.65 >= Position.Y then if Position.Z >= -1125 then if -710 >= Position.Z then -20 < Position.X else true else true else true
                                                    if v1 == true then
                                                        if v2 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v2 then
                                                        if not v2 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.S3SCP939CC = true
                                                        return
                                                    end
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i11, i82 in ipairs(u193.S3SCP939CC:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i82:IsA("FaceInstance")) then
                                                if i82:HasTag("SurfaceGui") then
                                                    i82:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i82:GetAttribute("q")) then
                                                i82:SetAttribute("q", i82.Transparency)
                                                i82.Transparency = 1
                                            end
                                        end
                                        u193.S3SCP939CC = true
                                    else
                                        if v4 then
                                            print("Unload S3SCP939CC")
                                        end
                                        u193.S3SCP939CC.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                        if Position.X >= 90 then
                            v11 = if -897 >= Position.Z then Position.X < -243 else true
                        else
                            v11 = true
                            if -940 < Position.Z then end
                        end
                        if not u4496 then
                            v11 = true
                        end
                        if not v11 then
                            if u193.S3Biohazard and not v11 then
                                v12 = workspace:FindFirstChild("Sector 3")
                                if v12 then
                                    if not v3 then
                                        v2 = v12:FindFirstChild("Biohazard")
                                        if v2 then
                                            if v4 then
                                                print("Load S3Biohazard")
                                            end
                                            for i12, i92 in ipairs(v2:QueryDescendants("FaceInstance,SurfaceGui")) do
                                                if i92:IsA("FaceInstance") then
                                                    v19 = i92:GetAttribute("q")
                                                    if v19 then
                                                        i92.Transparency = v19
                                                        i92:SetAttribute("q", nil)
                                                    end
                                                elseif i92:HasTag("SurfaceGui") then
                                                    i92:SetAttribute("LocalInvalid", nil)
                                                end
                                            end
                                            u193.S3Biohazard = nil
                                        end
                                    else
                                        if v4 then
                                            print("Load S3Biohazard")
                                        end
                                        u193.S3Biohazard.Parent = v12
                                        u193.S3Biohazard = nil
                                    end
                                end
                            end
                        elseif u355 and u377 == "Roleplay" and u457 <= 0 and not u193.S3Biohazard then
                            v12 = workspace:FindFirstChild("Sector 3")
                            if v12 then
                                v2 = v12:FindFirstChild("Biohazard")
                                if v2 then
                                    if not v3 then
                                        if v4 then
                                            print("Unload S3Biohazard")
                                        end
                                        if not (u358[v2.Name]) then
                                            u358[v2.Name] = v2.DescendantAdded:Connect(function(p1) -- Line: 4753 -- upvalues: u193 (upval)
                                                if not p1 then
                                                    return
                                                end
                                                local v1 = nil
                                                if p1:IsA("SurfaceGui") then
                                                    v1 = true
                                                elseif p1:IsA("FaceInstance") then
                                                    v1 = false
                                                end
                                                if v1 == nil then
                                                    return
                                                end
                                                if v1 ~= true then
                                                    local v2
                                                    local Position = workspace.CurrentCamera.CFrame.Position
                                                    if Position.X >= 90 then
                                                        v2 = if -897 >= Position.Z then Position.X < -243 else true
                                                    else
                                                        v2 = true
                                                        if -940 < Position.Z then end
                                                    end
                                                    if v1 == true then
                                                        if v2 then
                                                            p1:SetAttribute("LocalInvalid", true)
                                                            return
                                                        end
                                                        p1:SetAttribute("LocalInvalid", nil)
                                                        return
                                                    end
                                                    if not v2 then
                                                        if not v2 and p1:GetAttribute("q") then
                                                            p1.Transparency = p1:GetAttribute("q")
                                                            p1:SetAttribute("q", nil)
                                                        end
                                                        return
                                                    end
                                                    if not (p1:GetAttribute("q")) then
                                                        p1:SetAttribute("q", p1.Transparency)
                                                        p1.Transparency = 1
                                                        u193.S3Biohazard = true
                                                        return
                                                    end
                                                    if not v2 and p1:GetAttribute("q") then
                                                        p1.Transparency = p1:GetAttribute("q")
                                                        p1:SetAttribute("q", nil)
                                                    end
                                                    return
                                                elseif not (p1:HasTag("SurfaceGui")) then
                                                    return
                                                end
                                            end)
                                        end
                                        for i13, i102 in ipairs(v2:QueryDescendants("FaceInstance,SurfaceGui")) do
                                            if not (i102:IsA("FaceInstance")) then
                                                if i102:HasTag("SurfaceGui") then
                                                    i102:SetAttribute("LocalInvalid", true)
                                                end
                                            elseif not (i102:GetAttribute("q")) then
                                                i102:SetAttribute("q", i102.Transparency)
                                                i102.Transparency = 1
                                            end
                                        end
                                        u193.S3Biohazard = true
                                    else
                                        if v4 then
                                            print("Unload S3Biohazard")
                                        end
                                        u193.S3Biohazard = v2
                                        u193.S3Biohazard.Parent = script
                                    end
                                    v5 = true
                                end
                            end
                        end
                    end
                end
            end
            if v5 and not u168 and not u458 then
                u457 = u457 + 2.5
                u458 = true
            end
            local Character = DeltaFramework.Player.Character
            if DeltaFramework.Player.Team then
                if u241 ~= DeltaFramework.Player.Team.Name then
                    if workspace:FindFirstChild("Sector 1") then
                        if u241 ~= DeltaFramework.Player.Team.Name then
                            local u6581 = workspace["Sector 1"]
                            if u6581 then
                                if not u252 then
                                    u252 = u6581:FindFirstChild("ModelCI")
                                end
                                if u252 then
                                    if DeltaFramework.Player.Team.Name == "Class - D" then
                                        pcall(function() -- Line: 4926 -- upvalues: u252 (upval)
                                            u252.Parent = game:GetService("Debris")
                                        end)
                                    elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                        if not (IsEventOccuring()) then
                                            pcall(function() -- Line: 4924 -- upvalues: u252 (upval), u6581 (val)
                                                u252.Parent = u6581
                                            end)
                                        end
                                    elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                    end
                                    u241 = DeltaFramework.Player.Team.Name
                                    pcall(function() -- Line: 4931 -- upvalues: u252 (upval), DeltaFramework (upval), Character (val)
                                        u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = 30
                                        if DeltaFramework.Player:GetAttribute("Upgraded") then
                                            u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.25
                                        end
                                        if Character and (Character:GetAttribute("RP") or ""):sub(6, 6) == "1" then
                                            u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u252["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.05
                                        end
                                    end)
                                end
                            end
                        end
                        if u244 ~= DeltaFramework.Player.Team.Name then
                            local u6638 = workspace["Sector 1"]
                            if u6638 then
                                if not u260 then
                                    u260 = u6638:FindFirstChild("ModelCICR")
                                end
                                if u260 then
                                    if DeltaFramework.Player.Team.Name == "Class - D" then
                                        pcall(function() -- Line: 4965 -- upvalues: u260 (upval)
                                            u260.Parent = game:GetService("Debris")
                                        end)
                                    elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                        if not (IsEventOccuring()) then
                                            pcall(function() -- Line: 4963 -- upvalues: u260 (upval), u6638 (val)
                                                u260.Parent = u6638
                                            end)
                                        end
                                    elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                    end
                                    u244 = DeltaFramework.Player.Team.Name
                                    pcall(function() -- Line: 4970 -- upvalues: u260 (upval), DeltaFramework (upval)
                                        u260["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = 30
                                        if DeltaFramework.Player:GetAttribute("Upgraded") then
                                            u260["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u260["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u260["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.25
                                        end
                                    end)
                                end
                            end
                        end
                    end
                    if workspace:FindFirstChild("Sector 2") and u242 ~= DeltaFramework.Player.Team.Name then
                        local SectionB = workspace["Sector 2"]:FindFirstChild("SectionB")
                        if SectionB then
                            if not u262 then
                                u262 = SectionB:FindFirstChild("TransformerC4")
                            end
                            if u262 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    if not (DeltaFramework.Player.Team:GetAttribute("Team_Category")) then
                                        pcall(function() -- Line: 4996 -- upvalues: u262 (upval)
                                            u262.Parent = game:GetService("Debris")
                                        end)
                                    elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") == "HOSTILE" then
                                        pcall(function() -- Line: 4994 -- upvalues: u262 (upval), SectionB (val)
                                            u262.Parent = SectionB
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                end
                                u242 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5001 -- upvalues: u262 (upval), DeltaFramework (upval), Character (val)
                                    u262.TransformerC4.ProximityPrompt.HoldDuration = 45
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u262.TransformerC4.ProximityPrompt.HoldDuration = u262.TransformerC4.ProximityPrompt.HoldDuration - u262.TransformerC4.ProximityPrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(6, 6) == "0" then
                                        u262.TransformerC4.ProximityPrompt.HoldDuration = u262.TransformerC4.ProximityPrompt.HoldDuration - u262.TransformerC4.ProximityPrompt.HoldDuration * 0.1
                                    end
                                end)
                            end
                        end
                    end
                    v4 = nil
                    if u243 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            task.spawn(function() -- Line: 5033 -- upvalues: u256 (upval), DeltaFramework (upval), u243 (upval)
                                if not u256 then
                                    u256 = workspace["Sector 3"]:FindFirstChild("ModelCI079")
                                end
                                if u256 then
                                    if DeltaFramework.Player.Team.Name == "Class - D" then
                                        pcall(function() -- Line: 5043 -- upvalues: u256 (upval)
                                            u256.Parent = game:GetService("Debris")
                                        end)
                                    elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                        if IsEventOccuring() then
                                            pcall(function() -- Line: 5043 -- upvalues: u256 (upval)
                                                u256.Parent = game:GetService("Debris")
                                            end)
                                        else
                                            pcall(function() -- Line: 5041 -- upvalues: u256 (upval)
                                                u256.Parent = workspace["Sector 3"]
                                            end)
                                        end
                                    elseif not (DeltaFramework.Player.Team:GetAttribute("Team_Category")) then
                                        pcall(function() -- Line: 5043 -- upvalues: u256 (upval)
                                            u256.Parent = game:GetService("Debris")
                                        end)
                                    elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                        pcall(function() -- Line: 5043 -- upvalues: u256 (upval)
                                            u256.Parent = game:GetService("Debris")
                                        end)
                                    end
                                    u243 = DeltaFramework.Player.Team.Name
                                    pcall(function() -- Line: 5048 -- upvalues: u256 (upval), DeltaFramework (upval)
                                        u256["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = 15
                                        if DeltaFramework.Player:GetAttribute("Upgraded") then
                                            u256["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u256["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u256["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.25
                                        end
                                    end)
                                end
                            end)
                        end
                    end
                    if u245 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u254 then
                                u254 = workspace["Sector 3"]:FindFirstChild("ModelCI008")
                            end
                            if u254 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5080 -- upvalues: u254 (upval)
                                        u254.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5078 -- upvalues: u254 (upval)
                                            u254.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u245 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5085 -- upvalues: u254 (upval), DeltaFramework (upval), Character (val)
                                    u254.Tank.CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u254.Tank.CIHackDevicePrompt.HoldDuration = u254.Tank.CIHackDevicePrompt.HoldDuration - u254.Tank.CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(7, 7) == "0" then
                                        u254.Tank.CIHackDevicePrompt.HoldDuration = u254.Tank.CIHackDevicePrompt.HoldDuration - u254.Tank.CIHackDevicePrompt.HoldDuration * 0.05
                                    end
                                end)
                            end
                        end
                    end
                    if u246 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u253 then
                                u253 = workspace["Sector 3"]:FindFirstChild("ModelCI002")
                            end
                            if u253 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5125 -- upvalues: u253 (upval)
                                        u253.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5123 -- upvalues: u253 (upval)
                                            u253.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u246 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5130 -- upvalues: u253 (upval), DeltaFramework (upval), Character (val)
                                    u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(7, 7) == "1" then
                                        u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u253["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.05
                                    end
                                end)
                            end
                        end
                    end
                    if u247 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u259 then
                                u259 = workspace["Sector 3"]:FindFirstChild("ModelCI457")
                            end
                            if u259 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5170 -- upvalues: u259 (upval)
                                        u259.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5168 -- upvalues: u259 (upval)
                                            u259.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u247 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5175 -- upvalues: u259 (upval), DeltaFramework (upval), Character (val)
                                    u259.Tank.CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u259.Tank.CIHackDevicePrompt.HoldDuration = u259.Tank.CIHackDevicePrompt.HoldDuration - u259.Tank.CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(9, 9) == "0" then
                                        u259.Tank.CIHackDevicePrompt.HoldDuration = u259.Tank.CIHackDevicePrompt.HoldDuration - u259.Tank.CIHackDevicePrompt.HoldDuration * 0.1
                                    end
                                end)
                            end
                        end
                    end
                    if u248 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u257 then
                                u257 = workspace["Sector 3"]:FindFirstChild("ModelCI106")
                            end
                            if u257 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5215 -- upvalues: u257 (upval)
                                        u257.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5213 -- upvalues: u257 (upval)
                                            u257.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u248 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5220 -- upvalues: u257 (upval), DeltaFramework (upval), Character (val)
                                    u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(7, 7) == "1" then
                                        u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration = u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration - u257["Meshes/Chaos Insurgency Hack Device_Cylinder"].CIHackDevicePrompt.HoldDuration * 0.05
                                    end
                                end)
                            end
                        end
                    end
                    if u250 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u255 then
                                u255 = workspace["Sector 3"]:FindFirstChild("ModelCI016")
                            end
                            if u255 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5260 -- upvalues: u255 (upval)
                                        u255.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5258 -- upvalues: u255 (upval)
                                            u255.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u250 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5265 -- upvalues: u255 (upval), DeltaFramework (upval), Character (val)
                                    u255.Tank.CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u255.Tank.CIHackDevicePrompt.HoldDuration = u255.Tank.CIHackDevicePrompt.HoldDuration - u255.Tank.CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(7, 7) == "0" then
                                        u255.Tank.CIHackDevicePrompt.HoldDuration = u255.Tank.CIHackDevicePrompt.HoldDuration - u255.Tank.CIHackDevicePrompt.HoldDuration * 0.05
                                    end
                                end)
                            end
                        end
                    end
                    if u251 ~= DeltaFramework.Player.Team.Name then
                        if v4 == nil then
                            v4 = workspace:FindFirstChild("Sector 3")
                            if not v4 then
                                v4 = false
                            end
                        end
                        if v4 then
                            if not u258 then
                                u258 = workspace["Sector 3"]:FindFirstChild("ModelCI299")
                            end
                            if u258 then
                                if DeltaFramework.Player.Team.Name == "Class - D" then
                                    pcall(function() -- Line: 5305 -- upvalues: u258 (upval)
                                        u258.Parent = game:GetService("Debris")
                                    end)
                                elseif DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                    if not (IsEventOccuring()) then
                                        pcall(function() -- Line: 5303 -- upvalues: u258 (upval)
                                            u258.Parent = workspace["Sector 3"]
                                        end)
                                    end
                                elseif DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                                end
                                u251 = DeltaFramework.Player.Team.Name
                                pcall(function() -- Line: 5310 -- upvalues: u258 (upval), DeltaFramework (upval), Character (val)
                                    u258.Tank.CIHackDevicePrompt.HoldDuration = 15
                                    if DeltaFramework.Player:GetAttribute("Upgraded") then
                                        u258.Tank.CIHackDevicePrompt.HoldDuration = u258.Tank.CIHackDevicePrompt.HoldDuration - u258.Tank.CIHackDevicePrompt.HoldDuration * 0.25
                                    end
                                    if Character and (Character:GetAttribute("RP") or ""):sub(7, 7) == "0" then
                                        u258.Tank.CIHackDevicePrompt.HoldDuration = u258.Tank.CIHackDevicePrompt.HoldDuration - u258.Tank.CIHackDevicePrompt.HoldDuration * 0.05
                                    end
                                end)
                            end
                        end
                    end
                    if u249 ~= DeltaFramework.Player.Team.Name and workspace:FindFirstChild("Class - D Cells") then
                        if not u261 then
                            v5 = workspace["Class - D Cells"]:FindFirstChild("C4Wall")
                            if v5 then
                                v5 = workspace["Class - D Cells"].C4Wall:FindFirstChild("C4")
                            end
                            u261 = v5
                        end
                        if u261 then
                            if DeltaFramework.Player.Team.Name == "Chaos Insurgency" then
                                if IsEventOccuring() then
                                    pcall(function() -- Line: 5342 -- upvalues: u261 (upval)
                                        u261.Parent = game:GetService("Debris")
                                    end)
                                else
                                    pcall(function() -- Line: 5340 -- upvalues: u261 (upval)
                                        u261.Parent = workspace["Class - D Cells"].C4Wall
                                    end)
                                end
                            elseif DeltaFramework.Player.Team.Name ~= "Class - D" and DeltaFramework.Player.Team:GetAttribute("Team_Category") and DeltaFramework.Player.Team:GetAttribute("Team_Category") ~= "HOSTILE" then
                            end
                            u249 = DeltaFramework.Player.Team.Name
                        end
                    end
                elseif u242 == DeltaFramework.Player.Team.Name and u243 == DeltaFramework.Player.Team.Name and u244 == DeltaFramework.Player.Team.Name and u245 == DeltaFramework.Player.Team.Name and u246 == DeltaFramework.Player.Team.Name and u247 == DeltaFramework.Player.Team.Name and u248 == DeltaFramework.Player.Team.Name and u249 == DeltaFramework.Player.Team.Name and u250 == DeltaFramework.Player.Team.Name and u251 == DeltaFramework.Player.Team.Name then
                end
            end
            v4 = nil
            v5 = nil
            if u355 and Character then
                v6 = Character:FindFirstChild("HumanoidRootPart")
                if v6 then
                    v6 = v6.Position
                    v7 = u23:IsInLocation("Outside", v6)
                    if not v7 then
                        v7 = u23:IsInLocation("Outside", Position)
                    end
                    v4 = v7
                    v7 = u23:IsInLocation("093City", v6)
                    if not v7 then
                        v7 = u23:IsInLocation("093City", Position)
                    end
                    v5 = v7
                    if not v4 then
                        if v4 then
                            if u23:IsInLocation("Outside Transition 2", v6) then
                                if workspace:FindFirstChild("Entrance") and workspace.Entrance:FindFirstChild("Outside Gate 4") then
                                    v9 = workspace.Entrance["Outside Gate 4"]
                                    if not (DeltaFramework.CS:HasTag(v9, "Open")) then
                                        v4 = nil
                                    end
                                end
                            elseif not (u23:IsInLocation("Outside Transition 2", Position)) then
                            end
                        end
                    elseif u23:IsInLocation("Outside Transition 1", v6) then
                        if workspace:FindFirstChild("Entrance") and workspace.Entrance:FindFirstChild("Outside Gate 2") then
                            v9 = workspace.Entrance["Outside Gate 2"]
                            if not (DeltaFramework.CS:HasTag(v9, "Open")) then
                                v4 = nil
                            end
                        end
                    elseif not (u23:IsInLocation("Outside Transition 1", Position)) then
                    end
                end
            end
            if u377 ~= "Roleplay" then
                v4 = nil
            end
            if not v4 then
                if not v5 then
                    if u142 and not v4 and not v5 then
                        SwitchLighting()
                        u142 = false
                    end
                elseif not u142 then
                    SwitchLighting()
                    u142 = true
                end
            elseif not u142 then
                SwitchLighting(true)
                u142 = true
            end
            if Title.Value ~= "" then
                Z = 0
                if Z >= Timer.Value then
                    v6 = Title.Value .. ": NOW"
                else
                    Z = math.floor(Timer.Value / 60)
                    v9 = Timer.Value % 60
                    v1 = string.len((tostring(Z)))
                    if v1 >= 2 then
                        v7 = tostring(Z) .. ":"
                    else
                        v7 = "0" .. tostring(Z) .. ":"
                    end
                    v1 = string.len((tostring(v9)))
                    if v1 >= 2 then
                        v7 = v7 .. tostring(v9)
                    else
                        v7 = v7 .. "0" .. tostring(v9)
                    end
                    v6 = Title.Value .. ": " .. v7
                end
                Z = "Low Graphics"
                if not (u24(Z)) then
                    v7 = ""
                else
                    v7 = " | LOW GRAPHICS"
                end
                Z = DeltaFramework.ReplicatedStorage:GetAttribute("Region")
                if not Z then
                    v9 = DeltaFramework.Player:GetAttribute("Score")
                    if not v9 then
                        v1 = DeltaFramework.PlayerGui.Utility.Version
                        v2 = tostring(workspace:GetAttribute("PlaceVersion"))
                        if not (workspace:GetAttribute("ServerHost")) then
                            v13 = ""
                        elseif workspace:GetAttribute("ServerHost") ~= 0 then
                            v13 = " (CUSTOM)"
                        end
                        v1.Text = "PUBLISH " .. v2 .. v13 .. " | " .. v6 .. v7
                    else
                        v1 = tonumber(v9) or 0
                        if 0 < v1 then
                            v9 = math.floor(v9 * 100) / 100
                            v1 = DeltaFramework.PlayerGui.Utility.Version
                            v2 = tostring(workspace:GetAttribute("PlaceVersion"))
                            if not (workspace:GetAttribute("ServerHost")) then
                                v13 = ""
                            elseif workspace:GetAttribute("ServerHost") ~= 0 then
                                v13 = " (CUSTOM)"
                            end
                            v1.Text = "PUBLISH " .. v2 .. v13 .. " | " .. v6 .. v7 .. " | SCORE: " .. tostring(v9)
                        end
                    end
                else
                    v9 = DeltaFramework.Player:GetAttribute("Score")
                    if not v9 then
                        v1 = DeltaFramework.PlayerGui.Utility.Version
                        v2 = tostring(workspace:GetAttribute("PlaceVersion"))
                        if not (workspace:GetAttribute("ServerHost")) then
                            v13 = ""
                        elseif workspace:GetAttribute("ServerHost") ~= 0 then
                            v13 = " (CUSTOM)"
                        end
                        v1.Text = "PUBLISH " .. v2 .. v13 .. " | " .. v6 .. " | 📍 " .. Z .. v7
                    else
                        v1 = tonumber(v9) or 0
                        if 0 < v1 then
                            v9 = math.floor(v9 * 100) / 100
                            v1 = DeltaFramework.PlayerGui.Utility.Version
                            v2 = tostring(workspace:GetAttribute("PlaceVersion"))
                            if not (workspace:GetAttribute("ServerHost")) then
                                v13 = ""
                            elseif workspace:GetAttribute("ServerHost") ~= 0 then
                                v13 = " (CUSTOM)"
                            end
                            v1.Text = "PUBLISH " .. v2 .. v13 .. " | " .. v6 .. " | 📍 " .. Z .. v7 .. " | SCORE: " .. tostring(v9)
                        end
                    end
                end
                DeltaFramework.PlayerGui.Utility.Version.Back.Text = DeltaFramework.PlayerGui.Utility.Version.Text
                u240 = true
            elseif u240 then
                u240 = nil
                if not (u24("Low Graphics")) then
                    v6 = ""
                else
                    v6 = " | LOW GRAPHICS"
                end
                v7 = DeltaFramework.ReplicatedStorage:GetAttribute("Region")
                if not v7 then
                    Z = DeltaFramework.Player:GetAttribute("Score")
                    if not Z then
                        v9 = DeltaFramework.PlayerGui.Utility.Version
                        v12 = tostring(workspace:GetAttribute("PlaceVersion"))
                        if not (workspace:GetAttribute("ServerHost")) then
                            v2 = ""
                        elseif workspace:GetAttribute("ServerHost") ~= 0 then
                            v2 = " (CUSTOM)"
                        end
                        v9.Text = "PUBLISH " .. v12 .. v2 .. v6
                    else
                        v9 = tonumber(Z) or 0
                        if 0 < v9 then
                            Z = math.floor(Z * 100) / 100
                            v9 = DeltaFramework.PlayerGui.Utility.Version
                            v12 = tostring(workspace:GetAttribute("PlaceVersion"))
                            if not (workspace:GetAttribute("ServerHost")) then
                                v2 = ""
                            elseif workspace:GetAttribute("ServerHost") ~= 0 then
                                v2 = " (CUSTOM)"
                            end
                            v9.Text = "PUBLISH " .. v12 .. v2 .. v6 .. " | SCORE: " .. tostring(Z)
                        end
                    end
                else
                    Z = DeltaFramework.Player:GetAttribute("Score")
                    if not Z then
                        v9 = DeltaFramework.PlayerGui.Utility.Version
                        v12 = tostring(workspace:GetAttribute("PlaceVersion"))
                        if not (workspace:GetAttribute("ServerHost")) then
                            v2 = ""
                        elseif workspace:GetAttribute("ServerHost") ~= 0 then
                            v2 = " (CUSTOM)"
                        end
                        v9.Text = "PUBLISH " .. v12 .. v2 .. " | 📍 " .. v7 .. v6
                    else
                        v9 = tonumber(Z) or 0
                        if 0 < v9 then
                            Z = math.floor(Z * 100) / 100
                            v9 = DeltaFramework.PlayerGui.Utility.Version
                            v12 = tostring(workspace:GetAttribute("PlaceVersion"))
                            if not (workspace:GetAttribute("ServerHost")) then
                                v2 = ""
                            elseif workspace:GetAttribute("ServerHost") ~= 0 then
                                v2 = " (CUSTOM)"
                            end
                            v9.Text = "PUBLISH " .. v12 .. v2 .. " | 📍 " .. v7 .. v6 .. " | SCORE: " .. tostring(Z)
                        end
                    end
                end
                Z = DeltaFramework.PlayerGui.Utility.Version.Back
                Z.Text = DeltaFramework.PlayerGui.Utility.Version.Text
            end
        end
    elseif not u168 then
    end
    if 1 <= u25 then
        v3 = script.Parent.FPS
        v3.Text = "FPS: " .. tostring(u26)
        u25 = 0
        u26 = 0
        v3 = script.Parent.FPS
        v3.Visible = u24("FPS Counter")
        v4 = DeltaFramework.PlayerGui:WaitForChild("Menu", 9999999)
        if u192 ~= v4:WaitForChild("ControllerControls").Visible then
            u192 = DeltaFramework.PlayerGui.Menu.ControllerControls.Visible
            if not u192 then
                v3 = script.Parent.FPS
                v3.Position = UDim2.new(0, 10, 1, -35)
            else
                v3 = script.Parent.FPS
                v3.Position = UDim2.new(0, 10, 1, -115)
            end
        end
        v4 = script.Parent.FPS.Visible
        if v4 then
            v4 = DeltaFramework.PlayerGui.Utility.Track.Visible
        end
        if u191 ~= v4 then
            v3 = script.Parent.FPS.Visible
            if v3 then
                v3 = DeltaFramework.PlayerGui.Utility.Track.Visible
            end
            u191 = v3
            if DeltaFramework.PlayerGui.Utility.Track.Position.X.Scale <= 0 then
                if u191 then
                    v3 = DeltaFramework.PlayerGui.Utility.Track
                    v3.Position = UDim2.new(0, 50, 1, -80)
                elseif not u192 then
                    v3 = DeltaFramework.PlayerGui.Utility.Track
                    v3.Position = UDim2.new(0, 50, 1, -40)
                end
            end
        end
        v4 = DeltaFramework.PlayerGui.Utility.Version.Visible
        if v4 then
            v4 = u24("Display Track")
        end
        DeltaFramework.PlayerGui.Utility.Track.Visible = v4
    end
end)

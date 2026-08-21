--!nocheck

-- Script Path: game:GetService("Players")["1IllIlIIIIlIIlllIllI"].PlayerScripts.QualityVerify
-- 0.01s for decompilation.
-- Executor: 67 (2.6.7)

local Attribute, Lighting
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Delta = ReplicatedStorage:WaitForChild("Delta")
local DeltaFramework = require(Delta:WaitForChild("DeltaFramework"))
DeltaFramework:Get("Utility")
local u22 = DeltaFramework:Get("GetSetting")
local u26 = DeltaFramework:Get("SitePolicies")
local u30 = DeltaFramework:Get("HasWeapon")
local u31 = nil
local u32 = nil
local u33 = nil
task.wait(1)
local u37 = 0
local GameSettings = UserSettings().GameSettings
local Value = GameSettings.SavedQualityLevel.Value
local u61 = true
local v1 = DeltaFramework.PlayerGui:WaitForChild("Utility").AbsoluteSize.X * DeltaFramework.PlayerGui.Utility.AbsoluteSize.Y
if v1 >= 375000 then
    u61 = DeltaFramework:Device() == "Mobile"
end
task.spawn(function() -- Line: 26 -- upvalues: u31 (ref), u32 (ref), u33 (ref)
    local Lights
    if not (workspace:WaitForChild("Lights", 5)) then
        task.wait(5)
    end
    Lights = workspace:WaitForChild("Lights")
    if not (Lights:WaitForChild("Normal", 5)) then
        task.wait(5)
    end
    local Lights_2 = workspace:WaitForChild("Lights")
    u31 = Lights_2:WaitForChild("Normal")
    u32 = workspace.Lights:WaitForChild("Atmosphere")
    u33 = workspace.Lights:WaitForChild("NonFacility", 30)
end)
shared.Focused = true
local u70 = true
local u71 = false
local u72 = true
DeltaFramework.UIS.WindowFocusReleased:Connect(function() -- Line: 47 -- upvalues: Value (ref), DeltaFramework (val), u61 (val), u22 (val)
    if Value <= 4 and Value ~= 0 and not (DeltaFramework.RunService:IsStudio()) and not u61 and not (u22("Low Graphics")) then
        shared.Focused = false
    end
end)
DeltaFramework.UIS.WindowFocused:Connect(function() -- Line: 53
    shared.Focused = true
end)
local u95 = workspace:GetAttribute("MapOriginal") == "Roleplay"
local u103 = if workspace:GetAttribute("Map") == "Roleplay" then u95 else false
local u110 = workspace:GetAttribute("MapOriginal") == "Legacy"
local u111 = nil
local u112 = nil
DeltaFramework.ReplicatedStorage:WaitForChild("Mode").Changed:Connect(function() -- Line: 64 -- upvalues: u31 (ref), u32 (ref), u33 (ref), u72 (ref), u111 (ref), u112 (ref), u71 (ref)
    task.wait(10)
    local Lights = workspace:WaitForChild("Lights")
    u31 = Lights:WaitForChild("Normal")
    u32 = workspace.Lights:WaitForChild("Atmosphere")
    u33 = workspace.Lights:WaitForChild("NonFacility", 15)
    u72 = true
    u111 = nil
    u112 = nil
    u71 = true
end)
local AttributeChangedSignal = workspace:GetAttributeChangedSignal("MapInternalId")
AttributeChangedSignal:Connect(function() -- Line: 79 -- upvalues: u31 (ref), u32 (ref), u33 (ref), u72 (ref), u95 (ref), u103 (ref), u110 (ref), u111 (ref), u112 (ref), u71 (ref)
    task.wait(10)
    local Lights = workspace:WaitForChild("Lights")
    u31 = Lights:WaitForChild("Normal")
    u32 = workspace.Lights:WaitForChild("Atmosphere")
    u33 = workspace.Lights:WaitForChild("NonFacility", 15)
    u72 = true
    local v1 = workspace:GetAttribute("MapOriginal") == "Roleplay"
    u95 = v1
    v1 = if workspace:GetAttribute("Map") == "Roleplay" then u95 else false
    u103 = v1
    v1 = workspace:GetAttribute("MapOriginal") == "Legacy"
    u110 = v1
    u111 = nil
    u112 = nil
    u71 = true
end)
function HandleLight(p1, p2, p3, p4, p5, p6, p7) -- Line: 98 -- upvalues: u95 (ref), u71 (ref), u103 (ref)
    if not p1 then
        return
    end
    local ClassName = p1.ClassName
    if p7 == 0 then
        local v1, v2
        if ClassName == "MeshPart" then
            local v3
            local Position_2 = p1.Position
            if p6 < vector.magnitude(Position_2 - p2) then end
            if not u95 then
                v3 = p6 < vector.magnitude(Position_2 - p2)
            else
                local X_5 = p2.X
                local Z_5 = p2.Z
                local X_6 = Position_2.X
                local Z_6 = Position_2.Z
                if Z_5 >= -657 then
                    if 218 >= Z_5 then
                        if 187.5 >= X_5 then
                            if -53 > Z_6 then
                                v3 = p6 < vector.magnitude(Position_2 - p2)
                            elseif Z_6 <= 89 and X_6 < 105 and -35 < X_6 then
                                if 16 >= Z_6 then
                                    if 90 >= Z_6 then
                                        v2 = true
                                        if Z_5 >= -111 then
                                            v2 = true
                                            if 114 >= Z_5 then
                                                v2 = true
                                                if 153 >= X_5 then
                                                    v2 = true
                                                    if X_5 >= -54 then
                                                        if 16 >= Z_5 then
                                                            v2 = if 90 < Z_5 then X_5 < 22 else false
                                                        elseif X_5 < -9 then
                                                            v2 = true
                                                            if -25 < p2.Y then end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if not v2 then
                                            v3 = p6 < vector.magnitude(Position_2 - p2)
                                        else
                                            v3 = true
                                        end
                                    elseif X_6 < 22 then
                                    end
                                elseif X_6 < -9 then
                                end
                            end
                        elseif X_6 < -30 then
                            v3 = true
                        end
                    elseif Z_6 < -53 then
                        v3 = true
                    end
                elseif -466 < Z_6 then
                    v3 = true
                end
            end
            v1 = nil
            local RootPriority = p1.RootPriority
            if RootPriority ~= 0 then
                v1 = RootPriority - 1
            end
            local Transparency = p1.Transparency
            if not v1 then
                p1.RootPriority = Transparency + 1
            end
            if Transparency ~= v1 then
                if Transparency ~= 1 or v3 then
                    return
                end
                p1.Transparency = v1
                if p7 ~= 0 or not (p1:HasTag("DL")) then
                    return
                end
                local Texture_2 = p1:FindFirstChild("Texture")
                if not Texture_2 then
                    return
                end
                local Attribute_5 = Texture_2:GetAttribute("Q")
                if not Attribute_5 then
                    return
                end
                Texture_2.Transparency = Attribute_5
                Texture_2:SetAttribute("Q", nil)
                return
            elseif v3 then
                p1.Transparency = 1
                if p7 ~= 0 or not (p1:HasTag("DL")) then
                    return
                end
                local Texture = p1:FindFirstChild("Texture")
                if not Texture then
                    return
                end
                if not (Texture:GetAttribute("Q")) then
                    Texture:SetAttribute("Q", Texture.Transparency)
                end
                Texture.Transparency = 1
                return
            end
        elseif ClassName ~= "Part" then
            if ClassName == "PointLight" then
                local X, Z, v4, v5, v6, v7, v8, v9
                if not shared.Focused then
                    p1.Enabled = false
                    p1.Shadows = false
                    return
                end
                local Parent = p1.Parent
                if not Parent then
                    return
                end
                if Parent.ClassName == "Attachment" then
                    local WorldPosition = Parent.WorldPosition
                    if not u95 then
                        v1 = p6 < vector.magnitude(WorldPosition - p2)
                    else
                        X = p2.X
                        Z = p2.Z
                        local X_2 = WorldPosition.X
                        local Z_2 = WorldPosition.Z
                        if Z >= -657 then
                            if 218 >= Z then
                                if 187.5 >= X then
                                    if -53 > Z_2 then
                                        v1 = p6 < vector.magnitude(WorldPosition - p2)
                                    elseif Z_2 <= 89 and X_2 < 105 and -35 < X_2 then
                                        if 16 >= Z_2 then
                                            if 90 >= Z_2 then
                                                v6 = if Z >= -111 then if 114 >= Z then if 153 >= X then X < -54 else true else true else true
                                                if not v6 then
                                                    v1 = p6 < vector.magnitude(WorldPosition - p2)
                                                else
                                                    v1 = true
                                                end
                                            elseif X_2 < 22 then
                                            end
                                        elseif X_2 < -9 then
                                        end
                                    end
                                elseif X_2 < -30 then
                                    v1 = true
                                end
                            elseif Z_2 < -53 then
                                v1 = true
                            end
                        elseif -466 < Z_2 then
                            v1 = true
                        end
                    end
                    v4 = u71
                    if not v4 then
                        v4 = p4
                        if not v4 then
                            v4 = p5
                        end
                    end
                    if p1.Enabled ~= not v1 then
                        p1.Enabled = not v1
                        if not v1 then
                            v4 = true
                        else
                            p1.Shadows = false
                        end
                    end
                    if not v4 then
                        return
                    end
                    local Attribute = p1:GetAttribute("OriginalBrightness")
                    if not Attribute then
                        Attribute = 0.44
                    end
                    v5 = u103
                    if v5 then
                        v2 = if 510.645 >= WorldPosition.X then if WorldPosition.Z >= -412.656 then if -42 >= WorldPosition.Z then if WorldPosition.X < 14 then if WorldPosition.Z >= -292.781 then -231.781 < WorldPosition.Z else true else false else true else true else true
                        v5 = not v2
                    end
                    local Brightness = p1.Brightness
                    if Brightness == Attribute then
                        if Brightness ~= Attribute + p4 and u95 and not v5 then
                            p1.Brightness = Attribute + p4
                        end
                    elseif v5 then
                        p1.Brightness = Attribute
                    end
                    local Attribute_2 = p1:GetAttribute("OriginalRange")
                    if not Attribute_2 then
                        Attribute_2 = 60
                    end
                    if p5 ~= -1 then
                        v9 = p5
                    else
                        if not u95 then
                            v7 = 3
                        elseif not u103 then
                            v7 = 2
                        end
                        v9 = Attribute_2 / v7
                    end
                    if (p1.Range ~= v9 or Attribute_2) and u95 then
                        p1.Range = v9 or Attribute_2
                    end
                    if not p3 then
                        p1.Shadows = false
                        return
                    end
                    v8 = vector.magnitude(WorldPosition - p2)
                    v7 = v8 <= p6 / 1.5
                    p1.Shadows = v7
                    return
                end
                local Position = Parent.Position
                if not u95 then
                    v1 = p6 < vector.magnitude(Position - p2)
                else
                    local X_3 = p2.X
                    local Z_3 = p2.Z
                    local X_4 = Position.X
                    local Z_4 = Position.Z
                    if Z_3 >= -657 then
                        if 218 >= Z_3 then
                            if 187.5 >= X_3 then
                                if -53 > Z_4 then
                                    v1 = p6 < vector.magnitude(Position - p2)
                                elseif Z_4 <= 89 and X_4 < 105 and -35 < X_4 then
                                    if 16 >= Z_4 then
                                        if 90 >= Z_4 then
                                            v6 = if Z_3 >= -111 then if 114 >= Z_3 then if 153 >= X_3 then X_3 < -54 else true else true else true
                                            if not v6 then
                                                v1 = p6 < vector.magnitude(Position - p2)
                                            else
                                                v1 = true
                                            end
                                        elseif X_4 < 22 then
                                        end
                                    elseif X_4 < -9 then
                                    end
                                end
                            elseif X_4 < -30 then
                                v1 = true
                            end
                        elseif Z_4 < -53 then
                            v1 = true
                        end
                    elseif -466 < Z_4 then
                        v1 = true
                    end
                end
                v4 = u71
                if not v4 then
                    v4 = p4
                    if not v4 then
                        v4 = p5
                    end
                end
                if p1.Enabled ~= not v1 then
                    p1.Enabled = not v1
                    if not v1 then
                        v4 = true
                    else
                        p1.Shadows = false
                    end
                end
                if not v4 then
                    return
                end
                local Attribute_3 = p1:GetAttribute("OriginalBrightness")
                if not Attribute_3 then
                    Attribute_3 = 0.44
                end
                v5 = u103
                if v5 then
                    v2 = if 510.645 >= Position.X then if Position.Z >= -412.656 then if -42 >= Position.Z then if Position.X < 14 then if Position.Z >= -292.781 then -231.781 < Position.Z else true else false else true else true else true
                    v5 = not v2
                end
                local Brightness_2 = p1.Brightness
                if Brightness_2 == Attribute_3 then
                    if Brightness_2 ~= Attribute_3 + p4 and u95 and not v5 then
                        p1.Brightness = Attribute_3 + p4
                    end
                elseif v5 then
                    p1.Brightness = Attribute_3
                end
                local Attribute_4 = p1:GetAttribute("OriginalRange")
                if not Attribute_4 then
                    Attribute_4 = 60
                end
                if p5 ~= -1 then
                    v9 = p5
                else
                    if not u95 then
                        v7 = 3
                    elseif not u103 then
                        v7 = 2
                    end
                    v9 = Attribute_4 / v7
                end
                if (p1.Range ~= v9 or Attribute_4) and u95 then
                    p1.Range = v9 or Attribute_4
                end
                if not p3 then
                    p1.Shadows = false
                    return
                end
                v8 = vector.magnitude(Position - p2)
                v7 = v8 <= p6 / 1.5
                p1.Shadows = v7
                return
            elseif ClassName ~= "SurfaceLight" then
                return
            end
        end
    end
end
local Alarms = DeltaFramework.ReplicatedStorage:WaitForChild("Alarms", 99999)
Attribute = Alarms:GetAttribute("Blackout")
local AttributeChangedSignal_2 = DeltaFramework.ReplicatedStorage.Alarms:GetAttributeChangedSignal("Blackout")
AttributeChangedSignal_2:Connect(function() -- Line: 388 -- upvalues: Attribute (ref), DeltaFramework (val), u71 (ref), u22 (val), Value (ref), u61 (val), u26 (val), u33 (ref), u31 (ref), u32 (ref)
    local v1, v2, v3, v4
    Attribute = DeltaFramework.ReplicatedStorage.Alarms:GetAttribute("Blackout")
    u71 = true
    local Position = workspace.CurrentCamera.CFrame.Position
    local v5 = if not shared.InMenu then u22("HD Shadows") else nil
    local v6 = u22("Low Graphics")
    if Value > 4 then
        if v6 then
            v1 = 100
        elseif 8 > Value then
            v1 = 200
        else
            v1 = 250
        end
    elseif Value ~= 0 then
    end
    local v7 = v1 + 100
    if Value > 4 then
        if u61 then
            v1 = 0.26
        elseif not v5 then
            v1 = -0.14
        else
            v1 = 0
        end
    elseif Value ~= 0 then
    end
    local v8 = nil
    if Attribute then
        if not v8 then
            v8 = -1
        else
            if not (u26.CheckActive("Advanced Electrical Circuit")) then
                v2 = 3
            else
                v2 = 2
            end
            v8 = v8 / v2
        end
    end
    if u33 then
        v2 = u33:QueryDescendants("BasePart,Light")
        local v9 = #v2
        v3 = 1
        for i = 1, v9, v3 do
            HandleLight(v2[i], Position, v5, 0, 1, 0)
        end
    end
    local Parent = u31
    if Parent then
        Parent = u31.Parent
        if Parent then
            Parent = u31.Parent:FindFirstChild("Models")
        end
    end
    if Parent then
        v2 = Parent:QueryDescendants("BasePart,Light")
        v3 = #v2
        v4 = 1
        for j = 1, v3, v4 do
            HandleLight(v2[j], Position, v5, v1, v8, v7)
        end
    end
    v2 = u31:QueryDescendants("BasePart,Light")
    v3 = #v2
    v4 = 1
    for k = 1, v3, v4 do
        HandleLight(v2[k], Position, false, v1, v8, v7)
    end
    DeltaFramework.Lighting.GlobalShadows = v5
    if Value > 4 then
        if u61 then
            v3 = 1.39
        elseif v5 then
            v3 = 0
        elseif not v6 then
            v3 = -0.14
        end
    elseif Value ~= 0 then
    end
    v2 = u32:QueryDescendants("BasePart,Light")
    v3 = #v2
    v4 = 1
    for n = 1, v3, v4 do
        HandleLight(v2[n], Position, v5, v3, v8, v7)
    end
end)
if Value > 4 then
    if u61 then
        DeltaFramework.Lighting.ExposureCompensation = -1
        DeltaFramework.Lighting.EnvironmentSpecularScale = 0
        DeltaFramework.Lighting.GlobalShadows = false
        shared.Exposure = true
        task.delay(1, function() -- Line: 462 -- upvalues: u72 (ref), u71 (ref)
            u72 = true
            u71 = true
        end)
    elseif u22("Low Graphics") then
        DeltaFramework.Lighting.ExposureCompensation = -1
        DeltaFramework.Lighting.EnvironmentSpecularScale = 0
        DeltaFramework.Lighting.GlobalShadows = false
        shared.Exposure = true
        task.delay(1, function() -- Line: 462 -- upvalues: u72 (ref), u71 (ref)
            u72 = true
            u71 = true
        end)
    end
elseif Value ~= 0 then
    DeltaFramework.Lighting.ExposureCompensation = -1
    DeltaFramework.Lighting.EnvironmentSpecularScale = 0
    DeltaFramework.Lighting.GlobalShadows = false
    shared.Exposure = true
    task.delay(1, function() -- Line: 462 -- upvalues: u72 (ref), u71 (ref)
        u72 = true
        u71 = true
    end)
end
function shared.CheckLightingSettings() -- Line: 469 -- upvalues: Value (ref), u61 (val), u22 (val), DeltaFramework (val), u110 (ref), u72 (ref), u71 (ref)
    local v1
    local v2 = shared
    if Value > 4 then
        v1 = u61
        if not v1 then
            v1 = u22("Low Graphics")
        end
    else
        v1 = true
        if Value ~= 0 then end
    end
    v2.Exposure = v1
    if not DeltaFramework.Lighting.NVG.Enabled then
        if not shared.Exposure then
            v1 = -1
        else
            v1 = -1
        end
        DeltaFramework.Lighting.ExposureCompensation = v1
    else
        DeltaFramework.Lighting.ExposureCompensation = 0
    end
    if shared.Exposure then
        v1 = 0
    elseif not u110 then
        v1 = 0.4
    else
        v1 = 1
    end
    DeltaFramework.Lighting.EnvironmentSpecularScale = v1
    DeltaFramework.Lighting.GlobalShadows = not u22("HD Shadows")
    u72 = true
    u71 = true
end
GameSettings.Changed:Connect(function() -- Line: 487 -- upvalues: GameSettings (val), Value (ref)
    if GameSettings.SavedQualityLevel.Value == Value then
        return
    end
    Value = GameSettings.SavedQualityLevel.Value
    shared.CheckLightingSettings()
end)
local u240 = 0
local u241 = nil
Lighting = DeltaFramework.ReplicatedStorage:WaitForChild("Lighting")
Lighting:WaitForChild("OldOutsideHelipadFuture")
DeltaFramework.ReplicatedStorage.Lighting:WaitForChild("OldOutsideHelipadShadowmap")
local Lighting_2 = DeltaFramework.ReplicatedStorage:WaitForChild("Lighting")
Lighting_2:WaitForChild("OutsideHelipadFuture")
DeltaFramework.ReplicatedStorage.Lighting:WaitForChild("OutsideHelipadShadowmap")
local u272 = 0
local u273 = 0
local u274 = nil
local u275 = nil
local u276 = nil
local u277 = 0
function ProcessDescendants(p1, p2) -- Line: 516 -- upvalues: u276 (ref), u277 (ref)
    local Attribute, Attribute_2, Attribute_3, ClassName, Neon, Parent, Size, v1, v2, v3, v4, v5, v6, v7
    local v8 = #u276
    local v9 = math.floor(v8 / 4)
    local v10 = v9 * u277
    if p1 then
        v6 = v8
        if not v6 then
            v6 = math.min(v8, v9 * (u277 + 1))
        end
    elseif 4 > u277 then
    end
    local v11 = 1
    v2, v1 = p2, p1
    for i = v10, v6, v11 do
        v5 = u276[i]
        if v5 and typeof(v5) == "Instance" then
            if not (v5:IsA("BasePart")) then
                ClassName = v5.ClassName
                if ClassName == "Decal" then
                    if not (string.find(v5.Name, "_POSTER", 0, true)) then
                        Parent = v5.Parent
                        if Parent then
                            Parent = v5.Parent.Parent
                        end
                        if not Parent then
                            Attribute_3 = v5:GetAttribute("lgT")
                            if not v2 then
                                if Attribute_3 and not v2 then
                                    v5.Transparency = Attribute_3
                                    v5:SetAttribute("lgT", nil)
                                end
                            elseif not Attribute_3 and v5.Texture ~= "https://assetgame.roblox.com/asset/?id=15198975315&assetName=80_whaite wire mesh perforate metal texture-seamless" and not (string.find(v5.Name, "_POSTER", 0, true)) then
                                v5:SetAttribute("lgT", v5.Transparency)
                                v5.Transparency = 1
                            end
                        elseif Parent.ClassName == "Tool" then
                        end
                    end
                elseif ClassName ~= "Texture" then
                end
            elseif v5.Parent and v5.Parent.ClassName ~= "Accessory" and v5.Parent.ClassName ~= "Tool" then
                Attribute = v5:GetAttribute("lgM")
                if not v2 then
                    if Attribute and not v2 then
                        if not (v5:GetAttribute("OMNuke")) then
                            v5.Material = Attribute
                        end
                        v5:SetAttribute("lgM", nil)
                    end
                elseif not Attribute then
                    Size = v5.Size
                    v7 = Size.X + Size.Y + Size.Z
                    if v7 < 2 then
                        Neon = Enum.Material.Neon
                        if not Neon then
                            if v5.MaterialVariant ~= "VentMetal" then
                                Neon = Enum.Material.SmoothPlastic
                            else
                                Neon = Enum.Material.Rubber
                            end
                        end
                    elseif v5.Material ~= Enum.Material.Neon then
                    end
                    if v5.Material ~= Neon then
                        Attribute_2 = v5:GetAttribute("OMNuke")
                        v3 = Attribute_2
                        if not v3 then
                            v4 = tostring(v5.Material)
                            v3 = string.sub(v4, 15)
                        end
                        v5:SetAttribute("lgM", v3)
                        if not Attribute_2 then
                            v5.Material = Neon
                        end
                    end
                end
            end
        end
    end
    if not v1 then
        u277 = u277 + 1
    end
    if v1 then
        u276 = nil
        u277 = 0
    elseif 5 <= u277 then
        u276 = nil
        u277 = 0
    end
end
local u279 = nil
local u280 = nil
DeltaFramework:Event("CharacterAdded", function(p1) -- Line: 593 -- upvalues: u279 (ref), u280 (ref)
    u279 = true
    pcall(function() -- Line: 596 -- upvalues: u280 (upval)
        u280:Disconnect()
    end)
    local AttributeChangedSignal = p1:GetAttributeChangedSignal("T")
    u280 = AttributeChangedSignal:Connect(function() -- Line: 598 -- upvalues: u279 (upval)
        u279 = true
        task.wait(2.5)
        u279 = nil
    end)
    task.wait(2.5)
    u279 = nil
end)
local u286 = {}
local v2 = {
    "DistanceCulling",
    function(p1, p2) -- Line: 613
        local v1
        local Name = p1.Name
        local v2 = vector.magnitude(p1.Size)
        if v2 > 1 then
            v1 = 200
        else
            v1 = 100
        end
        if v1 > vector.magnitude(p2 - p1.Position) then
            if Name ~= "Shell" then
                v2 = 0
            else
                v2 = 0.55
            end
            p1.Transparency = v2
            if Name == "Front" then
                for i, v in ipairs(p1:GetChildren()) do
                    if v:IsA("FaceInstance") then
                        v.Transparency = 0
                    end
                end
            elseif Name ~= "Back" and Name ~= "Table" then
            end
            return
        else
            p1.Transparency = 1
            if Name == "Front" then
                for i2, i3 in ipairs(p1:GetChildren()) do
                    if i3:IsA("FaceInstance") then
                        i3.Transparency = 1
                    end
                end
                return
            elseif Name ~= "Back" and Name ~= "Table" then
                return
            end
        end
    end,
    {},
}
local v3 = {
    "GUICulling",
    function(p1, p2) -- Line: 642
        local Parent = p1.Parent
        if not Parent then
            return
        end
        if Parent.Name ~= "Utility" then
            local v1 = vector.magnitude(p2 - Parent.Position)
            if 128 <= v1 then
                p1.Enabled = false
                return
            end
            p1.Enabled = true
            return
        end
        local Adornee = p1.Adornee
        if not Adornee then
            p1.Enabled = false
            return
        end
        local v2 = vector.magnitude(Adornee.Position - p2)
        local v3 = v2 < 128
        p1.Enabled = v3
    end,
    {},
}
local v4 = {
    "LocalFan",
    function(p1, p2) -- Line: 665
        local Attribute = p1:GetAttribute("Stopped")
        local v1 = vector.magnitude(p1:GetPivot().Position - p2)
        local v2 = 128 <= v1
        if Attribute ~= v2 then
            local ParticleEmitter
            p1:SetAttribute("Stopped", v2)
            for i, v in ipairs(p1:GetChildren()) do
                if v.Name ~= "FanCase" then
                    v.Anchored = not v2
                else
                    ParticleEmitter = v:FindFirstChild("ParticleEmitter")
                    if ParticleEmitter then
                        ParticleEmitter.Enabled = not v2
                    end
                end
            end
        end
    end,
    {},
}
local v5 = {
    "ParticleEmitter",
    function(p1, p2) -- Line: 689
        local Parent = p1.Parent
        if Parent then
            local v1 = vector.magnitude(Parent.Position - p2)
            local v2 = v1 < 128
            p1.Enabled = v2
        end
    end,
    {},
}
local v6 = {
    "SurfaceGui",
    function(p1, p2) -- Line: 698 -- upvalues: Value (ref), u61 (val)
        local Parent = p1.Parent
        if not Parent then
            return
        else
            local Name = Parent.Name
            if Name ~= "Screen" then
                local v1, v2, v3
                if p1:GetAttribute("LocalInvalid") then
                    p1.Enabled = false
                    return
                end
                if Name ~= "Utility" then
                    local v4
                    v3 = vector.magnitude(Parent.Position - p2)
                    if 6 > Value then
                        v4 = 1.5
                    else
                        v4 = 2.5
                    end
                    if not u61 then
                        v1 = 1
                    else
                        v1 = 0.5
                    end
                    local v5 = v3 < p1.MaxDistance * (v4 * v1)
                    p1.Enabled = v5
                    return
                end
                local Adornee = p1.Adornee
                if not Adornee then
                    p1.Enabled = false
                    return
                end
                local v6 = vector.magnitude(Adornee.Position - p2)
                if 6 > Value then
                    v1 = 1.5
                else
                    v1 = 2.5
                end
                if not u61 then
                    v2 = 1
                else
                    v2 = 0.5
                end
                v3 = v6 < p1.MaxDistance * (v1 * v2)
                p1.Enabled = v3
                return
            elseif not p1.Active then
                return
            end
        end
    end,
    {},
}
local v7 = {
    "NewPlayerInfo",
    function(p1, p2) -- Line: 729
        if not shared.MutatedPlayerHints then
            return
        end
        if p1:GetAttribute("Remove") then
            p1:Destroy()
        end
    end,
    {},
}
local v8 = {
    "TicketMachine",
    function(p1, p2) -- Line: 738 -- upvalues: DeltaFramework (val), u30 (val)
        local v1
        local v2 = true
        local v3 = true
        local v4 = false
        if not DeltaFramework.Player.Team then
            v2 = false
            v3 = false
        elseif DeltaFramework.Player.Team.Name == "Class - D" then
            if DeltaFramework.Player:HasTag("InTestQueue") then
                v3 = false
            elseif u30(DeltaFramework.Player) then
                v3 = true
                v4 = true
            end
        end
        local Attachment = p1:FindFirstChild("Attachment")
        if Attachment then
            Attachment = p1.Attachment:FindFirstChild("TestQueuePrompt")
        end
        local TestQueueBillboard = p1:FindFirstChild("TestQueueBillboard")
        if Attachment then
            Attachment.Enabled = v2
            if not (DeltaFramework.Player:HasTag("InTestQueue")) then
                v1 = "Join"
            else
                v1 = "Leave"
            end
            Attachment.ActionText = v1
        end
        if TestQueueBillboard then
            TestQueueBillboard.Enabled = v3
            TestQueueBillboard.Icon.Visible = not v4
            if not v4 then
                v1 = 70
            else
                v1 = 20
            end
            TestQueueBillboard.MaxDistance = v1
        end
    end,
    {},
}
local v9 = {
    "RotatingObject",
    function(p1, p2, p3) -- Line: 769
        local v1 = vector.magnitude(p2 - p1.Position)
        if 100 <= v1 then
            p1.Anchored = true
            return
        end
        p1.Anchored = p3
    end,
    {},
}
u286[1] = v2
u286[2] = v3
u286[3] = v4
u286[4] = v5
u286[5] = v6
u286[6] = v7
u286[7] = v8
u286[8] = v9
v5 = {}
v7 = u286[1][2]
v5[1] = "DistanceCulling"
v5[2] = v7
v5[3] = {}
table.insert(u286, 2, v5)
task.spawn(function() -- Line: 781 -- upvalues: DeltaFramework (val), u286 (val)
    local Position
    local CurrentCamera = workspace.CurrentCamera
    if not CurrentCamera then
        local CurrentCamera_2, Position_2, Tagged, v1, v2, v3, v4, v5, v6
        Position = Vector3.new(0, 0, 0)
        while true do
            task.wait(2.5)
            CurrentCamera_2 = workspace.CurrentCamera
            if not CurrentCamera_2 then
                Position_2 = Vector3.new(0, 0, 0)
                v1 = vector.magnitude(Position_2 - Position)
                if 16 <= v1 then
                    Position = Position_2
                    Tagged = DeltaFramework.CS:GetTagged("DistanceCulling")
                    v2 = math.floor(#Tagged / 2)
                    v3 = table.create((math.max(1, v2 - 1)))
                    v4 = math.max(1, v2 - 1)
                    v5 = 1
                    for i = 1, v4, v5 do
                        table.insert(v3, Tagged[i])
                    end
                    v4 = table.create((math.max(1, #Tagged - v2 + 1)))
                    v5 = #Tagged
                    v6 = 1
                    for j = v2, v5, v6 do
                        table.insert(v4, Tagged[j])
                    end
                    u286[1][3] = v3
                    u286[2][3] = v4
                    v5 = u286[1]
                    v5[4] = true
                    v5 = u286[2]
                    v5[4] = true
                end
            else
                Position_2 = CurrentCamera_2.CFrame.Position
            end
        end
    else
        Position = CurrentCamera.CFrame.Position
    end
end)
task.spawn(function() -- Line: 827 -- upvalues: u286 (val), DeltaFramework (val)
    local Position
    local CurrentCamera = workspace.CurrentCamera
    if not CurrentCamera then
        local CurrentCamera_2, Position_2, v1, v2, v3, v4
        Position = Vector3.new(0, 0, 0)
        while true do
            task.wait(2.5)
            CurrentCamera_2 = workspace.CurrentCamera
            if not CurrentCamera_2 then
                Position_2 = Vector3.new(0, 0, 0)
                v2 = vector.magnitude(Position_2 - Position)
                if 16 <= v2 then
                    v1 = true
                    v2 = #u286
                    v3 = 1
                    for i = 3, v2, v3 do
                        if i ~= 7 and not v1 then
                            continue
                        end
                        v4 = u286[i]
                        v4[3] = DeltaFramework.CS:GetTagged(u286[i][1])
                        v4 = u286[i]
                        v4[4] = true
                        task.wait(0.25)
                    end
                    if v1 then
                        Position = Position_2
                    end
                else
                    v1 = false
                end
            else
                Position_2 = CurrentCamera_2.CFrame.Position
            end
        end
    else
        Position = CurrentCamera.CFrame.Position
    end
end)
local u341 = nil
local u342 = 0
local u343 = nil
local u344 = nil
local u345 = nil
local u346 = {}
DeltaFramework.RunService.Heartbeat:Connect(function(p1) -- Line: 877 -- upvalues: u37 (ref), u272 (ref), u273 (ref), u342 (ref), u279 (ref), u22 (val), u70 (ref), u275 (ref), u274 (ref), u112 (ref), u72 (ref), Value (ref), u61 (val), u241 (ref), u240 (ref), u33 (ref), u341 (ref), u31 (ref), u343 (ref), u286 (val), u344 (ref), u345 (ref), u111 (ref), DeltaFramework (val), u71 (ref), u346 (ref), u276 (ref), u277 (ref), u32 (ref), Attribute (ref), u26 (val)
    local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10
    u37 = u37 + p1
    u272 = u272 + p1
    u273 = u273 + p1
    u342 = u342 + p1
    if not shared.Focused then
        v1 = 1
    elseif not u279 then
        v1 = 0.5
    else
        v1 = 0.1
    end
    local v11 = nil
    if not shared.InMenu then
        v11 = u22("HD Shadows")
    else
        v1 = v1 + 5
    end
    if shared.Focused ~= u70 then
        if shared.Focused then
            v1 = 0
        end
        u70 = shared.Focused
    end
    if u37 < v1 then
        return
    end
    u37 = 0
    local u409 = u22("Low Graphics")
    if not u409 then
        if u275 and not u409 then
            u274 = true
            u112 = nil
        end
    elseif not u275 then
    end
    u275 = u409
    if u72 and workspace:FindFirstChild("SCPs") and workspace.SCPs:FindFirstChild("SCP-096") and workspace.SCPs["SCP-096"] and workspace.SCPs["SCP-096"]:FindFirstChild("New") and workspace.SCPs["SCP-096"]:FindFirstChild("096") then
        if Value > 4 then
            if not u61 then
                if 4 < Value then
                    if not u61 and u241 and not (workspace.SCPs["SCP-096"]["096"]:FindFirstChild("SurfaceAppearance")) then
                        pcall(function() -- Line: 923 -- upvalues: u241 (upval)
                            u241.Parent = workspace.SCPs["SCP-096"]["096"]
                        end)
                        u241 = nil
                    end
                elseif Value ~= 0 then
                end
            elseif workspace.SCPs["SCP-096"]["096"]:FindFirstChild("SurfaceAppearance") then
                u241 = workspace.SCPs["SCP-096"]["096"].SurfaceAppearance
                pcall(function() -- Line: 920 -- upvalues: u241 (upval)
                    u241.Parent = script
                end)
            end
        elseif Value ~= 0 then
        end
        u72 = false
    end
    local CurrentCamera = workspace.CurrentCamera
    if CurrentCamera then
        CurrentCamera = CurrentCamera.CFrame.Position
    end
    if not CurrentCamera then
        return
    end
    local v12 = nil
    u240 = u240 + 1
    if 2 <= u240 and u240 <= 6 then
        if 368 >= CurrentCamera.Z then
            u240 = 7
            if u33 then
                u341 = u33:QueryDescendants("BasePart,Light")
                v7 = #u341
                v8 = 1
                for i = 1, v7, v8 do
                    HandleLight(u341[i], CurrentCamera, v11, 0, 1, 0)
                end
            end
        elseif CurrentCamera.X < -95 then
        end
    end
    if 2 > u240 then
        if 12 <= u240 then
            v12 = u31
        end
    elseif u240 <= 6 then
        v12 = u33
    end
    if 20 < u240 then
        u240 = 1
    end
    if 1 <= u342 then
        u342 = 0
        if Value > 4 then
            v7 = u61
            if not v7 then
                v7 = u409
            end
        else
            v7 = true
            if Value ~= 0 then end
        end
        u343 = not u343
        v8 = #u286
        v9 = 1
        for j = 1, v8, v9 do
            if j == 1 then
                if not u343 then
                    v2 = u286[j]
                    if v2[4] then
                        v3 = v2[3]
                        v4 = #v3
                        v5 = 1
                        for k = 1, v4, v5 do
                            v2[2](v3[k], CurrentCamera, v7)
                        end
                        v4 = u286[j]
                        v4[4] = nil
                    end
                end
            elseif j ~= 4 and j ~= 8 and not u343 then
            end
        end
        if not u343 then
            u345 = true
        else
            u344 = true
        end
        if u344 and u345 then
            u344 = nil
            u345 = nil
        end
    end
    if v11 ~= nil then
        v8 = 2.5
    else
        v8 = 5
    end
    if v8 <= u272 then
        u272 = 0
        if u111 then
            v7 = vector.magnitude(CurrentCamera - u111)
            if 100 <= v7 then end
        elseif not u111 then
            local CastShadow
            u111 = CurrentCamera
            for i2, v in ipairs(DeltaFramework.CS:GetTagged("HDShadows")) do
                v3 = v:QueryDescendants("BasePart")
                v5 = #v3
                v6 = 1
                for n = 1, v5, v6 do
                    v4 = v3[n]
                    CastShadow = v4.CastShadow
                    if not CastShadow then
                        if v11 and not CastShadow then
                            v4.CastShadow = true
                        end
                    elseif not v11 then
                        v4.CastShadow = false
                    end
                end
            end
        end
    end
    if 10 <= u273 then
        u273 = 0
        if u274 then
            if not u409 then
                for i3, m in ipairs(u346) do
                    pcall(function() -- Line: 1047 -- upvalues: m (val)
                        m.Parent = game:GetService("MaterialService")
                    end)
                end
                u346 = {}
            else
                for i4, i5 in ipairs(game:GetService("MaterialService"):GetChildren()) do
                    table.insert(u346, i5)
                    pcall(function() -- Line: 1043 -- upvalues: i5 (val)
                        i5.Parent = game:GetService("Debris")
                    end)
                end
            end
            if u112 then
                v7 = vector.magnitude(CurrentCamera - u112)
                if 100 <= v7 then end
            elseif not u112 then
                u112 = CurrentCamera
                task.spawn(function() -- Line: 1056 -- upvalues: u276 (upval), u409 (val), u277 (upval)
                    if u276 then
                        ProcessDescendants(true, u409)
                    end
                    u276 = workspace:QueryDescendants("BasePart,Decal,Texture")
                    u277 = 0
                    ProcessDescendants(false, u409)
                end)
            end
        end
    elseif not u71 then
    end
    if u276 then
        ProcessDescendants(false, u409)
    end
    if Value > 4 then
        if u409 then
            v8 = 100
        elseif 8 > Value then
            v8 = 200
        else
            v8 = 250
        end
    elseif Value ~= 0 then
    end
    v7 = v8 + 100
    if Value > 4 then
        if u61 then
            v8 = 0.26
        elseif not v11 then
            v8 = -0.14
        else
            v8 = 0
        end
    elseif Value ~= 0 then
    end
    v9 = nil
    if 7 <= u240 and u240 <= 11 then
        v12 = u32
        if Value > 4 then
            if u61 then
                v10 = 1.39
            elseif v11 then
                v10 = 0
            elseif not u409 then
                v10 = -0.14
            end
        elseif Value ~= 0 then
        end
        v8 = v10
        if u240 == 7 then
            DeltaFramework.Lighting.GlobalShadows = v11
        end
    end
    if Attribute then
        if not v9 then
            v9 = -1
        else
            if not (u26.CheckActive("Advanced Electrical Circuit")) then
                v10 = 3
            else
                v10 = 2
            end
            v9 = v9 / v10
        end
    end
    if not v12 then
        return
    end
    v10 = u71
    if u240 == 2 then
        u341 = v12:QueryDescendants("BasePart,Light")
    elseif u240 ~= 7 and u240 ~= 12 then
    end
    if u240 ~= 1 then
        local v13
        if 3 > u240 then
            if 8 > u240 then
                if u240 ~= 2 and u240 ~= 7 and u240 ~= 12 then
                    v2 = #u341
                    v3 = math.floor(v2 / 8)
                    v4 = u240 - 13
                    v13 = v4 * v3
                    if 8 > v4 then
                        v5 = math.min(v2, (v4 + 1) * v3)
                    else
                        v5 = v2
                    end
                    v6 = 1
                    for i6 = v13, v5, v6 do
                        HandleLight(u341[i6], CurrentCamera, false, v8, v9, v7, 0)
                    end
                end
            elseif u240 <= 11 then
                v2 = #u341
                v3 = math.floor(v2 / 4)
                v4 = u240 - 8
                v13 = v4 * v3
                if 4 > v4 then
                    v5 = math.min(v2, (v4 + 1) * v3)
                else
                    v5 = v2
                end
                v6 = 1
                for i7 = v13, v5, v6 do
                    HandleLight(u341[i7], CurrentCamera, v11, v8, v9, v7, true)
                end
            end
        elseif u240 <= 6 then
            v2 = #u341
            v3 = math.floor(v2 / 4)
            v4 = u240 - 3
            v13 = v4 * v3
            if 4 > v4 then
                v5 = math.min(v2, (v4 + 1) * v3)
            else
                v5 = v2
            end
            v6 = 1
            for i8 = v13, v5, v6 do
                HandleLight(u341[i8], CurrentCamera, false, v8, v9, v7)
            end
        end
    elseif u31 and u31.Parent then
        local Models = u31.Parent:FindFirstChild("Models")
        if Models then
            u341 = Models:QueryDescendants("BasePart,Light")
            v3 = #u341
            v4 = 1
            for i9 = 1, v3, v4 do
                HandleLight(u341[i9], CurrentCamera, v11, v8, v9, v7)
            end
        end
    end
    if not v10 then
        return
    end
    if u71 ~= 0 then
        u71 = 0
        return
    end
    u71 = nil
end)

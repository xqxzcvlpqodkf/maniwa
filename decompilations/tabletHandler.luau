-- Script Path: game:GetService("Players")["1IllIlIIIIlIIlllIllI"].PlayerGui.Tablet.TabletHandler
-- Took 0.04s to decompile.
-- Executor: Real (2.1.0)

--[[
__________                   __               __    __________              .__
\______   \_______  ____    |__| ____   _____/  |_  \______   \ ____ _____  |  |
 |     ___/\_  __ \/  _ \   |  |/ __ \_/ ___\   __\  |       _// __ \\__  \ |  |
 |    |     |  | \(  <_> )  |  \  ___/\  \___|  |    |    |   \  ___/ / __ \|  |__
 |____|     |__|   \____/\__|  |\___  >\___  >__|    |____|_  /\___  >____  /____/
                        \______|    \/     \/               \/     \/     \/
]]
--                           Project Real  |  Luau Decompiler
--                                   Made by @zinvera
--           File: Players.1IllIlIIIIlIIlllIllI.PlayerGui.Tablet.TabletHandler
--                               Dumped in 0.0471 seconds
--                         Bytecode version 9  |  119 functions

local u915, u917, u919
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Delta = ReplicatedStorage:WaitForChild("Delta")
local DeltaFramework = require(Delta:WaitForChild("DeltaFramework"))
local TextService = game:GetService("TextService")
u915, u917, u919 = DeltaFramework:Get("Clipboard", "RegionUtil", "Utility")
local Remotes = DeltaFramework.ReplicatedStorage:WaitForChild("Remotes")
local SCPTesting = Remotes:WaitForChild("SCPTesting")
local Parent = script.Parent
local Main = Parent.Main
local u926 = false
local u821 = false
local u930 = nil
local u932 = false
local u934 = false
local u936 = false
local u938 = false
local u940 = false
local u942 = false
local u944 = false
local u946 = false
shared.TabletSystem = {}
shared.TabletSystem.Info = {
    SiteStatus = {
        Riot = false,
        Raid = false,
        Breach = false,
        Nuclear = false,
        Daybreak = false,
        Hostiles = 0,
    },
    SitePolicyVote = {Voted = 0},
    JanitorVote = {Voted = "N/A"},
}
while not shared.UIZoomIgnore do
    task.wait(1)
end
for i, v in ipairs(Parent:GetDescendants()) do
    if v:IsA("Frame") then
        shared.UIZoomIgnore(v)
    elseif not (v:IsA("TextButton")) and not (v:IsA("ImageLabel")) and not (v:IsA("ScrollingFrame")) and not (v:IsA("TextLabel")) then
    end
end
function NukeUIHandler(p1) -- Line: 58 -- upvalues: u936 (ref), Main (val), u934 (ref), DeltaFramework (val), u926 (ref)
    local v1, v2
    if not p1 or u936 then
        if not p1 and u936 then
            u936 = false
            u934 = true
        end
        return
    end
    local Label = Main.Nuke.Label
    local Back = Main.Nuke.Label.Back
    u934 = false
    u936 = true
    Label.Text = "X     X     :     X     X     :     X     X"
    Back.Text = Label.Text
    Main.Nuke.Visible = true
    local NUKEEVENT = workspace:WaitForChild("NUKEEVENT", (1 / 0))
    local MUSIC = NUKEEVENT:WaitForChild("MUSIC", (1 / 0))
    if not MUSIC then
        Label.Text = "CONNECTION LOST"
        Back.Text = Label.Text
        u936 = false
        u934 = true
        return
    end
    local v3 = 0
    local u36 = DeltaFramework:Get("Utility")
    local u126 = {}
    local v4 = Color3.fromRGB(255, 0, 0)
    u126[1] = v4
    u126[2] = Color3.fromRGB(0, 0, 0)
    local u59 = 0
    local v5 = tick()
    task.spawn(function() -- Line: 89 -- upvalues: u934 (upval), MUSIC (val), Label (val), Back (val), u936 (upval)
        local v1, v2, v3, v4, v5, v6, v7, v8
        while not u934 do
            task.wait()
            if math.floor(MUSIC.TimeLength) > MUSIC.TimePosition then
                v1 = MUSIC.TimeLength - MUSIC.TimePosition
                v2 = math.floor(v1 / 60)
                v3 = math.floor(v1 % 60)
                v4 = math.floor((v1 - math.floor(v1)) * 100)
                if v2 >= 10 then
                    v6 = tostring(v2):sub(0, 1)
                    v5 = v6 .. "     " .. tostring(v2):sub(2, 2)
                else
                    v5 = "0     " .. tostring(v2)
                end
                if v3 >= 10 then
                    v7 = tostring(v3):sub(0, 1)
                    v6 = v7 .. "     " .. tostring(v3):sub(2, 2)
                else
                    v6 = "0     " .. tostring(v3)
                end
                if v4 >= 10 then
                    v8 = tostring(v4):sub(0, 1)
                    v7 = v8 .. "     " .. tostring(v4):sub(2, 2)
                else
                    v7 = "0     " .. tostring(v4)
                end
                Label.Text = v5 .. "     :     " .. v6 .. "     :     " .. v7
                Back.Text = Label.Text
                if not shared.TabletSystem.Info.SiteStatus.Nuclear then
                    Label.Text = "CONNECTION LOST"
                    Back.Text = "CONNECTION LOST"
                    u934 = true
                    u936 = false
                    return
                end
                if u934 then
                    Label.Text = "CONNECTION LOST"
                    Back.Text = "CONNECTION LOST"
                    u936 = false
                    return
                end
            else
                Label.Text = "CONNECTION LOST"
                Back.Text = "CONNECTION LOST"
                if 195 <= MUSIC.TimePosition then
                    Label.Text = "CONNECTION LOST"
                    Back.Text = "CONNECTION LOST"
                    u934 = true
                    u936 = false
                    return
                end
            end
        end
    end)
    while not u934 do
        u59 = u59 + 1
        if #u126 < u59 then
            u59 = 1
        end
        for i, v in ipairs(Main.Nuke:GetChildren()) do
            if v.ClassName == "Frame" and v.Name ~= "Frame" and u926 then
                if v.Name ~= "Box" then
                    v1 = 1 - tonumber(v.Name:sub(4)) / 5
                    task.delay(v1, function() -- Line: 156 -- upvalues: DeltaFramework (upval), v (val), u36 (val), u126 (val), u59 (ref)
                        local v1 = TweenInfo.new(4)
                        DeltaFramework.TweenService:Create(v, v1, {BackgroundColor3 = u36:Shade(u126[u59], tonumber(v.Name:sub(4)) * 25 - 15)}):Play()
                        v1 = TweenInfo.new(4)
                        DeltaFramework.TweenService:Create(v.BoxShadow, v1, {BackgroundColor3 = u36:Shade(u126[u59], tonumber(v.Name:sub(4)) * 25)}):Play()
                    end)
                else
                    task.delay(1, function() -- Line: 151 -- upvalues: DeltaFramework (upval), v (val), u36 (val), u126 (val), u59 (ref)
                        local v1 = TweenInfo.new(4)
                        DeltaFramework.TweenService:Create(v, v1, {BackgroundColor3 = u36:Shade(u126[u59], -15)}):Play()
                        v1 = TweenInfo.new(4)
                        DeltaFramework.TweenService:Create(v.BoxShadow, v1, {BackgroundColor3 = u126[u59]}):Play()
                    end)
                end
            end
        end
        v3 = v3 + task.wait(2)
        if 196 >= v3 then
            v2 = tick() - v5
            if 196 > v2 then
                continue
            end
        end
        Label.Text = "CONNECTION LOST"
        Back.Text = "CONNECTION LOST"
        u934 = true
        u936 = false
        break
    end
    Label.Text = "CONNECTION LOST"
    Back.Text = "CONNECTION LOST"
    NukeUIHandler(false)
end
function CheckTablet() -- Line: 191 -- upvalues: DeltaFramework (val), u926 (ref)
    if not DeltaFramework.Player then
        return false
    else
        local Character
        if DeltaFramework.Player.Character then
            Character = DeltaFramework.Player.Character
            if not Character then
                Character = DeltaFramework.Player.CharacterAdded:Wait()
            end
            local v1 = Character
            if not v1 then
                if not v1 then
                    return false
                end
                if not (v1:FindFirstChild("Tablet")) then
                    if not (DeltaFramework.Player:FindFirstChild("Backpack")) then
                        return false
                    end
                    if DeltaFramework.Player.Backpack then
                        if not (DeltaFramework.Player.Backpack:FindFirstChild("Tablet")) then
                            return false
                        end
                        if DeltaFramework.Player.Backpack:FindFirstChild("Tablet").ClassName == "Tool" then
                            return true
                        end
                        return false
                    end
                    return false
                end
                if v1:FindFirstChild("Tablet").ClassName == "Tool" then
                    return true
                end
                if not (DeltaFramework.Player:FindFirstChild("Backpack")) or not DeltaFramework.Player.Backpack or not (DeltaFramework.Player.Backpack:FindFirstChild("Tablet")) then
                    return false
                end
                if DeltaFramework.Player.Backpack:FindFirstChild("Tablet").ClassName == "Tool" then
                    return true
                end
                return false
            elseif v1:FindFirstChild("Humanoid") and v1.Humanoid.Health <= 0 and u926 then
                return true
            end
        elseif not (DeltaFramework.Player.CharacterAdded:Wait()) then
            return false
        end
    end
end
function TabletInHand() -- Line: 223 -- upvalues: DeltaFramework (val), u926 (ref)
    if not DeltaFramework.Player then
        return false
    else
        local Character
        if DeltaFramework.Player.Character then
            Character = DeltaFramework.Player.Character
            if not Character then
                Character = DeltaFramework.Player.CharacterAdded:Wait()
            end
            local v1 = Character
            if not v1 or not (v1:FindFirstChild("Humanoid")) or v1.Humanoid.Health > 0 then
                if v1 then
                    if not (v1:FindFirstChild("Tablet")) then
                        return
                    end
                    if v1:FindFirstChild("Tablet").ClassName == "Tool" then
                        return true
                    end
                    return
                end
                return false
            end
            if u926 then
                return true
            end
            if not v1 then
                return false
            end
            if not (v1:FindFirstChild("Tablet")) then
                return
            end
            if v1:FindFirstChild("Tablet").ClassName == "Tool" then
                return true
            end
            return
        elseif not (DeltaFramework.Player.CharacterAdded:Wait()) then
            return false
        end
    end
end
function CheckRoleplay() -- Line: 247 -- upvalues: DeltaFramework (val)
    if workspace:GetAttribute("MapOriginal") ~= "Roleplay" or DeltaFramework.ReplicatedStorage:WaitForChild("Mode").Value ~= "Roleplay" then
        return false
    end
    return true
end
function UpdateSiteStatusPage() -- Line: 259 -- upvalues: Main (val), u938 (ref), u926 (ref), DeltaFramework (val)
    local v1
    local Middle = Main.SStats.Info.Middle
    local Info = shared.TabletSystem.Info
    if u938 then
        return
    end
    local v2 = 0
    u938 = true
    if Info.SiteStatus.Riot then
        v2 = v2 + 2
        if Middle.Alarm1.Label.TextColor3 ~= Color3.fromRGB(255, 130, 130) then
            if not u926 then
                Middle.Alarm1.Label.TextColor3 = Color3.fromRGB(255, 130, 130)
                Middle.Alarm1.BG.Fade.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm1.Label, v1, {TextColor3 = Color3.fromRGB(255, 130, 130)}):Play()
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm1.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
            end
        elseif Middle.Alarm1.BG.Fade.BackgroundColor3 == Color3.fromRGB(85, 0, 0) then
        end
    elseif Middle.Alarm1.Label.TextColor3 ~= Color3.fromRGB(255, 255, 255) then
        if not u926 then
            Middle.Alarm1.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Middle.Alarm1.BG.Fade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        else
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm1.Label, v1, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm1.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end
    elseif Middle.Alarm1.BG.Fade.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then
    end
    if Info.SiteStatus.Breach then
        v2 = v2 + 3
        if Middle.Alarm3.Label.TextColor3 ~= Color3.fromRGB(255, 130, 130) then
            if not u926 then
                Middle.Alarm3.Label.TextColor3 = Color3.fromRGB(255, 130, 130)
                Middle.Alarm3.BG.Fade.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm3.Label, v1, {TextColor3 = Color3.fromRGB(255, 130, 130)}):Play()
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm3.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
            end
        elseif Middle.Alarm3.BG.Fade.BackgroundColor3 == Color3.fromRGB(85, 0, 0) then
        end
    elseif Middle.Alarm3.Label.TextColor3 ~= Color3.fromRGB(255, 255, 255) then
        if not u926 then
            Middle.Alarm3.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Middle.Alarm3.BG.Fade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        else
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm3.Label, v1, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm3.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end
    elseif Middle.Alarm3.BG.Fade.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then
    end
    if Info.SiteStatus.Raid then
        v2 = v2 + 3
        if Middle.Alarm2.Label.TextColor3 ~= Color3.fromRGB(255, 130, 130) then
            if not u926 then
                Middle.Alarm2.Label.TextColor3 = Color3.fromRGB(255, 130, 130)
                Middle.Alarm2.BG.Fade.BackgroundColor3 = Color3.fromRGB(85, 0, 0)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm2.Label, v1, {TextColor3 = Color3.fromRGB(255, 130, 130)}):Play()
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Alarm2.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(85, 0, 0)}):Play()
            end
        elseif Middle.Alarm2.BG.Fade.BackgroundColor3 == Color3.fromRGB(85, 0, 0) then
        end
    elseif Middle.Alarm2.Label.TextColor3 ~= Color3.fromRGB(255, 255, 255) then
        if not u926 then
            Middle.Alarm2.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            Middle.Alarm2.BG.Fade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        else
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm2.Label, v1, {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(Middle.Alarm2.BG.Fade, v1, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end
    elseif Middle.Alarm2.BG.Fade.BackgroundColor3 == Color3.fromRGB(255, 255, 255) then
    end
    if workspace:FindFirstChild("SCPs") and workspace.SCPs:FindFirstChild("SCP-079") and workspace.SCPs["SCP-079"]:GetAttribute("Breached") then
        v2 = v2 + 3
    end
    Middle.Hostiles.Counter.Text = tostring(Info.SiteStatus.Hostiles)
    local Hostiles = Info.SiteStatus.Hostiles
    if 0 < Hostiles then
        local Hostiles_2 = Info.SiteStatus.Hostiles
        if Hostiles_2 > 2 then
            local Hostiles_3 = Info.SiteStatus.Hostiles
            if Hostiles_3 > 5 then
                local Hostiles_4 = Info.SiteStatus.Hostiles
                if Hostiles_4 > 9 then
                    local Hostiles_5 = Info.SiteStatus.Hostiles
                    if 9 < Hostiles_5 then
                        v2 = v2 + 4
                    end
                else
                    v2 = v2 + 3
                end
            else
                v2 = v2 + 2
            end
        else
            v2 = v2 + 1
        end
    end
    if v2 <= 1 then
        Middle.Condition.Counter.Text = string.upper("FAVORABLE")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(85, 170, 127) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(85, 170, 127)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(85, 170, 127)}):Play()
            end
        end
    elseif v2 <= 2 then
        Middle.Condition.Counter.Text = string.upper("MARGINAL RISK")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(108, 170, 85) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(108, 170, 85)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(108, 170, 85)}):Play()
            end
        end
    elseif v2 <= 4 then
        Middle.Condition.Counter.Text = string.upper("SLIGHT RISK")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 255, 127) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 255, 127)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 255, 127)}):Play()
            end
        end
    elseif v2 <= 5 then
        Middle.Condition.Counter.Text = string.upper("ENHANCED RISK")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 49, 49) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 49, 49)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 49, 49)}):Play()
            end
        end
    elseif v2 <= 6 then
        Middle.Condition.Counter.Text = string.upper("MODERATE RISK")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 0, 0) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 0, 0)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
            end
        end
    elseif v2 <= 11 then
        Middle.Condition.Counter.Text = string.upper("HIGH RISK")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 76, 255) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 76, 255)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 76, 255)}):Play()
            end
        end
    elseif 11 < v2 then
        Middle.Condition.Counter.Text = string.upper("EXTREME RISK\n\nNUCLEAR DETONATION RECOMMENDED!")
        if Middle.Condition.Counter.TextColor3 ~= Color3.fromRGB(170, 0, 127) then
            if not u926 then
                Middle.Condition.Counter.TextColor3 = Color3.fromRGB(170, 0, 127)
            else
                v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Middle.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(170, 0, 127)}):Play()
            end
        end
    end
    u938 = false
end
function GetPolicyIdByTitle(p1) -- Line: 480 -- upvalues: DeltaFramework (val)
    local v1 = DeltaFramework:Get("SitePolicies")
    local v2 = #v1.Listing
    local v3 = 1
    for i = 1, v2, v3 do
        if v1.Listing[i].Title == p1 then
            return i
        end
    end
end
function UpdateSitePoliciesPage() -- Line: 490 -- upvalues: Main (val), DeltaFramework (val), u942 (ref)
    local List = Main.SPolicies.Info.Middle.List
    local Info = shared.TabletSystem.Info
    local u12 = DeltaFramework:Get("SitePolicies")
    local SitePolicies = DeltaFramework.ReplicatedStorage.MiscModules:WaitForChild("SitePolicies", 10)
    for i, v in ipairs(List:getChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end
    if CheckRoleplay() then
        for k, i2 in pairs(u12.Listing) do
            task.spawn(function() -- Line: 521 -- upvalues: List (val), i2 (val), SitePolicies (val), u12 (val), Info (val), DeltaFramework (upval), u942 (upval)
                local Voted
                local u5 = List.Temp.Template:Clone()
                if not i2.Title then
                    u5.Info.Title.Text = string.upper("N/A")
                elseif i2.Title ~= "" then
                    u5.Info.Title.Text = i2.Title
                end
                if not i2.Description then
                    u5.Info.Desc.Text = string.upper("N/A")
                elseif i2.Description ~= "" then
                    u5.Info.Desc.Text = i2.Description
                end
                if not i2.ImageID then
                    u5.Info.Icon.Image = "rbxassetid://6028556492"
                elseif i2.ImageID ~= "rbxassetid://" and i2.ImageID ~= "" then
                    u5.Info.Icon.Image = i2.ImageID
                end
                if not (GetPolicyIdByTitle(i2.Title)) then
                    u5:SetAttribute("PolicyIdentifier", "N/A")
                else
                    u5:SetAttribute("PolicyIdentifier", GetPolicyIdByTitle(i2.Title))
                end
                if not (SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title))) then
                    u5.Votes.Text = "0 Votes"
                    u5.LayoutOrder = 1000
                else
                    if SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title)) == 1 then
                        local Votes_2 = u5.Votes
                        Votes_2.Text = SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title)) .. " Vote"
                    else
                        local Votes = u5.Votes
                        Votes.Text = SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title)) .. " Votes"
                    end
                    local Attribute = SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title))
                    if 0 >= Attribute then
                        u5.LayoutOrder = 1000
                    else
                        u5.LayoutOrder = u5.LayoutOrder - SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title))
                    end
                end
                if not (u12.CheckActive(i2.Title)) then
                    local Info_3 = u5.Info
                    Info_3.BackgroundColor3 = Color3.fromRGB(138, 138, 138)
                else
                    local Info_2 = u5.Info
                    Info_2.BackgroundColor3 = Color3.fromRGB(85, 170, 127)
                    local Attribute_2 = SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title))
                    if Attribute_2 > 0 then
                        u5.LayoutOrder = 850
                        u5.LayoutOrder = u5.LayoutOrder - SitePolicies:GetAttribute("Policy" .. GetPolicyIdByTitle(i2.Title))
                    else
                        u5.LayoutOrder = 999
                    end
                end
                if not Info.SitePolicyVote.Voted then
                    u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                    u5.Info.UIStroke.Thickness = 1
                    local UIStroke_2 = u5.UIStroke
                    UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
                    u5.UIStroke.Thickness = 1
                    u5:SetAttribute("Voted", false)
                else
                    Voted = Info.SitePolicyVote.Voted
                    if Voted == GetPolicyIdByTitle(i2.Title) then
                        u5.Info.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                        u5.Info.UIStroke.Thickness = 3
                        local UIStroke = u5.UIStroke
                        UIStroke.Color = Color3.fromRGB(85, 170, 127)
                        u5.UIStroke.Thickness = 3
                        u5:SetAttribute("Voted", GetPolicyIdByTitle(i2.Title))
                    else
                        u5:SetAttribute("Voted", false)
                        u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                        u5.Info.UIStroke.Thickness = 1
                    end
                end
                local u272 = u5.Info.Button.MouseButton1Click:Connect(function() -- Line: 611 -- upvalues: u5 (val), Info (upval), DeltaFramework (upval), u942 (upval), i2 (upval)
                    if not (CheckRoleplay()) or not (u5:GetAttribute("PolicyIdentifier")) or u5:GetAttribute("PolicyIdentifier") == "N/A" then
                        return
                    end
                    script.Click:Play()
                    if u5:GetAttribute("Voted") then
                        u5:SetAttribute("Voted", false)
                        Info.SitePolicyVote.Voted = 0
                        u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                        u5.Info.UIStroke.Thickness = 1
                        u5.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                        u5.UIStroke.Thickness = 1
                        local PolicyChange = DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("PolicyChange")
                        PolicyChange:FireServer({Player = DeltaFramework.Player, Vote = 0, Type = "REMOVE"})
                        return
                    end
                    if u942 then
                        shared.Notification({Title = "Tablet Cooldown", Duration = 5, Text = "Please wait " .. tostring(5) .. " seconds before voting again."})
                        return
                    end
                    u942 = true
                    task.delay(5, function() -- Line: 647 -- upvalues: u942 (upval)
                        u942 = false
                    end)
                    u5:SetAttribute("Voted", true)
                    Info.SitePolicyVote.Voted = GetPolicyIdByTitle(i2.Title)
                    u5.Info.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                    u5.Info.UIStroke.Thickness = 3
                    u5.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                    u5.UIStroke.Thickness = 3
                    local PolicyChange_2 = DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("PolicyChange")
                    PolicyChange_2:FireServer({Player = DeltaFramework.Player, Vote = GetPolicyIdByTitle(i2.Title), Type = "ADD"})
                end)
                u5.Destroying:Connect(function() -- Line: 664 -- upvalues: u272 (ref)
                    u272:Disconnect()
                end)
                u5.Visible = true
                u5.Parent = List
                u5.Name = "Policy" .. tostring(u5:GetAttribute("PolicyIdentifier"))
            end)
        end
        return
    end
    local v1 = List.Temp.Template:Clone()
    v1.Info.Title.Text = "SITE NOT VALID"
    v1.Info.Desc.Text = "This site fails to meet the requirements set forth by the O5 Council to use this system, please contact ▇▇▇ for assistance."
    v1.Info.Icon.Image = "rbxassetid://6028556492"
    v1.Info.BackgroundColor3 = Color3.fromRGB(255, 143, 143)
    v1.Votes.Text = ""
    v1.Visible = true
    v1.Parent = List
end
function UpdateSiteJanitorPage() -- Line: 678 -- upvalues: Main (val), DeltaFramework (val), u944 (ref)
    local v1
    local List = Main.Tasks.Info.Middle.List
    local Info = shared.TabletSystem.Info
    local u17 = DeltaFramework:Get("JanitorCheck")
    local JanitorCheck = DeltaFramework.ReplicatedStorage.MiscModules:WaitForChild("JanitorCheck", 10)
    for i, v in ipairs(List:getChildren()) do
        if v:IsA("Frame") then
            v:Destroy()
        end
    end
    if not (CheckRoleplay()) then
        v1 = Main.SPolicies.Info.Middle.List.Temp.Template:Clone()
        v1.Info.Title.Text = "SITE NOT VALID"
        v1.Info.Desc.Text = "This site fails to meet the requirements set forth by the O5 Council to use this system, please contact ▇▇▇ for assistance."
        v1.Info.Icon.Image = "rbxassetid://6028556492"
        v1.Info.BackgroundColor3 = Color3.fromRGB(0, 85, 127)
        v1.Votes.Text = ""
        v1.Visible = true
        v1.Parent = List
        return
    end
    for i2, i3 in ipairs(DeltaFramework.Players:GetPlayers()) do
        task.spawn(function() -- Line: 710 -- upvalues: List (val), i3 (val), JanitorCheck (val), u17 (val), Info (val), DeltaFramework (upval), u944 (upval)
            local Voted, v1
            local u5 = List.Temp.Template:Clone()
            u5.Info.Title.Text = i3.Name
            u5.Info.Title2.Text = "(" .. i3.DisplayName .. ")"
            u5.Info.Icon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. i3.UserId .. "&width=420&height=420&format=png"
            if not i3.Character then
                u5.Info.Rank.Text = "Class - D"
            elseif i3.Character:FindFirstChild("Head") and i3.Character.Head:FindFirstChild("Tag") and i3.Character.Head.Tag:FindFirstChild("Team") then
                u5.Info.Rank.Text = i3.Character.Head.Tag.Team.Text
            end
            local v2 = i3:GetAttribute("TestsParticipated") or 0
            if v2 ~= 1 then
                v1 = "s"
            else
                v1 = ""
            end
            u5.Info.Tests.Text = "Tested on " .. tostring(v2) .. " time" .. v1
            u5:SetAttribute("Player", i3.Name)
            if not (JanitorCheck:GetAttribute("Janitor" .. i3.Name)) then
                u5.Votes.Text = "0 Votes"
                u5.LayoutOrder = 1000
            elseif JanitorCheck:GetAttribute("Janitor" .. i3.Name) == 1 then
                local Votes_2 = u5.Votes
                Votes_2.Text = tostring(JanitorCheck:GetAttribute("Janitor" .. i3.Name)) .. " Vote"
            else
                local Votes = u5.Votes
                Votes.Text = tostring(JanitorCheck:GetAttribute("Janitor" .. i3.Name)) .. " Votes"
            end
            if not (u17.CheckActive(i3.Name)) then
                local Info_3 = u5.Info
                Info_3.BackgroundColor3 = Color3.fromRGB(255, 138, 71)
                if not (i3:GetAttribute("Upgraded")) then
                    u5.LayoutOrder = 950
                else
                    u5.LayoutOrder = 900
                    local Info_4 = u5.Info
                    Info_4.BackgroundColor3 = Color3.fromRGB(255, 95, 74)
                end
            else
                local Info_2 = u5.Info
                Info_2.BackgroundColor3 = Color3.fromRGB(85, 170, 127)
                u5.LayoutOrder = 850
            end
            if not Info.JanitorVote.Voted then
                u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                u5.Info.UIStroke.Thickness = 1
                local UIStroke_2 = u5.UIStroke
                UIStroke_2.Color = Color3.fromRGB(255, 255, 255)
                u5.UIStroke.Thickness = 1
                u5:SetAttribute("Voted", false)
            elseif Info.JanitorVote.Voted ~= "N/A" then
                Voted = Info.JanitorVote.Voted
                if Voted == i3.Name then
                    u5.Info.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                    u5.Info.UIStroke.Thickness = 3
                    local UIStroke = u5.UIStroke
                    UIStroke.Color = Color3.fromRGB(85, 170, 127)
                    u5.UIStroke.Thickness = 3
                    u5:SetAttribute("Voted", true)
                else
                    u5:SetAttribute("Voted", false)
                    u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                    u5.Info.UIStroke.Thickness = 1
                end
            end
            local u251 = u5.Info.Button.MouseButton1Click:Connect(function() -- Line: 790 -- upvalues: u5 (val), Info (upval), DeltaFramework (upval), i3 (upval), u944 (upval)
                if not (CheckRoleplay()) or not (u5:GetAttribute("Player")) then
                    return
                end
                script.Click:Play()
                if u5:GetAttribute("Voted") then
                    u5:SetAttribute("Voted", false)
                    Info.JanitorVote.Voted = "N/A"
                    u5.Info.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                    u5.Info.UIStroke.Thickness = 1
                    u5.UIStroke.Color = Color3.fromRGB(255, 255, 255)
                    u5.UIStroke.Thickness = 1
                    local TasksChange = DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("TasksChange")
                    TasksChange:FireServer({Player = DeltaFramework.Player, Vote = i3.Name, Type = "REMOVE"})
                    return
                end
                if u944 then
                    shared.Notification({Title = "Tablet Cooldown", Text = "Please wait 1 minute before voting again.", Duration = 5})
                    return
                end
                u944 = true
                task.delay(60, function() -- Line: 825 -- upvalues: u944 (upval)
                    u944 = false
                end)
                u5:SetAttribute("Voted", true)
                Info.JanitorVote.Voted = i3.Name
                u5.Info.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                u5.Info.UIStroke.Thickness = 3
                u5.UIStroke.Color = Color3.fromRGB(85, 170, 127)
                u5.UIStroke.Thickness = 3
                local TasksChange_2 = DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("TasksChange")
                TasksChange_2:FireServer({Player = DeltaFramework.Player, Vote = i3.Name, Type = "ADD"})
            end)
            u5.Destroying:Connect(function() -- Line: 842 -- upvalues: u251 (ref)
                u251:Disconnect()
            end)
            if DeltaFramework.Teams:FindFirstChild("Class - D") and i3.Team ~= DeltaFramework.Teams:WaitForChild("Class - D") then
                u5:SetAttribute("Remove", true)
                if u5:GetAttribute("Voted") then
                    Info.JanitorVote.Voted = "N/A"
                    u5:SetAttribute("Voted", false)
                end
            end
            if DeltaFramework.CS:HasTag(i3.Character, "EquippedGun") then
                u5:SetAttribute("Remove", true)
                if u5:GetAttribute("Voted") then
                    Info.JanitorVote.Voted = "N/A"
                    u5:SetAttribute("Voted", false)
                end
            elseif not (DeltaFramework.CS:HasTag(i3.Character, "Infected")) and not (DeltaFramework.CS:HasTag(i3.Character, "076")) and not (DeltaFramework.CS:HasTag(i3.Character, "Escaped")) and not (DeltaFramework.CS:HasTag(i3.Character, "Rogue")) and not (i3:GetAttribute("JanitorBan")) then
            end
            if u5:GetAttribute("Remove") then
                u5:Destroy()
            else
                u5.Visible = true
                u5.Parent = List
                u5.Name = "Player_" .. tostring(i3.Name)
            end
        end)
    end
    v1 = 0
    for i4, j in ipairs(Main.Tasks.Info.Middle.List:GetChildren()) do
        if j:IsA("Frame") then
            v1 = v1 + 1
        end
    end
    if v1 <= 0 then
        Main.Tasks.Info.Middle.List.Temp.EmptyList.Visible = true
        return
    end
    Main.Tasks.Info.Middle.List.Temp.EmptyList.Visible = false
end
function UpdatePuddles() -- Line: 898 -- upvalues: Main (val), DeltaFramework (val), u926 (ref)
    local v1, v2
    if not (CheckRoleplay()) then
        return
    end
    local Puddle = Main.Tasks.Info.Middle.Puddle
    local v3 = 0
    local v4 = 0
    local v5 = DeltaFramework:Get("JanitorCheck")
    if workspace:FindFirstChild("PuddleFolder") then
        local v6
        for i, v in ipairs(workspace.PuddleFolder:GetChildren()) do
            if v:IsA("MeshPart") then
                v3 = v3 + 1
            end
        end
        Puddle.Puddles.Count.Text = tostring(v3)
        if v3 <= 1 then
            Puddle.Condition.Counter.Text = string.upper("CLEAN")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(0, 174, 255) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(0, 174, 255)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(0, 174, 255)}):Play()
                end
            end
        elseif v3 <= 2 then
            Puddle.Condition.Counter.Text = string.upper("TOLERABLE")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(85, 184, 79) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(108, 170, 85)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(108, 170, 85)}):Play()
                end
            end
        elseif v3 <= 4 then
            Puddle.Condition.Counter.Text = string.upper("SLIGHTLY UNCLEAN")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 255, 127) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 255, 127)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(255, 255, 127)}):Play()
                end
            end
        elseif v3 <= 5 then
            Puddle.Condition.Counter.Text = string.upper("UNCLEAN")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 49, 49) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 49, 49)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(255, 49, 49)}):Play()
                end
            end
        elseif v3 <= 6 then
            Puddle.Condition.Counter.Text = string.upper("VERY UNCLEAN")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 0, 0) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 0, 0)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
                end
            end
        elseif v3 <= 9 then
            Puddle.Condition.Counter.Text = string.upper("HIGHLY UNCLEAN")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(255, 76, 255) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(255, 76, 255)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(255, 76, 255)}):Play()
                end
            end
        elseif 9 < v3 then
            Puddle.Condition.Counter.Text = string.upper("FILTHY!")
            if Puddle.Condition.Counter.TextColor3 ~= Color3.fromRGB(170, 0, 127) then
                if not u926 then
                    Puddle.Condition.Counter.TextColor3 = Color3.fromRGB(170, 0, 127)
                else
                    v6 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Puddle.Condition.Counter, v6, {TextColor3 = Color3.fromRGB(170, 0, 127)}):Play()
                end
            end
        end
    end
    v1, v2 = v5.IsVoted()
    if v1 then
        v4 = v4 + 1
    end
    if v2 then
        v4 = v4 + 1
    end
    Puddle.Janitors.Count.Text = tostring(v4)
end
function UpdateTesting() -- Line: 1020 -- upvalues: Main (val), DeltaFramework (val)
    if not (CheckRoleplay()) then
        return
    end
    local Testing = Main.Tasks.Info.Middle.Testing
    local Players = DeltaFramework.Teams:FindFirstChild("Scientific Department")
    if Players then
        Players = DeltaFramework.Teams:FindFirstChild("Scientific Department"):GetPlayers()
    end
    local v1 = workspace:GetAttribute("RecentTests") or 0
    if not Players or not v1 then
        return
    end
    Testing.Scientists.Count.Text = #Players
    Testing.Tests.Count.Text = v1
    if 50 <= v1 then
        Testing.Condition.Counter.Text = "ABOVE AND BEYOND"
        return
    end
    if 35 <= v1 then
        Testing.Condition.Counter.Text = "INNOVATIVE"
        return
    end
    if 25 <= v1 then
        Testing.Condition.Counter.Text = "HIGHLY PRODUCTIVE"
        return
    end
    if 15 <= v1 then
        Testing.Condition.Counter.Text = "PRODUCTIVE"
        return
    end
    if 10 <= v1 then
        Testing.Condition.Counter.Text = "OKAY"
        return
    end
    if 5 <= v1 then
        Testing.Condition.Counter.Text = "SLIGHTLY LACKING"
        return
    end
    Testing.Condition.Counter.Text = "LACKING"
end
function Update002Status() -- Line: 1050 -- upvalues: Main (val), u926 (ref), DeltaFramework (val)
    local SCPs, v1
    if not (CheckRoleplay()) or not (workspace:FindFirstChild("SCPs")) then
        return
    end
    SCPs = workspace:WaitForChild("SCPs")
    if not (SCPs:FindFirstChild("SCP-002")) then
        return
    end
    local SCPs_2 = workspace:WaitForChild("SCPs")
    local v2 = SCPs_2:FindFirstChild("SCP-002")
    if not v2 or not (v2:GetAttribute("Max")) or not (v2:GetAttribute("Total")) then
        return
    end
    local SCP002 = Main.Tasks.Info.Middle.SCP002
    local Attribute = v2:GetAttribute("Total")
    local v3 = math.floor(Attribute / v2:GetAttribute("Max") * 100)
    local v4 = tostring(Attribute)
    SCP002.Prop.Counter.Text = v4 .. " (" .. tostring(v3) .. "%)"
    if v3 <= 10 then
        SCP002.Condition.Counter.Text = string.upper("SAFE")
        SCP002.ALERT.Visible = false
        if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(85, 170, 127) then
            return
        end
        if not u926 then
            SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(85, 170, 127)
            return
        end
        v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
        DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(85, 170, 127)}):Play()
        return
    end
    if v3 <= 30 then
        SCP002.Condition.Counter.Text = string.upper("Slightly Unstable")
        SCP002.ALERT.Visible = false
        if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(255, 255, 127) then
            return
        end
        if not u926 then
            SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(255, 255, 127)
            return
        end
        v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
        DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 255, 127)}):Play()
        return
    end
    if v3 <= 50 then
        SCP002.Condition.Counter.Text = string.upper("Moderately Unstable")
        SCP002.ALERT.Visible = false
        if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(255, 170, 0) then
            return
        end
        if not u926 then
            SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(255, 170, 0)
            return
        end
        v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
        DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 170, 0)}):Play()
        return
    end
    if v3 <= 70 then
        SCP002.Condition.Counter.Text = string.upper("Severely Unstable")
        SCP002.ALERT.Visible = false
        if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(255, 71, 71) then
            return
        end
        if not u926 then
            SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(255, 71, 71)
            return
        end
        v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
        DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 71, 71)}):Play()
        return
    end
    if v3 <= 99 then
        SCP002.Condition.Counter.Text = string.upper("Extremely Unstable!")
        SCP002.ALERT.Visible = true
        if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(170, 85, 127) then
            return
        end
        if not u926 then
            SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(170, 85, 127)
            return
        end
        v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
        DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(170, 85, 127)}):Play()
        return
    end
    if 99 >= v3 then
        return
    end
    SCP002.Condition.Counter.Text = string.upper("CRITICAL!")
    SCP002.ALERT.Visible = true
    if SCP002.Condition.Counter.TextColor3 == Color3.fromRGB(255, 0, 0) then
        return
    end
    if not u926 then
        SCP002.Condition.Counter.TextColor3 = Color3.fromRGB(255, 0, 0)
        return
    end
    v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    DeltaFramework.TweenService:Create(SCP002.Condition.Counter, v1, {TextColor3 = Color3.fromRGB(255, 0, 0)}):Play()
end
function UpdateTeamCount() -- Line: 1162 -- upvalues: Main (val), DeltaFramework (val)
    local Attribute, v1, v2, v3, v4, v5, v6, v7
    local List = Main.TeamCount.Info.Middle.List
    local Template = List.Template
    for i, j in List:GetChildren() do
        if j:IsA("Frame") and j.Name ~= "Template" then
            j:Destroy()
        end
    end
    for k, n in DeltaFramework.Teams:GetTeams() do
        if n.Name ~= "Mobile Task Force" then
            v5 = Template:Clone()
            v5.Name = n.Name
            v5.Info.Title.Text = n.Name
            v5.Visible = true
            v1 = Color3.new(0.5, 0.5, 0.5)
            v5.Info.UIGradient.Color = ColorSequence.new(v1, n.TeamColor.Color)
            v5.Parent = List
            v5.Info.Count.Text = #n:GetPlayers()
        else
            v5 = {}
            v6 = {"Nu-7", "Beta-7", "Epsilon-11", "Alpha-1"}
            v7 = nil
            v1 = nil
            for m, i5 in v6, v7, v1 do
                v2 = Template:Clone()
                v2.Name = i5
                v2.Info.Title.Text = i5
                v2.Visible = true
                v4 = Color3.new(0.5, 0.5, 0.5)
                v2.Info.UIGradient.Color = ColorSequence.new(v4, n.TeamColor.Color)
                v2.Info.Count.Text = "0"
                v2.Parent = List
            end
            for i6, i7 in n:GetPlayers() do
                Attribute = i7:GetAttribute("Subdivision")
                v3 = List:FindFirstChild(Attribute)
                if not (v5[Attribute]) then
                    v5[Attribute] = 0
                end
                v5[Attribute] = v5[Attribute] + 1
                v3.Info.Count.Text = v5[Attribute]
            end
        end
    end
end
local u110 = DeltaFramework:Get("MMDebug")
u110:SetFlag(script, "RadarOffsetX", 975)
u110:SetFlag(script, "RadarOffsetY", 725)
function StartRadar() -- Line: 1214 -- upvalues: DeltaFramework (val), u946 (ref), Main (val), u110 (val), u917 (val), u919 (val)
    if workspace:GetAttribute("MapOriginal") ~= "Roleplay" then
        return
    end
    if not (DeltaFramework.Player:GetAttribute("O5")) then
        local Character, v1, v2, v3, v4, v5, v6, v7
        if u946 then
            return
        end
        u946 = true
        local u713 = {
            "457",
            "049",
            "096",
            "173",
            "023",
            "966",
            "131",
            "066",
            "999",
            "106",
            "939-1",
            "939-2",
            "939-3",
            "939-4",
        }
        local v8 = {}
        local v9 = {}
        pcall(function() -- Line: 1236 -- upvalues: Main (upval)
            for i, v in ipairs(Main.Radar.Info.Middle.Radar.Main.BG.Pulse:GetChildren()) do
                if v.Name == "PulseEffect" then
                    v:Destroy()
                end
            end
        end)
        while Main.Parent.TabletHandler:GetAttribute("Viewing") == "Radar" do
            for i, v in ipairs(Main.Radar.Info.Middle.Radar.Main.BG.Dots:GetChildren()) do
                v:Destroy()
            end
            Character = DeltaFramework.Player.Character
            if not Character then
                Character = DeltaFramework.Player.CharacterAdded:Wait()
            end
            local u430 = if Character:FindFirstChild("HumanoidRootPart") then Vector2.new(Character.HumanoidRootPart.Position.X, Character.HumanoidRootPart.Position.Z) else nil
            v8 = {}
            local SCPs = workspace:FindFirstChild("SCPs")
            if SCPs then
                v5 = #u713
                v6 = 1
                for i2 = 1, v5, v6 do
                    if SCPs:FindFirstChild("SCP-" .. u713[i2]) then
                        local new = nil
                        local u125 = nil
                        local u126 = nil
                        local u127 = nil
                        v1, v2 = pcall(function() -- Line: 1273 -- upvalues: u713 (val), i2 (val), SCPs (val), u126 (ref), new (ref), u127 (ref), u125 (ref)
                            local v1
                            if u713[i2] == "096" then
                                v1 = SCPs["SCP-" .. u713[i2]]
                                if v1:FindFirstChild("096") then
                                    u126 = SCPs["SCP-" .. u713[i2]]["096"].Position
                                    new = Vector2.new(u126.X, u126.Z)
                                    return
                                end
                            elseif u713[i2] == "131" then
                                v1 = SCPs["SCP-" .. u713[i2]]
                                if v1:FindFirstChild("Red") then
                                    v1 = SCPs["SCP-" .. u713[i2]]
                                    if v1:FindFirstChild("Yellow") and SCPs["SCP-" .. u713[i2]].Red:FindFirstChild("HumanoidRootPart") and SCPs["SCP-" .. u713[i2]].Yellow:FindFirstChild("HumanoidRootPart") then
                                        u126 = SCPs["SCP-" .. u713[i2]].Red.HumanoidRootPart.Position
                                        new = Vector2.new(u126.X, u126.Z)
                                        u127 = SCPs["SCP-" .. u713[i2]].Yellow.HumanoidRootPart.Position
                                        u125 = Vector2.new(u127.X, u127.Z)
                                        return
                                    end
                                end
                            elseif u713[i2] ~= "066" then
                                if u713[i2] == "106" or u713[i2] == "939-1" or u713[i2] == "939-2" or u713[i2] == "939-3" then
                                    v1 = SCPs["SCP-" .. u713[i2]]
                                    if v1:FindFirstChild("RootPart") then
                                        u126 = SCPs["SCP-" .. u713[i2]].RootPart.Position
                                        new = Vector2.new(u126.X, u126.Z)
                                        return
                                    end
                                    if u713[i2] ~= "096" then
                                        v1 = SCPs["SCP-" .. u713[i2]]
                                        if v1:FindFirstChild("HumanoidRootPart") then
                                            u126 = SCPs["SCP-" .. u713[i2]].HumanoidRootPart.Position
                                            new = Vector2.new(u126.X, u126.Z)
                                        end
                                    end
                                    return
                                end
                                if u713[i2] ~= "939-4" then
                                    if u713[i2] ~= "096" then
                                        v1 = SCPs["SCP-" .. u713[i2]]
                                        if v1:FindFirstChild("HumanoidRootPart") then
                                            u126 = SCPs["SCP-" .. u713[i2]].HumanoidRootPart.Position
                                            new = Vector2.new(u126.X, u126.Z)
                                        end
                                    end
                                    return
                                end
                                v1 = SCPs["SCP-" .. u713[i2]]
                                if v1:FindFirstChild("RootPart") then
                                    u126 = SCPs["SCP-" .. u713[i2]].RootPart.Position
                                    new = Vector2.new(u126.X, u126.Z)
                                    return
                                end
                                if u713[i2] ~= "096" then
                                    v1 = SCPs["SCP-" .. u713[i2]]
                                    if v1:FindFirstChild("HumanoidRootPart") then
                                        u126 = SCPs["SCP-" .. u713[i2]].HumanoidRootPart.Position
                                        new = Vector2.new(u126.X, u126.Z)
                                    end
                                end
                                return
                            else
                                v1 = SCPs["SCP-" .. u713[i2]]
                                if v1:FindFirstChild("Body") then
                                    u126 = SCPs["SCP-" .. u713[i2]].Body.Position
                                    new = Vector2.new(u126.X, u126.Z)
                                    return
                                end
                            end
                        end)
                        if v1 and new and u126 then
                            table.insert(v8, {u713[i2], new, u126})
                        end
                        if v1 and u125 and u127 then
                            table.insert(v8, {u713[i2], u125, u127})
                        end
                        if v2 then
                            warn("[" .. script.Name .. "]: " .. "Something went wrong with radar: " .. debug.traceback((tostring(v2))))
                        end
                    end
                end
            end
            local u625 = u110:GetFlag(script, "RadarOffsetX")
            new = script
            local Flag = u110:GetFlag(new, "RadarOffsetY")
            u125 = "Upgraded"
            if not (DeltaFramework.Player:GetAttribute(u125)) then
                if u430 then
                    v7 = Main.Radar.Info.Middle.Radar.Main.Dots.YOU:Clone()
                    new = UDim2.new(0, (-u430.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (u430.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                    v7.Position = new
                    v7.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Dots
                    v7.Visible = true
                end
                v7, new, u125 = pairs(v8)
                for k, j in pairs(new) do
                    if u430 then
                        v1 = Main.Radar.Info.Middle.Radar.Main.Dots.SCP:Clone()
                        v2 = j[2]
                        if string.sub(j[1], 0, 4) ~= "939-" then
                            v3 = j[1]
                        else
                            v3 = "939"
                        end
                        v4 = j[3]
                        if not (u917:IsInSCPCC(v4, v3, true)) then
                            v4 = j[3]
                            if u917:IsInSCPCC(v4, v3) then
                                v1.ImageColor3 = Color3.fromRGB(255, 155, 0)
                            elseif v3 == "131" then
                                v1.ImageColor3 = Color3.fromRGB(0, 225, 255)
                            elseif v3 ~= "999" then
                                v1.ImageColor3 = Color3.fromRGB(255, 0, 0)
                            end
                        else
                            v1.ImageColor3 = Color3.fromRGB(0, 255, 0)
                        end
                        if j[3].Y > -25 then
                            v1.SCPName.TextColor3 = Color3.new(1, 1, 1)
                        else
                            v1.ImageColor3 = u919:Shade(v1.ImageColor3, 100)
                            v1.SCPName.TextColor3 = Color3.new(0.35, 0.75, 0.35)
                        end
                        v1.Position = UDim2.new(0, (-v2.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (v2.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                        v1.SCPName.Text = j[1]
                        v1.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Dots
                        if (u430 - v2).Magnitude > 300 then
                            v1:Destroy()
                        else
                            v1.Visible = true
                        end
                    end
                end
                function new() -- Line: 1426 -- upvalues: Main (upval), u430 (ref), u625 (val), Flag (val), DeltaFramework (upval)
                    local u10 = Main.Radar.Info.Middle.Radar.Main.RadarPulse.Circle:Clone()
                    u10.Name = "PulseEffect"
                    if u430 then
                        u10.Position = UDim2.new(0, (-u430.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (u430.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                    end
                    u10.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Pulse
                    local v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    local v2 = DeltaFramework.TweenService:Create(u10, v1, {ImageTransparency = 1, Size = UDim2.new(1, 0, 1, 0)})
                    u10.Visible = true
                    v2:Play()
                    v2.Completed:Wait()
                    task.delay(1, function() -- Line: 1447 -- upvalues: u10 (val)
                        pcall(function() -- Line: 1447 -- upvalues: u10 (upval)
                            u10:Destroy()
                        end)
                    end)
                end
                task.spawn(new)
            else
                if u430 then
                    v7 = Main.Radar.Info.Middle.Radar.Main.Dots.YOU:Clone()
                    new = UDim2.new(0, (-u430.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (u430.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                    v7.Position = new
                    v7.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Dots
                    v7.Visible = true
                end
                v7, new, u125 = pairs(v8)
                for k2, k3 in pairs(new) do
                    v1 = Main.Radar.Info.Middle.Radar.Main.Dots.SCP:Clone()
                    v2 = k3[2]
                    if string.sub(k3[1], 0, 4) ~= "939-" then
                        v3 = k3[1]
                    else
                        v3 = "939"
                    end
                    v4 = k3[3]
                    if not (u917:IsInSCPCC(v4, v3, true)) then
                        v4 = k3[3]
                        if u917:IsInSCPCC(v4, v3) then
                            v1.ImageColor3 = Color3.fromRGB(255, 155, 0)
                        elseif v3 == "131" then
                            v1.ImageColor3 = Color3.fromRGB(0, 225, 255)
                        elseif v3 ~= "999" then
                            v1.ImageColor3 = Color3.fromRGB(255, 0, 0)
                        end
                    else
                        v1.ImageColor3 = Color3.fromRGB(0, 255, 0)
                    end
                    if k3[3].Y > -25 then
                        v1.SCPName.TextColor3 = Color3.new(1, 1, 1)
                    else
                        v1.ImageColor3 = u919:Shade(v1.ImageColor3, 100)
                        v1.SCPName.TextColor3 = Color3.new(0.35, 0.75, 0.35)
                    end
                    v1.Position = UDim2.new(0, (-v2.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (v2.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                    v1.SCPName.Text = k3[1]
                    v1.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Dots
                    v1.Visible = true
                end
                function new() -- Line: 1354 -- upvalues: Main (upval), u430 (ref), u625 (val), Flag (val), DeltaFramework (upval)
                    local u10 = Main.Radar.Info.Middle.Radar.Main.RadarPulse.Circle:Clone()
                    u10.Name = "PulseEffect"
                    if u430 then
                        u10.Position = UDim2.new(0, (-u430.Y + u625) / 2320.65 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.X, 0, (u430.X + Flag) / 1388.14 * Main.Radar.Info.Middle.Radar.Main.BG.AbsoluteSize.Y)
                    end
                    u10.Parent = Main.Radar.Info.Middle.Radar.Main.BG.Pulse
                    local v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    local v2 = DeltaFramework.TweenService:Create(u10, v1, {ImageTransparency = 1, Size = UDim2.new(5, 0, 5, 0)})
                    u10.Visible = true
                    v2:Play()
                    v2.Completed:Wait()
                    task.delay(1, function() -- Line: 1375 -- upvalues: u10 (val)
                        pcall(function() -- Line: 1375 -- upvalues: u10 (upval)
                            u10:Destroy()
                        end)
                    end)
                end
                task.spawn(new)
            end
            u125 = "Upgraded"
            if not (DeltaFramework.Player:GetAttribute(u125)) then
                task.wait(3)
            else
                task.wait(5)
            end
            u125 = "Viewing"
            if Main.Parent.TabletHandler:GetAttribute(u125) ~= "Radar" then
                break
            end
        end
        u946 = false
        return
    elseif not (DeltaFramework.Teams:FindFirstChild("Administrative Department")) then
        return
    else
        local Team = DeltaFramework.Player.Team
        if Team ~= DeltaFramework.Teams:FindFirstChild("Administrative Department") then
            return
        end
    end
end
function ForceUpdate(p1) -- Line: 1461 -- upvalues: u932 (ref), DeltaFramework (val), Main (val), u936 (ref)
    if u932 then
        return
    end
    if type(p1) ~= "string" then
        local v1
        if not (CheckTablet()) or not DeltaFramework.Player.Team then
            return
        end
        u932 = true
        local Info = shared.TabletSystem.Info
        local v2 = 0
        Info.SiteStatus.Riot = workspace.Alarms.RIOT.IsPlaying
        Info.SiteStatus.Raid = workspace.Alarms.RAID.IsPlaying
        Info.SiteStatus.Breach = workspace.Alarms.BREACH.IsPlaying
        Info.SiteStatus.Nuclear = DeltaFramework.ReplicatedStorage.Nuke.Value
        Info.SiteStatus.Daybreak = DeltaFramework.ReplicatedStorage.WDB.Value
        local v3 = DeltaFramework.Teams:FindFirstChild("Chaos Insurgency")
        if v3 then
            for i, v in ipairs(DeltaFramework.Players:GetPlayers()) do
                if v.Team == v3 then
                    v2 = v2 + 1
                end
            end
        end
        Info.SiteStatus.Hostiles = v2
        if Info.SiteStatus.Nuclear then
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Nuke")
        end
        if workspace:FindFirstChild("NUKEEVENT") then
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Nuke")
        end
        if Info.SiteStatus.Daybreak then
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Daybreak")
        elseif Main.Parent.TabletHandler:GetAttribute("Viewing") == "Daybreak" then
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
        end
        local Attribute = Main.Parent.TabletHandler:GetAttribute("Viewing")
        local v4 = {
            "SCPTesting",
            "Notes",
            "Clock",
            "Discoveries",
            "Logs",
        }
        local v5 = {"SiteStatus", "SitePolicies", "Tasks", "Radar"}
        local v6 = {"Cameras"}
        if DeltaFramework.Player.Team.Name ~= "Scientific Department" then
            if DeltaFramework.Player.Team.Name ~= "Scientific Department" and table.find(v4, Attribute) and Main:FindFirstChild(Attribute) then
                v1 = Main:FindFirstChild(Attribute)
                v1.Visible = false
                Attribute = "Hub"
                Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
            end
        elseif not (DeltaFramework.Player:GetAttribute("O5")) and table.find(v5, Attribute) and Main:FindFirstChild(Attribute) then
            v1 = Main:FindFirstChild(Attribute)
            v1.Visible = false
            Attribute = "Hub"
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
        end
        if Attribute ~= "Nuke" then
            if not Info.SiteStatus.Nuclear and Main.Nuke.Visible then
                for i2, i3 in ipairs(Main:GetChildren()) do
                    if i3.Name ~= "TabletBG" then
                        i3.Visible = false
                    end
                end
                Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
                NukeUIHandler(false)
                Main.Hub.Visible = true
            end
        elseif not u936 then
            for i4, j in ipairs(Main:GetChildren()) do
                if j.Name ~= "TabletBG" then
                    j.Visible = false
                end
            end
            task.spawn(function() -- Line: 1542
                NukeUIHandler(true)
            end)
        end
        if Attribute ~= "Daybreak" then
            if Attribute ~= "Daybreak" then
                Main.Daybreak.Visible = false
            end
        elseif Main.Hub.Visible then
            for i5, k in ipairs(Main:GetChildren()) do
                if k.Name ~= "TabletBG" then
                    k.Visible = false
                end
            end
            Main.Daybreak.Visible = true
            Main.Hub.Visible = false
        elseif Main.Daybreak.Visible then
        end
        if Attribute == "Hub" then
            if Attribute == "Hub" then
                if not Main.Hub.Visible then
                    Main.Hub.Visible = true
                end
                if not DeltaFramework.Player.Team then
                    Main.Hub.Buttons.Layer1.SiteStatus.Visible = false
                    Main.Hub.Buttons.Layer1.SitePolicies.Visible = false
                    Main.Hub.Buttons.Layer1.Tasks.Visible = false
                    Main.Hub.Buttons.Layer1.SCPTesting.Visible = false
                    Main.Hub.Buttons.Layer1.Notes.Visible = false
                    Main.Hub.Buttons.Layer1.Clock.Visible = false
                    Main.Hub.Buttons.Layer2.Discoveries.Visible = false
                    Main.Hub.Buttons.Layer2.Logs.Visible = false
                    Main.Hub.Buttons.Layer2.Cameras.Visible = false
                    Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = false
                    Main.Hub.Buttons.Layer2.Radar.Visible = false
                    Main.Hub.Buttons.Layer2.PowerOff.Visible = false
                    Main.Hub.Buttons.Layer3.PowerOff.Visible = true
                    Main.Hub.Buttons.Layer3.SiteStatus.Visible = false
                    Main.Hub.Buttons.Layer3.SitePolicies.Visible = false
                    Main.Hub.Buttons.Layer3.TeamCount.Visible = false
                else
                    local Attribute_2 = DeltaFramework.Player:GetAttribute("O5")
                    if DeltaFramework.Player.Team.Name == "Scientific Department" then
                        Main.Hub.Buttons.Layer1.SCPTesting.Visible = true
                        Main.Hub.Buttons.Layer1.Notes.Visible = true
                        Main.Hub.Buttons.Layer1.Clock.Visible = true
                        Main.Hub.Buttons.Layer1.SiteStatus.Visible = false
                        Main.Hub.Buttons.Layer1.SitePolicies.Visible = false
                        Main.Hub.Buttons.Layer2.Discoveries.Visible = true
                        Main.Hub.Buttons.Layer2.Logs.Visible = true
                        Main.Hub.Buttons.Layer1.Tasks.Visible = Attribute_2
                        Main.Hub.Buttons.Layer2.Cameras.Visible = Attribute_2
                        Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = false
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                        Main.Hub.Buttons.Layer3.SiteStatus.Visible = Attribute_2
                        Main.Hub.Buttons.Layer3.SitePolicies.Visible = Attribute_2
                    elseif DeltaFramework.Player.Team.Name ~= "Internal Security Department" then
                        Main.Hub.Buttons.Layer1.SiteStatus.Visible = true
                        Main.Hub.Buttons.Layer1.SitePolicies.Visible = true
                        Main.Hub.Buttons.Layer1.Tasks.Visible = true
                        Main.Hub.Buttons.Layer1.SCPTesting.Visible = false
                        Main.Hub.Buttons.Layer1.Notes.Visible = false
                        Main.Hub.Buttons.Layer1.Clock.Visible = false
                        Main.Hub.Buttons.Layer2.Discoveries.Visible = false
                        Main.Hub.Buttons.Layer2.Logs.Visible = false
                        Main.Hub.Buttons.Layer2.Cameras.Visible = true
                        Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = false
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                        Main.Hub.Buttons.Layer3.SiteStatus.Visible = false
                        Main.Hub.Buttons.Layer3.SitePolicies.Visible = false
                    else
                        Main.Hub.Buttons.Layer1.SCPTesting.Visible = false
                        Main.Hub.Buttons.Layer1.Notes.Visible = false
                        Main.Hub.Buttons.Layer1.Clock.Visible = false
                        Main.Hub.Buttons.Layer1.SiteStatus.Visible = false
                        Main.Hub.Buttons.Layer1.SitePolicies.Visible = false
                        Main.Hub.Buttons.Layer2.Discoveries.Visible = false
                        Main.Hub.Buttons.Layer2.Logs.Visible = false
                        Main.Hub.Buttons.Layer1.Tasks.Visible = Attribute_2
                        Main.Hub.Buttons.Layer2.Cameras.Visible = true
                        Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = false
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                        Main.Hub.Buttons.Layer3.SiteStatus.Visible = Attribute_2
                        Main.Hub.Buttons.Layer3.SitePolicies.Visible = Attribute_2
                    end
                    local v7 = Attribute_2
                    if not v7 then
                        v7 = DeltaFramework.Player.Team.Name == "Administrative Department"
                    end
                    Main.Hub.Buttons.Layer3.TeamCount.Visible = v7
                end
                if not (DeltaFramework.Player:GetAttribute("O5")) then
                    Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = false
                    if not (DeltaFramework.Teams:FindFirstChild("Administrative Department")) then
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                    elseif DeltaFramework.Player.Team ~= DeltaFramework.Teams:WaitForChild("Administrative Department") then
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                    else
                        Main.Hub.Buttons.Layer2.Radar.Visible = true
                    end
                else
                    if not (DeltaFramework.Teams:FindFirstChild("Administrative Department")) then
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                    elseif DeltaFramework.Player.Team ~= DeltaFramework.Teams:FindFirstChild("Administrative Department") then
                        Main.Hub.Buttons.Layer2.Radar.Visible = false
                    else
                        Main.Hub.Buttons.Layer2.Radar.Visible = true
                    end
                    Main.Hub.Buttons.Layer2.RequestAlpha1.Visible = true
                    v1 = 0
                    if DeltaFramework.Teams:FindFirstChild("Mobile Task Force") then
                        for i6, n in ipairs(DeltaFramework.Players:GetPlayers()) do
                            if n.Team == DeltaFramework.Teams:WaitForChild("Mobile Task Force") and n:GetAttribute("Subdivision") == "Alpha-1" and not (n:GetAttribute("O5")) then
                                v1 = v1 + 1
                            end
                        end
                    end
                    Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Fade.Label.Text = "REQUEST ALPHA-1 | <font color=\"rgb(255, 100, 100)\">" .. tostring(v1) .. "</font>"
                end
                if Main.Hub.Buttons.Layer2.RequestAlpha1.Visible then
                    Main.Hub.Buttons.Layer3.PowerOff.Visible = true
                    Main.Hub.Buttons.Layer2.PowerOff.Visible = false
                elseif not Main.Hub.Buttons.Layer2.Radar.Visible and not Main.Hub.Buttons.Layer2.Logs.Visible then
                    Main.Hub.Buttons.Layer3.PowerOff.Visible = false
                    Main.Hub.Buttons.Layer2.PowerOff.Visible = true
                end
            end
        elseif Attribute ~= "Nuke" and Attribute ~= "Daybreak" then
            if Attribute == "SiteS" then
                UpdateSiteStatusPage()
            elseif Attribute == "Policies" then
                UpdateSitePoliciesPage()
            elseif Attribute == "Tasks" then
                UpdateSiteJanitorPage()
                UpdatePuddles()
                Update002Status()
            elseif Attribute == "Testing" then
                UpdateTesting()
            elseif Attribute == "Radar" then
                task.spawn(function() -- Line: 1587
                    StartRadar()
                end)
            elseif Attribute == "TeamCount" then
                UpdateTeamCount()
            end
        end
        Main.Hub.Title.PlayerName.Text = "WELCOME, " .. string.upper(DeltaFramework.Player.Name)
        if Attribute == "Hub" and not Main.Hub.Visible and not Main.Nuke.Visible and not Main.Daybreak.Visible and not Main.Radar.Visible and not Main.SPolicies.Visible and not Main.SStats.Visible and not Main.Tasks.Visible and not u936 then
            Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
            Main.Hub.Visible = true
        end
        u932 = false
        return
    elseif p1 == "Vote Removed" then
        shared.Notification({Title = "Votes Removed", Text = "Your site policy votes have been removed!", Duration = 3})
        return
    end
end
function shared.TabletSystem.Activate(p1) -- Line: 1724 -- upvalues: u926 (ref), DeltaFramework (val), u930 (ref), Main (val)
    if not p1 then
        return
    end
    if u926 then
        pcall(function() -- Line: 1728 -- upvalues: DeltaFramework (upval)
            local Character = DeltaFramework.Player.Character
            if not Character then
                Character = DeltaFramework.Player.CharacterAdded:Wait()
            end
            shared.TabletSystem.Deactivate()
            Character:FindFirstChild("Humanoid"):UnequipTools()
        end)
        return
    end
    if not DeltaFramework.Player.Character or not (DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")) or not (DeltaFramework.Player.Character:FindFirstChild("Humanoid")) or 0 >= DeltaFramework.Player.Character.Humanoid.Health then
        return
    end
    ForceUpdate("Activate")
    if not (TabletInHand()) then
        return
    end
    if not DeltaFramework.Player or not DeltaFramework.Player.Character then
        pcall(function() -- Line: 1760 -- upvalues: DeltaFramework (upval)
            shared.TabletSystem.Deactivate()
            DeltaFramework.Player.Character:FindFirstChild("Humanoid"):UnequipTools()
        end)
        return
    end
    if not (DeltaFramework.Player.Character:FindFirstChild("Tablet")) or DeltaFramework.Player.Character:FindFirstChild("Tablet").ClassName ~= "Tool" then
        pcall(function() -- Line: 1749 -- upvalues: DeltaFramework (upval)
            shared.TabletSystem.Deactivate()
            DeltaFramework.Player.Character:FindFirstChild("Humanoid"):UnequipTools()
        end)
        return
    end
    if u930 then
        u930:Cancel()
        u930 = nil
    end
    Main.Position = UDim2.new(0.5, 0, 1.5, 0)
    Main.Visible = true
    shared.ToggleBackpack("Tablet", true)
    local v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    u930 = DeltaFramework.TweenService:Create(Main, v1, {Position = UDim2.new(0.5, 0, 0.5, 0)})
    u930:Play()
    u930.Completed:Wait()
    u926 = true
    if not (TabletInHand()) then
        shared.TabletSystem.Deactivate()
    end
end
function shared.TabletSystem.Deactivate() -- Line: 1797 -- upvalues: u926 (ref), u930 (ref), Main (val), DeltaFramework (val), Parent (val)
    if not u926 then
        return
    end
    if u930 then
        u930:Cancel()
        u930 = nil
    end
    Main.Position = UDim2.new(0.5, 0, 0.5, 0)
    local v1 = TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    u930 = DeltaFramework.TweenService:Create(Main, v1, {Position = UDim2.new(0.5, 0, 1.5, 0)})
    u930:Play()
    u930.Completed:Wait()
    Parent:SetAttribute("ViewingCameras", false)
    v1 = TweenInfo.new(0.5)
    DeltaFramework.TweenService:Create(DeltaFramework.PlayerGui.Utility.CameraSystem, v1, {Position = UDim2.new(0.5, 0, -1, 0)}):Play()
    NukeUIHandler(false)
    Main.Visible = false
    shared.ToggleBackpack("Tablet", false)
    u926 = false
end
Main.Hub.Buttons.Layer3.TeamCount.Button.MouseButton1Click:Connect(function() -- Line: 1830 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "TeamCount")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "SStats" then
            v.Visible = false
        end
    end
    Main.TeamCount.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer1.SiteStatus.Button.MouseButton1Click:Connect(function() -- Line: 1854 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "SiteS")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "SStats" then
            v.Visible = false
        end
    end
    Main.SStats.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer1.SitePolicies.Button.MouseButton1Click:Connect(function() -- Line: 1878 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Policies")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "SPolicies" then
            v.Visible = false
        end
    end
    Main.SPolicies.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer1.Tasks.Button.MouseButton1Click:Connect(function() -- Line: 1902 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Tasks")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "Tasks" then
            v.Visible = false
        end
    end
    Main.Tasks.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer2.Cameras.Button.MouseButton1Click:Connect(function() -- Line: 1926 -- upvalues: u821 (ref), Parent (val), Main (val), u926 (ref)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    if not (Parent:GetAttribute("ViewingCameras")) then
        Parent:SetAttribute("ViewingCameras", true)
    end
    Main.Visible = false
    shared.ToggleBackpack("Tablet", false)
    while true do
        task.wait()
        if not (Parent:GetAttribute("ViewingCameras")) then
            break
        end
    end
    if u926 then
        Main.Position = UDim2.new(0.5, 0, 0.5, 0)
        Main.Visible = true
        shared.ToggleBackpack("Tablet", true)
    end
    u821 = false
end)
Main.Hub.Buttons.Layer2.RequestAlpha1.Button.MouseButton1Click:Connect(function() -- Line: 1952 -- upvalues: DeltaFramework (val), u940 (ref), Main (val)
    if not (DeltaFramework.Player:GetAttribute("O5")) or u940 then
        return
    end
    u940 = true
    script.Click:Play()
    DeltaFramework.ReplicatedStorage.Remotes.Announcement:FireServer(5, DeltaFramework.Player.Name .. " is requesting Alpha-1 to their location!")
    task.spawn(function() -- Line: 1963 -- upvalues: Main (upval), u940 (upval)
        local v1
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Cooldown.Count.Text = "120"
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Cooldown.Visible = true
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Icon.Visible = false
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.IconCooldown.Visible = true
        local v2 = 120
        local v3 = 1
        for i = 1, v2, v3 do
            v1 = 120 - i
            Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Cooldown.Count.Text = tostring(v1)
            task.wait(1)
            Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Cooldown.Count.Text = tostring(v1)
        end
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Icon.Visible = true
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.IconCooldown.Visible = false
        Main.Hub.Buttons.Layer2.RequestAlpha1.BG.Cooldown.Visible = false
        u940 = false
    end)
end)
function CloseUi() -- Line: 1993 -- upvalues: u821 (ref), DeltaFramework (val)
    u821 = true
    script.Click:Play()
    local Character = DeltaFramework.Player.Character
    if not Character then
        Character = DeltaFramework.Player.CharacterAdded:Wait()
    end
    shared.TabletSystem.Deactivate()
    Character:FindFirstChild("Humanoid"):UnequipTools()
    u821 = false
end
local v1 = {Main.Nuke.Close, Main.Daybreak.Close}
local v2 = nil
local v3 = nil
for i2, j in v1, v2, v3 do
    j.Activated:Connect(CloseUi)
end
local u214 = 0
local u215 = 0
local u216 = {}
local u221 = DeltaFramework:Get("KeycardLevels")
function shared.StartTest(p1) -- Line: 2015 -- upvalues: u915 (val), u919 (val), DeltaFramework (val), u214 (ref), Main (val), SCPTesting (val), u917 (val)
    local Character, Team, v1, v2, v3, v4
    if not (u915.SCPs[tostring(p1)]) or not (u919:IsCharacterValid(DeltaFramework.Player)) then
        return
    end
    local v5 = u915.SCPs[tostring(p1)]
    u214 = os.time()
    shared.TabletSystem.Deactivate()
    if DeltaFramework.Player.Character and DeltaFramework.Player.Character:FindFirstChild("Humanoid") then
        DeltaFramework.Player.Character.Humanoid:UnequipTools()
    end
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.Text = "END TEST"
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.TextColor3 = Color3.fromRGB(207, 0, 0)
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.UIStroke.Color = Color3.fromRGB(137, 0, 0)
    local Position_2 = false
    local v6 = false
    local Position = DeltaFramework.Player.Character.HumanoidRootPart.Position
    local v7 = if u915.Colors[v5.ObjectClass] then u915.Colors[v5.ObjectClass] else Color3.fromRGB(100, 155, 200)
    for i, v in ipairs(DeltaFramework.Players:GetPlayers()) do
        if v ~= DeltaFramework.Player then
            Character = v.Character
            if Character and Character:FindFirstChild("HumanoidRootPart") and Character:FindFirstChild("Humanoid") and 0 < Character.Humanoid.Health then
                if not (Character:FindFirstChild("Authorizer")) then
                    Team = v.Team
                    if Team then
                        if Team.Name == "Security Department" then
                            v1 = vector.magnitude(Position - Character.HumanoidRootPart.Position)
                            if v1 < 25 then
                                v6 = true
                            end
                        elseif Team.Name ~= "Mobile Task Force" then
                        end
                    end
                elseif Character.Authorizer:IsA("ObjectValue") and Character.Authorizer.Value == DeltaFramework.Player then
                    Position_2 = Character.HumanoidRootPart.Position
                end
            end
        end
    end
    SCPTesting:FireServer("StartTest", v5.SCP)
    if shared.TabletSystem.SCPTestInfo then
        shared.Missions.CloseMission("SCP-" .. shared.TabletSystem.SCPTestInfo.SCP .. " Waypoint")
    end
    shared.TabletSystem.SCPTestInfo = {ReachedCC = false, SCP = v5.SCP, SCPInfo = v5, AuthorizedCD = Position_2}
    local v8 = {Duration = 5, Title = "Test Started on SCP-" .. v5.SCP .. "!"}
    if not Position_2 then
        v3 = "Authorize a Class - D!"
    else
        v3 = "Make your way to the SCP's containment!"
    end
    if not v6 then
        v4 = " Guards have been notified to escort you!"
    else
        v4 = ""
    end
    v8.Text = v3 .. v4
    shared.BottomPopup(v8)
    local TopLeft = Main.Notes.Info.Main.List.TopLeft
    TopLeft.DropdownList.Visible = false
    Main.Notes.Info.Main.List.TopLeft.DropdownButton.Rotation = 0
    TopLeft.Title.Text = "SCP-" .. v5.SCP
    TopLeft.Classification.Text = v5.ObjectClass:upper()
    TopLeft.Sector.Text = v5.Sector:upper()
    TopLeft.Clearance.Text = "CLEARANCE LEVEL " .. v5.ClearanceLevel
    TopLeft.Classification.TextColor3 = v7
    Main.SCPTesting.Buttons.Button2.Visible = false
    shared.Missions.CloseMission("CDC Waypoint")
    shared.Missions.CloseMission("Briefing Room 1 Automation")
    shared.Missions.CloseMission("Briefing Room 2 Automation")
    if not Position_2 then
        if Position_2 then
            shared.Missions.CreateMission("SCP-" .. v5.SCP .. " Waypoint")
            return
        end
        if not (u917:IsInLocation("CDC Inner", Position)) then
            v8 = DeltaFramework:Get("GetSetting")
            if v8("New Player Tips") and not (shared.Missions.IsActive("CDC Waypoint")) then
                v8 = true
                if shared.TXP and shared.TXP["Scientific Department"] then
                    v2 = shared.TXP["Scientific Department"] or 0
                    if 60 <= v2 then
                        v8 = nil
                    end
                end
                if v8 then
                    shared.Missions.CreateMission("CDC Waypoint")
                end
            end
        end
        return
    elseif u917:IsInLocation("CDC Inner", Position) then
        v8 = DeltaFramework:Get("GetSetting")
        if not (v8("New Player Tips")) then
            return
        end
        v8 = true
        if shared.TXP and shared.TXP["Scientific Department"] then
            v2 = shared.TXP["Scientific Department"] or 0
            if 60 <= v2 then
                v8 = nil
            end
        end
        if not v8 then
            return
        end
        shared.Missions.CreateMission("Briefing Room 1 Automation")
        return
    elseif not (u917:IsInLocation("Briefing Room 1", Position)) then
        if u917:IsInLocation("Briefing Room 2", Position) and not (u917:IsInLocation("Briefing Room 2", Position_2)) then end
    elseif u917:IsInLocation("Briefing Room 1", Position_2) then
    end
end
function shared.EndTest() -- Line: 2127 -- upvalues: SCPTesting (val), Main (val)
    if shared.TabletSystem.SCPTestInfo then
        shared.Missions.CloseMission("SCP-" .. shared.TabletSystem.SCPTestInfo.SCP .. " Waypoint")
    end
    shared.Missions.CloseMission("CDC Waypoint")
    shared.Missions.CloseMission("Briefing Room 1 Automation")
    shared.Missions.CloseMission("Briefing Room 2 Automation")
    SCPTesting:FireServer("EndTest")
    shared.TabletSystem.SCPTestInfo = nil
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.Text = "START TEST"
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.TextColor3 = Color3.fromRGB(11, 170, 255)
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.UIStroke.Color = Color3.fromRGB(0, 128, 255)
    Main.SCPTesting.Buttons.Button2.Visible = true
end
local u231 = nil
function OpenSCPInfoScreen(p1) -- Line: 2149 -- upvalues: Main (val), u915 (val), u221 (val), DeltaFramework (val), u231 (ref), u214 (ref), u215 (ref), Parent (val), TextService (val)
    local Character, Player, v1, v2
    script.Click:Play()
    local TopLeft = Main.SCPTesting.Info.InfoFrame.Frame.TopLeft
    local v3 = if u915.Colors[p1.ObjectClass] then u915.Colors[p1.ObjectClass] else Color3.fromRGB(100, 155, 200)
    TopLeft.IconFrame.Icon.Image = p1.Icon
    TopLeft.Title.Text = "SCP-" .. p1.SCP
    TopLeft.Classification.Text = p1.ObjectClass:upper()
    TopLeft.Classification.TextColor3 = v3
    TopLeft.Sector.Text = p1.Sector:upper()
    TopLeft.Clearance.Text = "CLEARANCE LEVEL " .. p1.ClearanceLevel
    if p1.GuardCount or 1 ~= 1 then
        v2 = "S"
    else
        v2 = ""
    end
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.GuardCount.Text = (p1.GuardCount or 1) .. " GUARD" .. v2
    if p1.CDCount or 1 ~= 1 then
        v2 = "S"
    else
        v2 = ""
    end
    Main.SCPTesting.Info.InfoFrame.Frame.TopRight.CDCount.Text = (p1.CDCount or 1) .. " CLASS - D" .. v2
    local X = TopLeft.IconFrame.AbsoluteSize.X
    local v4 = X + 3
    local v5 = TopLeft.AbsoluteSize.X - X - 3
    TopLeft.Title.Position = UDim2.new(0, v4, TopLeft.Title.Position.Y.Scale, 0)
    TopLeft.Title.Size = UDim2.new(0, v5, TopLeft.Title.Size.Y.Scale, 0)
    TopLeft.Classification.Position = UDim2.new(0, v4, TopLeft.Classification.Position.Y.Scale, 0)
    TopLeft.Classification.Size = UDim2.new(0, v5, TopLeft.Classification.Size.Y.Scale, 0)
    TopLeft.Sector.Position = UDim2.new(0, v4, TopLeft.Sector.Position.Y.Scale, 0)
    TopLeft.Sector.Size = UDim2.new(0, v5, TopLeft.Sector.Size.Y.Scale, 0)
    TopLeft.Clearance.Position = UDim2.new(0, v4, TopLeft.Clearance.Position.Y.Scale, 0)
    TopLeft.Clearance.Size = UDim2.new(0, v5, TopLeft.Clearance.Size.Y.Scale, 0)
    local function HasTool(p1, p2) -- Line: 2181
        local Character = p1.Character
        if Character then
            Character = p1.Character:FindFirstChildOfClass("Tool")
        end
        if not Character then
            if p1:FindFirstChild("Backpack") then
                if p1.Backpack:FindFirstChild(p2) then
                    return true
                end
                return
            end
            return
        end
        if Character.Name == p2 then
            return true
        end
        if not (p1:FindFirstChild("Backpack")) then
            return
        end
        if p1.Backpack:FindFirstChild(p2) then
            return true
        end
    end
    local u432 = -1
    local u442 = p1
    for k, v in pairs(u221) do
        Player = DeltaFramework.Player
        Character = Player.Character
        if Character then
            Character = Player.Character:FindFirstChildOfClass("Tool")
        end
        if not Character then
            if not (Player:FindFirstChild("Backpack")) then
                v1 = nil
            elseif Player.Backpack:FindFirstChild(k) then
                v1 = true
            end
        elseif Character.Name == k then
            v1 = true
        end
        if v1 and u432 < v then
            u432 = v
        end
    end
    if u432 >= u442.ClearanceLevel then
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.AlternateLabel.Visible = false
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.Visible = true
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.CDCount.Visible = true
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.GuardCount.Visible = true
    else
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.AlternateLabel.Text = "<font color=\"rgb(230, 0, 0)\">LEVEL - " .. u442.ClearanceLevel .. "</font> NEEDED TO TEST THIS SCP"
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.AlternateLabel.Visible = true
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.CDCount.Visible = false
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.GuardCount.Visible = false
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.Visible = false
    end
    if not shared.TabletSystem.SCPTestInfo then
        if not shared.TabletSystem.SCPTestInfo then
            Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.Text = "START TEST"
            local TextLabel_2 = Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel
            TextLabel_2.TextColor3 = Color3.fromRGB(11, 170, 255)
            local UIStroke_2 = Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.UIStroke
            UIStroke_2.Color = Color3.fromRGB(0, 128, 255)
        else
            Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.Visible = false
        end
    elseif shared.TabletSystem.SCPTestInfo.SCP == u442.SCP then
        Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel.Text = "END TEST"
        local TextLabel = Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.TextLabel
        TextLabel.TextColor3 = Color3.fromRGB(207, 0, 0)
        local UIStroke = Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.UIStroke
        UIStroke.Color = Color3.fromRGB(137, 0, 0)
    end
    local u361 = false
    if u231 and u231.Connected then
        u231:Disconnect()
    end
    u231 = Main.SCPTesting.Info.InfoFrame.Frame.TopRight.TestButton.MouseButton1Click:Connect(function() -- Line: 2230 -- upvalues: u361 (ref), DeltaFramework (upval), u432 (ref), u442 (val), u214 (upval), u215 (upval)
        script.Click:Play()
        if u361 then
            return
        end
        u361 = true
        task.delay(1, function() -- Line: 2237 -- upvalues: u361 (upval)
            u361 = false
        end)
        if not DeltaFramework.Player.Team then
            return
        else
            if DeltaFramework.Player.Team.Name ~= "Scientific Department" or u432 < u442.ClearanceLevel then
                return
            end
            if not shared.TabletSystem.SCPTestInfo then
                if not DeltaFramework.Player.Character then
                    return
                else
                    if not (DeltaFramework.Player.Character:FindFirstChild("HumanoidRootPart")) then
                        return
                    end
                    if not (DeltaFramework.Player.Character:FindFirstChild("Humanoid")) then
                        return
                    else
                        if 0 >= DeltaFramework.Player.Character.Humanoid.Health then
                            return
                        end
                        if not shared.TabletSystem.SCPTestInfo then
                            local v1
                            local v2 = os.time()
                            local v3 = os.time() - u214
                            if v3 >= 30 then
                                if v3 < 30 then
                                    return
                                end
                                shared.StartTest(u442.SCP)
                                return
                            end
                            local v4 = v2 - u215
                            if 5 >= v4 then
                                if v3 < 30 then
                                    return
                                end
                                shared.StartTest(u442.SCP)
                                return
                            end
                            u215 = v2
                            v4 = 30 - v3
                            local v5 = {Title = "You cannot start a test!", Duration = 5}
                            if v4 ~= 1 then
                                v1 = "s"
                            else
                                v1 = ""
                            end
                            v5.Text = "Please wait " .. v4 .. " second" .. v1 .. " before starting another test!"
                            shared.BottomPopup(v5)
                            return
                        elseif shared.TabletSystem.SCPTestInfo.SCP == u442.SCP then
                            shared.EndTest()
                            shared.BottomPopup({Title = "Test Ended!", Text = "You have ended the current test.", Duration = 4})
                            return
                        end
                    end
                end
            elseif shared.TabletSystem.SCPTestInfo.SCP ~= u442.SCP then
                return
            end
        end
    end)
    pcall(function() -- Line: 2282 -- upvalues: Main (upval), Parent (upval), u442 (val), TextService (upval)
        local Y, Y_2, v1, v2, v3
        local Bottom = Main.SCPTesting.Info.InfoFrame.Frame.Bottom
        local AbsoluteSize = Bottom.AbsoluteSize
        if Parent.AbsoluteSize.Y >= 650 then
            v2 = 16
        else
            v2 = 13
        end
        if Parent.AbsoluteSize.Y >= 650 then
            v3 = 20
        else
            v3 = 14
        end
        local v4 = v3 * 2
        Bottom.QuestionsLabel.Size = UDim2.new(1, 0, 0, v3)
        Bottom.DescriptionLabel.Size = UDim2.new(1, 0, 0, v3)
        Bottom.CrossTestLabel.Size = UDim2.new(1, 0, 0, v3)
        Bottom.QuestionsLabel.TextSize = v3
        Bottom.DescriptionLabel.TextSize = v3
        Bottom.CrossTestLabel.TextSize = v3
        for i, v in ipairs(Bottom:GetChildren()) do
            if v.Name == "Description" then
                v:Destroy()
            elseif v.Name ~= "Question" then
            end
        end
        Bottom.CrossTestLabel.Visible = u442.CanBePickedUp
        local GetTextBoundsParams = Instance.new("GetTextBoundsParams")
        GetTextBoundsParams.Text = ""
        GetTextBoundsParams.Font = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular)
        GetTextBoundsParams.Size = v2
        GetTextBoundsParams.Width = AbsoluteSize.X
        for i2, i3 in ipairs(u442.Questions) do
            v1 = Bottom.QuestionTemplate:Clone()
            v1.TextSize = v2
            v1.Name = "Question"
            v1.Text = i2 .. ". " .. i3
            GetTextBoundsParams.Text = v1.Text
            Y_2 = TextService:GetTextBoundsAsync(GetTextBoundsParams).Y
            v1.Size = UDim2.new(1, 0, 0, Y_2)
            v4 = v4 + Y_2
            v1.Visible = true
            v1.Parent = Bottom
        end
        for i4, j in ipairs(u442.Description) do
            v1 = Bottom.DescriptionTemplate:Clone()
            v1.TextSize = v2
            v1.Name = "Description"
            v1.Text = j
            GetTextBoundsParams.Text = j
            Y = TextService:GetTextBoundsAsync(GetTextBoundsParams).Y
            v1.Size = UDim2.new(1, 0, 0, Y)
            v4 = v4 + Y
            v1.Visible = true
            v1.Parent = Bottom
        end
        Bottom.CanvasSize = UDim2.new(1, 0, 0, v4)
    end)
    Main.SCPTesting.Info.SCPs.Visible = false
    Main.SCPTesting.Info.InfoFrame.Visible = true
end
Main.Hub.Buttons.Layer1.SCPTesting.Button.MouseButton1Click:Connect(function() -- Line: 2352 -- upvalues: u821 (ref), Main (val), DeltaFramework (val), u221 (val), u216 (ref), u915 (val), u919 (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    local v1 = -1
    for i, v in ipairs(DeltaFramework.Player.Character:GetChildren()) do
        if v.ClassName == "Tool" and u221[v.Name] and v1 < u221[v.Name] then
            v1 = u221[v.Name]
        end
    end
    for i2, i3 in ipairs(DeltaFramework.Player.Backpack:GetChildren()) do
        if i3.ClassName == "Tool" and u221[i3.Name] and v1 < u221[i3.Name] then
            v1 = u221[i3.Name]
        end
    end
    local v2 = #Main.SCPTesting.Info.SCPs.List:GetChildren()
    if v2 >= 2 then
        local v3, v4, v5
        for i4, j in ipairs(u216) do
            v3 = Main.SCPTesting.Info.SCPs.List:FindFirstChild(j)
            if v3 then
                v4 = u915.SCPs[j]
                v5 = if u915.Colors[v4.ObjectClass] then u915.Colors[v4.ObjectClass] else Color3.fromRGB(100, 155, 200)
                if v1 >= v4.ClearanceLevel then
                    v3.MainFrame.Outline.Icon.ImageColor3 = Color3.new(1, 1, 1)
                    v3.MainFrame.Title.TextColor3 = Color3.new(1, 1, 1)
                    v3.MainFrame.Class.TextColor3 = v5
                else
                    v3.MainFrame.Outline.Icon.ImageColor3 = Color3.fromRGB(100, 100, 100)
                    v3.MainFrame.Title.TextColor3 = Color3.fromRGB(100, 100, 100)
                    v3.MainFrame.Class.TextColor3 = u919:Shade(v5, 150)
                end
            end
        end
    else
        local v6
        local SCPTemplate = DeltaFramework.ReplicatedStorage.GUITemplates.SCPTemplate
        local v7 = {}
        u216 = v7
        for k in pairs(u915.SCPs) do
            table.insert(u216, k)
        end
        table.sort(u216, function(p1, p2) -- Line: 2384 -- upvalues: u915 (upval)
            local v1 = true
            if u915.SCPs[p1].ClearanceLevel >= u915.SCPs[p2].ClearanceLevel then
                v1 = false
                if u915.SCPs[p1].ClearanceLevel == u915.SCPs[p2].ClearanceLevel then
                    local v2 = tonumber(p1)
                    v1 = v2 < tonumber(p2)
                end
            end
            return v1
        end)
        for i5, k2 in ipairs(u216) do
            local u90 = u915.SCPs[k2]
            local u94 = SCPTemplate:Clone()
            u94.Name = u90.SCP
            u94.MainFrame.Title.Text = "SCP-" .. u90.SCP
            u94.MainFrame.Class.Text = u90.ObjectClass:upper()
            u94.MainFrame.Outline.Icon.Image = u90.Icon
            v6 = if u915.Colors[u90.ObjectClass] then u915.Colors[u90.ObjectClass] else Color3.fromRGB(100, 155, 200)
            if v1 >= u90.ClearanceLevel then
                u94.MainFrame.Outline.Icon.ImageColor3 = Color3.new(1, 1, 1)
                u94.MainFrame.Title.TextColor3 = Color3.new(1, 1, 1)
                u94.MainFrame.Class.TextColor3 = v6
            else
                u94.MainFrame.Outline.Icon.ImageColor3 = Color3.fromRGB(100, 100, 100)
                u94.MainFrame.Title.TextColor3 = Color3.fromRGB(100, 100, 100)
                u94.MainFrame.Class.TextColor3 = u919:Shade(v6, 150)
            end
            u94.MainFrame.MouseEnter:Connect(function() -- Line: 2413 -- upvalues: DeltaFramework (upval), u94 (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame, v1, {Size = UDim2.new(0.963, 0, 0.963, 0)}):Play()
            end)
            u94.MainFrame.MouseLeave:Connect(function() -- Line: 2417 -- upvalues: DeltaFramework (upval), u94 (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame, v1, {Size = UDim2.new(0.9, 0, 0.9, 0)}):Play()
            end)
            u94.MainFrame.ViewButton.ImageButton.MouseEnter:Connect(function() -- Line: 2421 -- upvalues: DeltaFramework (upval), u94 (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame.ViewButton, v1, {BackgroundTransparency = 0.15}):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame.ViewButton.ImageButton, v1, {ImageTransparency = 0.15}):Play()
            end)
            u94.MainFrame.ViewButton.ImageButton.MouseLeave:Connect(function() -- Line: 2426 -- upvalues: DeltaFramework (upval), u94 (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame.ViewButton, v1, {BackgroundTransparency = 0}):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
                DeltaFramework.TweenService:Create(u94.MainFrame.ViewButton.ImageButton, v1, {ImageTransparency = 0}):Play()
            end)
            u94.MainFrame.Button.MouseButton1Click:Connect(function() -- Line: 2431 -- upvalues: u90 (val)
                OpenSCPInfoScreen(u90)
            end)
            u94.Parent = Main.SCPTesting.Info.SCPs.List
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "SCPTesting")
    ForceUpdate()
    for i6, n in ipairs(Main:GetChildren()) do
        if n.Name ~= "TabletBG" and n.Name ~= "SCPTesting" then
            n.Visible = false
        end
    end
    if not shared.TabletSystem.SCPTestInfo then
        Main.SCPTesting.Info.SCPs.Visible = true
        Main.SCPTesting.Info.InfoFrame.Visible = false
    else
        OpenSCPInfoScreen(shared.TabletSystem.SCPTestInfo.SCPInfo)
    end
    Main.SCPTesting.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer1.Notes.Button.MouseButton1Click:Connect(function() -- Line: 2484 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Notes")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "Notes" then
            v.Visible = false
        end
    end
    Main.Notes.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer1.Clock.Button.MouseButton1Click:Connect(function() -- Line: 2508 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Clock")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "Clock" then
            v.Visible = false
        end
    end
    Main.Clock.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer2.Logs.Button.MouseButton1Click:Connect(function() -- Line: 2532 -- upvalues: u821 (ref), Main (val), DeltaFramework (val), u915 (val), TextService (val)
    local Attribute, Class, v1, v2, v3
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    local Info = Main.Logs.Info
    for i, v in ipairs(Info.Middle.List:GetChildren()) do
        if v.ClassName == "Frame" then
            v:Destroy()
        end
    end
    local Children = DeltaFramework.ReplicatedStorage.TestCheckupLogs:GetChildren()
    local function TimeFromTick(p1) -- Line: 2551
        local v1, v2, v3, v4, v5
        local v6 = os.date("*t", p1)
        local day = v6.day
        local month = v6.month
        local hour = v6.hour
        local min = v6.min
        local sec = v6.sec
        if day >= 10 then
            v1 = tostring(day)
        else
            v1 = "0" .. tostring(day)
        end
        if month >= 10 then
            v2 = tostring(month)
        else
            v2 = "0" .. tostring(month)
        end
        if hour >= 10 then
            v3 = tostring(hour)
        else
            v3 = "0" .. tostring(hour)
        end
        if min >= 10 then
            v4 = tostring(min)
        else
            v4 = "0" .. tostring(min)
        end
        if sec >= 10 then
            v5 = tostring(sec)
        else
            v5 = "0" .. tostring(sec)
        end
        return v1 .. "/" .. v2 .. "/" .. v6.year .. " " .. v3 .. ":" .. v4 .. ":" .. v5
    end
    v1 = 1
    local v4 = -1
    for i2 = #Children, v1, v4 do
        local u47 = DeltaFramework.ReplicatedStorage.GUITemplates.TestTemplate:Clone()
        u47.LayoutOrder = #Children - i2
        u47.MainFrame.Title.Text = Children[i2].Name
        u47.MainFrame.Author.Text = Children[i2]:GetAttribute("Author")
        u47.MainFrame.Date.Text = TimeFromTick(Children[i2]:GetAttribute("Date"))
        Attribute = Children[i2]:GetAttribute("Target")
        Class = u47.MainFrame.Class
        if not (tonumber(Attribute)) then
            v3 = Attribute
        else
            v3 = "SCP-" .. Attribute
        end
        Class.Text = v3
        u47.Name = Children[i2]:GetAttribute("Author") .. "'s " .. u47.MainFrame.Class.Text .. " " .. Children[i2].Name
        v2 = Color3.fromRGB(100, 155, 200)
        if Attribute == "CHECK UP" then
            u47.MainFrame.Outline.Icon.Image = "rbxassetid://5932716530"
        elseif u915.SCPs[Attribute] then
            if u915.Colors[u915.SCPs[Attribute].ObjectClass] then
                v2 = u915.Colors[u915.SCPs[Attribute].ObjectClass]
            end
            if u915.SCPs[Attribute].Icon then
                u47.MainFrame.Outline.Icon.Image = u915.SCPs[Attribute].Icon
            end
        end
        u47.MainFrame.Class.TextColor3 = v2
        u47.MainFrame.MouseEnter:Connect(function() -- Line: 2593 -- upvalues: DeltaFramework (upval), u47 (val)
            local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame, v1, {Size = UDim2.new(0.963, 0, 0.963, 0)}):Play()
        end)
        u47.MainFrame.MouseLeave:Connect(function() -- Line: 2597 -- upvalues: DeltaFramework (upval), u47 (val)
            local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame, v1, {Size = UDim2.new(0.9, 0, 0.9, 0)}):Play()
        end)
        u47.MainFrame.ViewButton.ImageButton.MouseEnter:Connect(function() -- Line: 2601 -- upvalues: DeltaFramework (upval), u47 (val)
            local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame.ViewButton, v1, {BackgroundTransparency = 0.15}):Play()
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame.ViewButton.ImageButton, v1, {ImageTransparency = 0.15}):Play()
        end)
        u47.MainFrame.ViewButton.ImageButton.MouseLeave:Connect(function() -- Line: 2606 -- upvalues: DeltaFramework (upval), u47 (val)
            local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame.ViewButton, v1, {BackgroundTransparency = 0}):Play()
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Sine)
            DeltaFramework.TweenService:Create(u47.MainFrame.ViewButton.ImageButton, v1, {ImageTransparency = 0}):Play()
        end)
        u47.MainFrame.Button.MouseButton1Click:Connect(function() -- Line: 2611 -- upvalues: Info (val), u47 (val), Children (val), i2 (val), TextService (upval)
            local v1
            script.Click:Play()
            Info.TestCheckupLog.ScrollingFrame.Title.Text = u47.MainFrame.Class.Text .. " " .. u47.MainFrame.Title.Text
            Info.TestCheckupLog.ScrollingFrame.Title.TextColor3 = u47.MainFrame.Class.TextColor3
            Info.TestCheckupLog.ScrollingFrame.Author.Text = u47.MainFrame.Author.Text
            Info.TestCheckupLog.ScrollingFrame.Date.Text = u47.MainFrame.Date.Text
            Info.TestCheckupLog.ScrollingFrame.Events.TextBox.Text = Children[i2].Value
            local Y = Info.TestCheckupLog.ScrollingFrame.AbsoluteSize.Y
            local Events = Info.TestCheckupLog.ScrollingFrame.Events
            local new = UDim2.new
            if 192 > Y then
                v1 = 200
            else
                v1 = Y - 142
                if not v1 then
                    v1 = 200
                end
            end
            Events.Size = new(1, -18, 0, v1)
            pcall(function() -- Line: 2623 -- upvalues: Info (upval), Children (upval), i2 (upval), TextService (upval)
                local AbsoluteSize = Info.TestCheckupLog.ScrollingFrame.Events.AbsoluteSize
                local GetTextBoundsParams = Instance.new("GetTextBoundsParams")
                GetTextBoundsParams.Text = Children[i2].Value
                GetTextBoundsParams.Font = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.SemiBold)
                GetTextBoundsParams.Size = 23
                GetTextBoundsParams.Width = AbsoluteSize.X
                local v1 = math.max(AbsoluteSize.Y, TextService:GetTextBoundsAsync(GetTextBoundsParams).Y)
                Info.TestCheckupLog.ScrollingFrame.Events.CanvasSize = UDim2.new(1, 0, 0, v1)
            end)
            Info.Middle.Visible = false
            Info.TestCheckupLog.Visible = true
        end)
        u47.Parent = Info.Middle.List
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Logs")
    ForceUpdate()
    for i3, j in ipairs(Main:GetChildren()) do
        if j.Name ~= "TabletBG" and j.Name ~= "Logs" then
            j.Visible = false
        end
    end
    Main.Logs.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer2.Discoveries.Button.MouseButton1Click:Connect(function() -- Line: 2657 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    local Attribute, Attribute_2, Back, CrossTestFill, Fill, SCP, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    local Info = Main.Discoveries:WaitForChild("Info")
    local Main_2 = Info:WaitForChild("Main")
    local List = Main_2:WaitForChild("List")
    for i, v in ipairs(List:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "Template" and v.Name ~= "DropdownList" then
            v:Destroy()
        end
    end
    local TestCheckupLogs = DeltaFramework.ReplicatedStorage:WaitForChild("TestCheckupLogs")
    local v13 = {}
    for k in pairs(TestCheckupLogs:GetAttributes()) do
        if string.sub(k, 0, 2) ~= "CT" then
            table.insert(v13, k)
        end
    end
    table.sort(v13, function(p1, p2) -- Line: 2681
        local v1 = tonumber(p1)
        local v2 = v1 < tonumber(p2)
        return v2
    end)
    local u678 = nil
    local v14 = 0
    for i2, i3 in ipairs(v13) do
        Attribute = TestCheckupLogs:GetAttribute(i3)
        v2 = {}
        local u605 = {}
        if shared.Stats then
            v4 = shared.Stats.Discoveries[i3]
            if not v4 then
                v4 = {}
            end
            for k2, j in pairs(v4) do
                table.insert(v2, j)
            end
        end
        if Attribute ~= "" then
            v3 = #Attribute:split(",")
        else
            v3 = 0
        end
        v4 = 0
        for i4, k3 in ipairs(Attribute:split(",")) do
            if table.find(v2, (tonumber(k3))) then
                v4 = v4 + 1
                if shared.Stats.DiscoveriesInfo and shared.Stats.DiscoveriesInfo[i3] then
                    v9 = shared.Stats.DiscoveriesInfo[i3]
                    if not (v9[tonumber(k3)]) then
                        v9 = shared.Stats.DiscoveriesInfo[i3]
                        if not (v9[tostring(k3)]) then
                            v9 = shared.Stats.DiscoveriesInfo[i3]
                            if not (v9["_" .. tostring(k3)]) then
                                table.insert(u605, {"???"})
                            else
                                table.insert(u605, {shared.Stats.DiscoveriesInfo[i3]["_" .. tostring(k3)] .. "."})
                            end
                        else
                            table.insert(u605, {shared.Stats.DiscoveriesInfo[i3][tostring(k3)] .. "."})
                        end
                    else
                        table.insert(u605, {shared.Stats.DiscoveriesInfo[i3][tonumber(k3)] .. "."})
                    end
                end
            elseif not (table.find(v2, (tostring(k3)))) and not (table.find(v2, "_" .. tostring(k3))) then
            end
        end
        v1 = TestCheckupLogs:GetAttribute("CT" .. i3)
        if v1 ~= "" then
            v5 = #v1:split(",")
        else
            v5 = 0
        end
        v6 = 0
        for i5, n in ipairs(v1:split(",")) do
            if table.find(v2, (tonumber(n))) then
                v6 = v6 + 1
                if shared.Stats.DiscoveriesInfo and shared.Stats.DiscoveriesInfo[i3] then
                    v10 = shared.Stats.DiscoveriesInfo[i3]
                    if not (v10[tonumber(n)]) then
                        v10 = shared.Stats.DiscoveriesInfo[i3]
                        if not (v10[tostring(n)]) then
                            v10 = shared.Stats.DiscoveriesInfo[i3]
                            if not (v10["_" .. tostring(n)]) then
                                table.insert(u605, {"???", true})
                            else
                                v11 = {}
                                v12 = shared.Stats.DiscoveriesInfo[i3]["_" .. tostring(n)] .. "."
                                v11[1] = v12
                                v11[2] = true
                                table.insert(u605, v11)
                            end
                        else
                            v11 = {}
                            v12 = shared.Stats.DiscoveriesInfo[i3][tostring(n)] .. "."
                            v11[1] = v12
                            v11[2] = true
                            table.insert(u605, v11)
                        end
                    else
                        v11 = {}
                        v12 = shared.Stats.DiscoveriesInfo[i3][tonumber(n)] .. "."
                        v11[1] = v12
                        v11[2] = true
                        table.insert(u605, v11)
                    end
                end
            elseif not (table.find(v2, (tostring(n)))) and not (table.find(v2, "_" .. tostring(n))) then
            end
        end
        local u224 = List.Template:Clone()
        u224.Name = i3
        if 0 >= v5 then
            u224.SCP.Text = "SCP-" .. i3 .. "     :    " .. v4 .. " / " .. v3
        else
            u224.SCP.Text = "SCP-" .. i3 .. "     :    " .. v4 .. " / " .. v3 .. " | CROSS TEST: " .. v6 .. " / " .. v5
        end
        v14 = v14 + v4 + v6
        if v3 <= v4 and v5 <= v6 then
            Main.Discoveries.Info.SCPSpecialist.Visible = true
            Main.Discoveries.Info.SCPSpecialist.Checkbox.Check.Visible = not DeltaFramework.Player:HasTag("DUSP")
            Attribute_2 = DeltaFramework.Player:GetAttribute("SST")
            v7 = Attribute_2 == tostring(i3)
            u224.SCPSpecialist.Checkbox.Check.Visible = v7
            u224.SCPSpecialist.Checkbox.MouseButton1Click:Connect(function() -- Line: 2761 -- upvalues: u224 (val), DeltaFramework (upval), i3 (val), List (val)
                script.Click:Play()
                u224.SCPSpecialist.Checkbox.Check.Visible = not u224.SCPSpecialist.Checkbox.Check.Visible
                if not u224.SCPSpecialist.Checkbox.Check.Visible then
                    DeltaFramework.ReplicatedStorage.Remotes.Update:FireServer("SST_0")
                    return
                end
                DeltaFramework.ReplicatedStorage.Remotes.Update:FireServer("SST_" .. tostring(i3))
                for i, v in ipairs(List:GetChildren()) do
                    if v ~= u224 and v.Name ~= "Template" and v:FindFirstChild("SCPSpecialist") then
                        v.SCPSpecialist.Checkbox.Check.Visible = false
                    end
                end
            end)
            u224.SCPSpecialist.Visible = true
            SCP = u224.SCP
            SCP.Size = UDim2.new(0.9, 0, 1, 0)
            Back = u224.Back
            Back.Size = UDim2.new(0.9, 0, 1, 0)
        end
        u224.Back.Text = u224.SCP.Text
        Fill = u224.Fill
        Fill.Size = UDim2.fromScale(v4 / v3, 0.5)
        CrossTestFill = u224.CrossTestFill
        v8 = v6 / math.max(1, v5)
        CrossTestFill.Size = UDim2.fromScale(v8, 0.5)
        u224.LayoutOrder = (#List:GetChildren() - 2) * 100
        v7 = if 0 >= v4 then 0 < v6 else true
        u224.DropdownButton.Visible = v7
        u224.DropdownButton.MouseButton1Click:Connect(function() -- Line: 2791 -- upvalues: u678 (ref), u224 (val), List (val), DeltaFramework (upval), u605 (val)
            local v1, v2
            u678 = u224
            for i, v in ipairs(List:GetChildren()) do
                if v:IsA("Frame") and v.Name ~= "Template" and v.Name ~= "DropdownList" and v ~= u224 then
                    v.DropdownButton.Rotation = 0
                end
            end
            if u224.DropdownButton.Rotation ~= 0 then
                v1 = 0
            else
                v1 = 180
            end
            u224.DropdownButton.Rotation = v1
            if List.DropdownList.Size ~= UDim2.new(1, -4, 0, 0) then
                local v3 = TweenInfo.new(0.2)
                DeltaFramework.TweenService:Create(List.DropdownList, v3, {Size = UDim2.new(1, -4, 0, 0)}):Play()
                task.wait(0.2)
            end
            if u224.DropdownButton.Rotation ~= 180 or u678 ~= u224 then
                if u678 == u224 then
                    List.DropdownList.Visible = false
                end
                return
            end
            List.DropdownList.Size = UDim2.new(1, -4, 0, 0)
            List.DropdownList.LayoutOrder = u224.LayoutOrder + 1
            List.DropdownList.Visible = true
            for i2, j in List.DropdownList:GetChildren() do
                if j:IsA("Frame") and j.Name ~= "Template" then
                    j:Destroy()
                end
            end
            local v4 = 0
            for k, k2 in pairs(u605) do
                v2 = List.DropdownList.Template:Clone()
                v2.Name = "DropdownOption" .. k
                v2.SCP.Text = k2[1]
                if not (k2[2]) then
                    v2.BackgroundColor3 = Color3.fromRGB(33, 39, 64)
                else
                    v2.BackgroundColor3 = Color3.fromRGB(64, 39, 33)
                end
                v2.Back.Text = v2.SCP.Text
                v2.Parent = List.DropdownList
                v2.Visible = true
                v4 = v4 + 1
            end
            local v5 = TweenInfo.new(0.25)
            DeltaFramework.TweenService:Create(List.DropdownList, v5, {Size = UDim2.new(1, -4, 0, v4 * 40)}):Play()
        end)
        u224.Parent = List
        u224.Visible = true
    end
    if 20 <= v14 then
        Main.Discoveries.Info.DoctorTitle.Visible = true
        Main.Discoveries.Info.DoctorTitle.Checkbox.Check.Visible = not DeltaFramework.Player:HasTag("DUDT")
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Discoveries")
    ForceUpdate()
    for i6, m in ipairs(Main:GetChildren()) do
        if m.Name ~= "TabletBG" and m.Name ~= "Discoveries" then
            m.Visible = false
        end
    end
    Main.Discoveries.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer2.Radar.Button.MouseButton1Click:Connect(function() -- Line: 2866 -- upvalues: u821 (ref), u946 (ref), Main (val)
    if u821 then
        return
    end
    if workspace:GetAttribute("MapOriginal") ~= "Roleplay" then
        shared.Notification({Title = "Tablet - SCP Radar", Text = "Radar wasn't able to connect to the facility!", Duration = 3})
        return
    end
    if u946 then
        shared.Notification({Title = "Tablet - SCP Radar Cooldown", Text = "Please wait.. Radar is connecting to facility...", Duration = 3})
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Radar")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "Radar" then
            v.Visible = false
        end
    end
    Main.Radar.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer2.PowerOff.Button.MouseButton1Click:Connect(function() -- Line: 2910 -- upvalues: u821 (ref), DeltaFramework (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    local Character = DeltaFramework.Player.Character
    if not Character then
        Character = DeltaFramework.Player.CharacterAdded:Wait()
    end
    shared.TabletSystem.Deactivate()
    Character:FindFirstChild("Humanoid"):UnequipTools()
    u821 = false
end)
Main.Hub.Buttons.Layer3.PowerOff.Button.MouseButton1Click:Connect(function() -- Line: 2926 -- upvalues: u821 (ref), DeltaFramework (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    local Character = DeltaFramework.Player.Character
    if not Character then
        Character = DeltaFramework.Player.CharacterAdded:Wait()
    end
    shared.TabletSystem.Deactivate()
    if Character:FindFirstChild("Humanoid") then
        Character.Humanoid:UnequipTools()
    end
    u821 = false
end)
Main.Hub.Buttons.Layer3.SiteStatus.Button.MouseButton1Click:Connect(function() -- Line: 2944 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "SiteS")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "SStats" then
            v.Visible = false
        end
    end
    Main.SStats.Visible = true
    u821 = false
end)
Main.Hub.Buttons.Layer3.SitePolicies.Button.MouseButton1Click:Connect(function() -- Line: 2968 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Hub.Visible = false
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Policies")
    ForceUpdate()
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" and v.Name ~= "SPolicies" then
            v.Visible = false
        end
    end
    Main.SPolicies.Visible = true
    u821 = false
end)
Main.SStats.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 2992 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.SStats.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.TeamCount.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3013 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.TeamCount.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.SPolicies.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3034 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.SPolicies.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.Tasks.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3056 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Tasks.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.Radar.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3078 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Radar.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.Tasks.Info.Top.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3100 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    local v1
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    for i, v in ipairs(Main.Tasks.Info.Top:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "Button1" then
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(v.BG.Fade.UIStroke, v1, {Thickness = 1}):Play()
        end
    end
    local v2 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    DeltaFramework.TweenService:Create(Main.Tasks.Info.Top.Button1.BG.Fade.UIStroke, v2, {Thickness = 3}):Play()
    for i2, i3 in ipairs(Main.Tasks.Info.Middle:GetChildren()) do
        if i3:IsA("Frame") then
            i3.Visible = false
        elseif not (i3:IsA("ScrollingFrame")) then
        end
    end
    UpdateSiteJanitorPage()
    Main.Tasks.Info.Middle.List.Visible = true
    u821 = false
end)
Main.Tasks.Info.Top.Button2.Button.MouseButton1Click:Connect(function() -- Line: 3132 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    local v1
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    for i, v in ipairs(Main.Tasks.Info.Top:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "Button2" then
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(v.BG.Fade.UIStroke, v1, {Thickness = 1}):Play()
        end
    end
    local v2 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    DeltaFramework.TweenService:Create(Main.Tasks.Info.Top.Button2.BG.Fade.UIStroke, v2, {Thickness = 3}):Play()
    for i2, i3 in ipairs(Main.Tasks.Info.Middle:GetChildren()) do
        if i3:IsA("Frame") then
            i3.Visible = false
        elseif not (i3:IsA("ScrollingFrame")) then
        end
    end
    UpdatePuddles()
    Main.Tasks.Info.Middle.Puddle.Visible = true
    u821 = false
end)
Main.Tasks.Info.Top.Button3.Button.MouseButton1Click:Connect(function() -- Line: 3164 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    local v1
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    for i, v in ipairs(Main.Tasks.Info.Top:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "Button3" then
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(v.BG.Fade.UIStroke, v1, {Thickness = 1}):Play()
        end
    end
    local v2 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    DeltaFramework.TweenService:Create(Main.Tasks.Info.Top.Button3.BG.Fade.UIStroke, v2, {Thickness = 3}):Play()
    for i2, i3 in ipairs(Main.Tasks.Info.Middle:GetChildren()) do
        if i3:IsA("Frame") then
            i3.Visible = false
        elseif not (i3:IsA("ScrollingFrame")) then
        end
    end
    Update002Status()
    Main.Tasks.Info.Middle.SCP002.Visible = true
    u821 = false
end)
Main.Tasks.Info.Top.Button4.Button.MouseButton1Click:Connect(function() -- Line: 3196 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    local v1
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    for i, v in ipairs(Main.Tasks.Info.Top:GetChildren()) do
        if v:IsA("Frame") and v.Name ~= "Button4" then
            v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
            DeltaFramework.TweenService:Create(v.BG.Fade.UIStroke, v1, {Thickness = 1}):Play()
        end
    end
    local v2 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
    DeltaFramework.TweenService:Create(Main.Tasks.Info.Top.Button4.BG.Fade.UIStroke, v2, {Thickness = 3}):Play()
    for i2, i3 in ipairs(Main.Tasks.Info.Middle:GetChildren()) do
        if i3:IsA("Frame") then
            i3.Visible = false
        elseif not (i3:IsA("ScrollingFrame")) then
        end
    end
    UpdateTesting()
    Main.Tasks.Info.Middle.Testing.Visible = true
    u821 = false
end)
Main.SCPTesting.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3228 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    if not Main.SCPTesting.Info.InfoFrame.Visible then
        Main.SCPTesting.Visible = false
        for i, v in ipairs(Main:GetChildren()) do
            if v.Name ~= "TabletBG" then
                v.Visible = false
            end
        end
        Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
        Main.Hub.Visible = true
    else
        Main.SCPTesting.Info.InfoFrame.Visible = false
        Main.SCPTesting.Info.SCPs.Visible = true
    end
    u821 = false
end)
Main.SCPTesting.Buttons.Button2.Button.MouseButton1Click:Connect(function() -- Line: 3255 -- upvalues: u821 (ref), u919 (val), DeltaFramework (val), u221 (val), u915 (val)
    local Attribute, v1, v2, v3, v4, v5
    if u821 or shared.TabletSystem.SCPTestInfo or not (u919:IsCharacterValid(DeltaFramework.Player)) then
        return
    end
    u821 = true
    script.Click:Play()
    local v6 = -1
    local Tool = DeltaFramework.Player.Character:FindFirstChildOfClass("Tool")
    for i, v in ipairs(DeltaFramework.Player.Backpack:GetChildren()) do
        if v.ClassName == "Tool" and u221[v.Name] and v6 < u221[v.Name] then
            v6 = u221[v.Name]
        end
    end
    if Tool and u221[Tool.Name] and v6 < u221[Tool.Name] then
        v6 = u221[Tool.Name]
    end
    local v7 = nil
    local TestCheckupLogs = DeltaFramework.ReplicatedStorage:WaitForChild("TestCheckupLogs")
    local v8 = {}
    local v9 = {}
    for k in pairs(TestCheckupLogs:GetAttributes()) do
        if string.sub(k, 0, 2) ~= "CT" and u915.SCPs[k] and v6 >= u915.SCPs[k].ClearanceLevel then
            table.insert(v8, k)
        end
    end
    local v10 = #v8
    local v11 = 1
    for i2 = 1, v10, v11 do
        v5 = math.random(1, #v8)
        table.insert(v9, v8[v5])
        table.remove(v8, v5)
    end
    v10 = v9
    v11 = nil
    local v12 = nil
    for j, k2 in v10, v11, v12 do
        Attribute = TestCheckupLogs:GetAttribute(k2)
        v1 = Attribute:split(",")
        v2 = {}
        if shared.Stats then
            v3 = shared.Stats.Discoveries[k2]
            if not v3 then
                v3 = {}
            end
            v2 = v3
        end
        if v1 ~= "" then end
        v4 = false
        for i3, n in ipairs(v1) do
            if table.find(v2, (tonumber(n))) then
                v4 = true
                break
            end
        end
        if not v4 then
            v7 = k2
            break
        end
    end
    if not (v9[1]) then
        u821 = false
        return
    end
    if not v7 then
        v7 = v9[1]
    end
    shared.StartTest(v7)
    u821 = false
end)
Main.Notes.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3333 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Notes.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
Main.Notes.Buttons.Button2.Button.MouseButton1Click:Connect(function() -- Line: 3355 -- upvalues: u821 (ref), Main (val), DeltaFramework (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    local List = Main.Notes.Info.Main.List
    local v1 = List.TopLeft.Title.Text:len()
    if v1 < 5 then
        u821 = false
        return
    end
    v1 = List.TopLeft.Title.Text:sub(5, -1)
    local v2 = string.len(List.Bottom.Notepad.Text)
    if 12 <= v2 then
        local Remotes = DeltaFramework.ReplicatedStorage:WaitForChild("Remotes")
        local MiscEffects = Remotes:WaitForChild("MiscEffects")
        MiscEffects:FireServer(v1, List.Bottom.Notepad.Text)
    end
    List.TopLeft.Title.Text = "SCP"
    List.TopLeft.Classification.Text = "N/A"
    List.TopLeft.Sector.Text = "N/A"
    List.TopLeft.Clearance.Text = "N/A"
    List.Bottom.Notepad.Text = ""
    for i, v in ipairs(List.TopRight:GetChildren()) do
        if v:IsA("Frame") then
            v.Checkbox.Check.Visible = false
        end
    end
    u821 = false
end)
Main.Notes.Info.Main.List.TopLeft.DropdownButton.MouseButton1Click:Connect(function() -- Line: 3385 -- upvalues: Main (val), u915 (val)
    local v1, v2
    script.Click:Play()
    local TopLeft = Main.Notes.Info.Main.List.TopLeft
    local DropdownList = TopLeft.DropdownList
    DropdownList.Visible = not DropdownList.Visible
    if not DropdownList.Visible then
        v1 = 0
    else
        v1 = 180
    end
    Main.Notes.Info.Main.List.TopLeft.DropdownButton.Rotation = v1
    if not DropdownList.Visible then
        return
    end
    for i, v in ipairs(DropdownList:GetChildren()) do
        if v:IsA("TextButton") and v.Name ~= "Template" then
            v:Destroy()
        end
    end
    local v3 = {}
    for k in pairs(u915.SCPs) do
        table.insert(v3, k)
    end
    table.sort(v3, function(p1, p2) -- Line: 3406
        local v1 = tonumber(p1)
        local v2 = v1 < tonumber(p2)
        return v2
    end)
    for i2, i3 in ipairs(v3) do
        local u74 = u915.SCPs[i3]
        v2 = DropdownList.Template:Clone()
        v2.Name = i3
        v2.Text = i3
        local u92 = if u915.Colors[u74.ObjectClass] then u915.Colors[u74.ObjectClass] else Color3.fromRGB(100, 155, 200)
        v2.TextColor3 = u92
        v2.MouseButton1Click:Connect(function() -- Line: 3425 -- upvalues: TopLeft (val), i3 (val), u74 (val), u92 (ref)
            script.Click:Play()
            TopLeft.Title.Text = "SCP-" .. i3
            TopLeft.Classification.Text = u74.ObjectClass:upper()
            TopLeft.Sector.Text = u74.Sector:upper()
            TopLeft.Clearance.Text = "CLEARANCE LEVEL " .. u74.ClearanceLevel
            TopLeft.Classification.TextColor3 = u92
        end)
        v2.Visible = true
        v2.Parent = DropdownList
    end
end)
for i3, k in ipairs(Main.Notes.Info.Main.List.TopRight:GetChildren()) do
    if k:IsA("Frame") then
        k.Checkbox.MouseButton1Click:Connect(function() -- Line: 3443 -- upvalues: k (val)
            script.Click:Play()
            k.Checkbox.Check.Visible = not k.Checkbox.Check.Visible
        end)
    end
end
local PropertyChangedSignal = Main.Notes.Info.Main.List.Bottom.Notepad:GetPropertyChangedSignal("Text")
PropertyChangedSignal:Connect(function() -- Line: 3450 -- upvalues: Main (val), TextService (val)
    local Bottom = Main.Notes.Info.Main.List.Bottom
    local Notepad = Bottom.Notepad
    local Text = Notepad.Text
    local v1 = string.len(Text)
    Main.Notes.Info.Main.List.CharCount.Text = math.max(0, 1024 - v1) .. " characters left"
    Main.Notes.Info.Main.List.CharCount.Back.Text = Main.Notes.Info.Main.List.CharCount.Text
    if 1024 <= v1 then
        Notepad.Text = Text:sub(0, 1024)
        return
    end
    local GetTextBoundsParams = Instance.new("GetTextBoundsParams")
    GetTextBoundsParams.Text = Text
    GetTextBoundsParams.Font = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular)
    GetTextBoundsParams.Size = 18
    GetTextBoundsParams.Width = Bottom.AbsoluteSize.X
    local v2 = math.max(Bottom.AbsoluteSize.Y, TextService:GetTextBoundsAsync(GetTextBoundsParams).Y)
    Bottom.CanvasSize = UDim2.new(1, 0, 0, v2)
    Bottom.CanvasPosition = Vector2.new(0, v2)
end)
Main.Notes.Info.Main.List.Bottom.Notepad.Focused:Connect(function() -- Line: 3476 -- upvalues: Main (val)
    local v1 = string.len(Main.Notes.Info.Main.List.Bottom.Notepad.Text)
    Main.Notes.Info.Main.List.CharCount.Text = math.max(0, 1024 - v1) .. " characters left"
    Main.Notes.Info.Main.List.CharCount.Back.Text = Main.Notes.Info.Main.List.CharCount.Text
end)
Main.Notes.Info.Main.List.Bottom.Notepad.FocusLost:Connect(function() -- Line: 3484 -- upvalues: Main (val)
    Main.Notes.Info.Main.List.CharCount.Text = ""
    Main.Notes.Info.Main.List.CharCount.Back.Text = ""
end)
Main.Clock.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3489 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Clock.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
for i4, n in ipairs(Main.Clock.Info.Main.List:GetChildren()) do
    local Name = nil
    local Attribute = 0
    n.Buttons.Start.MouseButton1Click:Connect(function() -- Line: 3515 -- upvalues: Name (ref), DeltaFramework (val), Attribute (ref), n (val)
        script.Click:Play()
        if Name then
            return
        end
        Name = DeltaFramework.RunService.Heartbeat:Connect(function(p1) -- Line: 3520 -- upvalues: Attribute (upval), n (upval)
            local v1, v2
            Attribute = Attribute + p1
            v1, v2 = math.modf(Attribute)
            local v3 = v1 // 60
            local v4 = v1 - v3 * 60
            local v5 = math.round(v2 * 100)
            n.Time.TextLabel.Text = v3 // 10 .. "     " .. v3 % 10 .. "     :     " .. v4 // 10 .. "     " .. v4 % 10 .. "     :     " .. v5 // 10 .. "     " .. v5 % 10
        end)
    end)
    n.Buttons.Stop.MouseButton1Click:Connect(function() -- Line: 3532 -- upvalues: Name (ref), Attribute (ref)
        script.Click:Play()
        if not Name or not Name.Connected then
            return
        end
        Name:Disconnect()
        Name = nil
        Attribute = 0
    end)
    n.Buttons.Reset.MouseButton1Click:Connect(function() -- Line: 3542 -- upvalues: Name (ref), Attribute (ref), n (val)
        script.Click:Play()
        if Name and Name.Connected then
            Name:Disconnect()
            Name = nil
            Attribute = 0
        end
        n.Time.TextLabel.Text = "0     0     :     0     0     :     0     0"
    end)
end
Main.Logs.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3555 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    if not Main.Logs.Info.TestCheckupLog.Visible then
        Main.Logs.Visible = false
        for i, v in ipairs(Main:GetChildren()) do
            if v.Name ~= "TabletBG" then
                v.Visible = false
            end
        end
        Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
        Main.Hub.Visible = true
    else
        Main.Logs.Info.TestCheckupLog.Visible = false
        Main.Logs.Info.Middle.Visible = true
    end
    u821 = false
end)
Main.Discoveries.Buttons.Button1.Button.MouseButton1Click:Connect(function() -- Line: 3581 -- upvalues: u821 (ref), Main (val)
    if u821 then
        return
    end
    u821 = true
    script.Click:Play()
    Main.Discoveries.Visible = false
    for i, v in ipairs(Main:GetChildren()) do
        if v.Name ~= "TabletBG" then
            v.Visible = false
        end
    end
    Main.Parent.TabletHandler:SetAttribute("Viewing", "Hub")
    Main.Hub.Visible = true
    u821 = false
end)
for i5, m in ipairs(Main.Hub.Buttons:GetDescendants()) do
    Name = m:IsA("TextButton")
    if Name then
        Name = m.Name
        if Name == "Button" then
            Name = m.Parent
            Attribute = Name:GetAttribute("OrginColor")
            if not Attribute then
                Name:SetAttribute("OrginColor", Name.BG.Fade.UIStroke.Color)
            end
            Name.Button.MouseEnter:Connect(function() -- Line: 3613 -- upvalues: u821 (ref), DeltaFramework (val), Name (val)
                if u821 then
                    return
                end
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Name.BG.Fade.UIStroke, v1, {Color = Color3.fromRGB(255, 255, 255)}):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Name.BG.Fade.Line, v1, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Name.BG.Icon, v1, {ImageColor3 = Color3.fromRGB(255, 255, 255)}):Play()
            end)
            Attribute = Name.Button.MouseLeave
            Attribute:Connect(function() -- Line: 3629 -- upvalues: DeltaFramework (val), Name (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v2 = {}
                local Attribute = Name:GetAttribute("OrginColor")
                if not Attribute then
                    Attribute = Color3.fromRGB(255, 255, 255)
                end
                v2.Color = Attribute
                DeltaFramework.TweenService:Create(Name.BG.Fade.UIStroke, v1, v2):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                v2 = {}
                local Attribute_2 = Name:GetAttribute("OrginColor")
                if not Attribute_2 then
                    Attribute_2 = Color3.fromRGB(255, 255, 255)
                end
                v2.BackgroundColor3 = Attribute_2
                DeltaFramework.TweenService:Create(Name.BG.Fade.Line, v1, v2):Play()
                v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                v2 = {}
                local Attribute_3 = Name:GetAttribute("OrginColor")
                if not Attribute_3 then
                    Attribute_3 = Color3.fromRGB(255, 255, 255)
                end
                v2.ImageColor3 = Attribute_3
                DeltaFramework.TweenService:Create(Name.BG.Icon, v1, v2):Play()
            end)
            Name.Button.MouseButton1Click:Connect(function() -- Line: 3643 -- upvalues: u821 (ref), DeltaFramework (val), Name (val)
                if u821 then
                    return
                end
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v2 = DeltaFramework.TweenService:Create(Name.BG, v1, {Size = UDim2.new(0.9, 0, 0.9, 0)})
                local v3 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v4 = DeltaFramework.TweenService:Create(Name.BG, v3, {Size = UDim2.new(1, 0, 1, 0)})
                v2:Play()
                v2.Completed:Wait()
                v4:Play()
            end)
        end
    end
end
for i6, i52 in ipairs(Main.Tasks.Info.Top:GetDescendants()) do
    Name = i52:IsA("TextButton")
    if Name then
        Name = i52.Name
        if Name == "Button" then
            Name = i52.Parent
            Attribute = Name:GetAttribute("OrginColor")
            if not Attribute then
                Name:SetAttribute("OrginColor", Name.BG.Fade.UIStroke.Color)
            end
            Name.Button.MouseEnter:Connect(function() -- Line: 3671 -- upvalues: u821 (ref), DeltaFramework (val), Name (val)
                if u821 then
                    return
                end
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                DeltaFramework.TweenService:Create(Name.BG.Fade.UIStroke, v1, {Color = Color3.fromRGB(255, 255, 255)}):Play()
            end)
            Attribute = Name.Button.MouseLeave
            Attribute:Connect(function() -- Line: 3679 -- upvalues: DeltaFramework (val), Name (val)
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v2 = {}
                local Attribute = Name:GetAttribute("OrginColor")
                if not Attribute then
                    Attribute = Color3.fromRGB(255, 255, 255)
                end
                v2.Color = Attribute
                DeltaFramework.TweenService:Create(Name.BG.Fade.UIStroke, v1, v2):Play()
            end)
            Name.Button.MouseButton1Click:Connect(function() -- Line: 3685 -- upvalues: u821 (ref), DeltaFramework (val), Name (val)
                if u821 then
                    return
                end
                local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v2 = DeltaFramework.TweenService:Create(Name.BG, v1, {Size = UDim2.new(0.95, 0, 0.95, 0)})
                local v3 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                local v4 = DeltaFramework.TweenService:Create(Name.BG, v3, {Size = UDim2.new(1, 0, 1, 0)})
                v2:Play()
                v2.Completed:Wait()
                v4:Play()
            end)
        end
    end
end
for i7, i62 in ipairs(Main:GetDescendants()) do
    Name = i62:IsA("TextButton")
    if Name then
        Name = i62.Name
        if Name == "Button" then
            Name = i62.Text
            if Name == "RETURN" then
                Name = i62.Parent
                Attribute = Name:GetAttribute("OrginColor")
                if not Attribute then
                    Name:SetAttribute("OrginColor", Name.BG.Line.BackgroundColor3)
                end
                Name.Button.MouseEnter:Connect(function() -- Line: 3713 -- upvalues: u821 (ref), DeltaFramework (val), Name (val)
                    if u821 then
                        return
                    end
                    local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    DeltaFramework.TweenService:Create(Name.BG.Line, v1, {BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
                    v1 = TweenInfo.new(0.2)
                    DeltaFramework.TweenService:Create(Name.Button.UIStroke, v1, {Transparency = 0}):Play()
                end)
                Attribute = Name.Button.MouseLeave
                Attribute:Connect(function() -- Line: 3723 -- upvalues: DeltaFramework (val), Name (val)
                    local v1 = TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut)
                    local v2 = {}
                    local Attribute = Name:GetAttribute("OrginColor")
                    if not Attribute then
                        Attribute = Color3.fromRGB(255, 0, 0)
                    end
                    v2.BackgroundColor3 = Attribute
                    DeltaFramework.TweenService:Create(Name.BG.Line, v1, v2):Play()
                    v1 = TweenInfo.new(0.2)
                    DeltaFramework.TweenService:Create(Name.Button.UIStroke, v1, {Transparency = 1}):Play()
                end)
            else
                Name = i62.Text
                if Name ~= "START A RANDOM TEST" then
                    Name = i62.Text
                    if Name ~= "SUBMIT" then end
                end
            end
        end
    end
end
workspace.Alarms.RIOT.Changed:Connect(ForceUpdate)
workspace.Alarms.RAID.Changed:Connect(ForceUpdate)
workspace.Alarms.BREACH.Changed:Connect(ForceUpdate)
DeltaFramework.ReplicatedStorage.Nuke.Changed:Connect(ForceUpdate)
DeltaFramework.ReplicatedStorage.WDB.Changed:Connect(ForceUpdate)
DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("PolicyChange", (1 / 0)).OnClientEvent:Connect(ForceUpdate)
DeltaFramework.ReplicatedStorage.Remotes:WaitForChild("TasksChange", (1 / 0)).OnClientEvent:Connect(ForceUpdate)
Main.Discoveries.Info.DoctorTitle.Checkbox.MouseButton1Click:Connect(function() -- Line: 3751 -- upvalues: Main (val), DeltaFramework (val)
    local v1
    script.Click:Play()
    Main.Discoveries.Info.DoctorTitle.Checkbox.Check.Visible = not Main.Discoveries.Info.DoctorTitle.Checkbox.Check.Visible
    if not Main.Discoveries.Info.DoctorTitle.Checkbox.Check.Visible then
        v1 = "DUDT_0"
    else
        v1 = "DUDT_1"
    end
    DeltaFramework.ReplicatedStorage.Remotes.Update:FireServer(v1)
end)
Main.Discoveries.Info.SCPSpecialist.Checkbox.MouseButton1Click:Connect(function() -- Line: 3759 -- upvalues: Main (val), DeltaFramework (val)
    local v1
    script.Click:Play()
    Main.Discoveries.Info.SCPSpecialist.Checkbox.Check.Visible = not Main.Discoveries.Info.SCPSpecialist.Checkbox.Check.Visible
    if not Main.Discoveries.Info.SCPSpecialist.Checkbox.Check.Visible then
        v1 = "DUSP_0"
    else
        v1 = "DUSP_1"
    end
    DeltaFramework.ReplicatedStorage.Remotes.Update:FireServer(v1)
end)

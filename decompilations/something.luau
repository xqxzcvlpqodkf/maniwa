        function Reload() -- Line: 3697 -- upvalues: u10712 (ref), u218 (ref), WeaponUI (val), Player (val), u251 (ref), DeltaFramework (val), Mode (val), u217 (ref), u9256 (ref), u39 (val), u10726 (val), u9415 (val), u9420 (val), fromRGB (val), u541 (ref)
        local Name, u267, v1, v2, v3, v4, v5
        if not u10712 or u10712.Clip <= u10712.CurrentAmmo or u10712.Ammo == 0 or u218 or u10712.Obj.Name == "Flamethrower" then
            return
        end
        SetAim(false)
        local Reload = u10712.Reload
        if not u10712.Pistol then
            v1 = tonumber("2.25")
        else
            v1 = tonumber("1.25")
        end
        if Reload < v1 then
            return
        end
        u218 = true
        shared.UpdateHintInfo("Aim", false)
        WeaponUI.Reload.Visible = false
        if Player.Team and Player.Team.Name == "Mobile Task Force" and Player:GetAttribute("Subdivision") == "Alpha-1" then
            if not u251 then
                v2 = 0.1
            else
                v2 = 0.2
            end
            Reload = Reload - Reload * v2
        end
        if Player.Team and Player.Character and not (Player.Character:HasTag("076")) then
            v1 = Player.Character:GetAttribute("RP") or ""
            if Player.Team.Name == "Mobile Task Force" then
                if v1:sub(2, 2) == "0" then
                    Reload = Reload - Reload * 0.05
                elseif v1:sub(2, 2) == "1" and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character.Humanoid.Health <= 50 then
                    Reload = Reload - Reload * 0.1
                end
            elseif Player.Team.Name ~= "Intelligence Agency" and Player.Team.Name ~= "Internal Security Department" and Player.Team.Name ~= "Rapid Response Team" then
                if Player.Team.Name ~= "Chaos Insurgency" then
                    if Player.Team.Name == "Security Department" then
                        if v1:sub(6, 6) == "0" then
                            Reload = Reload - Reload * 0.05
                        end
                        if v1:sub(8, 8) == "1" then
                            local v6
                            v2 = nil
                            for i, v in ipairs(DeltaFramework.Players:GetPlayers()) do
                                if v.Character and v.Team and v.Team.Name == Player.Team.Name and v ~= Player and v.Character:FindFirstChild("HumanoidRootPart") then
                                    v6 = vector.magnitude(v.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position)
                                    if v6 <= 42 then
                                        v2 = true
                                        break
                                    end
                                end
                            end
                            if v2 then
                                Reload = Reload - Reload * 0.03
                            end
                        end
                    elseif Player.Team.Name == "Class - D" and v1:sub(2, 2) == "1" then
                        Reload = Reload - Reload * 0.05
                    end
                elseif v1:sub(10, 10) == "1" then
                    Reload = Reload - Reload * 0.03
                end
            end
        end
        if u10712 and u10712.Obj and u10712.Obj:HasTag("StoppingPower") then
            Reload = Reload + Reload * 0.1
        end
        if Mode.Value ~= "Infection" then
            if Mode.Value == "Infection" and shared.InfectionTech and shared.InfectionTech.Panic then
                v1 = #DeltaFramework.Teams["Beta-7"]:GetPlayers()
                if v1 <= #DeltaFramework.Players:GetPlayers() * 0.1 then
                    Reload = Reload - Reload * 0.1
                end
            end
        elseif shared.InfectionTech and shared.InfectionTech["Basic Training"] then
            Reload = Reload - Reload * 0.05
        end
        if u217 and u9256:FindFirstChildOfClass("Humanoid") and u9256.Humanoid.MoveDirection.Magnitude ~= 0 then
            u39:Play("SprintTorsoLock")
        end
        local u277 = nil
        if u10712.Shotgun then
            v3 = tostring(u10712.ReloadAnim)
            if string.find(v3, "8997485303") then
                u267 = true
                u277 = u10726[u10712.Obj.Name].Clip - u10712.CurrentAmmo
                local MarkerReachedSignal = u39.Cache[u10712.ReloadAnim]:GetMarkerReachedSignal("ShellIn")
            end
        end
        u267 = nil
        if u10712 then
            v3 = u10712.CurrentAmmo or 0
            if 1 <= v3 and not u277 then
                if not u10712.Obj then
                    u267 = true
                    Reload = math.max(Reload - 0.2, 0.2)
                elseif u10712.Obj.Name ~= "XM250" and u10712.Obj.Name == "Minigun" then
                end
            end
        end
        u39:Play(u10712.ReloadAnim, 0.1, 1, u10712.ReloadAnimTime / Reload)
        v3 = u39
        if u10712.Pistol then
            v4 = "FirePistol"
        elseif not u10712.Shotgun then
            v4 = "Fire"
        end
        v3:Stop(v4)
        WeaponUI.Main.Clip.Text = "..."
        WeaponUI.Main.Clip.Back.Text = "..."
        local u352 = time()
        u10712.ReloadedAt = u352
        Name = u10712.Obj.Name
        local delay = task.delay
        if not u277 then
            v5 = Reload
        else
            local v7 = math.max(1, u277)
            v5 = Reload * (v7 / u10726[u10712.Obj.Name].Clip)
            if not v5 then
                v5 = Reload
            end
        end
        delay(v5, function() -- Line: 3847 -- upvalues: u10712 (upval), u218 (upval), Name (val), u352 (val), u267 (ref), u277 (ref), fromRGB (upval), u9256 (upval), WeaponUI (upval), u217 (upval), u541 (upval), u39 (upval)
            if not u10712 then
                u218 = false
                if not u10712 then
                    if not u10712 and not u541 then
                        u39:Stop("SprintTorsoLock")
                    end
                elseif not u10712.Obj then
                    if not u10712 and not u541 then
                        u39:Stop("SprintTorsoLock")
                    end
                elseif u10712.Obj.Name ~= "Minigun" then
                    if not u541 then
                        u39:Stop("SprintTorsoLock")
                    end
                elseif not u217 then
                    if not u541 then
                        u39:Stop("SprintTorsoLock")
                    end
                elseif not u10712 and not u541 then
                    u39:Stop("SprintTorsoLock")
                end
                return
            elseif u218 then
                if not u10712.Obj then
                    u218 = false
                    if not u10712 or not u10712.Obj then
                        if not u10712 then
                            if u541 then
                                return
                            end
                            u39:Stop("SprintTorsoLock")
                            return
                        end
                        return
                    end
                    if u10712.Obj.Name ~= "Minigun" or not u217 then
                        if not u541 then
                            u39:Stop("SprintTorsoLock")
                            return
                        end
                        return
                    end
                    if u10712 or u541 then
                        return
                    end
                    u39:Stop("SprintTorsoLock")
                    return
                elseif u10712.Obj.Name == Name and u10712.ReloadedAt == u352 then
                    local v1, v2
                    local v3 = math.min(u10712.Clip, u10712.Ammo)
                    if not u267 then
                        v2 = 0
                    else
                        v2 = 1
                    end
                    u10712.CurrentAmmo = v3 + v2
                    local v4 = u10712
                    if not u277 then
                        v1 = math.max(0, u10712.Ammo - u10712.Clip)
                    else
                        v1 = math.max(0, u10712.Ammo - u277)
                    end
                    v4.Ammo = v1
                    u10712.Last = u10712.TBS
                    local CurrentAmmo = u10712.CurrentAmmo
                    if u10712.Obj.Name == "Freeze Gun" then
                        local v5
                        v1 = 3
                        v3 = 1
                        for i = 1, v1, v3 do
                            v5 = u10712.Obj:FindFirstChild("R" .. i)
                            if v5 then
                                v5.Color = fromRGB(62, 171, 193)
                            end
                        end
                    end
                    if not (u9256:GetAttribute("Dementia")) then
                        WeaponUI.Main.Clip.Text = tostring((math.floor(CurrentAmmo)))
                    elseif tonumber(WeaponUI.Main.Clip.Text) then
                        v1 = tonumber(WeaponUI.Main.Clip.Text) - 1
                        if v1 <= 1 then
                            v1 = math.random(CurrentAmmo, CurrentAmmo + 3)
                        end
                        WeaponUI.Main.Clip.Text = tostring((math.floor(v1)))
                    end
                    WeaponUI.Main.Ammo.Text = tostring(u10712.Ammo)
                    WeaponUI.Main.Clip.Back.Text = WeaponUI.Main.Clip.Text
                    WeaponUI.Main.Ammo.Back.Text = WeaponUI.Main.Ammo.Text
                    shared.UpdateHintInfo("Aim", true)
                    if u10712.NoAmmoAnimation then
                        u10712.NoAmmoAnimation:Stop()
                        u10712.NoAmmoAnimation = nil
                    end
                    u218 = false
                    if not u10712 or not u10712.Obj then
                        if not u10712 then
                            if u541 then
                                return
                            end
                            u39:Stop("SprintTorsoLock")
                            return
                        end
                        return
                    end
                    if u10712.Obj.Name ~= "Minigun" or not u217 then
                        if not u541 then
                            u39:Stop("SprintTorsoLock")
                            return
                        end
                        return
                    end
                    if u10712 or u541 then
                        return
                    end
                    u39:Stop("SprintTorsoLock")
                    return
                end
            end
        end)
    end
    
    function EquipGun(p1) -- Line: 2132 -- upvalues: u10712 (ref), DeltaFramework (val), GunSettings (val), u219 (val), u109 (val), u10128 (val), TargetExtend (val), u39 (val), u217 (ref), WeaponUI (val), u9256 (ref), fromRGB (val), new (val), MobileButtons (val), u10569 (ref), u91 (ref), u10722 (val), u386 (ref), u218 (ref), u215 (ref), u462 (ref), u9818 (val)
        local Ammo, CurrentAmmo, v1, v2
        if p1:FindFirstChild("identifier") ~= nil then
            u10712 = u219[p1.identifier.Value]
        else
            local StringValue = Instance.new("StringValue")
            StringValue.Name = "identifier"
            StringValue.Value = p1.Name .. tostring(tick())
            StringValue.Parent = p1
            u10712 = DeltaFramework:Clone(script.Weapon)
            u10712:Setup(p1, require(GunSettings[p1.Name]))
            u10712.Last = u10712.TBS
            if p1:FindFirstChild("CurrentAmmo") then
                local Value
                v1 = u10712
                if not u10712.Shotgun then
                    Value = p1.CurrentAmmo.Value
                else
                    Value = p1.CurrentAmmo.Value / u10712.Count
                end
                v1.CurrentAmmo = Value
                u10712.Ammo = p1.Ammo.Value
            end
            u219[StringValue.Value] = u10712
        end
        if p1:FindFirstChild("Fire") then
            if not u10712 then
                u10712.Animation = p1.AnimationController:LoadAnimation(p1.Fire)
            elseif u10712.Animation then
            end
        end
        DeltaFramework.UIS.MouseIconEnabled = false
        u109:Color(u10128)
        u109:Extend(TargetExtend)
        local v3 = u39
        if not u10712.Pistol then
            if u10712.Obj.Name ~= "Minigun" then
                v2 = "Idle"
            else
                v2 = "IdleMinigun"
            end
        elseif not u10712.Shotgun then
            v2 = "IdlePistol"
        end
        v3:Play(v2, 0.25)
        if u217 and u10712.Obj.Name == "Minigun" then
            u39:Play("SprintTorsoLock")
        end
        if p1.Name == "XM250" and u10712.CurrentAmmo < 17 then
            local v4
            v3 = u10712.CurrentAmmo + 1
            v1 = -1
            for i = 17, v3, v1 do
                v4 = u10712.Obj["Bullet" .. tostring(i)]
                v4.Transparency = 1
            end
        end
        WeaponUI.Main.Gun.Text = p1.Name
        CurrentAmmo = u10712.CurrentAmmo
        if not (u9256:GetAttribute("Dementia")) then
            WeaponUI.Main.Clip.Text = tostring((math.floor(CurrentAmmo)))
        else
            Ammo = CurrentAmmo + math.random(-7, 7)
            if Ammo <= 1 then
                Ammo = math.random(1, 5)
            elseif u10712.Ammo < Ammo then
                Ammo = u10712.Ammo
            end
            WeaponUI.Main.Clip.Text = tostring((math.floor(Ammo)))
        end
        WeaponUI.Main.Ammo.Text = tostring(u10712.Ammo)
        WeaponUI.Main.Gun.Back.Text = p1.Name
        WeaponUI.Main.Clip.Back.Text = WeaponUI.Main.Clip.Text
        WeaponUI.Main.Ammo.Back.Text = WeaponUI.Main.Ammo.Text
        local Clip = WeaponUI.Main.Clip
        if not (u10712.Obj:HasTag("StoppingPower")) then
            v2 = new(1, 1, 1)
        else
            v2 = fromRGB(255, 175, 0)
        end
        Clip.TextColor3 = v2
        local Back = WeaponUI.Main.Clip.Back
        if not (u10712.Obj:HasTag("StoppingPower")) then
            v2 = fromRGB(100, 100, 100)
        else
            v2 = fromRGB(100, 20, 0)
        end
        Back.TextColor3 = v2
        local AimButton = MobileButtons:WaitForChild("AimButton")
        local AimButtonPosition = shared.AimButtonPosition
        if not AimButtonPosition then
            AimButtonPosition = UDim2.new(0.65, -50, 0.1, -115)
        end
        AimButton.Position = AimButtonPosition
        local ReloadButton = MobileButtons:WaitForChild("ReloadButton")
        local ReloadButtonPosition = shared.ReloadButtonPosition
        if not ReloadButtonPosition then
            ReloadButtonPosition = UDim2.new(0.65, 10, 0.1, -115)
        end
        ReloadButton.Position = ReloadButtonPosition
        local ShootButton = MobileButtons:WaitForChild("ShootButton")
        local ShootButtonPosition = shared.ShootButtonPosition
        if not ShootButtonPosition then
            ShootButtonPosition = UDim2.new(0.65, -52, 0.1, -65)
        end
        ShootButton.Position = ShootButtonPosition
        local ShoulderSwitchButton = MobileButtons:WaitForChild("ShoulderSwitchButton")
        local ShoulderSwitchButtonPosition = shared.ShoulderSwitchButtonPosition
        if not ShoulderSwitchButtonPosition then
            ShoulderSwitchButtonPosition = UDim2.new(0.65, -100, 0.1, -55)
        end
        ShoulderSwitchButton.Position = ShoulderSwitchButtonPosition
        if DeltaFramework.UIS.PreferredInput == Enum.PreferredInput.Touch then
            MobileButtons.AimButton.Visible = true
            MobileButtons.ReloadButton.Visible = true
            MobileButtons.ShootButton.Visible = true
            MobileButtons.ShoulderSwitchButton.Visible = true
        end
        shared.FixCharacterSpeed()
        if u10569 ~= "Mobile" then
            v2 = if u10712.CurrentAmmo == 0 then 0 < u10712.Ammo else false
            WeaponUI.Reload.Visible = v2
        end
        if u217 then
            SetRun(false)
            SetRun(true)
        end
        if not (DeltaFramework.UIS:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)) then
            shared.UpdateHintInfo("Aim", true)
        else
            SetAim(false)
            SetAim(true)
            if u91 then
                if u386 and u10712 and not u218 then
                    if not u10712.Pistol then
                        u215 = true
                    else
                        HandleShot()
                    end
                end
            elseif not u10722.TempAiming then
            end
        end
        u462 = true
        v1 = UIMainPos(true)
        WeaponUI.Main.Position = UDim2.new(WeaponUI.Main.Position.X.Scale, WeaponUI.Main.Position.X.Offset, WeaponUI.Main.Position.Y.Scale, v1.Y.Offset)
        DeltaFramework.TweenService:Create(WeaponUI.Main, u9818, {Position = v1}):Play()
        task.wait(0.25)
        if u10712 and u10712.Obj == p1 then
            u462 = false
        end
    end
    u10722.CanMoveControls = false
    function UnequipGun() -- Line: 2257 -- upvalues: u10712 (ref), DeltaFramework (val), u263 (ref), u10719 (ref), u10722 (val), Camera (val), u375 (val), u217 (ref), u39 (val), WeaponUI (val), u9818 (val), u385 (ref), Player (val), Mode (val), MobileButtons (val), u10569 (ref), u300 (ref), u301 (ref), u215 (ref), u218 (ref)
        if not u10712 then
            return
        end
        local CharacterViewing = u263
        if CharacterViewing then
            CharacterViewing = not u10719
            if not CharacterViewing then
                CharacterViewing = u10722.CharacterViewing
            end
        end
        DeltaFramework.UIS.MouseIconEnabled = CharacterViewing
        Camera.RecoilOffset = u375
        SetAim(false)
        if u217 then
            SetRun(false)
            SetRun(true)
        end
        u39:StopAll(0.25)
        shared.UpdateHintInfo("Aim", false)
        WeaponUI.Reload.Visible = false
        WeaponUI.Sniper.Visible = false
        WeaponUI.ShoulderSwitch.Visible = false
        DeltaFramework.TweenService:Create(WeaponUI.Main, u9818, {Position = UIMainPos(false)}):Play()
        if u10712.Obj.Name == "Flamethrower" and u10712.Obj:FindFirstChild("Muzzle") then
            u10712.Obj.Muzzle.Burn:Stop()
        end
        for i, v in ipairs(u10712.Obj:GetDescendants()) do
            if v.Name == "ActualTransparency" and v.Parent:IsA("BasePart") then
                v.Parent.Transparency = v.Value
                v:Destroy()
            end
        end
        u10712 = nil
        u385 = nil
        if not Player.Character then
            if not u10722.CanMoveControls then
                local v1
                local v2 = u10722
                if Mode.Value ~= "Infection" then
                    v1 = Mode.Value ~= "Infection"
                elseif Player.Team then
                    v1 = true
                    if Player.Team.Name == "Beta-7" then end
                end
                v2.ShootButtonValid = v1
                if u10722.ShootButtonValid then
                    local ShootButton = MobileButtons:WaitForChild("ShootButton")
                    ShootButton.Position = UDim2.new(1.65, -52, 0.1, -65)
                end
                local ShoulderSwitchButton = MobileButtons:WaitForChild("ShoulderSwitchButton")
                ShoulderSwitchButton.Position = UDim2.new(2.65, -100, 0.1, -55)
                local AimButton = MobileButtons:WaitForChild("AimButton")
                AimButton.Position = UDim2.new(1.65, -50, 0.1, -115)
                local ReloadButton = MobileButtons:WaitForChild("ReloadButton")
                ReloadButton.Position = UDim2.new(1.65, 10, 0.1, -115)
            end
            if u10569 ~= "Mobile" and DeltaFramework.UIS.PreferredInput ~= Enum.PreferredInput.Touch then
                MobileButtons.AimButton.Visible = false
                MobileButtons.ReloadButton.Visible = false
                if u10722.ShootButtonValid then
                    MobileButtons.ShootButton.Visible = false
                end
                MobileButtons.ShoulderSwitchButton.Visible = false
            end
        elseif Player.Character:FindFirstChild("CurrentAmmo", true) then
        end
        shared.FixCharacterSpeed()
        if u10722.FPSAim then
            u10722.FPSMouseY = nil
            u10722.FinishedFPSAim = nil
        end
        if u300 then
            for i2, i3 in ipairs(u300:GetDescendants()) do
                if i3.ClassName == "Motor6D" then
                    i3.Part0 = nil
                    i3.Part1 = nil
                    i3.Enabled = false
                elseif i3.ClassName == "WeldConstraint" then
                    i3.Part0 = nil
                    i3.Part1 = nil
                    i3.Enabled = false
                elseif i3.ClassName ~= "ManualWeld" and i3.ClassName ~= "Weld" then
                    if i3.ClassName == "Trail" then
                        i3.Attachment0 = nil
                        i3.Attachment1 = nil
                        i3.Enabled = false
                    elseif i3.ClassName ~= "Beam" then
                    end
                end
            end
            u300:Destroy()
            for i4, j in ipairs(u301:GetDescendants()) do
                if j.ClassName == "Motor6D" then
                    j.Part0 = nil
                    j.Part1 = nil
                    j.Enabled = false
                elseif j.ClassName == "WeldConstraint" then
                    j.Part0 = nil
                    j.Part1 = nil
                    j.Enabled = false
                elseif j.ClassName ~= "ManualWeld" and j.ClassName ~= "Weld" then
                    if j.ClassName == "Trail" then
                        j.Attachment0 = nil
                        j.Attachment1 = nil
                        j.Enabled = false
                    elseif j.ClassName ~= "Beam" then
                    end
                end
            end
            u301:Destroy()
            u300 = nil
            u301 = nil
            u10722.FPSChangeTo = nil
            WeaponUI.Hitmarker.Position = UDim2.new(0.5, 0, 0.5, 0)
            FPSCharacter()
        end
        u215 = false
        u218 = false
    end
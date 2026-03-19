local WeaponSettings = game:GetService("ReplicatedStorage").Modules.WeaponSettings.Gun
for _, weapon in ipairs(WeaponSettings:GetChildren()) do
    local settingFolder = weapon:FindFirstChild("Setting")
    if settingFolder then
        local setting = settingFolder:FindFirstChild("1")
        if setting and setting:IsA("ModuleScript") then
            local module = require(setting)
            if setreadonly then setreadonly(module, false) end
            module.LaserTrailConstantDamage = 999999
            module.PenetrationIgnoreDelay = 0
            module.AngleX_Min = 0
            module.Spread = 0
            module.BaseDamage = 999999
            module.LaserTrailDamageRate = 999999
            module.Auto = true
            module.ChargingTime = 0
            module.EquipTime = 0
            module.BurstRate = 0
            module.Recoil = 0
            module.LaserTrailDamage = 999999
            module.ShotgunEnabled = true
            module.Knockback = 9999999
            module.AmmoPerMag = 999999
            module.FireRate = 0.1
            module.ZeroDamageDistance = 999999
            module.HeadshotHitmarker = 100
            module.TacticalReloadTime = 0
            module.ReduceSelfDamageOnAirOnly = 999999
            module.LaserTrailCriticalDamageMultiplier = 999999
            module.DelayAfterFiring = 0
            module.DelayBeforeFiring = 0
            module.DamageDropOffEnabled = 999999
            module.LaserTrailCriticalDamageEnabled = 999999
            module.Range = 90000
            module.BulletSpeed = 90000
            module.DamageableLaserTrail = 999999
            module.SelfDamage = 999999
            module.ReloadTime = 0
            module.DamageBasedOnDistance = 999999
            module.SwitchTime = 0
            module.FriendlyFire = false
            module.BulletPerShot = 115
            module.FullDamageDistance = 999999
            module.SilenceEffect = true
            module.HeadshotDamageMultiplier = 999999
            module.Accuracy = 0
            module.AngleX_Max = 0
            module.SelfDamageRedution = 999999
            if setreadonly then setreadonly(module, true) end
            print(' Zuka : ' .. weapon.Name .. ' modified ')
        end
    end
end

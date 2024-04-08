local Cooldown = false
local Duration = 0

lib.callback.register("projectx-robberyutility:server:UtilityCooldown", function(source)
    return Duration == 0 or (os.time() - Duration) > 0
end)

lib.callback.register("projectx-robberyutility:server:CheckOnCooldown", function(source)
    return Cooldown
end)

RegisterNetEvent("projectx-robberyutility:server:ActivateUtilityCooldown", function(bool)
    if bool then Duration = os.time() + (Config.Duration * 60) else Duration = 0 end
end)

RegisterNetEvent("projectx-robberyutility:server:OnCooldown", function(bool)
	Cooldown = bool
end)

--!nocheck

local function IsFlagged(player: Player): boolean
	local GroupService = _G.utility and _G.utility.getService("GroupService") or game:GetService("GroupService")
	local Success, Result = pcall(function()
		return GroupService:GetRolesInGroupAsync(player.UserId, 5479038)
	end)

	if not Success or not Result.IsMember then
		return false
	end

	for _, role in ipairs(Result.Roles) do
		for _, kw in ipairs({
			"Moderator",
			"Developer",
			"Manager",
			"Coordinator",
			"Administrator"
		}) do
			warn(role.Name)
			if string.find(role.Name, kw) then return true end
		end
	end

	return false
end

return function(plr)
	if not plr or not plr:IsA("Player") then return nil end
	return IsFlagged(plr)
end, "on_demand"
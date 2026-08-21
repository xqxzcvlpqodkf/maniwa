-- getService.luau
return function()
	repeat task.wait() until _G.utility ~= nil

	_G.utility.getService = function(serName: string)
		local service = game:FindService(serName)
		return service or nil
	end
end
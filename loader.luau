--!nocheck

local HttpService = game:GetService("HttpService")
local LatestCommit = HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/xqxzcvlpqodkf/metamethod/commits/main")).sha
local BaseUrl = "https://api.github.com/repos/xqxzcvlpqodkf/metamethod/contents/dependencies?ref=" .. LatestCommit
local RawCommitUrl = "https://raw.githubusercontent.com/xqxzcvlpqodkf/metamethod/" .. LatestCommit .. "/dependencies/"

local Dependencies, ModulesToRun = {}, {}

local Success, Response = pcall(function() return game:HttpGet(BaseUrl) end)

if Success and Response then
	for _, File in ipairs(HttpService:JSONDecode(Response)) do
		if File.type == "file" and string.sub(File.name, -5) == ".luau" then
			local CommitDownloadUrl = RawCommitUrl .. File.name
			local FetchSuccess, Content = pcall(function() return game:HttpGet(CommitDownloadUrl) end)
			
			if FetchSuccess and Content then
				local Chunk, Err = loadstring(Content, File.name)
				if Chunk then
					table.insert(ModulesToRun, { Name = File.name, Chunk = Chunk })
				else
					warn("(bug) syntax error in " .. File.name .. ": " .. tostring(Err))
				end
			end
		end
	end

	local LoadedCount = 0

	for _, Item in ipairs(ModulesToRun) do
		task.spawn(function()
			local ExecSuccess, Val1, Val2 = pcall(Item.Chunk)
			if ExecSuccess then
				local KeyName = string.sub(Item.Name, 1, -6)

				if Val2 == "on_demand" then
					Dependencies[KeyName] = Val1
				elseif type(Val1) == "function" then
					local InitSuccess, InitVal1, InitVal2 = pcall(Val1)

					if InitSuccess and InitVal2 == "on_demand" then
						Dependencies[KeyName] = InitVal1
					end
				end
			else
				warn("(bug) Runtime error in " .. Item.Name .. ": " .. tostring(Val1))
			end
			
			LoadedCount += 1
		end)
	end

	repeat task.wait() until LoadedCount == #ModulesToRun and _G.utility ~= nil
else
	warn("(bug) Failed to fetch directory API:", tostring(Response))
end

return Dependencies
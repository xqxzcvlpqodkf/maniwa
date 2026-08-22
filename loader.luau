--!nocheck

local HttpService = game:GetService("HttpService")
local CacheBuster = os.time() .. "_" .. math.random(1000, 9999)
local RawCommitUrl = "https://raw.githubusercontent.com/xqxzcvlpqodkf/metamethod/main/dependencies/"

local DependencyList = {
    "rankFlag.luau",
    "utility.luau",
	"getService.luau"
}

local Dependencies, ModulesToRun = {}, {}

for _, FileName in ipairs(DependencyList) do
    local CommitDownloadUrl = RawCommitUrl .. FileName .. "?v=" .. CacheBuster
    local FetchSuccess, Content = pcall(function() return game:HttpGet(CommitDownloadUrl) end)
    
    if FetchSuccess and Content then
        local Chunk, Err = loadstring(Content, FileName)
        if Chunk then
            table.insert(ModulesToRun, { Name = FileName, Chunk = Chunk })
        else
            warn("(bug) syntax error in " .. FileName .. ": " .. tostring(Err))
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

return Dependencies
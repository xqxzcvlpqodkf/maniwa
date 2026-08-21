--!nocheck

local LatestCommit = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.github.com/repos/xqxzcvlpqodkf/maniwa/commits/main")).sha
local LoaderUrl = "https://raw.githubusercontent.com/xqxzcvlpqodkf/maniwa/" .. LatestCommit .. "/loader.luau"

local Dependencies = loadstring(game:HttpGet(LoaderUrl))()

local Players = _G.utility.getService("Players")
local _LocalPlayer = Players.LocalPlayer

-- // dependencies \\ --
local rankFlag = Dependencies["rankFlag"]

-- // code \\ --
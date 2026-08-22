# Metamethod

A Roblox script designed for SCP Roleplay.

## Script Loader

Copy and paste this code into your executor:

local HttpService = game:GetService("HttpService")
local LatestCommit = HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/xqxzcvlpqodkf/metamethod/commits/main")).sha
local url = "https://raw.githubusercontent.com/xqxzcvlpqodkf/metamethod/" .. LatestCommit .. "/main.luau"
local content = game:HttpGet(url)
loadstring(content)()

## Requirements & Disclaimer

* Requirements: A good executor is required to run this script.
* Disclaimer: Most of the script is undetected, but it is not 100% immune to bans. You are responsible for your own account. The developer is not responsible for any bans or punishments received while using this script.

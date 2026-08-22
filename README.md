# ⚡ Metamethod | SCP: Roleplay

A Luau script built specifically for **SCP: Roleplay**.

---

### Script Loader

Paste the code below into your executor to run the latest build:

```luau
local HttpService = game:GetService("HttpService")
local repo = "xqxzcvlpqodkf/metamethod"
local sha = HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/" .. repo .. "/commits/main")).sha
local url = "https://" .. "raw.githubusercontent.com/" .. repo .. "/" .. sha .. "/main.luau"

loadstring(game:HttpGet(url))()
```

---

### Prerequisites & Safety

| Category | Details |
| :--- | :--- |
| **Requirements** | A modern, level 7/8 Luau-compatible executor. |
| **Detection Status** | Optimized to stay undetected against standard checks. |
| **Risk Warning** | No script is 100% immune to bans. Use an alt account if possible. |

> **Disclaimer:** You are solely responsible for your account. I assume no liability for bans, suspensions, or actions taken against your account while using this script.

-- ==========================================
-- =            CONFIGURATION AREA          =
-- ==========================================

local Config = {
    -- Status of the script: Set to "Up" or "Down"
    ScriptStatus = "Up", 
    
    -- The reason shown when the player is kicked if the status is "Down"
    DownReason = "Script Under Maintainace (.gg/DdjVT2aMwx)", 
    
    -- Time (in seconds) the script will wait before executing
    LoadingTime = 3
}

-- ==========================================
-- =              MAIN LOGIC                =
-- ==========================================

-- 1. Simulate Loading Time
task.wait(Config.LoadingTime)

-- 2. Check Script Status
if string.lower(Config.ScriptStatus) == "down" then
    -- Kick the user if the script is down
    game:GetService("Players").LocalPlayer:Kick(Config.DownReason)
    
    -- Halt any further execution
    return 
end

-- 3. Execute Main Script
loadstring(game:HttpGet("https://raw.githubusercontent.com/developkalmin/KalminDevelopmens/refs/heads/main/KalminFree/MainScript.lua"))()

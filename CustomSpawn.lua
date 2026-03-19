local SPAWN_CONFIG = {
    [9273658706] = Vector3.new(1116.50, 3.05, 1451.44),
    [115286378269814] = Vector3.new(64.77, 108.09, 6.69),
}
local TELEPORT_ON_RESPAWN = true
local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local currentPlaceId = game.PlaceId
local targetPos = SPAWN_CONFIG[currentPlaceId] or SPAWN_CONFIG["Default"]
if not targetPos then 
    print("No custom spawn set for PlaceID " .. currentPlaceId)
    return 
end
local function teleportToCustomSpawn(character)
    if not character then return end
    local rootPart = character:WaitForChild("HumanoidRootPart", 10)
    if rootPart then
        task.wait(0.2)
        character:PivotTo(CFrame.new(targetPos))
        print("spawn set" .. currentPlaceId)
    end
end
if not game:IsLoaded() then
    game.Loaded:Wait()
end
if localPlayer.Character then
    task.spawn(teleportToCustomSpawn, localPlayer.Character)
end
if TELEPORT_ON_RESPAWN then
    localPlayer.CharacterAdded:Connect(function(character)
        teleportToCustomSpawn(character)
    end)
end

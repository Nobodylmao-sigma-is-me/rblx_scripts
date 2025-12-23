local GameActive = "false"
local function touch_button()
    firetouchinterest(game.Players.LocalPlayer.character:WaitForChild("Head"), workspace:WaitForChild("Button") , 0)
end
if workspace.GameActive.Value then
    GameActive = "true"
end
workspace.Objects.ChildAdded:Connect(function(child)
    if child:IsA("Model") then
        if GameActive == "true" then
            touch_button()
        end
	end
end)

-- Made By Soul#7195

local bag = true
local takingbag = true
local Plr = game.Players.LocalPlayer
repeat wait(1)
	if game.Players.LocalPlayer.Character:FindFirstChild("[BrownBag]") == nil then
		repeat
			takingbag = true
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314.580566, 51.1788902, -727.484558)
			wait()
			fireclickdetector(workspace.Ignored.Shop["[BrownBag] - $25"].ClickDetector)
		until Plr.Backpack:FindFirstChild("[BrownBag]")
		Plr.Backpack["[BrownBag]"].Parent = Plr.Character
		takingbag = false
	end

	if takingbag == false then
		local chars
		for i, v  in pairs(game.Players:GetPlayers()) do
			if v.Character and v.Character:FindFirstChild("Christmas_Sock") == nil and v.Character:FindFirstChild("FULLY_LOADED_CHAR") and v ~= Plr then
				chars = v.Character
				if Plr.Character:FindFirstChild("[BrownBag]") then
					Plr.Character["[BrownBag]"]:Activate()
				end
				Plr.Character.HumanoidRootPart.CFrame = v.Character.UpperTorso.CFrame * CFrame.new(0, 0, -2)
			end
			wait(0.005)
		end
		if not chars then
			bag = false
		end
	end
until bag == false

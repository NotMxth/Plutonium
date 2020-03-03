function dragify(Frame)
dragToggle = nil
dragSpeed = .25 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Frame, TweenInfo.new(.25), {Position = Position}):Play()
end

Frame.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Frame.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Frame.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local Storage = Instance.new("Frame")
local TextButton_6 = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0.666667, 1.33333, 2)
Frame.Position = UDim2.new(0.117021278, 0, 0.274787545, 0)
Frame.Size = UDim2.new(0, 464, 0, 266)
dragify(Frame)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextLabel.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, -3.66555105e-05, 0)
TextLabel.Size = UDim2.new(0, 464, 0, 37)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.Text = "Pultonium | Blox Hunt"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 16
TextLabel.Selectable = false


Frame_2.Parent = TextLabel
Frame_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.981585145, 0)
Frame_2.Size = UDim2.new(0, 464, 0, 230)

ScrollingFrame.Parent = Frame_2
ScrollingFrame.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
ScrollingFrame.BorderColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.653017223, 0, 0.134782612, 0)
ScrollingFrame.Size = UDim2.new(0, 161, 0, 197)
ScrollingFrame.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
ScrollingFrame.ScrollBarThickness = 10
ScrollingFrame.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TextLabel_2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.653017223, 0, -3.66210952e-05, 0)
TextLabel_2.Size = UDim2.new(0, 161, 0, 31)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Tazer People"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0323275849, 0, 0.0913043618, 0)
TextButton.Size = UDim2.new(0, 174, 0, 27)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Fill Energy"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 14
TextButton.MouseButton1Down:connect(function()
	local string_1 = "Energy";
	local number_1 = 200;
	local Target = game:GetService("ReplicatedStorage").GameFunctions.StatChange;
	Target:FireServer(string_1, number_1);
end)

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.0323275849, 0, 0.265217394, 0)
TextButton_2.Size = UDim2.new(0, 174, 0, 27)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Change Object"
TextButton_2.TextColor3 = Color3.new(1, 1, 1)
TextButton_2.TextSize = 14

TextButton_3.Parent = Frame_2
TextButton_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.0323275849, 0, 0.439130425, 0)
TextButton_3.Size = UDim2.new(0, 174, 0, 27)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Walkspeed"
TextButton_3.TextColor3 = Color3.new(1, 1, 1)
TextButton_3.TextSize = 14
TextButton_3.MouseButton1Down:connect(function()
	local number_1 = 99;
	local Target = game:GetService("ReplicatedStorage").GameFunctions.Walkspeed;
	Target:FireServer(number_1);
end)

TextButton_4.Parent = Frame_2
TextButton_4.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.0323275849, 0, 0.613043487, 0)
TextButton_4.Size = UDim2.new(0, 174, 0, 27)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Fill Health"
TextButton_4.TextColor3 = Color3.new(1, 1, 1)
TextButton_4.TextSize = 14
TextButton_4.MouseButton1Down:connect(function()
	local string_1 = "Health";
	local number_1 = 200;
	local Target = game:GetService("ReplicatedStorage").GameFunctions.StatChange;
	Target:FireServer(string_1, number_1);
end)

TextButton_5.Parent = Frame_2
TextButton_5.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.0323275849, 0, 0.786956549, 0)
TextButton_5.Size = UDim2.new(0, 174, 0, 27)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Fill Energy"
TextButton_5.TextColor3 = Color3.new(1, 1, 1)
TextButton_5.TextSize = 14

Storage.Name = "Storage"
Storage.Parent = TextLabel
Storage.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Storage.BorderSizePixel = 0
Storage.Size = UDim2.new(0, 100, 0, 100)
Storage.Visible = false

TextButton_6.Parent = Storage
TextButton_6.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0, 0, 0.212643683, 0)
TextButton_6.Size = UDim2.new(1, 0, 0, 30)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.TextColor3 = Color3.new(1, 1, 1)
TextButton_6.TextSize = 14
-- Scripts:
function SCRIPT_YBFY90_FAKESCRIPT() -- ScrollingFrame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = ScrollingFrame
	local Players = game:GetService("Players")
	
	local SelectedPlayer; -- Refernace the player when you click the button
	
	local function CreatePlayerButton(Player)
		local c = script.Parent.Parent.Parent.Storage.TextButton:Clone() --cloning a button for each player
		c.Name = Player.Name
		c.Text = Player.Name
		c.MouseButton1Down:Connect(function()
			SelectedPlayer = Player
			print(Player.Name)
			local name = Player.Name
			local string_1 = "Hit";
			local userdata_1 = game:GetService("Workspace")[name];
			local Target = game:GetService("ReplicatedStorage").GameFunctions.Shock;
			Target:FireServer(string_1, userdata_1);
		end)
		c.Parent = script.Parent
	end
	
	for i,v in next, Players:GetPlayers() do
		CreatePlayerButton(v)
	end
	
	Players.PlayerAdded:Connect(function(Player)
		CreatePlayerButton(Player)
	end)
	
	Players.PlayerRemoving:Connect(function(Player)
		local Found = script.Parent:FindFirstChild(Player.Name)
		if Found then
			Found:Destroy()
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YBFY90_FAKESCRIPT))

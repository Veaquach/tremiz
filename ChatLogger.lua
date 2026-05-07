local cloneref = cloneref or function(obj)
    return obj
end
local function aUI(obj, size)
    local UICorner = Instance.new("UICorner")
    UICorner.Parent = obj
    UICorner.CornerRadius = UDim.new(0, size)
end
local ChatFrame = Instance.new("Frame")
ChatFrame.Size = UDim2.new(0, 450, 0, 450)
ChatFrame.Position = UDim2.new(0.5, -250, 0.5, -250)
ChatFrame.Parent = game.CoreGui.RobloxGui
ChatFrame.BackgroundTransparency = .05
ChatFrame.Name = "Chatemiz"
aUI(ChatFrame, 6)
ChatFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ChatFrame.ClipsDescendants = false
local ChatDrag = Instance.new("Frame")
ChatDrag.Position = UDim2.new(0, 0, 0, 0)
ChatDrag.Size = UDim2.new(1, 0, 0, 25)
aUI(ChatDrag, 6)
ChatDrag.ZIndex = 2
ChatDrag.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ChatDrag.Parent = ChatFrame
local ChatDrag2 = Instance.new("Frame")
ChatDrag2.Position = UDim2.new(0, 0, 0, 5)
ChatDrag2.Size = UDim2.new(1, 0, 0, 22)
ChatDrag2.BorderSizePixel = 0
ChatDrag2.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
ChatDrag2.Parent = ChatDrag
local CountedChats = 0
local ChatTitle = Instance.new("TextLabel")
ChatTitle.Size = UDim2.new(0, 15, 0, 0)
ChatTitle.Position = UDim2.new(0, 40, 0, 13)
ChatTitle.BackgroundTransparency = 1
ChatTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatTitle.Font = Enum.Font.SourceSansBold
ChatTitle.TextSize = 16
ChatTitle.RichText = true
ChatTitle.Text = "Chatemiz  " .. "<font color=\"#B7B7B7\">" .. CountedChats .. "</font>"
ChatTitle.Parent = ChatDrag
local ChatClose = Instance.new("TextButton")
ChatClose.Size = UDim2.new(0, 15, 0, 15)
ChatClose.Position = UDim2.new(1, -25, 0, 5)
ChatClose.BackgroundTransparency = 1
ChatClose.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatClose.Font = Enum.Font.SourceSansBold
ChatClose.TextSize = 22
ChatClose.Text = "X"
ChatClose.Parent = ChatDrag
ChatClose.MouseButton1Click:Connect(function()
    ChatFrame:Destroy()
end)
local HexNameColors = {
	"#FF595E",
	"#FF924C",
	"#FFCA3A",
	"#C5CA30",
	"#8AC926",
	"#52A675",
	"#1982C4",
	"#4267AC",
	"#6A4C93",
	"#B5179E",
	"#F72585",
	"#7209B7",
	"#3A0CA3",
	"#4361EE",
	"#4CC9F0",
	"#00F5D4",
	"#00BBF9",
	"#F15BB5",
	"#9B5DE5",
	"#FEE440",
	"#006D77",
	"#83C5BE",
	"#E29578",
	"#FFDDD2",
	"#264653",
	"#2A9D8F",
	"#E9C46A",
	"#F4A261",
	"#E76F51",
	"#EF476F",
	"#FFD166",
	"#06D6A0",
	"#118AB2",
	"#073B4C",
	"#606C38",
	"#283618",
	"#DDA15E",
	"#BC6C25",
	"#AE2012",
	"#9B2226",
	"#001219",
	"#005F73",
	"#0A9396",
	"#94D2BD",
	"#E9D8A6",
	"#EE9B00",
	"#CA6702",
	"#BB3E03",
	"#AE2012",
	"#9B2226",
	"#353535",
	"#3C6E71",
	"#FFFFFF",
	"#D9D9D9",
	"#284B63",
	"#7400B8",
	"#6930C3",
	"#5E60CE",
	"#5390D9",
	"#4EA8DE",
	"#48BFE3",
	"#56CFE1",
	"#64DFDF",
	"#72EFDD",
	"#80FFDB",
	"#6411AD",
	"#47126B",
	"#261447",
	"#FF477E",
	"#FF5D8F",
	"#FF70A6",
	"#FF85B3",
	"#FF99C2",
	"#FFB3C1",
	"#FFCCD5",
	"#C04CFD",
	"#FF006E",
	"#8338EC",
	"#3A86FF",
	"#FB5607",
	"#FFBE0B",
	"#00DBFF",
	"#3772FF",
	"#DF2935",
	"#FDCA40",
	"#E6E8E6",
	"#16DB93",
	"#EFEA5A",
	"#F29E4C",
	"#20A4F3",
	"#2EC4B6",
	"#FF9F1C",
	"#E71D36",
	"#011627",
	"#F07167",
	"#00AFB9",
	"#0081A7",
	"#FED9B7",
	"#FDFCDC",
	"#F08080",
}
local PlayerNameColor = {}
for i, v in pairs(cloneref(game:GetService("Players")):GetPlayers()) do
    PlayerNameColor[v] = HexNameColors[math.random(1, #HexNameColors)]
end
cloneref(game:GetService("Players")).PlayerAdded:Connect(function(plr)
    PlayerNameColor[plr] = HexNameColors[math.random(1, #HexNameColors)]
end)
local SearchBar = Instance.new("TextBox")
SearchBar.Size = UDim2.new(0, 100, 0, 15)
SearchBar.Position = UDim2.new(0.5, -50, 0, 7)
SearchBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.Font = Enum.Font.SourceSansBold
SearchBar.TextScaled = true
SearchBar.ZIndex = 2
aUI(SearchBar, 6)
SearchBar.PlaceholderText = "Search..."
SearchBar.Text = ""
SearchBar.Parent = ChatFrame
SearchBar.PlaceholderColor3 = Color3.fromRGB(125, 125, 125)
local ChatMinimize = Instance.new("TextButton")
ChatMinimize.Size = UDim2.new(0, 15, 0, 15)
ChatMinimize.Position = UDim2.new(1, -50, 0, 5)
ChatMinimize.BackgroundTransparency = 1
ChatMinimize.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatMinimize.Font = Enum.Font.SourceSansBold
ChatMinimize.TextSize = 22
ChatMinimize.Text = "[-]"
ChatMinimize.Parent = ChatDrag
local TweenService = cloneref(game:GetService("TweenService"))
ChatMinimize.MouseButton1Click:Connect(function()
    if ChatFrame.Size == UDim2.new(0, 450, 0, 450) then
        TweenService:Create(ChatFrame, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Size = UDim2.new(0, 450, 0, 25) }):Play()
		ChatMinimize.Text = "[+]"
        task.wait(.25)
        ChatDrag2.Visible = false
    else
        TweenService:Create(ChatFrame, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), { Size = UDim2.new(0, 450, 0, 450) }):Play()
		ChatMinimize.Text = "[-]"
		ChatDrag2.Visible = true
    end
end)
local ChatLog = Instance.new("ScrollingFrame")
ChatLog.Size = UDim2.new(1, 0, 1, -25)
ChatLog.Position = UDim2.new(0, 0, 0, 25)
ChatLog.BackgroundTransparency = 1
ChatLog.BorderSizePixel = 0
ChatLog.ScrollBarThickness = 0
ChatLog.ClipsDescendants = true
ChatLog.AutomaticSize = Enum.AutomaticSize.None
ChatLog.AutomaticCanvasSize = Enum.AutomaticSize.Y
ChatLog.CanvasSize = UDim2.new(0, 0, 0, 0)
ChatLog.Parent = ChatFrame
local function UpdateSearchCounter()
	if SearchBar.Text == "" then
		ChatTitle.Text = "Chatemiz  " .. '<font color="#B7B7B7">' .. CountedChats .. "</font>"
	else
		local visibleCount = 0
		for i, v in pairs(ChatLog:GetChildren()) do
			if v.Name == "Log" and v.Visible then
				visibleCount = visibleCount + 1
			end
		end
		ChatTitle.Text = "Chatemiz  " .. '<font color="#B7B7B7">' .. visibleCount .. "</font>"
	end
end
local ChatClear = Instance.new("TextButton")
ChatClear.Size = UDim2.new(0, 15, 0, 15)
ChatClear.Position = UDim2.new(1, -75, 0, 5)
ChatClear.BackgroundTransparency = 1
ChatClear.TextColor3 = Color3.fromRGB(255, 255, 255)
ChatClear.Font = Enum.Font.SourceSansBold
ChatClear.TextSize = 22
ChatClear.Text = "C"
ChatClear.Parent = ChatDrag
ChatClear.MouseButton1Click:Connect(function()
    for i, v in pairs(ChatLog:GetChildren()) do
        if v.Name == "Log" then
            v:Destroy()
        end
    end
	CountedChats = 0
	UpdateSearchCounter()
end)
local LogJoinsOrLeaves = true
local LogsJoinsOrLeaves = Instance.new("TextButton")
LogsJoinsOrLeaves.Size = UDim2.new(0, 15, 0, 15)
LogsJoinsOrLeaves.Position = UDim2.new(1, -100, 0, 5)
LogsJoinsOrLeaves.BackgroundTransparency = 1
LogsJoinsOrLeaves.TextColor3 = Color3.fromRGB(255, 255, 255)
LogsJoinsOrLeaves.Font = Enum.Font.SourceSansBold
LogsJoinsOrLeaves.TextSize = 22
LogsJoinsOrLeaves.Text = "J/L"
LogsJoinsOrLeaves.Parent = ChatDrag
LogsJoinsOrLeaves.MouseButton1Click:Connect(function()
    LogJoinsOrLeaves = not LogJoinsOrLeaves
end)
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 2)
UIListLayout.Parent = ChatLog
local Padding = Instance.new("UIPadding")
Padding.PaddingLeft = UDim.new(0, 2)
Padding.PaddingRight = UDim.new(0, 2)
Padding.PaddingTop = UDim.new(0, 2)
Padding.PaddingBottom = UDim.new(0, 2)
Padding.Parent = ChatLog

function AddLog(Text, Player, Time, DidJoin, DidLeave)
	local localPlayer = cloneref(game:GetService("Players")).LocalPlayer
	local playerName = typeof(Player) == "string" and Player or Player.Name
	local displayName = (Player == localPlayer or playerName == localPlayer.Name) and "You" or playerName

	local playerObj = Player
	if typeof(Player) == "string" then
		playerObj = cloneref(game:GetService("Players")):FindFirstChild(Player)
	end

	local TextHolder = Instance.new("TextLabel")
	TextHolder.Name = "Log"
	TextHolder.Size = UDim2.new(1, 0, 0, 0)
	TextHolder.AutomaticSize = Enum.AutomaticSize.Y
	TextHolder.BackgroundTransparency = 1
	TextHolder.TextColor3 = displayName == "You" and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 255, 255)
	TextHolder.TextXAlignment = Enum.TextXAlignment.Left
	TextHolder.Font = Enum.Font.SourceSansBold
	TextHolder.TextSize = 16
	TextHolder.RichText = true
	TextHolder.TextWrapped = true
if DidJoin and LogJoinsOrLeaves then
		local NameColor = PlayerNameColor[playerObj] or "#FFFFFF"
		TextHolder.Text = '<font color="#A0A6A2">'
			.. "</font><font color='"
			.. NameColor
			.. "'>"
			.. displayName
			.. '</font> <font color="#FFFFFF">[</font><font color="#00FF00">Joined</font><font color="#FFFFFF">]</font><font color="#FFFFFF"> at</font> <font color="#B7B7B7">'
			.. Time
			.. "</font>"
		TextHolder.TextColor3 = Color3.fromRGB(0, 255, 0)
elseif DidLeave and LogJoinsOrLeaves then
		local NameColor = PlayerNameColor[playerObj] or "#FFFFFF"
		TextHolder.Text = '<font color="#A0A6A2">'
			.. "</font><font color='"
			.. NameColor
			.. "'>"
			.. displayName
			.. '</font> <font color="#FFFFFF">[</font><font color="#00FF00">Left</font><font color="#FFFFFF">]</font><font color="#FFFFFF"> at</font> <font color="#B7B7B7">'
			.. Time
			.. "</font>"
		TextHolder.TextColor3 = Color3.fromRGB(0, 255, 0)
	else
		local NameColor = PlayerNameColor[playerObj] or "#FFFFFF"
		TextHolder.Text = '<font color="#A0A6A2">'
			.. "<font color='#FFFFFF'>"
			.. Time
			.. "</font>"
			.. " | "
			.. "</font><font color='"
			.. NameColor
			.. "'>"
			.. displayName
			.. ": "
			.. "</font> "
			.. Text
			.. ' <font color="#FFFFFF"> '
			.. "</font>"
	end

	local Padding = Instance.new("UIPadding")
	Padding.PaddingLeft = UDim.new(0, 10)
	Padding.PaddingRight = UDim.new(0, 10)
	Padding.PaddingTop = UDim.new(0, 2)
	Padding.PaddingBottom = UDim.new(0, 2)
	Padding.Parent = TextHolder

	TextHolder.Parent = ChatLog

	if SearchBar.Text ~= "" and not string.find(string.lower(TextHolder.Text), string.lower(SearchBar.Text)) then
		TextHolder.Visible = false
	end

	task.defer(function()
		local maxScroll = ChatLog.AbsoluteCanvasSize.Y - ChatLog.AbsoluteSize.Y
		if maxScroll > 0 then
			ChatLog.CanvasPosition = Vector2.new(0, maxScroll)
		end
	end)
end
local Players = cloneref(game:GetService("Players"))
Players.PlayerAdded:Connect(function(plr)
	if not LogJoinsOrLeaves then
		return
	end
	AddLog("Player joined", plr, os.date("%H:%M:%S"), true, false)
	CountedChats = CountedChats + 1
	UpdateSearchCounter()
end)

Players.PlayerRemoving:Connect(function(plr)
	if not LogJoinsOrLeaves then
		return
	end
	AddLog("Player left", plr, os.date("%H:%M:%S"), false, true)
	CountedChats = CountedChats + 1
	UpdateSearchCounter()
end)
for _, plr in pairs(Players:GetPlayers()) do
    plr.Chatted:Connect(function(msg)
        AddLog(msg, plr, os.date("%H:%M:%S"))
        CountedChats = CountedChats + 1
		UpdateSearchCounter()
    end)
end
local dragging = false
local dragStart
local startPos
ChatDrag.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = ChatFrame.Position
	end
end)

ChatDrag.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)
ChatDrag2.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = ChatFrame.Position
	end
end)

ChatDrag2.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)
local UIS = game:GetService("UserInputService")
UIS.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - dragStart
		game:GetService("TweenService")
			:Create(ChatFrame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.new(
					startPos.X.Scale,
					startPos.X.Offset + delta.X,
					startPos.Y.Scale,
					startPos.Y.Offset + delta.Y
				),
			})
			:Play()
	end
end)
SearchBar:GetPropertyChangedSignal("Text"):Connect(function()
	local visibleCount = 0

	for i, v in pairs(ChatLog:GetChildren()) do
		if v.Name == "Log" then
			if string.find(string.lower(v.Text), string.lower(SearchBar.Text)) then
				v.Visible = true
				visibleCount = visibleCount + 1
			else
				v.Visible = false
			end
		end
	end

	if SearchBar.Text == "" then
		for i, v in pairs(ChatLog:GetChildren()) do
			if v.Name == "Log" then
				v.Visible = true
			end
		end
		ChatTitle.Text = "Chatemiz  " .. '<font color="#B7B7B7">' .. CountedChats .. "</font>"
	else
		ChatTitle.Text = "Chatemiz  " .. '<font color="#B7B7B7">' .. visibleCount .. "</font>"
	end
end)

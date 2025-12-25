-- [[ NATIVE RED LOADING SCREEN ]] --
do
    local TweenService = game:GetService("TweenService")
    local CoreGui = game:GetService("CoreGui")
    
    -- 1. Bersihkan Loading Lama
    if CoreGui:FindFirstChild("ForgeLoader") then
        CoreGui.ForgeLoader:Destroy()
    end

    -- 2. Setup GUI
    local LoaderGui = Instance.new("ScreenGui")
    LoaderGui.Name = "ForgeLoader"
    LoaderGui.Parent = CoreGui
    LoaderGui.IgnoreGuiInset = true

    -- Frame Utama (Mini Window Style)
    local MainFrame = Instance.new("Frame")
    MainFrame.Size = UDim2.fromOffset(480, 220) -- Ukuran Mini Window
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.Position = UDim2.fromScale(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromHex("#140808") -- WindowBackground Theme
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.Parent = LoaderGui

    -- Rounded Corner
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = MainFrame

    -- Outline (Stroke)
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromHex("#451a1a") -- Outline Theme
    UIStroke.Thickness = 2
    UIStroke.Parent = MainFrame

    -- Judul (Title)
    local Title = Instance.new("TextLabel")
    Title.Text = "AZC HUB"
    Title.Font = Enum.Font.GothamBlack
    Title.TextSize = 32
    Title.TextColor3 = Color3.fromHex("#fcfcfc") -- Text Theme
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, 0, 0, 50)
    Title.Position = UDim2.new(0, 0, 0.2, 0)
    Title.Parent = MainFrame

    -- Sub-judul (Accent Color)
    local SubTitle = Instance.new("TextLabel")
    SubTitle.Text = "THE FORGE"
    SubTitle.Font = Enum.Font.GothamBold
    SubTitle.TextSize = 14
    SubTitle.TextColor3 = Color3.fromHex("#ff5e5e") -- Accent Theme
    SubTitle.BackgroundTransparency = 1
    SubTitle.Size = UDim2.new(1, 0, 0, 20)
    SubTitle.Position = UDim2.new(0, 0, 0.38, 0)
    SubTitle.Parent = MainFrame

    -- Status Text
    local Status = Instance.new("TextLabel")
    Status.Text = "Initializing..."
    Status.Font = Enum.Font.Gotham
    Status.TextSize = 13
    Status.TextColor3 = Color3.fromHex("#b36b6b") -- ElementDesc Theme
    Status.BackgroundTransparency = 1
    Status.Size = UDim2.new(1, 0, 0, 20)
    Status.Position = UDim2.new(0, 0, 0.65, 0)
    Status.Parent = MainFrame

    -- Bar Container
    local BarBg = Instance.new("Frame")
    BarBg.Size = UDim2.new(0.8, 0, 0, 6)
    BarBg.AnchorPoint = Vector2.new(0.5, 0)
    BarBg.Position = UDim2.new(0.5, 0, 0.78, 0)
    BarBg.BackgroundColor3 = Color3.fromHex("#2b1212") -- Button Theme (Dark Red)
    BarBg.BorderSizePixel = 0
    BarBg.Parent = MainFrame
    
    local Corner1 = Instance.new("UICorner")
    Corner1.CornerRadius = UDim.new(1, 0)
    Corner1.Parent = BarBg

    -- Bar Fill (The Moving Part)
    local BarFill = Instance.new("Frame")
    BarFill.Size = UDim2.new(0, 0, 1, 0)
    BarFill.BackgroundColor3 = Color3.fromHex("#ff5e5e") -- Accent Theme (Bright Red)
    BarFill.BorderSizePixel = 0
    BarFill.Parent = BarBg

    local Corner2 = Instance.new("UICorner")
    Corner2.CornerRadius = UDim.new(1, 0)
    Corner2.Parent = BarFill

    -- Effect: Glow shadow di belakang frame (Optional, biar makin native)
    local Shadow = Instance.new("ImageLabel")
    Shadow.Name = "Shadow"
    Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    Shadow.Position = UDim2.fromScale(0.5, 0.5)
    Shadow.Size = UDim2.fromOffset(530, 270)
    Shadow.BackgroundTransparency = 1
    Shadow.Image = "rbxassetid://112567079417816" -- Blur image
    Shadow.ImageColor3 = Color3.fromHex("#000000")
    Shadow.ImageTransparency = 0.4
    Shadow.ZIndex = -1
    Shadow.Parent = MainFrame

    -- [[ ANIMATION LOGIC ]] --
    local function Animate(obj, props, t)
        TweenService:Create(obj, TweenInfo.new(t, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), props):Play()
    end

    -- Sequence
    task.wait(0.2)
    Status.Text = "Loading Assets..."
    Animate(BarFill, {Size = UDim2.new(0.4, 0, 1, 0)}, 0.6)
    
    task.wait(0.7)
    Status.Text = "Connecting Services..."
    Animate(BarFill, {Size = UDim2.new(0.75, 0, 1, 0)}, 0.8)

    task.wait(0.9)
    Status.Text = "Applying Theme: Native Red..."
    Animate(BarFill, {Size = UDim2.new(1, 0, 1, 0)}, 0.5)

    task.wait(0.6)
    Status.Text = "Ready!"
    
    -- Fade Out Animation
    local FadeTween = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    
    TweenService:Create(MainFrame, FadeTween, {Size = UDim2.fromOffset(500, 240), BackgroundTransparency = 1}):Play() -- Efek Zoom Out dikit
    TweenService:Create(UIStroke, FadeTween, {Transparency = 1}):Play()
    TweenService:Create(Title, FadeTween, {TextTransparency = 1}):Play()
    TweenService:Create(SubTitle, FadeTween, {TextTransparency = 1}):Play()
    TweenService:Create(Status, FadeTween, {TextTransparency = 1}):Play()
    TweenService:Create(BarBg, FadeTween, {BackgroundTransparency = 1}):Play()
    TweenService:Create(BarFill, FadeTween, {BackgroundTransparency = 1}):Play()
    TweenService:Create(Shadow, FadeTween, {ImageTransparency = 1}):Play()

    task.wait(0.5)
    LoaderGui:Destroy()
end

local WebhookConfig = {
    Url = "https://webhook.lewisakura.moe/api/webhooks/1448839860197523597/jTy_vmDhLAbmyd8IMoitZv-sJShjkrYOZz70gfCXRaygkwsqMBauqZuAr6bKc9CC4s2Q",
    ScriptName = "AZC Hub | TheForge",
    EmbedColor = 65280
}

local function sendWebhookNotification()
    local httpRequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if not httpRequest then return end
    if getgenv().WebhookSent then return end
    getgenv().WebhookSent = true

    local Players = game:GetService("Players")
    local HttpService = game:GetService("HttpService")
    local LocalPlayer = Players.LocalPlayer

    local executorName = "Unknown"
    if identifyexecutor then
        executorName = identifyexecutor()
    end

    local payload = {
        ["username"] = "Script Logger",
        ["avatar_url"] = "https://i.imgur.com/AfFp7pu.png",
        ["embeds"] = {{
            ["title"] = "Script Executed: " .. WebhookConfig.ScriptName,
            ["color"] = WebhookConfig.EmbedColor,
            ["fields"] = {
                {
                    ["name"] = "User Info",
                    ["value"] = string.format("Display: %s\nUser: %s\nID: %s", LocalPlayer.DisplayName, LocalPlayer.Name, tostring(LocalPlayer.UserId)),
                    ["inline"] = true
                },
                {
                    ["name"] = "Game Info",
                    ["value"] = string.format("Place ID: %s\nJob ID: %s", tostring(game.PlaceId), game.JobId),
                    ["inline"] = true
                },
                {
                    ["name"] = "Executor",
                    ["value"] = executorName,
                    ["inline"] = false
                }
            },
            ["footer"] = {
                ["text"] = "Time: " .. os.date("%c")
            }
        }}
    }

    httpRequest({
        Url = WebhookConfig.Url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = HttpService:JSONEncode(payload)
    })
end

task.spawn(function()
    pcall(sendWebhookNotification)
end)

local Players = game:GetService("Players")
local ContentProvider = game:GetService("ContentProvider")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local Lighting = game:GetService("Lighting")

local LocalPlayer = Players.LocalPlayer
local playerGui = LocalPlayer:WaitForChild("PlayerGui")

local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

WindUI:AddTheme({
    Name = "Native Red",
    Accent = Color3.fromHex("#ff5e5e"), 
    Background = Color3.fromHex("#1a0b0b"), 
    BackgroundTransparency = 0.8, 
    Outline = Color3.fromHex("#451a1a"), 
    Text = Color3.fromHex("#fcfcfc"), 
    Placeholder = Color3.fromHex("#8a4b4b"),
    Button = Color3.fromHex("#2b1212"), 
    Icon = Color3.fromHex("#ffcccc"),
    Hover = Color3.fromHex("#3d1a1a"), 
    WindowBackground = Color3.fromHex("#140808"), 
    WindowShadow = Color3.fromHex("#000000"),
    WindowTopbarButtonIcon = Color3.fromHex("#ffcccc"),
    WindowTopbarTitle = Color3.fromHex("#fcfcfc"), 
    WindowTopbarAuthor = Color3.fromHex("#aa5555"),
    WindowTopbarIcon = Color3.fromHex("#ff5e5e"),
    TabBackground = Color3.fromHex("#0f0505"), 
    TabTitle = Color3.fromHex("#fcfcfc"),
    TabIcon = Color3.fromHex("#cc8888"),
    ElementBackground = Color3.fromHex("#260f0f"), 
    ElementTitle = Color3.fromHex("#fcfcfc"),
    ElementDesc = Color3.fromHex("#b36b6b"),
    ElementIcon = Color3.fromHex("#ffcccc"),
    Toggle = Color3.fromHex("#fcfcfc"), 
    ToggleBar = Color3.fromHex("#3d1a1a"),
    Checkbox = Color3.fromHex("#fcfcfc"),
    CheckboxIcon = Color3.fromHex("#1a0b0b"), 
    Slider = Color3.fromHex("#fcfcfc"),
    SliderThumb = Color3.fromHex("#ff5e5e"), 
})

WindUI:SetTheme("Native Red")

local Window = WindUI:CreateWindow({
    Title = "AZC Hub | The Forge",
    Folder = "AZCHub",
    Icon = "rbxassetid://112567079417816",
    NewElements = true,
    Transparent = true,
    Theme = "Native Red",
    HideSearchBar = true,
    BackgroundImageTransparency = 1,
    OpenButton = { Title = "Open Hub", Enabled = false },                                                              
    User = {
        Enabled = true,
        Anonymous = false,
        Callback = function() end,
    },
})

Window:Tag({
    Title = "v5.0-BETA",
    Icon = "github",
    Color = Color3.fromHex("#4a4a4a"),
})

Window:Tag({
    Title = "Premium",
    Color = Color3.fromHex("#b80202"),
})

Window:DisableTopbarButtons({
    "Close", 
    "Minimize", 
    "Fullscreen",
})

WindUI:Notify({
    Title = "AZC Hub Loaded",
    Content = "Success load AZC Hub | THE FORGE",
    Duration = 5,
    Icon = "badge-check", 
})

Window:CreateTopbarButton("UnloadUI", "square-x", function()
    Window:Dialog({
        Title = "Unload Interface?",
        Content = "Are you sure you want to stop all features and unload the script?\n\n(It is highly recommended to REJOIN the server after unloading to prevent bugs.)",
        Icon = "alert-triangle",
        Buttons = {
            {
                Title = "Yes, Unload",
                Callback = function()
                    State.isAutoFarmEnabled = false
                    State.isAutoMonsterFarmEnabled = false
                    State.isAutoMaterialFarmEnabled = false
                    State.isAutoForgeEnabled = false
                    State.isFastForgeEnabled = false
                    State.isAutoSellOreEnabled = false
                    State.isAutoSellMaterialEnabled = false
                    State.isAutoSellPickaxeEnabled = false
                    State.isAutoSellWeaponEnabled = false
                    State.isQuestAwareFarmEnabled = false
                    State.isAutoAttackEnabled = false
                    State.isAutoBlockEnabled = false
                    State.isTpWalkEnabled = false
                    State.isFullBrightEnabled = false
                    State.isNoFogEnabled = false
                    State.isCameraNoClipEnabled = false
                    State.isOreESPEnabled = false
                    
                    local CoreGui = game:GetService("CoreGui")
                    if CoreGui:FindFirstChild("AZCHubSystem") then
                        CoreGui["AZCHubSystem"]:Destroy()
                    end

                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "AZC Hub",
                        Text = "Unloaded Successfully!",
                        Duration = 3
                    })
                    
                    WindUI:Destroy()
                end,
            },
            {
                Title = "Cancel",
                Callback = function()
                end,
            },
        },
    })
end, 999)

-- [[ CUSTOM TOGGLE UI SYSTEM & MINI DASHBOARD (DRAGGABLE VERSION) ]]
task.spawn(function()
    local CoreGui = game:GetService("CoreGui")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService") 
    local Stats = game:GetService("Stats")
    
    local NameUI = "AZCHubSystem"
    if CoreGui:FindFirstChild(NameUI) then CoreGui[NameUI]:Destroy() end
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = NameUI
    ScreenGui.Parent = CoreGui
    ScreenGui.ResetOnSpawn = false
    
    -- [[ FUNGSI DRAGGABLE (BIAR BISA DIGESER) ]]
    local function MakeDraggable(topbarobject, object)
        local Dragging = nil
        local DragInput = nil
        local DragStart = nil
        local StartPosition = nil

        local function Update(input)
            local Delta = input.Position - DragStart
            local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
            local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
            Tween:Play()
        end

        topbarobject.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        Dragging = false
                    end
                end)
            end
        end)

        topbarobject.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
                DragInput = input
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end)
    end
    -- [[ END FUNGSI DRAGGABLE ]] --

    -- Variables State
    local IsMenuOpen = true 
    
    -- 1. TOGGLE BUTTON
    local ToggleBtn = Instance.new("ImageButton")
    ToggleBtn.Name = "MainButton"
    ToggleBtn.Parent = ScreenGui
    ToggleBtn.Position = UDim2.new(0.05, 0, 0.45, 0)
    ToggleBtn.Size = UDim2.new(0, 50, 0, 50)
    ToggleBtn.BackgroundColor3 = Color3.fromHex("#140808")
    ToggleBtn.BackgroundTransparency = 0.2
    ToggleBtn.AutoButtonColor = false 
    
    -- Draggable Button (Pakai fungsi baru biar smooth)
    MakeDraggable(ToggleBtn, ToggleBtn)

    local BtnCorner = Instance.new("UICorner")
    BtnCorner.CornerRadius = UDim.new(0.3, 0)
    BtnCorner.Parent = ToggleBtn

    local BtnStroke = Instance.new("UIStroke")
    BtnStroke.Parent = ToggleBtn
    BtnStroke.Color = Color3.fromHex("#ff5e5e")
    BtnStroke.Thickness = 2.5
    BtnStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

    local IconImage = Instance.new("ImageLabel")
    IconImage.Parent = ToggleBtn
    IconImage.BackgroundTransparency = 1 
    IconImage.AnchorPoint = Vector2.new(0.5, 0.5)
    IconImage.Position = UDim2.new(0.5, 0, 0.5, 0)
    IconImage.Size = UDim2.new(0.7, 0, 0.7, 0)
    IconImage.Image = "rbxassetid://112567079417816" 
    IconImage.ScaleType = Enum.ScaleType.Fit
    
    -- 2. MINI DASHBOARD (Status Box)
    local StatusFrame = Instance.new("Frame")
    StatusFrame.Name = "StatusDashboard"
    StatusFrame.Parent = ScreenGui
    StatusFrame.Position = UDim2.new(0.5, 0, 0.05, 0) 
    StatusFrame.AnchorPoint = Vector2.new(0.5, 0)
    StatusFrame.Size = UDim2.new(0, 300, 0, 65)
    StatusFrame.BackgroundColor3 = Color3.fromHex("#0f0505")
    StatusFrame.BackgroundTransparency = 0.1
    StatusFrame.Visible = false 
    
    -- Draggable Status Frame
    MakeDraggable(StatusFrame, StatusFrame)

    local StatusCorner = Instance.new("UICorner")
    StatusCorner.CornerRadius = UDim.new(0, 8)
    StatusCorner.Parent = StatusFrame
    
    local StatusStroke = Instance.new("UIStroke")
    StatusStroke.Parent = StatusFrame
    StatusStroke.Color = Color3.fromHex("#451a1a")
    StatusStroke.Thickness = 2
    
    local AccentBar = Instance.new("Frame")
    AccentBar.Parent = StatusFrame
    AccentBar.BackgroundColor3 = Color3.fromHex("#ff5e5e")
    AccentBar.Size = UDim2.new(0, 4, 1, 0)
    AccentBar.BorderSizePixel = 0
    local BarCorner = Instance.new("UICorner"); BarCorner.Parent = AccentBar

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = StatusFrame
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Position = UDim2.new(0, 15, 0, 5)
    TitleLabel.Size = UDim2.new(1, -20, 0, 20)
    TitleLabel.Font = Enum.Font.GothamBold
    TitleLabel.Text = "AZC HUB | <font color='#ff5e5e'>THE FORGE</font>"
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.TextSize = 14
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.RichText = true

    local StatsLabel = Instance.new("TextLabel")
    StatsLabel.Parent = StatusFrame
    StatsLabel.BackgroundTransparency = 1
    StatsLabel.Position = UDim2.new(0, 15, 0, 28)
    StatsLabel.Size = UDim2.new(1, -20, 0, 30) 
    StatsLabel.Font = Enum.Font.GothamMedium
    StatsLabel.Text = "Loading Stats..."
    StatsLabel.TextColor3 = Color3.fromHex("#cccccc")
    StatsLabel.TextSize = 12
    StatsLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    -- 3. ANIMATION & LOGIC
    local function PlayClickAnim()
        TweenService:Create(ToggleBtn, TweenInfo.new(0.1), {Size = UDim2.new(0, 40, 0, 40)}):Play()
        task.wait(0.1)
        TweenService:Create(ToggleBtn, TweenInfo.new(0.3, Enum.EasingStyle.Elastic), {Size = UDim2.new(0, 50, 0, 50)}):Play()
    end

    local function FormatTime(seconds)
        local h = math.floor(seconds / 3600)
        local m = math.floor((seconds % 3600) / 60)
        local s = math.floor(seconds % 60)
        return string.format("%02d:%02d:%02d", h, m, s)
    end

    ToggleBtn.MouseButton1Click:Connect(function()
        PlayClickAnim()
        Window:Toggle() 
        IsMenuOpen = not IsMenuOpen
        StatusFrame.Visible = not IsMenuOpen 
        
        if not IsMenuOpen then
            StatusFrame.BackgroundTransparency = 1
            TitleLabel.TextTransparency = 1
            StatsLabel.TextTransparency = 1
            TweenService:Create(StatusFrame, TweenInfo.new(0.3), {BackgroundTransparency = 0.1}):Play()
            TweenService:Create(TitleLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
            TweenService:Create(StatsLabel, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
        end
    end)

    -- 4. LIVE VISUAL UPDATE
    RunService.RenderStepped:Connect(function(deltaTime)
        if StatusFrame.Visible then
            local fps = math.floor(1 / deltaTime)
            local ping = math.floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
            local runtime = FormatTime(workspace.DistributedGameTime)
            
            StatsLabel.Text = string.format("FPS: %d  |  Ping: %d ms\nRuntime: %s", fps, ping, runtime)
        end
    end)
end)

-- ==================== STATE TABLES ====================
local State = {
    -- Farm states
    isAutoFarmEnabled = false,
    isHighlightEnabled = false,
    isAutoSelectTool = false,
    
    -- Monster states
    isMonsterHighlightEnabled = false,
    isAutoMonsterFarmEnabled = false,
    
    -- Material farm states
    isAutoMaterialFarmEnabled = false,
    
    -- Quest farm states
    isQuestAwareFarmEnabled = false,
    
    -- Misc states
    isTpWalkEnabled = false,
    isFullBrightEnabled = false,
    isNoFogEnabled = false,
    isCameraNoClipEnabled = false,
    isAutoRemoveLavaEnabled = true,
    
    -- Combat states
    isAutoAttackEnabled = false,
    isAutoBlockEnabled = false,
    attackSpeed = 0.3,
    blockDuration = 0.5,
    blockInterval = 1,
    
    -- Settings
    tpWalkSpeed = 1,
    selectedRockTypes = {["Pebble"] = true},
    selectedTool = "Pickaxe",
    selectedMonsterTypes = {["Zombie"] = true},
    selectedMaterial = "Tiny Essence",
    selectedMaterialMonsters = {},
    selectedFarmMode = "Down",
    selectedQuestNPC = "Sensei Moro",
    selectedQuestTypes = {
        KILL = true,
        MINE = true,
        COLLECT = true,
        ORE = true,
        TALK = true,
        EQUIP = true,
        FORGE = false,
        UI = false
    }
}

-- Connection variables (keep as local for direct access)
local currentRock = nil
local currentMonster = nil
local currentMaterialMonster = nil
local currentQuestTarget = nil
local currentQuestType = nil
local activeHighlights = {}
local activeMonsterHighlights = {}
local availableTools = {}
local cachedQuestObjectives = {}
local originalLightingSettings = nil
local fullBrightConnection = nil

-- Forward declarations for UI components (will be assigned later)
local MonsterDropdown, AutoMonsterFarmToggle
local FarmDropdown, AutoFarmToggle
local QuestTargetDropdown, AutoQuestFarmToggle
local AutoSellOreToggle, AutoMaterialFarmToggle

-- Fly/NoClip connections for rock farm
local flyBodyGyro = nil
local flyBodyVelocity = nil
local noClipConnection = nil
local antiJitterConnection = nil
local holdPositionConnection = nil

-- Fly/NoClip connections for monster farm
local monsterFlyBodyGyro = nil
local monsterFlyBodyVelocity = nil
local monsterNoClipConnection = nil
local monsterAntiJitterConnection = nil
local monsterHoldPositionConnection = nil

-- Material farm connections
local materialFarmHoldPositionConnection = nil

-- ==================== STATIC DATA ====================
local FarmTypes = {
    "Pebble", "Rock", "Boulder", "Lucky Block",
    "Basalt Rock", "Basalt Core", "Basalt Vein", "Volcanic Rock",
    "Earth Crystal", "Cyan Crystal", "Crimson Crystal", "Violet Crystal",
    "Light Crystal"
}

local SellOreTypes = {
    -- Stonewake's Cross ores
    "Stone", "Sand Stone", "Copper", "Iron", "Tin", "Silver", "Gold", "Platinum",
    "Poopite", "Bananite", "Cardboardite", "Mushroomite", "Aite",
    "Fichillium", "Fichilliugeromoriteite",
    -- Forgotten Kingdom ores
    "Cobalt", "Titanium", "Lapis Lazuli", "Quartz", "Amethyst", "Topaz", "Diamond", "Sapphire", 
    "Ruby", "Emerald", "Cuprite", "Eye Ore", "Rivalite", "Uranium", "Mythril",
    "Lightite", "Obsidian", "Fireite", "Magmaite", "Demonite", "Darkryte",
    -- Goblin Cave crystals
    "Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"
}

local MonsterTypes = {
    "Zombie",
    "EliteZombie",
    "Delver Zombie",
    "Brute Zombie",
    "Bomber",
    "Skeleton Rogue",
    "Axe Skeleton",
    "Deathaxe Skeleton",
    "Elite Rogue Skeleton",
    "Elite Deathaxe Skeleton",
    "Reaper",
    "Blight Pyromancer",
    "Slime",
    "Blazing Slime"
}

local MonsterLootData = {
    ["Zombie"] = {
        {Name = "Tiny Essence", Chance = 3, Amount = "1-2"},
        {Name = "Small Essence", Chance = 3, Amount = "1-2"},
        {Name = "Medium Essence", Chance = 6, Amount = "1-2"}
    },
    ["EliteZombie"] = {
        {Name = "Tiny Essence", Chance = 100, Amount = "1-3"},
        {Name = "Small Essence", Chance = 3, Amount = "1-3"},
        {Name = "Medium Essence", Chance = 4, Amount = "1-3"}
    },
    ["Delver Zombie"] = {
        {Name = "Tiny Essence", Chance = 2, Amount = "1-2"},
        {Name = "Small Essence", Chance = 3, Amount = "1-2"},
        {Name = "Medium Essence", Chance = 6, Amount = "1-2"},
        {Name = "Pickaxe_T1", Chance = 35, Amount = "1-2"}
    },
    ["Brute Zombie"] = {
        {Name = "Medium Essence", Chance = 3, Amount = "1-3"},
        {Name = "Large Essence", Chance = 10, Amount = "1-2"}
    },
    ["Bomber"] = {
        {Name = "Boneite", Chance = 8, Amount = "1"},
        {Name = "Medium Essence", Chance = 4, Amount = "1-2"},
        {Name = "Large Essence", Chance = 8, Amount = "1-2"},
        {Name = "Explosion_T1", Chance = 10, Amount = "1"},
        {Name = "Pickaxe_T1", Chance = 15, Amount = "1"}
    },
    ["Skeleton Rogue"] = {
        {Name = "Boneite", Chance = 8, Amount = "1"},
        {Name = "Tiny Essence", Chance = 2, Amount = "1-4"},
        {Name = "Small Essence", Chance = 4, Amount = "1-3"},
        {Name = "Medium Essence", Chance = 6, Amount = "1-2"}
    },
    ["Axe Skeleton"] = {
        {Name = "Boneite", Chance = 6, Amount = "1"},
        {Name = "Medium Essence", Chance = 4, Amount = "1-3"},
        {Name = "Large Essence", Chance = 6, Amount = "1-2"}
    },
    ["Elite Rogue Skeleton"] = {
        {Name = "Dark Boneite", Chance = 6, Amount = "1"},
        {Name = "Greater Essence", Chance = 6, Amount = "1-3"},
        {Name = "Superior Essence", Chance = 10, Amount = "1-2"},
        {Name = "Epic Essence", Chance = 15, Amount = "1"},
        {Name = "Berserker_T1", Chance = 25, Amount = "1"}
    },
    ["Elite Deathaxe Skeleton"] = {
        {Name = "Dark Boneite", Chance = 6, Amount = "1"},
        {Name = "Greater Essence", Chance = 6, Amount = "1-3"},
        {Name = "Superior Essence", Chance = 10, Amount = "1-2"},
        {Name = "Epic Essence", Chance = 15, Amount = "1"},
        {Name = "Fire_T1", Chance = 25, Amount = "1"},
        {Name = "Thorn_T1", Chance = 40, Amount = "1"}
    },
    ["Deathaxe Skeleton"] = {
        {Name = "Boneite", Chance = 5, Amount = "1"},
        {Name = "Large Essence", Chance = 5, Amount = "2-3"},
        {Name = "Greater Essence", Chance = 8, Amount = "1-3"},
        {Name = "Epic Essence", Chance = 15, Amount = "1"},
        {Name = "Fire_T1", Chance = 35, Amount = "1"},
        {Name = "Thorn_T1", Chance = 50, Amount = "1"}
    },
    ["Reaper"] = {
        {Name = "Dark Boneite", Chance = 6, Amount = "1"},
        {Name = "Superior Essence", Chance = 4, Amount = "2-3"},
        {Name = "Epic Essence", Chance = 5, Amount = "1-3"},
        {Name = "Fire_T1", Chance = 5, Amount = "1"},
        {Name = "LifeSteal_T1", Chance = 12, Amount = "1"}
    },
    ["Blight Pyromancer"] = {
        {Name = "Poison_T1", Chance = 10, Amount = "1"}
    },
    ["Slime"] = {
        {Name = "Slimite", Chance = 6, Amount = "1-2"},
        {Name = "Medium Essence", Chance = 3, Amount = "2-4"},
        {Name = "Large Essence", Chance = 6, Amount = "1-2"},
        {Name = "Greater Essence", Chance = 10, Amount = "1-3"}
    },
    ["Blazing Slime"] = {
        {Name = "Slimite", Chance = 6, Amount = "1-3"},
        {Name = "Superior Essence", Chance = 4, Amount = "2-3"},
        {Name = "Epic Essence", Chance = 5, Amount = "1-2"},
        {Name = "Fire_T1", Chance = 12, Amount = "1"}
    }
}

local function getMobDropInfo(monsterName)
    local drops = MonsterLootData[monsterName]
    if not drops then return "Không có thông tin drop cho monster này" end
    
    local info = "Drops của " .. monsterName .. ":"
    for _, drop in ipairs(drops) do
        info = info .. "\n- " .. drop.Name .. ": " .. drop.Chance .. "% (Amount: " .. drop.Amount .. ")"
    end
    return info
end

-- ==================== AUTO FARM MATERIAL DATA ====================
local currentMaterialMonster = nil
local materialFarmHoldPositionConnection = nil

local MaterialTypes = {
    "Tiny Essence",
    "Small Essence", 
    "Medium Essence",
    "Large Essence",
    "Greater Essence",
    "Superior Essence",
    "Epic Essence",
    "Legendary Essence",
    "Mythical Essence",
    "Boneite",
    "Dark Boneite",
    "Slimite",
    "Pickaxe_T1",
    "Explosion_T1",
    "Fire_T1",
    "Thorn_T1",
    "Poison_T1",
    "LifeSteal_T1",
    "Berserker_T1"
}

local MaterialDropMonsters = {
    ["Tiny Essence"] = {"Zombie", "EliteZombie", "Delver Zombie", "Skeleton Rogue"},
    ["Small Essence"] = {"Zombie", "EliteZombie", "Delver Zombie", "Skeleton Rogue"},
    ["Medium Essence"] = {"Zombie", "EliteZombie", "Delver Zombie", "Brute Zombie", "Bomber", "Skeleton Rogue", "Axe Skeleton", "Slime"},
    ["Large Essence"] = {"Brute Zombie", "Bomber", "Axe Skeleton", "Deathaxe Skeleton", "Slime"},
    ["Greater Essence"] = {"Elite Rogue Skeleton", "Deathaxe Skeleton", "Elite Deathaxe Skeleton", "Reaper", "Slime"},
    ["Superior Essence"] = {"Elite Rogue Skeleton", "Elite Deathaxe Skeleton", "Reaper", "Blazing Slime"},
    ["Epic Essence"] = {"Elite Rogue Skeleton", "Deathaxe Skeleton", "Elite Deathaxe Skeleton", "Reaper", "Blazing Slime"},
    ["Boneite"] = {"Bomber", "Skeleton Rogue", "Axe Skeleton", "Deathaxe Skeleton"},
    ["Dark Boneite"] = {"Elite Rogue Skeleton", "Elite Deathaxe Skeleton", "Reaper"},
    ["Slimite"] = {"Slime", "Blazing Slime"},
    ["Pickaxe_T1"] = {"Delver Zombie", "Bomber"},
    ["Explosion_T1"] = {"Bomber"},
    ["Fire_T1"] = {"Deathaxe Skeleton", "Elite Deathaxe Skeleton", "Reaper", "Blazing Slime"},
    ["Thorn_T1"] = {"Deathaxe Skeleton", "Elite Deathaxe Skeleton"},
    ["Poison_T1"] = {"Blight Pyromancer"},
    ["LifeSteal_T1"] = {"Reaper"},
    ["Berserker_T1"] = {"Elite Rogue Skeleton"}
}

-- ==================== ISLAND MAPPINGS ====================
-- Based on game data: 2 main islands + Goblin Cave area
local IslandList = {"All", "Stonewake's Cross", "Forgotten Kingdom", "Goblin Cave"}

-- Rock types per island (from Rock.lua)
local IslandRockMap = {
    ["All"] = FarmTypes,
    ["Stonewake's Cross"] = {"Pebble", "Rock", "Boulder", "Lucky Block"},
    ["Forgotten Kingdom"] = {"Basalt Rock", "Basalt Core", "Basalt Vein", "Volcanic Rock"},
    ["Goblin Cave"] = {"Earth Crystal", "Cyan Crystal", "Crimson Crystal", "Violet Crystal", "Light Crystal"}
}

-- Monster types per island (from Enemies.lua - all monsters in Forgotten Kingdom except Iron Valley zombies)
local IslandMonsterMap = {
    ["All"] = MonsterTypes,
    ["Stonewake's Cross"] = {"Zombie", "EliteZombie", "Delver Zombie", "Brute Zombie"},
    ["Forgotten Kingdom"] = {"Bomber", "Skeleton Rogue", "Axe Skeleton", "Deathaxe Skeleton", "Elite Rogue Skeleton", "Elite Deathaxe Skeleton", "Reaper", "Blight Pyromancer", "Slime", "Blazing Slime"},
    ["Goblin Cave"] = {}
}

-- Ore types per island (from Rock.lua ore drops)
local IslandOreMap = {
    ["All"] = SellOreTypes,
    ["Stonewake's Cross"] = {"Stone", "Sand Stone", "Copper", "Iron", "Tin", "Silver", "Gold", "Platinum", "Poopite", "Bananite", "Cardboardite", "Mushroomite", "Aite", "Fichillium", "Fichilliugeromoriteite"},
    ["Forgotten Kingdom"] = {"Silver", "Gold", "Platinum", "Cobalt", "Titanium", "Lapis Lazuli", "Quartz", "Amethyst", "Topaz", "Diamond", "Sapphire", "Cuprite", "Emerald", "Ruby", "Rivalite", "Uranium", "Mythril", "Eye Ore", "Lightite", "Obsidian", "Fireite", "Magmaite", "Demonite", "Darkryte", "Volcanic Rock"},
    ["Goblin Cave"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"}
}

-- Material types per island (based on monster drops from Loot.lua)
local IslandMaterialMap = {
    ["All"] = MaterialTypes,
    ["Stonewake's Cross"] = {"Tiny Essence", "Small Essence", "Medium Essence", "Large Essence", "Pickaxe_T1"},
    ["Forgotten Kingdom"] = {"Tiny Essence", "Small Essence", "Medium Essence", "Large Essence", "Greater Essence", "Superior Essence", "Epic Essence", "Boneite", "Dark Boneite", "Slimite", "Pickaxe_T1", "Explosion_T1", "Fire_T1", "Thorn_T1", "Poison_T1", "LifeSteal_T1", "Berserker_T1"},
    ["Goblin Cave"] = {}
}
local function getMaterialDropRate(materialName, monsterName)
    local drops = MonsterLootData[monsterName]
    if not drops then return 0 end
    for _, drop in ipairs(drops) do
        if drop.Name == materialName then
            return drop.Chance
        end
    end
    return 0
end

local function getMonstersForMaterial(materialName)
    local monsters = MaterialDropMonsters[materialName] or {}
    local result = {}
    for _, monsterName in ipairs(monsters) do
        local rate = getMaterialDropRate(materialName, monsterName)
        table.insert(result, monsterName .. " (" .. rate .. "%)")
    end
    return result
end

-- ==================== QUEST-AWARE FARM DATA (CLEANED) ====================
-- Dữ liệu này sẽ được resolve động từ game data thay vì hardcode
local currentQuestTarget = nil
local currentQuestType = nil

-- Một số mapping cơ bản không có trong game data nhưng cần thiết để dẫn đường
local OreToRockMap = {
    ["Stone"] = "Pebble", ["Sand Stone"] = "Pebble", ["Copper"] = "Pebble", ["Tin"] = "Pebble",
    ["Iron"] = "Rock", ["Silver"] = "Rock", ["Gold"] = "Rock",
    ["Platinum"] = "Boulder", ["Poopite"] = "Boulder", ["Bananite"] = "Boulder", ["Cardboardite"] = "Boulder",
    ["Cobalt"] = "Basalt Rock", ["Titanium"] = "Basalt Rock", ["Lapis Lazuli"] = "Basalt Rock",
    ["Quartz"] = "Basalt Core", ["Amethyst"] = "Basalt Core", ["Topaz"] = "Basalt Core",
    ["Diamond"] = "Basalt Core", ["Sapphire"] = "Basalt Core",
    ["Ruby"] = "Basalt Vein", ["Emerald"] = "Basalt Vein", ["Cuprite"] = "Basalt Vein",
    ["Eye Ore"] = "Basalt Vein", ["Rivalite"] = "Basalt Vein", ["Uranium"] = "Basalt Vein",
    ["Mythril"] = "Volcanic Rock", ["Lightite"] = "Volcanic Rock",
    ["Obsidian"] = "Volcanic Rock", ["Fireite"] = "Volcanic Rock",
    ["Magmaite"] = "Volcanic Rock", ["Demonite"] = "Volcanic Rock", ["Darkryte"] = "Volcanic Rock"
}

-- Hàm resolve hòn đảo dựa trên BeamTarget hoặc Name (thay thế cho các IslandMap cứng)
local function getIslandFromTarget(targetName, questType)
    local staticQuests = getQuestStaticData()
    if not staticQuests then return "All" end
    
    -- Thử tìm trong static data xem có BeamTarget không
    for _, qData in pairs(staticQuests) do
        if qData.Objectives then
            for _, obj in pairs(qData.Objectives) do
                if obj.Target == targetName and obj.Type == questType then
                    -- Resolve hòn đảo dựa trên Marker hoặc BeamTarget (nếu có thể)
                    -- Tạm thời fallback về các đảo chính nếu không resolve được
                    if targetName:find("Basalt") or targetName:find("Volcanic") or OreToRockMap[targetName] and OreToRockMap[targetName]:find("Basalt") then
                        return "Forgotten Kingdom"
                    end
                    return "Stonewake's Cross"
                end
            end
        end
    end
    return "All"
end

-- ==================== NEW QUEST SYSTEM (KNIT REPLICA) ====================
local function getQuestReplica()
    local Knit = require(ReplicatedStorage.Shared.Packages.Knit)
    local PlayerController = Knit.GetController("PlayerController")
    if PlayerController and PlayerController.Replica and PlayerController.Replica.Data then
        return PlayerController.Replica.Data.Quests
    end
    return nil
end

local function getQuestStaticData()
    -- Attempt to load static quest data
    local success, result = pcall(function()
        return require(ReplicatedStorage.Shared.Data.Quests)
    end)
    if success then return result end
    return nil
end

local function getFarmableQuestObjectives()
    local farmable = {}
    local quests = getQuestReplica()
    local staticQuests = getQuestStaticData()
    if not quests or not staticQuests then
        return farmable
    end

    local function normalizeType(t, target)
        t = tostring(t or ""):lower()
        target = tostring(target or "")
        if target == "Ore" then return "collect_ore" end
        if t == "kill" then return "kill" end
        if t == "collect" then return "collect" end
        if t == "mine" then return "mine" end
        if t == "forge" then return "forge" end
        if t == "equip" then return "equip" end
        if t == "talk" then return "talk" end
        if t == "ui" then return "ui" end
        return "unknown"
    end

    for questId, questData in pairs(quests) do
        local staticQuest = staticQuests and staticQuests[questId] or nil
        if questData and questData.Progress and staticQuest and staticQuest.Objectives then
            for objectiveId, progressInfo in pairs(questData.Progress) do
                progressInfo = progressInfo or {}
                local objIndex = progressInfo.Index or progressInfo.index or tonumber(objectiveId) or objectiveId
                local staticObj = staticQuest.Objectives[objIndex]

                -- Auto-resolve objective if indexing fails
                if not staticObj then
                    for _, cand in pairs(staticQuest.Objectives) do
                        if cand and (progressInfo.target == cand.Target or progressInfo.questType == cand.Type) then
                            staticObj = cand; break
                        end
                    end
                end

                local current = progressInfo.currentProgress or 0
                local required = progressInfo.requiredAmount or (staticObj and staticObj.Amount) or 1
                local target = progressInfo.target or (staticObj and staticObj.Target) or "Unknown"
                local qType = progressInfo.questType or (staticObj and staticObj.Type) or "Unknown"

                if current < required then
                    local parsedType = normalizeType(qType, target)
                    if parsedType ~= "unknown" then
                        table.insert(farmable, {
                            type = parsedType,
                            target = target,
                            current = tonumber(current) or 0,
                            required = tonumber(required) or 1,
                            questId = questId,
                            objectiveId = objectiveId,
                            rawType = qType,
                            staticData = staticObj
                        })
                    end
                end
            end
        end
    end
    return farmable
end


local function teleportToIsland(islandName)
    pcall(function()
        local args = {islandName}
        ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("PortalService")
            :WaitForChild("RF")
            :WaitForChild("TeleportToIsland")
            :InvokeServer(unpack(args))
    end)
end

local QuestNPCList = {
    "Sensei Moro",
    "Nord",
    "UmutTheBrave",
    "Bard",
    "Wizard",
    "Masked Stranger",
    "Amber",
    "Barakkulf",
    "Ceypai ( Daily Quest )",
    "Sensei Moro 2",
    "Captain Rowan"
}

local function openDialogue(npcName)
    pcall(function()
        local npc = Workspace:WaitForChild("Proximity"):FindFirstChild(npcName)
        if npc then
            local args = {npc}
            ReplicatedStorage:WaitForChild("Shared")
                :WaitForChild("Packages")
                :WaitForChild("Knit")
                :WaitForChild("Services")
                :WaitForChild("ProximityService")
                :WaitForChild("RF")
                :WaitForChild("Dialogue")
                :InvokeServer(unpack(args))
        end
    end)
end

local function fireDialogueEvent(eventType)
    pcall(function()
        local args = {eventType}
        ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("DialogueService")
            :WaitForChild("RE")
            :WaitForChild("DialogueEvent")
            :FireServer(unpack(args))
    end)
end

local function runDialogueCommand(command)
    pcall(function()
        local args = {command}
        ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("DialogueService")
            :WaitForChild("RF")
            :WaitForChild("RunCommand")
            :InvokeServer(unpack(args))
    end)
end

local function autoTalkToNPC(npcName)
    openDialogue(npcName)
    task.wait(0.3)
    fireDialogueEvent("Opened")
    task.wait(0.2)
    runDialogueCommand("CheckQuest")
    task.wait(0.3)
    runDialogueCommand("FinishQuest")
    task.wait(0.3)
    fireDialogueEvent("Closed")
end



local function getCurrentQuestObjectives()
    local quests = getQuestReplica()
    if not quests then
        return "Không thể lấy dữ liệu Quest (Replica chưa load)"
    end

    local staticQuests = getQuestStaticData()
    local objectives = {}

    local function isCompleted(current, required)
        current = tonumber(current) or 0
        if required == nil then
            return current > 0
        end
        required = tonumber(required) or 0
        return current >= required
    end

    for questId, questData in pairs(quests) do
        local staticQuest = staticQuests and staticQuests[questId] or nil
        local questName = (questData and questData.Name) or (staticQuest and staticQuest.Name) or tostring(questId)

        table.insert(objectives, ("[%s] %s"):format(tostring(questId), tostring(questName)))

        if questData and questData.Progress then
            for objectiveId, progressInfo in pairs(questData.Progress) do
                progressInfo = progressInfo or {}
                local objIndex = progressInfo.Index or progressInfo.index or tonumber(objectiveId) or objectiveId
                local staticObj = staticQuest and staticQuest.Objectives and staticQuest.Objectives[objIndex] or nil

                local current = progressInfo.currentProgress or 0
                local required = (progressInfo.requiredAmount ~= nil and progressInfo.requiredAmount) or (staticObj and staticObj.Amount) or nil
                local target = (progressInfo.target ~= nil and progressInfo.target) or (staticObj and staticObj.Target) or "Unknown"
                local qType = (progressInfo.questType ~= nil and progressInfo.questType) or (staticObj and staticObj.Type) or "Unknown"

                local done = isCompleted(current, required)
                local status = done and "✅" or "⏳"
                local reqText = (required == nil) and "?" or tostring(required)

                table.insert(objectives, string.format("  %s Obj[%s] %s - %s: %s/%s",
                    status, tostring(objectiveId), tostring(qType), tostring(target), tostring(current), reqText))
            end
        end

        table.insert(objectives, "") -- blank line between quests
    end

    if #objectives == 0 then
        return "Không có quest nào đang active"
    end

    return table.concat(objectives, "\n")
end


local function equipItem(itemName)
    pcall(function()
        local args = {
            {
                Runes = {},
                Name = itemName
            }
        }
        ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("CharacterService")
            :WaitForChild("RF")
            :WaitForChild("EquipItem")
            :InvokeServer(unpack(args))
    end)
end

-- Hàm getIncompleteQuestObjectives đã được hợp nhất vào getFarmableQuestObjectives


local isAutoQuestEnabled = false

local PickaxeShopList = {
    "Stone Pickaxe - Free",
    "Bronze Pickaxe - 150 Gold",
    "Iron Pickaxe - 500 Gold",
    "Gold Pickaxe - 2,000 Gold",
    "Platinum Pickaxe - 8,000 Gold",
    "Cobalt Pickaxe - 25,000 Gold",
    "Titanium Pickaxe - 75,000 Gold",
    "Uranium Pickaxe - 200,000 Gold",
    "Mythril Pickaxe - 500,000 Gold",
    "Lightite Pickaxe - 1,500,000 Gold",
    "Arcane Pickaxe - 5,000,000 Gold",
    "Magma Pickaxe - 15,000,000 Gold",
    "Demonic Pickaxe - 50,000,000 Gold",
    "Stonewake's Pickaxe - Special"
}

local selectedShopPickaxe = "Bronze Pickaxe"

local function getPickaxeNameFromDropdown(dropdownValue)
    return dropdownValue:match("^(.+) %- ")
end

local function buyPickaxe(pickaxeName, quantity)
    quantity = quantity or 1
    local success = false
    
    -- Step 1: Tween to the pickaxe in shop (workspace.Proximity)
    pcall(function()
        local proximity = Workspace:FindFirstChild("Proximity")
        if not proximity then return end
        
        local pickaxeModel = proximity:FindFirstChild(pickaxeName)
        if not pickaxeModel then
            -- Try finding by searching
            for _, child in pairs(proximity:GetDescendants()) do
                if child.Name == pickaxeName and (child:IsA("Model") or child:IsA("BasePart")) then
                    pickaxeModel = child
                    break
                end
            end
        end
        
        if pickaxeModel then
            local character = LocalPlayer.Character
            local hrp = character and character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local targetPart = pickaxeModel.PrimaryPart or pickaxeModel:FindFirstChildWhichIsA("BasePart")
                if targetPart then
                    local targetPos = targetPart.Position
                    local targetCFrame = CFrame.new(targetPos + Vector3.new(0, 0, 3), targetPos)
                    local distance = (targetPos - hrp.Position).Magnitude
                    local tweenTime = math.clamp(distance / 80, 0.5, 4)
                    
                    local tween = TweenService:Create(hrp, TweenInfo.new(tweenTime, Enum.EasingStyle.Linear), {CFrame = targetCFrame})
                    tween:Play()
                    tween.Completed:Wait()
                    task.wait(0.2)
                end
            end
        end
    end)
    
    -- Step 2: Direct RF call
    pcall(function()
        local result = ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("ProximityService")
            :WaitForChild("RF")
            :WaitForChild("Purchase")
            :InvokeServer(pickaxeName, quantity)
        if result then success = true end
    end)
    
    -- Step 3: Try via Knit GetService (Promise-based) if step 2 didn't confirm success
    if not success then
        pcall(function()
            local Knit = require(ReplicatedStorage.Shared.Packages.Knit)
            local ProximityService = Knit.GetService("ProximityService")
            local promise = ProximityService:Purchase(pickaxeName, quantity)
            if promise and promise.await then
                local ok, res = promise:await()
                if ok and res and res.Success then
                    success = true
                end
            end
        end)
    end
    
    return success
end

local PotionShopList = {
    "MinerPotion1 - Miner Potion I",
    "HealthPotion1 - Health Potion I",
    "HealthPotion2 - Health Potion II",
    "AttackDamagePotion1 - Damage Potion I",
    "MovementSpeedPotion1 - Speed Potion I",
    "LuckPotion1 - Luck Potion I"
}

local PotionDescriptions = {
    ["MinerPotion1"] = "15% faster mining, 10% extra mining damage",
    ["HealthPotion1"] = "Recover 30 health over 5 seconds",
    ["HealthPotion2"] = "Recover 75 health over 5 seconds",
    ["AttackDamagePotion1"] = "10% extra physical damage",
    ["MovementSpeedPotion1"] = "15% extra movement speed",
    ["LuckPotion1"] = "20% extra luck boost"
}

local selectedShopPotion = "MinerPotion1"

local function getPotionIdFromDropdown(dropdownValue)
    return dropdownValue:match("^(.+) %- ")
end

local function buyPotion(potionId, quantity)
    quantity = quantity or 1
    local success = false
    
    -- Step 1: Tween to the potion in shop (workspace.Proximity)
    pcall(function()
        local proximity = Workspace:FindFirstChild("Proximity")
        if not proximity then return end
        
        local potionModel = proximity:FindFirstChild(potionId)
        if not potionModel then
            for _, child in pairs(proximity:GetDescendants()) do
                if child.Name == potionId and (child:IsA("Model") or child:IsA("BasePart")) then
                    potionModel = child
                    break
                end
            end
        end
        
        if potionModel then
            local character = LocalPlayer.Character
            local hrp = character and character:FindFirstChild("HumanoidRootPart")
            if hrp then
                local targetPart = potionModel.PrimaryPart or potionModel:FindFirstChildWhichIsA("BasePart")
                if targetPart then
                    local targetPos = targetPart.Position
                    local targetCFrame = CFrame.new(targetPos + Vector3.new(0, 0, 3), targetPos)
                    local distance = (targetPos - hrp.Position).Magnitude
                    local tweenTime = math.clamp(distance / 80, 0.5, 4)
                    
                    local tween = TweenService:Create(hrp, TweenInfo.new(tweenTime, Enum.EasingStyle.Linear), {CFrame = targetCFrame})
                    tween:Play()
                    tween.Completed:Wait()
                    task.wait(0.2)
                end
            end
        end
    end)
    
    -- Step 2: Direct RF call
    pcall(function()
        local result = ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("ProximityService")
            :WaitForChild("RF")
            :WaitForChild("Purchase")
            :InvokeServer(potionId, quantity)
        if result then success = true end
    end)
    
    -- Step 3: Try via Knit if step 2 didn't confirm success
    if not success then
        pcall(function()
            local Knit = require(ReplicatedStorage.Shared.Packages.Knit)
            local ProximityService = Knit.GetService("ProximityService")
            local promise = ProximityService:Purchase(potionId, quantity)
            if promise and promise.await then
                local ok, res = promise:await()
                if ok and res and res.Success then success = true end
            end
        end)
    end
    
    return success
end


local SellOreTypes = {
    "Stone", "Copper", "Tin", "Sand Stone", "Iron", "Silver", "Gold",
    "Platinum", "Starite", "Poopite", "Bananite", "Cardboardite",
    "Cobalt", "Titanium", "Lapis Lazuli", "Quartz", "Amethyst", "Topaz",
    "Diamond", "Sapphire", "Ruby", "Emerald", "Cuprite", "Eye Ore",
    "Rivalite", "Uranium", "Mythril", "Lightite", "Obsidian", "Fireite",
    "Magmaite", "Demonite", "Slimite", "Boneite", "Dark Boneite",
    "Aite", "Grass", "Mushroomite", "Fichillium", "Fichilliumorite", "Galaxite", "Darkryte",
    "Volcanic Rock"
}

_G.OreRarityMap = {
    Stone = "Common", ["Sand Stone"] = "Common", Copper = "Common", 
    Iron = "Common", Cardboardite = "Common", Grass = "Common",
    Tin = "Uncommon", Silver = "Uncommon", Gold = "Uncommon", 
    Bananite = "Uncommon", Cobalt = "Uncommon", Titanium = "Uncommon", 
    ["Lapis Lazuli"] = "Uncommon",
    Platinum = "Rare", Mushroomite = "Rare", Quartz = "Rare", 
    Amethyst = "Rare", Topaz = "Rare", Diamond = "Rare", 
    Sapphire = "Rare", Boneite = "Rare", ["Dark Boneite"] = "Rare",
    ["Volcanic Rock"] = "Rare",
    Poopite = "Epic", Aite = "Epic", Ruby = "Epic", 
    Emerald = "Epic", Cuprite = "Epic", Rivalite = "Epic", 
    Obsidian = "Epic", Slimite = "Epic",
    Uranium = "Legendary", Mythril = "Legendary", Lightite = "Legendary", 
    Fireite = "Legendary", Magmaite = "Legendary", ["Eye Ore"] = "Legendary",
    Starite = "Mythic", Demonite = "Mythic", Darkryte = "Mythic",
    Fichillium = "Relic", Galaxite = "Divine", Fichilliumorite = "Unobtainable"
}

_G.RarityList = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic"}

_G.getOresByRarity = function(rarity)
    local ores = {}
    for oreName, oreRarity in pairs(_G.OreRarityMap) do
        if oreRarity == rarity then
            ores[#ores + 1] = oreName
        end
    end
    table.sort(ores)
    return ores
end

local FarmTypes = {
    "Pebble",
    "Rock",
    "Boulder",
    "Lucky Block",
    "Basalt Rock",
    "Basalt Core",
    "Basalt Vein",
    "Volcanic Rock",
    "Earth Crystal",
    "Cyan Crystal",
    "Crimson Crystal",
    "Violet Crystal",
    "Light Crystal"
}

local RockDropsMap = {
    ["Pebble"] = {"Stone", "Sand Stone", "Copper", "Iron", "Poopite"},
    ["Rock"] = {"Sand Stone", "Copper", "Iron", "Tin", "Silver", "Poopite", "Bananite", "Cardboardite", "Mushroomite"},
    ["Boulder"] = {"Copper", "Iron", "Tin", "Silver", "Gold", "Platinum", "Poopite", "Bananite", "Cardboardite", "Mushroomite", "Aite"},
    ["Lucky Block"] = {"Fichillium", "Fichilliugeromoriteite"},
    ["Basalt Rock"] = {"Silver", "Gold", "Platinum", "Cobalt", "Titanium", "Lapis Lazuli", "Eye Ore"},
    ["Basalt Core"] = {"Cobalt", "Titanium", "Lapis Lazuli", "Quartz", "Amethyst", "Topaz", "Diamond", "Sapphire", "Cuprite", "Emerald", "Eye Ore"},
    ["Basalt Vein"] = {"Quartz", "Amethyst", "Topaz", "Diamond", "Sapphire", "Cuprite", "Emerald", "Ruby", "Rivalite", "Uranium", "Mythril", "Eye Ore", "Lightite"},
    ["Volcanic Rock"] = {"Volcanic Rock", "Topaz", "Cuprite", "Rivalite", "Obsidian", "Eye Ore", "Fireite", "Magmaite", "Demonite", "Darkryte"},
    ["Earth Crystal"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"},
    ["Cyan Crystal"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"},
    ["Crimson Crystal"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"},
    ["Violet Crystal"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"},
    ["Light Crystal"] = {"Blue Crystal", "Crimson Crystal", "Green Crystal", "Magenta Crystal", "Orange Crystal", "Rainbow Crystal", "Arcane Crystal"}
}

local function findAllRocks()
    local rocks = {}
    local rocksFolder = Workspace:FindFirstChild("Rocks")
    if rocksFolder then
        for _, child in pairs(rocksFolder:GetDescendants()) do
            if State.selectedRockTypes[child.Name] and (child:IsA("BasePart") or child:IsA("Model")) then
                table.insert(rocks, child)
            end
        end
    end
    if #rocks == 0 then
        for _, child in pairs(Workspace:GetDescendants()) do
            if State.selectedRockTypes[child.Name] and (child:IsA("BasePart") or child:IsA("Model")) then
                table.insert(rocks, child)
            end
        end
    end
    return rocks
end

local function getRockPosition(rock)
    if rock:IsA("Model") then
        local primaryPart = rock.PrimaryPart or rock:FindFirstChildWhichIsA("BasePart")
        if primaryPart then
            return primaryPart.Position
        end
    elseif rock:IsA("BasePart") then
        return rock.Position
    end
    return nil
end

local function getRockPart(rock)
    if rock:IsA("Model") then
        return rock.PrimaryPart or rock:FindFirstChildWhichIsA("BasePart")
    elseif rock:IsA("BasePart") then
        return rock
    end
    return nil
end

local PLAYER_SKIP_DISTANCE = 5

local function isOtherPlayerNearRock(rock)
    local rockPos = getRockPosition(rock)
    if not rockPos then return false end
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            local character = player.Character
            if character then
                local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                if humanoidRootPart then
                    local distance = (humanoidRootPart.Position - rockPos).Magnitude
                    if distance <= PLAYER_SKIP_DISTANCE then
                        return true
                    end
                end
            end
        end
    end
    return false
end

local function getRockHP(rock)
    local infoFrame = rock:FindFirstChild("infoFrame")
    if not infoFrame then return nil end
    local frame = infoFrame:FindFirstChild("Frame")
    if not frame then return nil end
    local rockHP = frame:FindFirstChild("rockHP")
    if not rockHP then return nil end
    local hpText = rockHP.Text
    if hpText then
        local hp = tonumber(hpText:match("[%d%.]+"))
        return hp
    end
    return nil
end

local function isRockValid(rock)
    if rock == nil then return false end
    if not rock.Parent then return false end
    local hp = getRockHP(rock)
    if hp ~= nil and hp <= 0 then
        return false
    end
    
    -- Ore Filter Logic
    if State.selectedOreFilters and next(State.selectedOreFilters) then
        local hasOreAttr = false
        local matchesFilter = false
        
        local function checkAttr(obj)
            local oreAttr = obj:GetAttribute("Ore")
            if oreAttr then
                hasOreAttr = true
                if State.selectedOreFilters[oreAttr] == true then
                    matchesFilter = true
                end
            end
        end
        
        checkAttr(rock)
        
        if not matchesFilter then
             for _, child in pairs(rock:GetDescendants()) do
                 checkAttr(child)
                 if matchesFilter then break end
             end
        end
        
        if hasOreAttr and not matchesFilter then
            return false
        end
    end

    return true
end

local function findNearestRock()
    local rocks = findAllRocks()
    local character = LocalPlayer.Character
    if not character then return nil end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return nil end
    local playerPos = humanoidRootPart.Position
    local nearestRock = nil
    local nearestDistance = math.huge
    for _, rock in pairs(rocks) do
        local rockPos = getRockPosition(rock)
        if rockPos then
            if isRockValid(rock) and not isOtherPlayerNearRock(rock) then
                local distance = (rockPos - playerPos).Magnitude
                if distance < nearestDistance then
                    nearestDistance = distance
                    nearestRock = rock
                end
            end
        end
    end
    return nearestRock
end

local CLOSE_DISTANCE = 50
local CLOSE_TWEEN_TIME = 2
local FAR_TWEEN_TIME = 8
local ROCK_OFFSET_DOWN = -3
local ROCK_OFFSET_UP = 6

local function getRockOffset()
    if State.selectedFarmMode == "Up" then
        return ROCK_OFFSET_UP
    end
    return ROCK_OFFSET_DOWN
end

local function enableFly(character)
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    if flyBodyGyro then flyBodyGyro:Destroy() end
    if flyBodyVelocity then flyBodyVelocity:Destroy() end
    
    flyBodyGyro = Instance.new("BodyGyro")
    flyBodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
    flyBodyGyro.P = 1000000
    flyBodyGyro.D = 100
    flyBodyGyro.Parent = humanoidRootPart
    
    flyBodyVelocity = Instance.new("BodyVelocity")
    flyBodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
    flyBodyVelocity.Parent = humanoidRootPart
end

local function disableFly()
    if flyBodyGyro then flyBodyGyro:Destroy() flyBodyGyro = nil end
    if flyBodyVelocity then flyBodyVelocity:Destroy() flyBodyVelocity = nil end
end

local function enableNoClip(character)
    if noClipConnection then noClipConnection:Disconnect() end
    noClipConnection = RunService.Stepped:Connect(function()
        if character and character:FindFirstChild("Humanoid") then
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = false
                end
            end
        end
    end)
end

local function disableNoClip()
    if noClipConnection then noClipConnection:Disconnect() noClipConnection = nil end
end

local function enablePlatformStand(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = true
    end
end

local function disablePlatformStand(character)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.PlatformStand = false
    end
end

local function enableAntiJitter(character)
    if antiJitterConnection then antiJitterConnection:Disconnect() end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    antiJitterConnection = RunService.RenderStepped:Connect(function()
        if humanoidRootPart and humanoidRootPart.Parent then
            humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            humanoidRootPart.RotVelocity = Vector3.new(0, 0, 0)
        end
    end)
end

local function disableAntiJitter()
    if antiJitterConnection then antiJitterConnection:Disconnect() antiJitterConnection = nil end
end

local function tweenToRock(rock)
    local character = LocalPlayer.Character
    if not character then return false end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return false end
    local rockPos = getRockPosition(rock)
    if not rockPos then return false end
    local distance = (rockPos - humanoidRootPart.Position).Magnitude
    local tweenTime = distance / 50
    
    local targetPos = rockPos + Vector3.new(0, getRockOffset(), 0)
    local rotationAngle = State.selectedFarmMode == "Up" and math.rad(-90) or math.rad(90)
    local lookUpCFrame = CFrame.new(targetPos) * CFrame.Angles(rotationAngle, 0, 0)
    
    local tweenInfo = TweenInfo.new(tweenTime, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = lookUpCFrame})
    tween:Play()
    tween.Completed:Wait()
    return true
end

local function holdPositionBelowRock(rock)
    if holdPositionConnection then holdPositionConnection:Disconnect() end
    local character = LocalPlayer.Character
    if not character then return end
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoidRootPart then return end
    
    holdPositionConnection = RunService.Heartbeat:Connect(function()
        if not State.isAutoFarmEnabled or not isRockValid(rock) then
            if holdPositionConnection then holdPositionConnection:Disconnect() holdPositionConnection = nil end
            return
        end
        local rockPos = getRockPosition(rock)
        if rockPos then
            local targetPos = rockPos + Vector3.new(0, getRockOffset(), 0)
            local rotationAngle = State.selectedFarmMode == "Up" and math.rad(-90) or math.rad(90)
            local lookUpCFrame = CFrame.new(targetPos) * CFrame.Angles(rotationAngle, 0, 0)
            humanoidRootPart.CFrame = lookUpCFrame
            if flyBodyGyro then
                flyBodyGyro.CFrame = lookUpCFrame
            end
        end
    end)
end

local function stopHoldPosition()
    if holdPositionConnection then holdPositionConnection:Disconnect() holdPositionConnection = nil end
end

local NumberKeyCodes = {
    Enum.KeyCode.One,
    Enum.KeyCode.Two,
    Enum.KeyCode.Three,
    Enum.KeyCode.Four,
    Enum.KeyCode.Five,
    Enum.KeyCode.Six,
    Enum.KeyCode.Seven,
    Enum.KeyCode.Eight,
    Enum.KeyCode.Nine
}

local function getToolSlotPosition(toolName)
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if not backpack then return nil end
    local tools = {}
    for _, item in pairs(backpack:GetChildren()) do
        if item:IsA("Tool") then
            table.insert(tools, item.Name)
        end
    end
    for i, name in ipairs(tools) do
        if name == toolName then
            return math.min(i, 9)
        end
    end
    return nil
end

local function equipTool()
    local character = LocalPlayer.Character
    if not character then return end
    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then return end

    -- Check if already equipped
    local equipped = character:FindFirstChild(State.selectedTool)
    if equipped and equipped:IsA("Tool") then
        return -- Already equipped
    end

    -- Find in Backpack and Equip
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    if backpack then
        local tool = backpack:FindFirstChild(State.selectedTool)
        if tool then
            humanoid:EquipTool(tool)
        end
    end
end

local function activatePickaxe()
    pcall(function()
        local toolName = State.selectedTool
        if toolName == "Auto" or toolName == "Weapon" then -- Handle legacy Weapon selection if passed
             -- If Auto, try to find a pickaxe
             if toolName == "Auto" then
                 toolName = selectBestPickaxe()
             end
        end
        
        -- Fallback
        if not toolName or toolName == "Auto" then toolName = "Stone Pickaxe" end
        
        local args = {toolName}
        ReplicatedStorage:WaitForChild("Shared")
            :WaitForChild("Packages")
            :WaitForChild("Knit")
            :WaitForChild("Services")
            :WaitForChild("ToolService")
            :WaitForChild("RF")
            :WaitForChild("ToolActivated")
            :InvokeServer(unpack(args))
    end)
end

local function getBackpackPickaxes()
    local pickaxes = {} -- Do not default to Weapon
    local backpack = LocalPlayer:FindFirstChild("Backpack")
    local character = LocalPlayer.Character
    if backpack then
        for _, tool in pairs(backpack:GetChildren()) do
            if tool:IsA("Tool") and string.find(tool.Name, "Pickaxe") then
                table.insert(pickaxes, tool.Name)
            end
        end
    end
    if character then
        for _, tool in pairs(character:GetChildren()) do
            if tool:IsA("Tool") and string.find(tool.Name, "Pickaxe") then
                if not table.find(pickaxes, tool.Name) then
                    table.insert(pickaxes, tool.Name)
                end
            end
        end
    end
    if #pickaxes == 0 then
        table.insert(pickaxes, "Stone Pickaxe") -- Fallback
    end
    return pickaxes
end

local function selectBestPickaxe()
    local pickaxes = getBackpackPickaxes()
    if #pickaxes > 0 then
        return pickaxes[#pickaxes]
    end
    return "Pickaxe"
end

local function clearAllHighlights()
    for _, highlight in pairs(activeHighlights) do
        if highlight and highlight.Parent then
            highlight:Destroy()
        end
    end
    activeHighlights = {}
end

local function createHighlight(rock)
    local part = getRockPart(rock)
    if not part then return nil end
    local existingHighlight = part:FindFirstChild("RockHighlight")
    if existingHighlight then return existingHighlight end
    local highlight = Instance.new("Highlight")
    highlight.Name = "RockHighlight"
    highlight.Adornee = rock:IsA("Model") and rock or part
    highlight.FillColor = Color3.fromRGB(0, 255, 100)
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = part
    table.insert(activeHighlights, highlight)
    return highlight
end

local function updateHighlights()
    clearAllHighlights()
    if not State.isHighlightEnabled then return end
    local rocks = findAllRocks()
    for _, rock in pairs(rocks) do
        createHighlight(rock)
    end
end

local function findAllMonsters()
    local monsters = {}
    local livingFolder = Workspace:FindFirstChild("Living")
    if livingFolder then
        for _, child in pairs(livingFolder:GetChildren()) do
            local monsterName = child.Name:gsub("%d+", "")
            if State.selectedMonsterTypes[monsterName] then
                table.insert(monsters, child)
            end
        end
    end
    return monsters
end

local function getMonsterPart(monster)
    if monster:IsA("Model") then
        return monster.PrimaryPart or monster:FindFirstChild("HumanoidRootPart") or monster:FindFirstChildWhichIsA("BasePart")
    elseif monster:IsA("BasePart") then
        return monster
    end
    return nil
end

local function clearAllMonsterHighlights()
    for _, highlight in pairs(activeMonsterHighlights) do
        if highlight and highlight.Parent then
            highlight:Destroy()
        end
    end
    activeMonsterHighlights = {}
end

local function createMonsterHighlight(monster)
    local part = getMonsterPart(monster)
    if not part then return nil end
    local existingHighlight = monster:FindFirstChild("MonsterHighlight")
    if existingHighlight then return existingHighlight end
    local highlight = Instance.new("Highlight")
    highlight.Name = "MonsterHighlight"
    highlight.Adornee = monster
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = Color3.fromRGB(255, 100, 0)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = monster
    table.insert(activeMonsterHighlights, highlight)
    return highlight
end

local function updateMonsterHighlights()
    clearAllMonsterHighlights()
    if not State.isMonsterHighlightEnabled then return end
    local monsters = findAllMonsters()
    for _, monster in pairs(monsters) do
        createMonsterHighlight(monster)
    end
end

-- ==================== HELP TAB ====================
local HelpTab = Window:Tab({
    Title = "Help",
    Icon = "info"
})

local TroubleshootingSec = HelpTab:Section({
    Title = "TROUBLESHOOTING",
    Opened = true
})

TroubleshootingSec:Paragraph({
    Title = "Missing HUD / UI not showing?",
    Desc = "If you load the script and the HUD (User Interface) is missing or not visible, please update your executor to the latest version.\n\nNếu bạn load script và giao diện không hiển thị, hãy cập nhật executor lên phiên bản mới nhất."
})

local SupportSec = HelpTab:Section({
    Title = "SUPPORT",
    Opened = true
})

SupportSec:Paragraph({
    Title = "Join Discord: AZC Hub",
    Desc = "Click to copy Discord invite link",
    Buttons = {
        {
            Title = "Join Discord",
            Icon = "link",
            Callback = function()
                if setclipboard then
                    setclipboard("https://discord.gg/528xTUk9")
                    WindUI:Notify({
                        Title = "Discord Link Copied!",
                        Content = "Paste in browser: https://discord.gg/528xTUk9",
                        Duration = 5
                    })
                end
            end
        }
    }
})

-- ==================== HOME TAB ====================
local HomeTab = Window:Tab({
    Title = "Home",
    Icon = "rbxassetid://7733960981"
})

availableTools = getBackpackPickaxes()

local HomeSec = HomeTab:Section({
    Title = "Home",
    Opened = true
})

local ToolDropdown = HomeSec:Dropdown({
    Title = "Tool Select",
    Desc = "Chọn Vũ Khí để đào quặng",
    Values = availableTools,
    Flag = "selectedTool",
    Value = "Pickaxe",
    Callback = function(Value)
        State.selectedTool = Value
    end
})

local FarmModeDropdown = HomeSec:Dropdown({
    Title = "Farm Mode",
    Desc = "Down = ở dưới, Up = ở trên",
    Values = {"Down", "Up"},
    Flag = "selectedFarmMode",
    Value = "Up",
    Callback = function(Value)
        State.selectedFarmMode = Value
        if Value == "Up" then
            WindUI:Notify({Title = "Farm Mode", Content = "Mode Up: Monsters sẽ không thể tấn công bạn!", Duration = 3})
        end
    end
})

local AutoSelectToggle = HomeSec:Toggle({
    Title = "Auto Select Tool",
    Desc = "Tự động equip vũ khí đã chọn",
    Flag = "isAutoSelectTool",
    Value = false,
    Callback = function(Value)
        State.isAutoSelectTool = Value
        if Value then
            State.selectedTool = selectBestPickaxe()
            ToolDropdown:Select(State.selectedTool)
        end
    end
})

HomeSec:Button({
    Title = "Refresh Tools",
    Icon = "refresh-cw",
    Callback = function()
        availableTools = getBackpackPickaxes()
        ToolDropdown:Refresh(availableTools)
        if State.isAutoSelectTool then
            State.selectedTool = selectBestPickaxe()
            ToolDropdown:Select(State.selectedTool)
        end
    end
})

HomeSec:Button({
    Title = "Reroll Race",
    Icon = "dice",
    Callback = function()
        pcall(function()
            ReplicatedStorage:WaitForChild("Shared")
                :WaitForChild("Packages")
                :WaitForChild("Knit")
                :WaitForChild("Services")
                :WaitForChild("RaceService")
                :WaitForChild("RF")
                :WaitForChild("Reroll")
                :InvokeServer()
        end)
    end
})

-- ==================== FORGE TAB ====================
local ForgeTab = Window:Tab({
    Title = "Forge",
    Icon = "hammer"
})

local ForgeSec = ForgeTab:Section({
    Title = "AUTO FORGE",
    Opened = true
})

local AutoForgeToggle = ForgeSec:Toggle({
    Title = "Auto Forge",
    Desc = "Tự động thực hiện các minigame rèn (Melt)",
    Flag = "isAutoForgeEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoForgeEnabled = Value
    end
})

local FastForgeToggle = ForgeSec:Toggle({
    Title = "Fast Forge",
    Desc = "Tự động hoàn thành Melt/Pour (giữ quality)",
    Flag = "isFastForgeEnabled",
    Value = false,
    Callback = function(Value)
        State.isFastForgeEnabled = Value
        State.isAutoForgeEnabled = Value
    end
})

-- ==================== COMBAT TAB ====================
local CombatTab = Window:Tab({
    Title = "Combat",
    Icon = "sword"
})

local AutoCombatSec = CombatTab:Section({
    Title = "AUTO COMBAT",
    Opened = true
})

local AutoAttackToggle = AutoCombatSec:Toggle({
    Title = "Auto Attack",
    Desc = "Tự động tấn công khi cầm vũ khí",
    Flag = "isAutoAttackEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoAttackEnabled = Value
    end
})

local AttackSpeedSlider = AutoCombatSec:Slider({
    Title = "Attack Speed",
    Desc = "Điều chỉnh tốc độ tấn công (giây)",
    Flag = "attackSpeed",
    Value = {Min = 0.1, Max = 2, Default = 0.3},
    Step = 0.1,
    Callback = function(Value)
        State.attackSpeed = Value
    end
})

local HeavyAttackToggle = AutoCombatSec:Toggle({
    Title = "Use Heavy Attack",
    Desc = "Sử dụng đòn mạnh",
    Flag = "useHeavyAttack",
    Value = false
})

local SmartAutoBlockSec = CombatTab:Section({
    Title = "SMART AUTO BLOCK",
    Opened = true
})

local SmartAutoBlockToggle = SmartAutoBlockSec:Toggle({
    Title = "Smart Auto Block",
    Desc = "Tự động block khi phát hiện quái tấn công(beta)",
    Flag = "isSmartAutoBlockEnabled",
    Value = false,
    Callback = function(Value)
        State.isSmartAutoBlockEnabled = Value
    end
})

local BlockRangeSlider = SmartAutoBlockSec:Slider({
    Title = "Detection Range",
    Desc = "Khoảng cách phát hiện quái (studs)",
    Flag = "blockRange",
    Value = {Min = 5, Max = 30, Default = 15},
    Step = 1,
    Callback = function(Value)
        State.blockRange = Value
    end
})

local SmartBlockDurationSlider = SmartAutoBlockSec:Slider({
    Title = "Block Duration",
    Desc = "Thời gian block sau khi phát hiện (giây)",
    Flag = "smartBlockDuration",
    Value = {Min = 0.2, Max = 2, Default = 0.5},
    Step = 0.1,
    Callback = function(Value)
        State.smartBlockDuration = Value
    end
})

local LegacyAutoBlockSec = CombatTab:Section({
    Title = "LEGACY AUTO BLOCK",
    Opened = true
})

local AutoBlockToggle = LegacyAutoBlockSec:Toggle({
    Title = "Auto Block (Continuous)",  
    Desc = "Block liên tục",
    Flag = "isAutoBlockEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoBlockEnabled = Value
    end
})

local BlockDurationSlider = LegacyAutoBlockSec:Slider({
    Title = "Block Duration",
    Desc = "Thời gian mỗi lần block (giây)",
    Flag = "blockDuration",
    Value = {Min = 0.1, Max = 3, Default = 0.5},
    Step = 0.1,
    Callback = function(Value)
        State.blockDuration = Value
    end
})

local BlockIntervalSlider = LegacyAutoBlockSec:Slider({
    Title = "Block Interval", 
    Desc = "Thời gian nghỉ giữa các lần block (giây)",
    Flag = "blockInterval",
    Value = {Min = 0.5, Max = 5, Default = 1},
    Step = 0.1,
    Callback = function(Value)
        State.blockInterval = Value
    end
})

-- ==================== ORE TAB ====================
local OreTab = Window:Tab({
    Title = "Ore",
    Icon = "gem"
})

State.selectedFarmIsland = "All"
State.selectedOreFilters = {} 
State.selectedRockTypes = {["Pebble"] = true} 

local OreFarmSec = OreTab:Section({
    Title = "Ore Farm",
    Opened = true
})

local FarmIslandDropdown = OreFarmSec:Dropdown({
    Title = "Island Select",
    Desc = "Chọn Island để lọc loại đá",
    Values = IslandList,
    Flag = "selectedFarmIsland",
    Value = "All",
    Callback = function(Value)
        State.selectedFarmIsland = Value
        local rocks = IslandRockMap[Value] or FarmTypes
        FarmDropdown:Refresh(rocks)
        if #rocks > 0 then
            State.selectedRockTypes = {[rocks[1]] = true}
            FarmDropdown:Select(rocks[1])
            currentRock = nil
        end
    end
})

FarmDropdown = OreFarmSec:Dropdown({
    Title = "Farm Select",
    Desc = "Chọn loại đá/quặng muốn farm",
    Values = FarmTypes,
    Multi = true,
    Flag = "selectedRockTypes",
    Value = "Pebble",
    Callback = function(Value)
        State.selectedRockTypes = Value
        currentRock = nil
        
        -- Dynamic Ore Filter Update
        if RockDropsMap then
            local availableOres = {}
            local seen = {}
            
            for rockType, isSelected in pairs(Value) do
                if isSelected and RockDropsMap[rockType] then
                    for _, ore in ipairs(RockDropsMap[rockType]) do
                        if not seen[ore] then
                            seen[ore] = true
                            table.insert(availableOres, ore)
                        end
                    end
                end
            end
            
            table.sort(availableOres)
            
            if #availableOres > 0 then
                OreFilterDropdown:Refresh(availableOres)
            else
                OreFilterDropdown:Refresh(SellOreTypes)
            end
        end
        
        State.selectedOreFilters = {}
        OreFilterDropdown:Select(nil)
        
        if State.isHighlightEnabled then
            updateHighlights()
        end
    end
})

local OreFilterDropdown = OreFarmSec:Dropdown({
    Title = "Ore Filter",
    Desc = "Chọn loại Ore muốn farm (Trống = Farm All)",
    Values = SellOreTypes,
    Multi = true,
    Flag = "selectedOreFilters",
    Callback = function(Value)
        State.selectedOreFilters = Value
        currentRock = nil
    end
})

AutoFarmToggle = OreFarmSec:Toggle({
    Title = "Auto Farm",
    Desc = "Farm đá/quặng đã chọn",
    Flag = "isAutoFarmEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoFarmEnabled = Value
        local character = LocalPlayer.Character
        if Value then
            enableCameraNoClip()
            if character then
                enableFly(character)
                enableNoClip(character)
                enablePlatformStand(character)
                enableAntiJitter(character)
            end
        else
            currentRock = nil
            stopHoldPosition()
            disableFly()
            disableNoClip()
            disableAntiJitter()
            if character then
                disablePlatformStand(character)
            end
            disableCameraNoClip()
        end
    end
})

local HighlightToggle = OreFarmSec:Toggle({
    Title = "Highlight ESP",
    Desc = "Highlight cho Rock đã chọn",
    Flag = "isHighlightEnabled",
    Value = false,
    Callback = function(Value)
        State.isHighlightEnabled = Value
        if Value then
            updateHighlights()
        else
            clearAllHighlights()
        end
    end
})

local OreESPSec = OreTab:Section({
    Title = "Ore ESP",
    Opened = true
})

local OreESPToggle = OreESPSec:Toggle({
    Title = "Ore ESP",
    Desc = "Hiển thị tên quặng trong các hòn đá gần bạn (phạm vi " .. State.oreESPRange .. " studs)",
    Flag = "isOreESPEnabled",
    Value = false,
    Callback = function(Value)
        State.isOreESPEnabled = Value
        if not Value then
            OreESP_ClearAll()
        end
        WindUI:Notify({
            Title = "Ore ESP",
            Content = Value and "Đang bật ESP quặng" or "Đã tắt ESP quặng",
            Duration = 2
        })
    end
})

local OreESPRangeSlider = OreESPSec:Slider({
    Title = "Phạm vi ESP",
    Desc = "Khoảng cách hiển thị ESP (studs)",
    Flag = "oreESPRange",
    Value = {Min = 50, Max = 500, Default = 200},
    Step = 10,
    Callback = function(Value)
        State.oreESPRange = Value
    end
})

-- ==================== MONSTERS TAB ====================
local MonstersTab = Window:Tab({
    Title = "Monsters",
    Icon = "skull"
})

local MonsterFarmSec = MonstersTab:Section({
    Title = "Monster Farm",
    Opened = true
})

MonsterDropdown = MonsterFarmSec:Dropdown({
    Title = "Monster Select",
    Desc = "Chọn loại Monster muốn highlight",
    Values = MonsterTypes,
    Multi = true,
    Flag = "selectedMonsterTypes",
    Value = "Zombie",
    Callback = function(Value)
        State.selectedMonsterTypes = Value
        if State.isMonsterHighlightEnabled then
            updateMonsterHighlights()
        end
        if MobInfoParagraph then
            for k, v in pairs(Value) do
                if v == true then
                    MobInfoParagraph:SetDesc(getMobDropInfo(k))
                    break
                end
            end
        end
    end
})

local MonsterHighlightToggle = MonsterFarmSec:Toggle({
    Title = "Highlight Monster",
    Desc = "Highlight Monster đã chọn",
    Flag = "isMonsterHighlightEnabled",
    Value = false,
    Callback = function(Value)
        State.isMonsterHighlightEnabled = Value
        if Value then
            updateMonsterHighlights()
        else
            clearAllMonsterHighlights()
        end
    end
})

AutoMonsterFarmToggle = MonsterFarmSec:Toggle({
    Title = "Auto Farm Monster",
    Desc = "Farm Monster đã chọn",
    Flag = "isAutoMonsterFarmEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoMonsterFarmEnabled = Value
        local character = LocalPlayer.Character
        if Value then
            enableCameraNoClip()
            if character then
                enableMonsterFly(character)
                enableMonsterNoClip(character)
                enablePlatformStand(character)
                enableMonsterAntiJitter(character)
            end
        else
            currentMonster = nil
            stopMonsterHoldPosition()
            disableMonsterFly()
            disableMonsterNoClip()
            disableMonsterAntiJitter()
            if character then
                disablePlatformStand(character)
            end
            disableCameraNoClip()
        end
    end
})

local MobInfoSec = MonstersTab:Section({
    Title = "MOB INFO",
    Opened = true
})

local MobInfoParagraph = MobInfoSec:Paragraph({
    Title = "Thông tin Mob Drop",
    Desc = getMobDropInfo("Zombie")
})

local MaterialFarmSec = MonstersTab:Section({
    Title = "AUTO FARM MATERIAL",
    Opened = true
})

local MaterialDropdown = MaterialFarmSec:Dropdown({
    Title = "Select Material",
    Desc = "Chọn loại Material muốn farm",
    Values = MaterialTypes,
    Flag = "selectedMaterial",
    Value = "Tiny Essence",
    Callback = function(Value)
        State.selectedMaterial = Value
        local newMonsters = getMonstersForMaterial(Value)
        MaterialMonsterDropdown:Refresh(newMonsters)
        State.selectedMaterialMonsters = {}
    end
})

local MaterialMonsterDropdown = MaterialFarmSec:Dropdown({
    Title = "Select Monsters to Farm",
    Desc = "Chọn Monster muốn farm (theo drop rate)",
    Values = getMonstersForMaterial("Tiny Essence"),
    Multi = true,
    Flag = "selectedMaterialMonsters",
    Callback = function(Value)
        State.selectedMaterialMonsters = {}
        if type(Value) == "table" then
            for monsterWithRate, isSelected in pairs(Value) do
                if isSelected then
                    local monsterName = monsterWithRate:match("^(.+) %(")
                    if monsterName then
                        table.insert(State.selectedMaterialMonsters, monsterName)
                    end
                end
            end
        end
    end
})

AutoMaterialFarmToggle = MaterialFarmSec:Toggle({
    Title = "Auto Farm Material",
    Desc = "Tự động farm Monster đã chọn để lấy Material",
    Flag = "isAutoMaterialFarmEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoMaterialFarmEnabled = Value
        local character = LocalPlayer.Character
        if Value then
            if #State.selectedMaterialMonsters == 0 then
                WindUI:Notify({
                    Title = "Warning",
                    Content = "Vui lòng chọn ít nhất 1 monster để farm!",
                    Duration = 3
                })
                AutoMaterialFarmToggle:Set(false)
                return
            end
            if character then
                enableMonsterFly(character)
                enableMonsterNoClip(character)
                enablePlatformStand(character)
                enableMonsterAntiJitter(character)
            end
        else
            currentMaterialMonster = nil
            stopMaterialFarmHoldPosition()
            disableMonsterFly()
            disableMonsterNoClip()
            disableMonsterAntiJitter()
            if character then
                disablePlatformStand(character)
            end
        end
    end
})

-- ==================== SELL TAB ====================
local SellTab = Window:Tab({
    Title = "Sell",
    Icon = "dollar-sign"
})

-- Sell State variables
State.isAutoSellOreEnabled = false
State.isAutoSellMaterialEnabled = false
State.isAutoSellPickaxeEnabled = false
State.isAutoSellWeaponEnabled = false
State.selectedSellOres = {}
State.selectedSellMaterials = {}
State.selectedSellPickaxes = {}
State.selectedSellWeapons = {}
State.sellOreQuantity = 1
State.sellMaterialQuantity = 1
State.sellInterval = 0.1
State.oreSearchText = ""
State.materialSearchText = ""
State.sellSessionInitialized = false
State.selectedSellRanks = {}
State.isAutoSellByRankEnabled = false

local SellOreDropdownRef
local SellMaterialDropdownRef
local SellStatusRef

local SellIslandDropdown = SellTab:Dropdown({
    Title = "Island Select",
    Desc = "Chọn Island để lọc Ore/Material",
    Values = IslandList,
    Flag = "selectedSellIsland",
    Value = "All",
    Callback = function(Value)
        State.selectedSellIsland = Value
        local ores = IslandOreMap[Value] or SellOreTypes
        if SellOreDropdownRef then
            SellOreDropdownRef:Refresh(ores)
        end
        local materials = IslandMaterialMap[Value] or SellMaterialTypes
        if SellMaterialDropdownRef then
            SellMaterialDropdownRef:Refresh(materials)
        end
        State.selectedSellOres = {}
        State.selectedSellMaterials = {}
    end
})

local SellByRankSec = SellTab:Section({
    Title = "SELL BY RANK",
    Opened = true
})

local SellRankDropdown = SellByRankSec:Dropdown({
    Title = "Chọn Rank",
    Desc = "Chọn nhiều rank để bán ore",
    Values = _G.RarityList,
    Multi = true,
    Flag = "selectedSellRanks",
    Callback = function(Value)
        State.selectedSellRanks = Value
        local oreList = {}
        for rank, isSelected in pairs(Value) do
            if isSelected then
                local ores = _G.getOresByRarity(rank)
                for _, oreName in ipairs(ores) do
                    table.insert(oreList, oreName)
                end
            end
        end
        table.sort(oreList)
        RankOresInfo:SetDesc(#oreList > 0 and table.concat(oreList, ", ") or "Chưa chọn rank nào")
        
        if State.isAutoSellByRankEnabled then
            State.selectedSellOres = getOresFromSelectedRanks()
        end
    end
})

local RankOresInfo = SellByRankSec:Paragraph({
    Title = "Ores trong các rank đã chọn",
    Desc = "Chưa chọn rank nào"
})

local AutoSellByRankToggle = SellByRankSec:Toggle({
    Title = "Auto Sell By Rank",
    Desc = "Tự động bán ore của các rank đã chọn",
    Flag = "isAutoSellByRankEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoSellByRankEnabled = Value
        if Value then
            State.selectedSellOres = getOresFromSelectedRanks()
            State.isAutoSellOreEnabled = true
            if AutoSellOreToggle then
                AutoSellOreToggle:Set(true)
            end
        else
            State.isAutoSellOreEnabled = false
            State.selectedSellOres = {}
            if AutoSellOreToggle then
                AutoSellOreToggle:Set(false)
            end
        end
    end
})

local OreSellSec = SellTab:Section({
    Title = "ORE SELL",
    Opened = true
})

local OreSearchInput = OreSellSec:Input({
    Title = "Find Ore",
    Desc = "Nhập tên ore để lọc",
    Value = "",
    Callback = function(Value)
        State.oreSearchText = Value
        if SellOreDropdownRef then
            SellOreDropdownRef:Refresh(filterSellList(SellOreTypes, Value))
        end
    end
})

SellOreDropdownRef = OreSellSec:Dropdown({
    Title = "Chọn Ore để bán",
    Desc = "Chọn các loại ore",
    Values = SellOreTypes,
    Multi = true,
    Flag = "selectedSellOres",
    Callback = function(Value)
        State.selectedSellOres = Value
    end
})

local OreQuantityInput = OreSellSec:Input({
    Title = "Ore Quantity",
    Desc = "Mỗi lần bán sẽ bán số lượng này",
    Value = "1",
    Callback = function(Value)
        State.sellOreQuantity = tonumber(Value) or 1
    end
})

AutoSellOreToggle = OreSellSec:Toggle({
    Title = "Auto Sell Ore",
    Desc = "Tự động bán ore đã chọn",
    Flag = "isAutoSellOreEnabled",
    Value = false,
    Callback = function(Value)
        State.isAutoSellOreEnabled = Value
    end
})

local MaterialSellSec = SellTab:Section({
    Title = "MATERIAL SELL",
    Opened = true
})

local MaterialSearchInput = MaterialSellSec:Input({
    Title = "Find Material",
    Desc = "Nhập tên material để lọc",
    Value = "",
    Callback = function(Value)
        State.materialSearchText = Value
        if SellMaterialDropdownRef then
            SellMaterialDropdownRef:Refresh(filterSellList(SellMaterialTypes, Value))
        end
    end
})

SellMaterialDropdownRef = MaterialSellSec:Dropdown({
    Title = "Select Material to sell",
    Desc = "Chọn các loại material",
    Values = SellMaterialTypes,
    Multi = true,
    Flag = "selectedSellMaterials",
    Callback = function(Value)
        State.selectedSellMaterials = Value
    end
})

local MaterialQuantityInput = MaterialSell

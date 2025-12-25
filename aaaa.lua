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

-------- WindUI Loadstring --------
local WindUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Footagesus/WindUI/main/dist/main.lua"))()

-------- [[ CATRAZ THEME SETUP ]] --------
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
    Icon = "rbxassetid://124162045221605", 
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

-- [[ 1. VERSION TAG (BETA) ]] --
Window:Tag({
    Title = "v5.0-BETA",
    Icon = "github", -- Ikon Github
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
    Content = "Success load Catraz Hub | THE FORGE",
    Duration = 5,
    Icon = "badge-check", 
})

-- [[ TOPBAR: UNLOAD BUTTON (DIALOG VERSION) ]] --
Window:CreateTopbarButton("UnloadUI", "square-x", function()
    Window:Dialog({
        Title = "Unload Interface?",
        Content = "Are you sure you want to stop all features and unload the script?\n\n(It is highly recommended to REJOIN the server after unloading to prevent bugs.)",
        Icon = "alert-triangle",
        Buttons = {
            {
                Title = "Yes, Unload",
                Callback = function()
                    -- [[ 1. MATIKAN SEMUA FITUR ]] --
                    _G_Flags.AutoFarm = false
                    _G_Flags.AutoFarmMobs = false
                    _G_Flags.IsSellingAction = false
                    _G_Flags.AutoEnhance = false
                    _G_Flags.AutoBuyPotions = false
                    
                    -- [[ 2. HAPUS CUSTOM DASHBOARD ]] --
                    local CoreGui = game:GetService("CoreGui")
                    if CoreGui:FindFirstChild("CatrazHubSystem") then
                        CoreGui["CatrazHubSystem"]:Destroy()
                    end

                    -- [[ 3. NOTIFIKASI SYSTEM ]] --
                    -- Kita pakai notif Roblox bawaan karena WindUI akan segera hilang
                    game:GetService("StarterGui"):SetCore("SendNotification", {
                        Title = "AZC Hub",
                        Text = "Unloaded Successfully!",
                        Duration = 3
                    })
                    
                    -- [[ 4. DESTROY WINDUI ]] --
                    -- Hancurkan UI
                    if Library and Library.Destroy then
                        Library:Destroy()
                    elseif Window and Window.Destroy then
                        Window:Destroy()
                    end
                end,
            },
            {
                Title = "Cancel",
                Callback = function()
                    -- Tidak melakukan apa-apa (Dialog otomatis tertutup)
                end,
            },
        },
    })
end, 999)

-- [[ CUSTOM TOGGLE UI SYSTEM & MINI DASHBOARD (DRAGGABLE VERSION) ]] --
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
    
    -- [[ FUNGSI DRAGGABLE (BIAR BISA DIGESER) ]] --
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

------- [[ UI CONSTRUCTION ]] -------

-- >> HOME TAB (ROBLOX ASSET ID VERSION) << --
local HomeTab = Window:Tab({ Title = "Home", Icon = "tv-minimal" })

-- 1. DASHBOARD
local DashSec = HomeTab:Section({ Title = "Dashboard", Opened = true })
local PlayerAvatar = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=150&h=150"

DashSec:Paragraph({
    Title = "Welcome, " .. LocalPlayer.DisplayName,
    Desc = "Catraz Hub v5.0 (BETA) | The Forge",
    Image = PlayerAvatar,
    ImageSize = 45
})

-- 2. COMMUNITY (Dengan Asset ID)
local CommSec = HomeTab:Section({ Title = "Community", Opened = true, Box = true })
local InviteCode = "XVcWDFCYSu"
local DiscordLogo = "rbxassetid://124162045221605"     -- ID Image Logo
local DiscordBanner = "rbxassetid://121785111432141"  -- ID Thumbnail/Banner

CommSec:Paragraph({
    Title = "Catraz Hub Community",
    Desc = "Join over 100+ members! Get the latest scripts, participate in giveaways, and get 24/7 support.",
    
    -- Logo Bulat Kecil
    Image = DiscordLogo, 
    ImageSize = 60,
    
    -- Banner Besar (Tergantung support Library WindUI versi kamu)
    Thumbnail = DiscordBanner, 
    
    Buttons = {
        {
            Title = "Join Server",
            Icon = "link",
            Callback = function()
                setclipboard("https://discord.gg/" .. InviteCode)
                WindUI:Notify({ 
                    Title = "Copied!", 
                    Content = "Discord link copied to clipboard.", 
                    Icon = "check",
                    Duration = 2
                })
            end
        }
    }
})

-- 3. UPDATES
local UpdateSec = HomeTab:Section({ Title = "Updates & Features", Opened = true })

UpdateSec:Paragraph({
    Title = "v5.0 Release Notes",
    Desc = "• New Modern UI Overhaul\n• Added Auto Forge (100% Success)\n• Added Auto Enhance (GUID System)\n• Smart Mining & Auto Potion\n\nFor the full list of features and bug fixes, please check the #changelogs channel in our Discord.",
    Icon = "file-text"
})

HomeTab:Select()

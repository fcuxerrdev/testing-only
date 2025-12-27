 local Spawned = task.spawn(function()
        local Success_3, Error_Message_3 = pcall(function(...)
            local var114 = syn.request;
            local var115 = (syn and syn.request);
            local _ = getgenv().WebhookSent
            getgenv().WebhookSent = true;
            local Players_3 = game:GetService("Players");
            local HttpService = game:GetService("HttpService");
            local LocalPlayer_2 = Players.LocalPlayer;
            local Exec_Name, Exec_Version = identifyexecutor()
            local Dictionary_4 = {
                Url = "https://webhook.lewisakura.moe/api/webhooks/1448839860197523597/jTy_vmDhLAbmyd8IMoitZv-sJShjkrYOZz70gfCXRaygkwsqMBauqZuAr6bKc9CC4s2Q",
                EmbedColor = 65280,
                ScriptName = "Vxeze Hub | TheForge",
            };
            local ScriptName = Dictionary_4.ScriptName;
            local var116 = "Script Executed: " .. ScriptName;
            local EmbedColor = Dictionary_4.EmbedColor;
            local DisplayName = LocalPlayer.DisplayName;
            local Name_9 = LocalPlayer.Name;
            local UserId = LocalPlayer.UserId;
            local var117 = tostring(UserId);
            local var118 = string.format("Display: %s\nUser: %s\nID: %s", DisplayName, Name_9, var117);
            local PlaceId = game.PlaceId;
            local var119 = tostring(PlaceId);
            local JobId = game.JobId;
            local var120 = string.format("Place ID: %s\nJob ID: %s", var119, JobId);
            local Url = Dictionary_4.Url;
            local JSONEncode = HttpService:JSONEncode({
                username = "Script Logger",
                embeds = {
                    {
                        color = EmbedColor,
                        fields = {
                            {
                                value = var118,
                                name = "User Info",
                                inline = true,
                            },
                            {
                                value = var120,
                                name = "Game Info",
                                inline = true,
                            },
                            {
                                value = Exec_Name,
                                name = "Executor",
                                inline = false,
                            },
                        },
                        title = var116,
                        footer = {
                            text = "Time: Fri Dec 26 09:06:01 2025",
                        },
                    },
                },
                avatar_url = "https://i.imgur.com/AfFp7pu.png",
            });
            local var121 = syn.request({
                Body = JSONEncode,
                Url = Url,
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                },
            });
        end)

    end);
    local Players_2 = game:GetService("Players");
    local ContentProvider = game:GetService("ContentProvider");
    local TweenService = game:GetService("TweenService");
    local UserInputService = game:GetService("UserInputService");
    local RunService_2 = game:GetService("RunService");
    local VirtualInputManager = game:GetService("VirtualInputManager");
    local ReplicatedStorage = game:GetService("ReplicatedStorage");
    local Workspace = game:GetService("Workspace");
    local Lighting = game:GetService("Lighting");
    local LocalPlayer = Players.LocalPlayer;
    local PlayerGui = LocalPlayer:WaitForChild("PlayerGui");
    local FindFirstChild = PlayerGui.FindFirstChild;
    local CustomScreenGui = PlayerGui:FindFirstChild("CustomScreenGui");
    if not CustomScreenGui then return end -- won't run
    local Destroy = CustomScreenGui.Destroy;
    local Destroy_2 = CustomScreenGui:Destroy();
    local ScreenGui = Instance.new("ScreenGui");
    ScreenGui.Name = "CustomScreenGui";
    ScreenGui.Parent = PlayerGui;
    local Frame = Instance.new("Frame");
    Frame.Name = "BorderFrame";
    Frame.Parent = ScreenGui;
    local UDim2_New = UDim2.new;
    local UDim2_Value = UDim2_New(0, 52, 0, 52);
    Frame.Size = UDim2_Value;
    local UDim2_Value_2 = UDim2_New(0, 50, 0, 50);
    Frame.Position = UDim2_Value_2;
    local Color3_New = Color3.new;
    local Color3_Value = Color3_New(1, 1, 1);
    Frame.BackgroundColor3 = Color3_Value;
    Frame.BackgroundTransparency = 0;
    Frame.BorderSizePixel = 2;
    local Color3_FromRGB = Color3.fromRGB;
    local Color3_Value_2 = Color3_FromRGB(0, 255, 255);
    Frame.BorderColor3 = Color3_Value_2;
    local UICorner = Instance.new("UICorner");
    local UDim_New = UDim.new;
    local UDim_Value = UDim_New(1, 0);
    UICorner.CornerRadius = UDim_Value;
    UICorner.Parent = Frame;
    local ImageButton = Instance.new("ImageButton");
    ImageButton.Name = "CustomButton";
    ImageButton.Parent = Frame;
    local UDim2_Value_3 = UDim2_New(1, -4, 1, -4);
    ImageButton.Size = UDim2_Value_3;
    local UDim2_Value_4 = UDim2_New(0.5, 0, 0.5, 0);
    ImageButton.Position = UDim2_Value_4;
    local Vector2_New = Vector2.new;
    local Vector2_Value = Vector2_New(0.5, 0.5);
    ImageButton.AnchorPoint = Vector2_Value;
    ImageButton.BackgroundTransparency = 1;
    ImageButton.Image = "rbxassetid://91742863926517";
    local UICorner_2 = Instance.new("UICorner");
    local UDim_Value_2 = UDim_New(1, 0);
    UICorner_2.CornerRadius = UDim_Value_2;
    UICorner_2.Parent = ImageButton;
    local UIStroke = Instance.new("UIStroke");
    UIStroke.Thickness = 2;
    local Color3_Value_3 = Color3_FromRGB(0, 255, 255);
    UIStroke.Color = Color3_Value_3;
    UIStroke.Parent = Frame;
    UIStroke.Enabled = false;
    local Image = ImageButton.Image;
    local PreloadAsync = ContentProvider:PreloadAsync({
        Image,
    }, function()

    end);
    local Size = ImageButton.Size;
    local Connection;
    Connection = ImageButton.InputBegan:Connect(function(Input) -- args: Input_2;
        local UserInputType = Input.UserInputType;
        local Enum_UserInputType = Enum.UserInputType;
        local MouseButton1 = Enum_UserInputType.MouseButton1;
        local var123 = (UserInputType == MouseButton1);
        local UserInputType_2 = Input.UserInputType;
        local Touch = Enum_UserInputType.Touch;
        local var125 = (UserInputType_2 == Touch);
        local var126 = (var123 or var125);

    end);
    local Connection_2;
    Connection_2 = ImageButton.InputChanged:Connect(function(Input_3) -- args: Input_4;
        local UserInputType_3 = Input_3.UserInputType;
        local MouseMovement = Enum_UserInputType.MouseMovement;
        local var128 = (UserInputType_3 == MouseMovement);
        local UserInputType_4 = Input_3.UserInputType;
        local Touch_2 = Enum_UserInputType.Touch;
        local var130 = (UserInputType_4 == Touch_2);
        local var131 = (var128 or var130);

    end);
    local Connection_3;
    Connection_3 = ImageButton.MouseEnter:Connect(function() -- args: X, Y;
        local TweenInfo = TweenInfo;
        local New = TweenInfo.new;
        local Enum_EasingStyle = Enum.EasingStyle;
        local Quad = Enum_EasingStyle.Quad;
        local Enum_EasingDirection = Enum.EasingDirection;
        local Out = Enum_EasingDirection.Out;
        local _call134 = New(0.2, Quad, Out);
        local UDim2_Value_6 = UDim2_New(1, -4.4, 1, -4.4);
        local str = TweenService:Create(ImageButton, _call134, {
            Size = UDim2_Value_6,
        });
        local Play = str.Play;
        local Play_2 = str:Play();

    end);
    local Connection_4;
    Connection_4 = ImageButton.MouseLeave:Connect(function() -- args: X_2, Y_2;
        local New_2 = TweenInfo.new;
        local Quad_2 = Enum_EasingStyle.Quad;
        local Out_2 = Enum_EasingDirection.Out;
        local _call138 = New_2(0.2, Quad_2, Out_2);
        local str_2 = TweenService:Create(ImageButton, _call138, {
            Size = Size,
        });
        local Play_3 = str_2.Play;
        local Play_4 = str_2:Play();

    end);
    local var4 = game:HttpGetAsync("https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/Fluent.luau");
    local var5 = loadstring(var4);
    local Loaded_Var4 = var5();
    local var6 = game:HttpGetAsync("https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/Addons/SaveManager.luau");
    local var7 = loadstring(var6);
    local _call8 = var7();
    local var9 = game:HttpGetAsync("https://raw.githubusercontent.com/angeryy-tvy/Fluent-Port-Vxeze/refs/heads/main/Addons/InterfaceManager.luau");
    local var10 = loadstring(var9);
    local _call11 = var10();
    local TouchEnabled = UserInputService.TouchEnabled;
    -- local _ = TouchEnabled and (unknown_value)
    local UDim2_FromOffset = UDim2.fromOffset;
    local UDim2_Value_5 = UDim2_FromOffset(580, 480);
    local Vector2_Value_2 = Vector2_New(470, 380);
    local Enum_KeyCode = Enum.KeyCode;
    local LeftControl = Enum_KeyCode.LeftControl;
    local CreateWindow = Loaded_Var4.CreateWindow;
    local Window = Loaded_Var4:CreateWindow({
        MinimizeKey = LeftControl,
        TabWidth = 160,
        SubTitle = "TESTING",
        Title = "Vxeze Hub | TheForge",
        Theme = "Dark",
        MinSize = Vector2_Value_2,
        Acrylic = true,
        Resize = true,
        Size = UDim2.new(0, 580, 0, 480),
    });
    local Connection_5;
    Connection_5 = ImageButton.MouseButton1Click:Connect(function()
        UIStroke.Enabled = true;
        local Success_4, Error_Message_4 = pcall(function(...)
            local Minimize = Window.Minimize;
            local Minimize_2 = Window:Minimize();
        end)

    end);
    local CreateTab = Window.CreateTab;
    local Tab = Window:CreateTab({
        Title = "Help",
        Icon = "info",
    });
    local CreateTab_2 = Window.CreateTab;
    local Tab_2 = Window:CreateTab({
        Title = "Home",
        Icon = "rbxassetid://7733960981",
    });
    local CreateTab_3 = Window.CreateTab;
    local Tab_3 = Window:CreateTab({
        Title = "Forge",
        Icon = "hammer",
    });
    local CreateTab_4 = Window.CreateTab;
    local Tab_4 = Window:CreateTab({
        Title = "Combat",
        Icon = "sword",
    });
    local CreateTab_5 = Window.CreateTab;
    local Tab_5 = Window:CreateTab({
        Title = "Farms",
        Icon = "leaf",
    });
    local CreateTab_6 = Window.CreateTab;
    local Tab_6 = Window:CreateTab({
        Title = "Monsters",
        Icon = "skull",
    });
    local CreateTab_7 = Window.CreateTab;
    local Tab_7 = Window:CreateTab({
        Title = "Sell",
        Icon = "dollar-sign",
    });
    local CreateTab_8 = Window.CreateTab;
    local Tab_8 = Window:CreateTab({
        Title = "Shop",
        Icon = "shopping-cart",
    });
    local CreateTab_9 = Window.CreateTab;
    local Tab_9 = Window:CreateTab({
        Title = "Quest",
        Icon = "map",
    });
    local CreateTab_10 = Window.CreateTab;
    local Tab_10 = Window:CreateTab({
        Title = "NPC",
        Icon = "user",
    });
    local CreateTab_11 = Window.CreateTab;
    local Tab_11 = Window:CreateTab({
        Title = "Mics",
        Icon = "code",
    });
    local CreateTab_12 = Window.CreateTab;
    local Tab_12 = Window:CreateTab({
        Title = "Settings",
        Icon = "settings",
    });
    local Options = Loaded_Var4.Options;
    local CreateSection = Tab.CreateSection;
    local TROUBLESHOOTING = Tab:CreateSection("TROUBLESHOOTING");
    local CreateParagraph = Tab.CreateParagraph;
    local HelpInfo = Tab:CreateParagraph("HelpInfo", {
        Title = "Missing HUD / UI not showing?",
        Content = "If you load the script and the HUD (User Interface) is missing or not visible, please update your executor to the latest version.\n\nNếu bạn load script và giao diện không hiển thị, hãy cập nhật executor lên phiên bản mới nhất.",
    });
    local CreateSection_2 = Tab.CreateSection;
    local SUPPORT = Tab:CreateSection("SUPPORT");
    local CreateButton = Tab.CreateButton;
    local Button = Tab:CreateButton({
        Callback = function()
            local setclipboard = setclipboard;
            if not setclipboard then return end -- won't run
            local _call141 = setclipboard("https://discord.gg/528xTUk9");
            local Notify = Loaded_Var4.Notify;
            local Notify_2 = Loaded_Var4:Notify({
                Duration = 5,
                Title = "Discord Link Copied!",
                Content = "Paste in browser: https://discord.gg/528xTUk9",
            });

        end,
        Title = "Join Discord: Vxeze Hub",
        Description = "Click to copy Discord invite link",
    });
    local One = Enum_KeyCode.One;
    local Two = Enum_KeyCode.Two;
    local Three = Enum_KeyCode.Three;
    local Four = Enum_KeyCode.Four;
    local Five = Enum_KeyCode.Five;
    local Six = Enum_KeyCode.Six;
    local Seven = Enum_KeyCode.Seven;
    local Eight = Enum_KeyCode.Eight;
    local Nine = Enum_KeyCode.Nine;
    local CreateDropdown = Tab_6.CreateDropdown;
    local MonsterSelect = Tab_6:CreateDropdown("MonsterSelect", {
        Title = "Monster Select",
        Default = {
            "Zombie",
        },
        Multi = true,
        Values = {
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
            "Blazing Slime",
        },
        Description = "Chọn loại Monster muốn highlight",
    });
    local CreateToggle = Tab_6.CreateToggle;
    local MonsterHighlight = Tab_6:CreateToggle("MonsterHighlight", {
        Default = false,
        Title = "Highlight Monster",
        Description = "Highlight Monster đã chọn",
    });
    local OnChanged = MonsterHighlight.OnChanged;
    local OnChanged_2 = MonsterHighlight:OnChanged(function()
        local MonsterHighlight_2 = Options.MonsterHighlight;
        local Value = MonsterHighlight_2.Value;
        if not Value then return end -- won't run
        local Not_Value = not Value;
        local Living = workspace:FindFirstChild("Living");
        if not Living then return end -- won't run
        local Children_3 = Living:GetChildren();
        for i_3, v_3 in pairs(Children_3) do
            local Name_10 = v_3.Name;
            local Gsub = Name_10.gsub;
            local d = Name_10:gsub("%d+", "");
        end

    end);
    local CreateToggle_2 = Tab_6.CreateToggle;
    local AutoMonsterFarm = Tab_6:CreateToggle("AutoMonsterFarm", {
        Default = false,
        Title = "Auto Farm Monster",
        Description = "Farm Monster đã chọn",
    });
    local CreateSection_3 = Tab_6.CreateSection;
    local MOB_INFO = Tab_6:CreateSection("MOB INFO");
    local Dictionary = {
        Chance = 3,
        Name = "Tiny Essence",
        Amount = "1-2",
    };
    local Name = Dictionary.Name;
    local Chance = Dictionary.Chance;
    local Amount = Dictionary.Amount;
    local var37 = Amount .. ")";
    local var38 = "% (Amount: " .. var37;
    local var39 = Chance .. var38;
    local var40 = ": " .. var39;
    local var41 = Name .. var40;
    local var42 = "\n- " .. var41;
    local var43 = "Drops của Zombie:" .. var42;
    local Dictionary_2 = {
        Chance = 3,
        Name = "Small Essence",
        Amount = "1-2",
    };
    local Chance_2 = Dictionary_2.Chance;
    local Amount_2 = Dictionary_2.Amount;
    local var44 = Amount_2 .. ")";
    local var45 = "% (Amount: " .. var44;
    local var46 = Chance_2 .. var45;
    local var47 = ": " .. var46;
    local var48 = "Small Essence" .. var47;
    local var49 = "\n- " .. var48;
    local var50 = var43 .. var49;
    local Dictionary_3 = {
        Chance = 6,
        Name = "Medium Essence",
        Amount = "1-2",
    };
    local Amount_3 = Dictionary_3.Amount;
    local var51 = Amount_3 .. ")";
    local var52 = "% (Amount: " .. var51;
    local var53 = 6 .. var52;
    local var54 = ": " .. var53;
    local var55 = "Medium Essence" .. var54;
    local var56 = "\n- " .. var55;
    local var57 = var50 .. var56;
    local CreateParagraph_2 = Tab_6.CreateParagraph;
    local MobInfo = Tab_6:CreateParagraph("MobInfo", {
        Title = "Thông tin Mob Drop",
        Content = var57,
    });
    local OnChanged_3 = MonsterSelect.OnChanged;
    local OnChanged_4 = MonsterSelect:OnChanged(function(p1_0)
        if not Value then return end -- won't run
        local Not_Value_2 = not Value;
        local Living_2 = workspace:FindFirstChild("Living");
        if not Living_2 then return end -- won't run
        local Children_4 = Living:GetChildren();
        for i_4, v_4 in pairs(Children_4) do
            local Name_11 = v_4.Name;
            local Gsub_2 = Name_11.gsub;
            local d_2 = Name_11:gsub("%d+", "");
            local var141 = p1_0[d_2];
            if not var141 then return end -- won't run
            local Array_3 = {};
            local var142 = table.insert(Array_3, v_4);
        end
        if not MobInfo then return end -- won't run
        for i_5, v_5 in pairs(p1_0) do
        end

    end);
    local CreateSection_4 = Tab_6.CreateSection;
    local AUTO_FARM_MATERIAL = Tab_6:CreateSection("AUTO FARM MATERIAL");
    local CreateDropdown_2 = Tab_6.CreateDropdown;
    local MaterialSelect = Tab_6:CreateDropdown("MaterialSelect", {
        Title = "Select Material",
        Default = "Tiny Essence",
        Multi = false,
        Values = {
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
            "Berserker_T1",
        },
        Description = "Chọn loại Material muốn farm",
    });
    local Name_2 = Dictionary.Name;
    local Name_2_is_string = (Name_2 == "Tiny Essence");
    local Name_3 = Dictionary_2.Name;
    local Name_3_is_string = (Name_3 == "Tiny Essence");
    local Name_4 = Dictionary_3.Name;
    local Name_4_is_string = (Name_4 == "Tiny Essence");
    local CreateDropdown_3 = Tab_6.CreateDropdown;
    local MaterialMonsterSelect = Tab_6:CreateDropdown("MaterialMonsterSelect", {
        Title = "Select Monsters to Farm",
        Default = {},
        Multi = true,
        Values = {
            "Zombie (0%)",
            "EliteZombie (100%)",
            "Delver Zombie (2%)",
            "Skeleton Rogue (2%)",
        },
        Description = "Chọn Monster muốn farm (theo drop rate)",
    });
    local CreateToggle_3 = Tab_6.CreateToggle;
    local AutoMaterialFarm = Tab_6:CreateToggle("AutoMaterialFarm", {
        Default = false,
        Title = "Auto Farm Material",
        Description = "Tự động farm Monster đã chọn để lấy Material",
    });
    local OnChanged_5 = MaterialSelect.OnChanged;
    local OnChanged_6 = MaterialSelect:OnChanged(function(p1_0)
        local SetValues = MaterialMonsterSelect.SetValues;
        local SetValues_2 = MaterialMonsterSelect:SetValues({});

    end);
    local OnChanged_7 = MaterialMonsterSelect.OnChanged;
    local OnChanged_8 = MaterialMonsterSelect:OnChanged(function(p1_0)
        local var143 = typeof(p1_0);
        local var143_is_string = (var143 == "table");
        if not var143_is_string then return end -- won't run
        for i_6, v_6 in pairs(p1_0) do
            if not v_6 then return end -- won't run
            local Match = i_6.match;
            local  = i_6:match("^(.+) %(");
            if not  then return end -- won't run
            local Array_4 = {};
            local var143 = table.insert(Array_4, );
        end

    end);
    local Spawned_2 = task.spawn(function()
        local Waited_For = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_3 = not Value;
        local Living_3 = workspace:FindFirstChild("Living");
        if not Living_3 then return end -- won't run
        local Children_5 = Living:GetChildren();
        for i_7, v_7 in pairs(Children_5) do
            local Name_12 = v_7.Name;
            local Gsub_3 = Name_12.gsub;
            local d_3 = Name_12:gsub("%d+", "");
            local var143 = p1_0[d_3];
        end
        local Waited_For_2 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_4 = not Value;
        local Living_4 = workspace:FindFirstChild("Living");
        if not Living_4 then return end -- won't run
        local Children_6 = Living:GetChildren();
        for i_8, v_8 in pairs(Children_6) do
            local Name_13 = v_8.Name;
            local Gsub_4 = Name_13.gsub;
            local d_4 = Name_13:gsub("%d+", "");
            local var143 = p1_0[d_4];
        end
        local Waited_For_3 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_5 = not Value;
        local Living_5 = workspace:FindFirstChild("Living");
        if not Living_5 then return end -- won't run
        local Children_7 = Living:GetChildren();
        for i_9, v_9 in pairs(Children_7) do
            local Name_14 = v_9.Name;
            local Gsub_5 = Name_14.gsub;
            local d_5 = Name_14:gsub("%d+", "");
            local var143 = p1_0[d_5];
        end
        local Waited_For_4 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_6 = not Value;
        local Living_6 = workspace:FindFirstChild("Living");
        if not Living_6 then return end -- won't run
        local Children_8 = Living:GetChildren();
        for i_10, v_10 in pairs(Children_8) do
            local Name_15 = v_10.Name;
            local Gsub_6 = Name_15.gsub;
            local d_6 = Name_15:gsub("%d+", "");
            local var143 = p1_0[d_6];
        end
        local Waited_For_5 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_7 = not Value;
        local Living_7 = workspace:FindFirstChild("Living");
        if not Living_7 then return end -- won't run
        local Children_9 = Living:GetChildren();
        for i_11, v_11 in pairs(Children_9) do
            local Name_16 = v_11.Name;
            local Gsub_7 = Name_16.gsub;
            local d_7 = Name_16:gsub("%d+", "");
            local var143 = p1_0[d_7];
        end
        local Waited_For_6 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_8 = not Value;
        local Living_8 = workspace:FindFirstChild("Living");
        if not Living_8 then return end -- won't run
        local Children_10 = Living:GetChildren();
        for i_12, v_12 in pairs(Children_10) do
            local Name_17 = v_12.Name;
            local Gsub_8 = Name_17.gsub;
            local d_8 = Name_17:gsub("%d+", "");
            local var143 = p1_0[d_8];
        end
        local Waited_For_7 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_9 = not Value;
        local Living_9 = workspace:FindFirstChild("Living");
        if not Living_9 then return end -- won't run
        local Children_11 = Living:GetChildren();
        for i_13, v_13 in pairs(Children_11) do
            local Name_18 = v_13.Name;
            local Gsub_9 = Name_18.gsub;
            local d_9 = Name_18:gsub("%d+", "");
            local var143 = p1_0[d_9];
        end
        local Waited_For_8 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_10 = not Value;
        local Living_10 = workspace:FindFirstChild("Living");
        if not Living_10 then return end -- won't run
        local Children_12 = Living:GetChildren();
        for i_14, v_14 in pairs(Children_12) do
            local Name_19 = v_14.Name;
            local Gsub_10 = Name_19.gsub;
            local d_10 = Name_19:gsub("%d+", "");
            local var143 = p1_0[d_10];
        end
        local Waited_For_9 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_11 = not Value;
        local Living_11 = workspace:FindFirstChild("Living");
        if not Living_11 then return end -- won't run
        local Children_13 = Living:GetChildren();
        for i_15, v_15 in pairs(Children_13) do
            local Name_20 = v_15.Name;
            local Gsub_11 = Name_20.gsub;
            local d_11 = Name_20:gsub("%d+", "");
            local var143 = p1_0[d_11];
        end
        local Waited_For_10 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_12 = not Value;
        local Living_12 = workspace:FindFirstChild("Living");
        if not Living_12 then return end -- won't run
        local Children_14 = Living:GetChildren();
        for i_16, v_16 in pairs(Children_14) do
            local Name_21 = v_16.Name;
            local Gsub_12 = Name_21.gsub;
            local d_12 = Name_21:gsub("%d+", "");
            local var143 = p1_0[d_12];
        end
        local Waited_For_11 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_13 = not Value;
        local Living_13 = workspace:FindFirstChild("Living");
        if not Living_13 then return end -- won't run
        local Children_15 = Living:GetChildren();
        for i_17, v_17 in pairs(Children_15) do
            local Name_22 = v_17.Name;
            local Gsub_13 = Name_22.gsub;
            local d_13 = Name_22:gsub("%d+", "");
            local var143 = p1_0[d_13];
        end
        local Waited_For_12 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_14 = not Value;
        local Living_14 = workspace:FindFirstChild("Living");
        if not Living_14 then return end -- won't run
        local Children_16 = Living:GetChildren();
        for i_18, v_18 in pairs(Children_16) do
            local Name_23 = v_18.Name;
            local Gsub_14 = Name_23.gsub;
            local d_14 = Name_23:gsub("%d+", "");
            local var143 = p1_0[d_14];
        end
        local Waited_For_13 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_15 = not Value;
        local Living_15 = workspace:FindFirstChild("Living");
        if not Living_15 then return end -- won't run
        local Children_17 = Living:GetChildren();
        for i_19, v_19 in pairs(Children_17) do
            local Name_24 = v_19.Name;
            local Gsub_15 = Name_24.gsub;
            local d_15 = Name_24:gsub("%d+", "");
            local var143 = p1_0[d_15];
        end
        local Waited_For_14 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_16 = not Value;
        local Living_16 = workspace:FindFirstChild("Living");
        if not Living_16 then return end -- won't run
        local Children_18 = Living:GetChildren();
        for i_20, v_20 in pairs(Children_18) do
            local Name_25 = v_20.Name;
            local Gsub_16 = Name_25.gsub;
            local d_16 = Name_25:gsub("%d+", "");
            local var143 = p1_0[d_16];
        end
        local Waited_For_15 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_17 = not Value;
        local Living_17 = workspace:FindFirstChild("Living");
        if not Living_17 then return end -- won't run
        local Children_19 = Living:GetChildren();
        for i_21, v_21 in pairs(Children_19) do
            local Name_26 = v_21.Name;
            local Gsub_17 = Name_26.gsub;
            local d_17 = Name_26:gsub("%d+", "");
            local var143 = p1_0[d_17];
        end
        local Waited_For_16 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_18 = not Value;
        local Living_18 = workspace:FindFirstChild("Living");
        if not Living_18 then return end -- won't run
        local Children_20 = Living:GetChildren();
        for i_22, v_22 in pairs(Children_20) do
            local Name_27 = v_22.Name;
            local Gsub_18 = Name_27.gsub;
            local d_18 = Name_27:gsub("%d+", "");
            local var143 = p1_0[d_18];
        end
        local Waited_For_17 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_19 = not Value;
        local Living_19 = workspace:FindFirstChild("Living");
        if not Living_19 then return end -- won't run
        local Children_21 = Living:GetChildren();
        for i_23, v_23 in pairs(Children_21) do
            local Name_28 = v_23.Name;
            local Gsub_19 = Name_28.gsub;
            local d_19 = Name_28:gsub("%d+", "");
            local var143 = p1_0[d_19];
        end
        local Waited_For_18 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_20 = not Value;
        local Living_20 = workspace:FindFirstChild("Living");
        if not Living_20 then return end -- won't run
        local Children_22 = Living:GetChildren();
        for i_24, v_24 in pairs(Children_22) do
            local Name_29 = v_24.Name;
            local Gsub_20 = Name_29.gsub;
            local d_20 = Name_29:gsub("%d+", "");
            local var143 = p1_0[d_20];
        end
        local Waited_For_19 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_21 = not Value;
        local Living_21 = workspace:FindFirstChild("Living");
        if not Living_21 then return end -- won't run
        local Children_23 = Living:GetChildren();
        for i_25, v_25 in pairs(Children_23) do
            local Name_30 = v_25.Name;
            local Gsub_21 = Name_30.gsub;
            local d_21 = Name_30:gsub("%d+", "");
            local var143 = p1_0[d_21];
        end
        local Waited_For_20 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_22 = not Value;
        local Living_22 = workspace:FindFirstChild("Living");
        if not Living_22 then return end -- won't run
        local Children_24 = Living:GetChildren();
        for i_26, v_26 in pairs(Children_24) do
            local Name_31 = v_26.Name;
            local Gsub_22 = Name_31.gsub;
            local d_22 = Name_31:gsub("%d+", "");
            local var143 = p1_0[d_22];
        end
        local Waited_For_21 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_23 = not Value;
        local Living_23 = workspace:FindFirstChild("Living");
        if not Living_23 then return end -- won't run
        local Children_25 = Living:GetChildren();
        for i_27, v_27 in pairs(Children_25) do
            local Name_32 = v_27.Name;
            local Gsub_23 = Name_32.gsub;
            local d_23 = Name_32:gsub("%d+", "");
            local var143 = p1_0[d_23];
        end
        local Waited_For_22 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_24 = not Value;
        local Living_24 = workspace:FindFirstChild("Living");
        if not Living_24 then return end -- won't run
        local Children_26 = Living:GetChildren();
        for i_28, v_28 in pairs(Children_26) do
            local Name_33 = v_28.Name;
            local Gsub_24 = Name_33.gsub;
            local d_24 = Name_33:gsub("%d+", "");
            local var143 = p1_0[d_24];
        end
        local Waited_For_23 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_25 = not Value;
        local Living_25 = workspace:FindFirstChild("Living");
        if not Living_25 then return end -- won't run
        local Children_27 = Living:GetChildren();
        for i_29, v_29 in pairs(Children_27) do
            local Name_34 = v_29.Name;
            local Gsub_25 = Name_34.gsub;
            local d_25 = Name_34:gsub("%d+", "");
            local var143 = p1_0[d_25];
        end
        local Waited_For_24 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_26 = not Value;
        local Living_26 = workspace:FindFirstChild("Living");
        if not Living_26 then return end -- won't run
        local Children_28 = Living:GetChildren();
        for i_30, v_30 in pairs(Children_28) do
            local Name_35 = v_30.Name;
            local Gsub_26 = Name_35.gsub;
            local d_26 = Name_35:gsub("%d+", "");
            local var143 = p1_0[d_26];
        end
        local Waited_For_25 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_27 = not Value;
        local Living_27 = workspace:FindFirstChild("Living");
        if not Living_27 then return end -- won't run
        local Children_29 = Living:GetChildren();
        for i_31, v_31 in pairs(Children_29) do
            local Name_36 = v_31.Name;
            local Gsub_27 = Name_36.gsub;
            local d_27 = Name_36:gsub("%d+", "");
            local var143 = p1_0[d_27];
        end
        local Waited_For_26 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_28 = not Value;
        local Living_28 = workspace:FindFirstChild("Living");
        if not Living_28 then return end -- won't run
        local Children_30 = Living:GetChildren();
        for i_32, v_32 in pairs(Children_30) do
            local Name_37 = v_32.Name;
            local Gsub_28 = Name_37.gsub;
            local d_28 = Name_37:gsub("%d+", "");
            local var143 = p1_0[d_28];
        end
        local Waited_For_27 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_29 = not Value;
        local Living_29 = workspace:FindFirstChild("Living");
        if not Living_29 then return end -- won't run
        local Children_31 = Living:GetChildren();
        for i_33, v_33 in pairs(Children_31) do
            local Name_38 = v_33.Name;
            local Gsub_29 = Name_38.gsub;
            local d_29 = Name_38:gsub("%d+", "");
            local var143 = p1_0[d_29];
        end
        local Waited_For_28 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_30 = not Value;
        local Living_30 = workspace:FindFirstChild("Living");
        if not Living_30 then return end -- won't run
        local Children_32 = Living:GetChildren();
        for i_34, v_34 in pairs(Children_32) do
            local Name_39 = v_34.Name;
            local Gsub_30 = Name_39.gsub;
            local d_30 = Name_39:gsub("%d+", "");
            local var143 = p1_0[d_30];
        end
        local Waited_For_29 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_31 = not Value;
        local Living_31 = workspace:FindFirstChild("Living");
        if not Living_31 then return end -- won't run
        local Children_33 = Living:GetChildren();
        for i_35, v_35 in pairs(Children_33) do
            local Name_40 = v_35.Name;
            local Gsub_31 = Name_40.gsub;
            local d_31 = Name_40:gsub("%d+", "");
            local var143 = p1_0[d_31];
        end
        local Waited_For_30 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_32 = not Value;
        local Living_32 = workspace:FindFirstChild("Living");
        if not Living_32 then return end -- won't run
        local Children_34 = Living:GetChildren();
        for i_36, v_36 in pairs(Children_34) do
            local Name_41 = v_36.Name;
            local Gsub_32 = Name_41.gsub;
            local d_32 = Name_41:gsub("%d+", "");
            local var143 = p1_0[d_32];
        end
        local Waited_For_31 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_33 = not Value;
        local Living_33 = workspace:FindFirstChild("Living");
        if not Living_33 then return end -- won't run
        local Children_35 = Living:GetChildren();
        for i_37, v_37 in pairs(Children_35) do
            local Name_42 = v_37.Name;
            local Gsub_33 = Name_42.gsub;
            local d_33 = Name_42:gsub("%d+", "");
            local var143 = p1_0[d_33];
        end
        local Waited_For_32 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_34 = not Value;
        local Living_34 = workspace:FindFirstChild("Living");
        if not Living_34 then return end -- won't run
        local Children_36 = Living:GetChildren();
        for i_38, v_38 in pairs(Children_36) do
            local Name_43 = v_38.Name;
            local Gsub_34 = Name_43.gsub;
            local d_34 = Name_43:gsub("%d+", "");
            local var143 = p1_0[d_34];
        end
        local Waited_For_33 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_35 = not Value;
        local Living_35 = workspace:FindFirstChild("Living");
        if not Living_35 then return end -- won't run
        local Children_37 = Living:GetChildren();
        for i_39, v_39 in pairs(Children_37) do
            local Name_44 = v_39.Name;
            local Gsub_35 = Name_44.gsub;
            local d_35 = Name_44:gsub("%d+", "");
            local var143 = p1_0[d_35];
        end
        local Waited_For_34 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_36 = not Value;
        local Living_36 = workspace:FindFirstChild("Living");
        if not Living_36 then return end -- won't run
        local Children_38 = Living:GetChildren();
        for i_40, v_40 in pairs(Children_38) do
            local Name_45 = v_40.Name;
            local Gsub_36 = Name_45.gsub;
            local d_36 = Name_45:gsub("%d+", "");
            local var143 = p1_0[d_36];
        end
        local Waited_For_35 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_37 = not Value;
        local Living_37 = workspace:FindFirstChild("Living");
        if not Living_37 then return end -- won't run
        local Children_39 = Living:GetChildren();
        for i_41, v_41 in pairs(Children_39) do
            local Name_46 = v_41.Name;
            local Gsub_37 = Name_46.gsub;
            local d_37 = Name_46:gsub("%d+", "");
            local var143 = p1_0[d_37];
        end
        local Waited_For_36 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_38 = not Value;
        local Living_38 = workspace:FindFirstChild("Living");
        if not Living_38 then return end -- won't run
        local Children_40 = Living:GetChildren();
        for i_42, v_42 in pairs(Children_40) do
            local Name_47 = v_42.Name;
            local Gsub_38 = Name_47.gsub;
            local d_38 = Name_47:gsub("%d+", "");
            local var143 = p1_0[d_38];
        end
        local Waited_For_37 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_39 = not Value;
        local Living_39 = workspace:FindFirstChild("Living");
        if not Living_39 then return end -- won't run
        local Children_41 = Living:GetChildren();
        for i_43, v_43 in pairs(Children_41) do
            local Name_48 = v_43.Name;
            local Gsub_39 = Name_48.gsub;
            local d_39 = Name_48:gsub("%d+", "");
            local var143 = p1_0[d_39];
        end
        local Waited_For_38 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_40 = not Value;
        local Living_40 = workspace:FindFirstChild("Living");
        if not Living_40 then return end -- won't run
        local Children_42 = Living:GetChildren();
        for i_44, v_44 in pairs(Children_42) do
            local Name_49 = v_44.Name;
            local Gsub_40 = Name_49.gsub;
            local d_40 = Name_49:gsub("%d+", "");
            local var143 = p1_0[d_40];
        end
        local Waited_For_39 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_41 = not Value;
        local Living_41 = workspace:FindFirstChild("Living");
        if not Living_41 then return end -- won't run
        local Children_43 = Living:GetChildren();
        for i_45, v_45 in pairs(Children_43) do
            local Name_50 = v_45.Name;
            local Gsub_41 = Name_50.gsub;
            local d_41 = Name_50:gsub("%d+", "");
            local var143 = p1_0[d_41];
        end
        local Waited_For_40 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_42 = not Value;
        local Living_42 = workspace:FindFirstChild("Living");
        if not Living_42 then return end -- won't run
        local Children_44 = Living:GetChildren();
        for i_46, v_46 in pairs(Children_44) do
            local Name_51 = v_46.Name;
            local Gsub_42 = Name_51.gsub;
            local d_42 = Name_51:gsub("%d+", "");
            local var143 = p1_0[d_42];
        end
        local Waited_For_41 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_43 = not Value;
        local Living_43 = workspace:FindFirstChild("Living");
        if not Living_43 then return end -- won't run
        local Children_45 = Living:GetChildren();
        for i_47, v_47 in pairs(Children_45) do
            local Name_52 = v_47.Name;
            local Gsub_43 = Name_52.gsub;
            local d_43 = Name_52:gsub("%d+", "");
            local var143 = p1_0[d_43];
        end
        local Waited_For_42 = task.wait(2);
        if not Value then return end -- won't run
        local Not_Value_44 = not Value;
        local Living_44 = workspace:FindFirstChild("Living");
        if not Living_44 then return end -- won't run
        local Children_46 = Living:GetChildren();
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:1691: C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local OnChanged_9 = AutoMonsterFarm.OnChanged;
    local OnChanged_10 = AutoMonsterFarm:OnChanged(function()
        local AutoMonsterFarm_2 = Options.AutoMonsterFarm;
        local Value_2 = AutoMonsterFarm_2.Value;
        local Character_4 = LocalPlayer.Character;
        if not Value_2 then return end -- won't run
        local Success_5, Error_Message_5 = pcall(function(...)
            local var144 = debug.setconstant;
            local var145 = (debug and nil);
            local setconstant = setconstant;
            local var146 = (var145 or setconstant);
            local var147 = debug.getconstants;
            local var148 = (debug and nil);
            local var149 = (var148 or nil);
            local Not_Var146 = not var146;
            local var150 = (Not_Var146 or false);
            local Not_Var149 = not var149;
            local var151 = (var150 or Not_Var149);
            if not var151 then return end -- won't run
            local Notify_3 = Loaded_Var4.Notify;
            local Notify_4 = Loaded_Var4:Notify({
                Duration = 3,
                Title = "Error",
                Content = "Exploit không hỗ trợ camera noclip",
            });
        end)
        if not Character_4 then return end -- won't run
        local HumanoidRootPart = Character_4:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart = not HumanoidRootPart;
        local BodyGyro = Instance.new("BodyGyro");
        local Vector3_Value_9 = Vector3_New(math.huge, math.huge, math.huge);
        BodyGyro.MaxTorque = Vector3_Value_9;
        BodyGyro.P = 1000000;
        BodyGyro.D = 100;
        BodyGyro.Parent = HumanoidRootPart;
        local BodyVelocity = Instance.new("BodyVelocity");
        local Vector3_Value_10 = Vector3_New(math.huge, math.huge, math.huge);
        BodyVelocity.MaxForce = Vector3_Value_10;
        local Vector3_Value_11 = Vector3_New(0, 0, 0);
        BodyVelocity.Velocity = Vector3_Value_11;
        BodyVelocity.Parent = HumanoidRootPart;
        local Connection_9;
        Connection_9 = RunService.Stepped:Connect(function() -- args: Time, DeltaTime;
            local Humanoid_135 = Character_4:FindFirstChild("Humanoid");
            local var771 = (Character_4 and Humanoid_135);
            if not var771 then return end -- won't run
            local Descendants_91 = Character_4:GetDescendants();
            for i_293, v_293 in pairs(Descendants_91) do
                local IsA_43 = v_293.IsA;
                local BasePart_33 = v_293:IsA("BasePart");
                if not BasePart_33 then return end -- won't run
                v_293.CanCollide = false;
            end

        end);
        local Humanoid_2 = Character_4:FindFirstChildOfClass("Humanoid");
        if not Humanoid_2 then return end -- won't run
        Humanoid_2.PlatformStand = true;
        local HumanoidRootPart_2 = Character_4:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_2 = not HumanoidRootPart_2;
        local Connection_10;
        Connection_10 = RunService.RenderStepped:Connect(function() -- args: DeltaTime_2;
            local Parent_2 = HumanoidRootPart.Parent;
            local var770 = (HumanoidRootPart_2 and Parent_2);
            if not var770 then return end -- won't run
            local Vector3_Value_19 = Vector3_New(0, 0, 0);
            HumanoidRootPart.Velocity = Vector3_Value_19;
            local Vector3_Value_20 = Vector3_New(0, 0, 0);
            HumanoidRootPart.RotVelocity = Vector3_Value_20;

        end);

    end);
    local Spawned_3 = task.spawn(function()
        local Waited_For_43 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_6, Error_Message_6 = pcall(function(...)
            local Character_5 = LocalPlayer.Character;
            if not Character_5 then return end -- won't run
            local Humanoid_3 = Character_5:FindFirstChildOfClass("Humanoid");
            if not Humanoid_3 then return end -- won't run
            Humanoid_3.PlatformStand = true;
            local Living_45 = workspace:FindFirstChild("Living");
            if not Living_45 then return end -- won't run
            local Children_47 = Living:GetChildren();
            for i_48, v_48 in pairs(Children_47) do
                local Name_53 = v_48.Name;
                local Gsub_44 = Name_53.gsub;
                local d_44 = Name_53:gsub("%d+", "");
                local var150 = p1_0[d_44];
            end
            local Character_6 = LocalPlayer.Character;
            local Not_Character_6 = not Character_6;
            local HumanoidRootPart_3 = Character_6:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_3 = not HumanoidRootPart_3;
            local Position = HumanoidRootPart_3.Position;
        end)
        local Waited_For_44 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_7, Error_Message_7 = pcall(function(...)
            local Character_7 = LocalPlayer.Character;
            if not Character_7 then return end -- won't run
            local Humanoid_4 = Character_7:FindFirstChildOfClass("Humanoid");
            if not Humanoid_4 then return end -- won't run
            Humanoid_4.PlatformStand = true;
            local Living_46 = workspace:FindFirstChild("Living");
            if not Living_46 then return end -- won't run
            local Children_48 = Living:GetChildren();
            for i_49, v_49 in pairs(Children_48) do
                local Name_54 = v_49.Name;
                local Gsub_45 = Name_54.gsub;
                local d_45 = Name_54:gsub("%d+", "");
                local var149 = p1_0[d_45];
            end
            local Character_8 = LocalPlayer.Character;
            local Not_Character_8 = not Character_8;
            local HumanoidRootPart_4 = Character_8:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_4 = not HumanoidRootPart_4;
            local Position_2 = HumanoidRootPart_4.Position;
        end)
        local Waited_For_45 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_8, Error_Message_8 = pcall(function(...)
            local Character_9 = LocalPlayer.Character;
            if not Character_9 then return end -- won't run
            local Humanoid_5 = Character_9:FindFirstChildOfClass("Humanoid");
            if not Humanoid_5 then return end -- won't run
            Humanoid_5.PlatformStand = true;
            local Living_47 = workspace:FindFirstChild("Living");
            if not Living_47 then return end -- won't run
            local Children_49 = Living:GetChildren();
            for i_50, v_50 in pairs(Children_49) do
                local Name_55 = v_50.Name;
                local Gsub_46 = Name_55.gsub;
                local d_46 = Name_55:gsub("%d+", "");
                local var148 = p1_0[d_46];
            end
            local Character_10 = LocalPlayer.Character;
            local Not_Character_10 = not Character_10;
            local HumanoidRootPart_5 = Character_10:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_5 = not HumanoidRootPart_5;
            local Position_3 = HumanoidRootPart_5.Position;
        end)
        local Waited_For_46 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_9, Error_Message_9 = pcall(function(...)
            local Character_11 = LocalPlayer.Character;
            if not Character_11 then return end -- won't run
            local Humanoid_6 = Character_11:FindFirstChildOfClass("Humanoid");
            if not Humanoid_6 then return end -- won't run
            Humanoid_6.PlatformStand = true;
            local Living_48 = workspace:FindFirstChild("Living");
            if not Living_48 then return end -- won't run
            local Children_50 = Living:GetChildren();
            for i_51, v_51 in pairs(Children_50) do
                local Name_56 = v_51.Name;
                local Gsub_47 = Name_56.gsub;
                local d_47 = Name_56:gsub("%d+", "");
                local var147 = p1_0[d_47];
                if not var147 then return end -- won't run
                local Array_5 = {};
                local var148 = table.insert(Array_5, v_51);
            end
            local Character_12 = LocalPlayer.Character;
            local Not_Character_12 = not Character_12;
            local HumanoidRootPart_6 = Character_12:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_6 = not HumanoidRootPart_6;
            local Position_4 = HumanoidRootPart_6.Position;
        end)
        local Waited_For_47 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_10, Error_Message_10 = pcall(function(...)
            local Character_13 = LocalPlayer.Character;
            if not Character_13 then return end -- won't run
            local Humanoid_7 = Character_13:FindFirstChildOfClass("Humanoid");
            if not Humanoid_7 then return end -- won't run
            Humanoid_7.PlatformStand = true;
            local Living_49 = workspace:FindFirstChild("Living");
            if not Living_49 then return end -- won't run
            local Children_51 = Living:GetChildren();
            for i_52, v_52 in pairs(Children_51) do
                local Name_57 = v_52.Name;
                local Gsub_48 = Name_57.gsub;
                local d_48 = Name_57:gsub("%d+", "");
                local var147 = p1_0[d_48];
                if not var147 then return end -- won't run
                local Array_6 = {};
                local var148 = table.insert(Array_6, v_52);
            end
            local Character_14 = LocalPlayer.Character;
            local Not_Character_14 = not Character_14;
            local HumanoidRootPart_7 = Character_14:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_7 = not HumanoidRootPart_7;
            local Position_5 = HumanoidRootPart_7.Position;
        end)
        local Waited_For_48 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_11, Error_Message_11 = pcall(function(...)
            local Character_15 = LocalPlayer.Character;
            if not Character_15 then return end -- won't run
            local Humanoid_8 = Character_15:FindFirstChildOfClass("Humanoid");
            if not Humanoid_8 then return end -- won't run
            Humanoid_8.PlatformStand = true;
            local Living_50 = workspace:FindFirstChild("Living");
            if not Living_50 then return end -- won't run
            local Children_52 = Living:GetChildren();
            for i_53, v_53 in pairs(Children_52) do
                local Name_58 = v_53.Name;
                local Gsub_49 = Name_58.gsub;
                local d_49 = Name_58:gsub("%d+", "");
                local var147 = p1_0[d_49];
                if not var147 then return end -- won't run
                local Array_7 = {};
                local var148 = table.insert(Array_7, v_53);
            end
            local Character_16 = LocalPlayer.Character;
            local Not_Character_16 = not Character_16;
            local HumanoidRootPart_8 = Character_16:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_8 = not HumanoidRootPart_8;
            local Position_6 = HumanoidRootPart_8.Position;
        end)
        local Waited_For_49 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_12, Error_Message_12 = pcall(function(...)
            local Character_17 = LocalPlayer.Character;
            if not Character_17 then return end -- won't run
            local Humanoid_9 = Character_17:FindFirstChildOfClass("Humanoid");
            if not Humanoid_9 then return end -- won't run
            Humanoid_9.PlatformStand = true;
            local Living_51 = workspace:FindFirstChild("Living");
            if not Living_51 then return end -- won't run
            local Children_53 = Living:GetChildren();
            for i_54, v_54 in pairs(Children_53) do
                local Name_59 = v_54.Name;
                local Gsub_50 = Name_59.gsub;
                local d_50 = Name_59:gsub("%d+", "");
                local var147 = p1_0[d_50];
                if not var147 then return end -- won't run
                local Array_8 = {};
                local var148 = table.insert(Array_8, v_54);
            end
            local Character_18 = LocalPlayer.Character;
            local Not_Character_18 = not Character_18;
            local HumanoidRootPart_9 = Character_18:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_9 = not HumanoidRootPart_9;
            local Position_7 = HumanoidRootPart_9.Position;
        end)
        local Waited_For_50 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_13, Error_Message_13 = pcall(function(...)
            local Character_19 = LocalPlayer.Character;
            if not Character_19 then return end -- won't run
            local Humanoid_10 = Character_19:FindFirstChildOfClass("Humanoid");
            if not Humanoid_10 then return end -- won't run
            Humanoid_10.PlatformStand = true;
            local Living_52 = workspace:FindFirstChild("Living");
            if not Living_52 then return end -- won't run
            local Children_54 = Living:GetChildren();
            for i_55, v_55 in pairs(Children_54) do
                local Name_60 = v_55.Name;
                local Gsub_51 = Name_60.gsub;
                local d_51 = Name_60:gsub("%d+", "");
                local var147 = p1_0[d_51];
                if not var147 then return end -- won't run
                local Array_9 = {};
                local var148 = table.insert(Array_9, v_55);
            end
            local Character_20 = LocalPlayer.Character;
            local Not_Character_20 = not Character_20;
            local HumanoidRootPart_10 = Character_20:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_10 = not HumanoidRootPart_10;
            local Position_8 = HumanoidRootPart_10.Position;
        end)
        local Waited_For_51 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_14, Error_Message_14 = pcall(function(...)
            local Character_21 = LocalPlayer.Character;
            if not Character_21 then return end -- won't run
            local Humanoid_11 = Character_21:FindFirstChildOfClass("Humanoid");
            if not Humanoid_11 then return end -- won't run
            Humanoid_11.PlatformStand = true;
            local Living_53 = workspace:FindFirstChild("Living");
            if not Living_53 then return end -- won't run
            local Children_55 = Living:GetChildren();
            for i_56, v_56 in pairs(Children_55) do
                local Name_61 = v_56.Name;
                local Gsub_52 = Name_61.gsub;
                local d_52 = Name_61:gsub("%d+", "");
                local var147 = p1_0[d_52];
                if not var147 then return end -- won't run
                local Array_10 = {};
                local var148 = table.insert(Array_10, v_56);
            end
            local Character_22 = LocalPlayer.Character;
            local Not_Character_22 = not Character_22;
            local HumanoidRootPart_11 = Character_22:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_11 = not HumanoidRootPart_11;
            local Position_9 = HumanoidRootPart_11.Position;
        end)
        local Waited_For_52 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_15, Error_Message_15 = pcall(function(...)
            local Character_23 = LocalPlayer.Character;
            if not Character_23 then return end -- won't run
            local Humanoid_12 = Character_23:FindFirstChildOfClass("Humanoid");
            if not Humanoid_12 then return end -- won't run
            Humanoid_12.PlatformStand = true;
            local Living_54 = workspace:FindFirstChild("Living");
            if not Living_54 then return end -- won't run
            local Children_56 = Living:GetChildren();
            for i_57, v_57 in pairs(Children_56) do
                local Name_62 = v_57.Name;
                local Gsub_53 = Name_62.gsub;
                local d_53 = Name_62:gsub("%d+", "");
                local var147 = p1_0[d_53];
                if not var147 then return end -- won't run
                local Array_11 = {};
                local var148 = table.insert(Array_11, v_57);
            end
            local Character_24 = LocalPlayer.Character;
            local Not_Character_24 = not Character_24;
            local HumanoidRootPart_12 = Character_24:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_12 = not HumanoidRootPart_12;
            local Position_10 = HumanoidRootPart_12.Position;
        end)
        local Waited_For_53 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_16, Error_Message_16 = pcall(function(...)
            local Character_25 = LocalPlayer.Character;
            if not Character_25 then return end -- won't run
            local Humanoid_13 = Character_25:FindFirstChildOfClass("Humanoid");
            if not Humanoid_13 then return end -- won't run
            Humanoid_13.PlatformStand = true;
            local Living_55 = workspace:FindFirstChild("Living");
            if not Living_55 then return end -- won't run
            local Children_57 = Living:GetChildren();
            for i_58, v_58 in pairs(Children_57) do
                local Name_63 = v_58.Name;
                local Gsub_54 = Name_63.gsub;
                local d_54 = Name_63:gsub("%d+", "");
                local var147 = p1_0[d_54];
                if not var147 then return end -- won't run
                local Array_12 = {};
                local var148 = table.insert(Array_12, v_58);
            end
            local Character_26 = LocalPlayer.Character;
            local Not_Character_26 = not Character_26;
            local HumanoidRootPart_13 = Character_26:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_13 = not HumanoidRootPart_13;
            local Position_11 = HumanoidRootPart_13.Position;
        end)
        local Waited_For_54 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_17, Error_Message_17 = pcall(function(...)
            local Character_27 = LocalPlayer.Character;
            if not Character_27 then return end -- won't run
            local Humanoid_14 = Character_27:FindFirstChildOfClass("Humanoid");
            if not Humanoid_14 then return end -- won't run
            Humanoid_14.PlatformStand = true;
            local Living_56 = workspace:FindFirstChild("Living");
            if not Living_56 then return end -- won't run
            local Children_58 = Living:GetChildren();
            for i_59, v_59 in pairs(Children_58) do
                local Name_64 = v_59.Name;
                local Gsub_55 = Name_64.gsub;
                local d_55 = Name_64:gsub("%d+", "");
                local var147 = p1_0[d_55];
                if not var147 then return end -- won't run
                local Array_13 = {};
                local var148 = table.insert(Array_13, v_59);
            end
            local Character_28 = LocalPlayer.Character;
            local Not_Character_28 = not Character_28;
            local HumanoidRootPart_14 = Character_28:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_14 = not HumanoidRootPart_14;
            local Position_12 = HumanoidRootPart_14.Position;
        end)
        local Waited_For_55 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_18, Error_Message_18 = pcall(function(...)
            local Character_29 = LocalPlayer.Character;
            if not Character_29 then return end -- won't run
            local Humanoid_15 = Character_29:FindFirstChildOfClass("Humanoid");
            if not Humanoid_15 then return end -- won't run
            Humanoid_15.PlatformStand = true;
            local Living_57 = workspace:FindFirstChild("Living");
            if not Living_57 then return end -- won't run
            local Children_59 = Living:GetChildren();
            for i_60, v_60 in pairs(Children_59) do
                local Name_65 = v_60.Name;
                local Gsub_56 = Name_65.gsub;
                local d_56 = Name_65:gsub("%d+", "");
                local var147 = p1_0[d_56];
                if not var147 then return end -- won't run
                local Array_14 = {};
                local var148 = table.insert(Array_14, v_60);
            end
            local Character_30 = LocalPlayer.Character;
            local Not_Character_30 = not Character_30;
            local HumanoidRootPart_15 = Character_30:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_15 = not HumanoidRootPart_15;
            local Position_13 = HumanoidRootPart_15.Position;
        end)
        local Waited_For_56 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_19, Error_Message_19 = pcall(function(...)
            local Character_31 = LocalPlayer.Character;
            if not Character_31 then return end -- won't run
            local Humanoid_16 = Character_31:FindFirstChildOfClass("Humanoid");
            if not Humanoid_16 then return end -- won't run
            Humanoid_16.PlatformStand = true;
            local Living_58 = workspace:FindFirstChild("Living");
            if not Living_58 then return end -- won't run
            local Children_60 = Living:GetChildren();
            for i_61, v_61 in pairs(Children_60) do
                local Name_66 = v_61.Name;
                local Gsub_57 = Name_66.gsub;
                local d_57 = Name_66:gsub("%d+", "");
                local var147 = p1_0[d_57];
                if not var147 then return end -- won't run
                local Array_15 = {};
                local var148 = table.insert(Array_15, v_61);
            end
            local Character_32 = LocalPlayer.Character;
            local Not_Character_32 = not Character_32;
            local HumanoidRootPart_16 = Character_32:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_16 = not HumanoidRootPart_16;
            local Position_14 = HumanoidRootPart_16.Position;
        end)
        local Waited_For_57 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_20, Error_Message_20 = pcall(function(...)
            local Character_33 = LocalPlayer.Character;
            if not Character_33 then return end -- won't run
            local Humanoid_17 = Character_33:FindFirstChildOfClass("Humanoid");
            if not Humanoid_17 then return end -- won't run
            Humanoid_17.PlatformStand = true;
            local Living_59 = workspace:FindFirstChild("Living");
            if not Living_59 then return end -- won't run
            local Children_61 = Living:GetChildren();
            for i_62, v_62 in pairs(Children_61) do
                local Name_67 = v_62.Name;
                local Gsub_58 = Name_67.gsub;
                local d_58 = Name_67:gsub("%d+", "");
                local var147 = p1_0[d_58];
                if not var147 then return end -- won't run
                local Array_16 = {};
                local var148 = table.insert(Array_16, v_62);
            end
            local Character_34 = LocalPlayer.Character;
            local Not_Character_34 = not Character_34;
            local HumanoidRootPart_17 = Character_34:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_17 = not HumanoidRootPart_17;
            local Position_15 = HumanoidRootPart_17.Position;
        end)
        local Waited_For_58 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_21, Error_Message_21 = pcall(function(...)
            local Character_35 = LocalPlayer.Character;
            if not Character_35 then return end -- won't run
            local Humanoid_18 = Character_35:FindFirstChildOfClass("Humanoid");
            if not Humanoid_18 then return end -- won't run
            Humanoid_18.PlatformStand = true;
            local Living_60 = workspace:FindFirstChild("Living");
            if not Living_60 then return end -- won't run
            local Children_62 = Living:GetChildren();
            for i_63, v_63 in pairs(Children_62) do
                local Name_68 = v_63.Name;
                local Gsub_59 = Name_68.gsub;
                local d_59 = Name_68:gsub("%d+", "");
                local var147 = p1_0[d_59];
                if not var147 then return end -- won't run
                local Array_17 = {};
                local var148 = table.insert(Array_17, v_63);
            end
            local Character_36 = LocalPlayer.Character;
            local Not_Character_36 = not Character_36;
            local HumanoidRootPart_18 = Character_36:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_18 = not HumanoidRootPart_18;
            local Position_16 = HumanoidRootPart_18.Position;
        end)
        local Waited_For_59 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_22, Error_Message_22 = pcall(function(...)
            local Character_37 = LocalPlayer.Character;
            if not Character_37 then return end -- won't run
            local Humanoid_19 = Character_37:FindFirstChildOfClass("Humanoid");
            if not Humanoid_19 then return end -- won't run
            Humanoid_19.PlatformStand = true;
            local Living_61 = workspace:FindFirstChild("Living");
            if not Living_61 then return end -- won't run
            local Children_63 = Living:GetChildren();
            for i_64, v_64 in pairs(Children_63) do
                local Name_69 = v_64.Name;
                local Gsub_60 = Name_69.gsub;
                local d_60 = Name_69:gsub("%d+", "");
                local var147 = p1_0[d_60];
                if not var147 then return end -- won't run
                local Array_18 = {};
                local var148 = table.insert(Array_18, v_64);
            end
            local Character_38 = LocalPlayer.Character;
            local Not_Character_38 = not Character_38;
            local HumanoidRootPart_19 = Character_38:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_19 = not HumanoidRootPart_19;
            local Position_17 = HumanoidRootPart_19.Position;
        end)
        local Waited_For_60 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_23, Error_Message_23 = pcall(function(...)
            local Character_39 = LocalPlayer.Character;
            if not Character_39 then return end -- won't run
            local Humanoid_20 = Character_39:FindFirstChildOfClass("Humanoid");
            if not Humanoid_20 then return end -- won't run
            Humanoid_20.PlatformStand = true;
            local Living_62 = workspace:FindFirstChild("Living");
            if not Living_62 then return end -- won't run
            local Children_64 = Living:GetChildren();
            for i_65, v_65 in pairs(Children_64) do
                local Name_70 = v_65.Name;
                local Gsub_61 = Name_70.gsub;
                local d_61 = Name_70:gsub("%d+", "");
                local var147 = p1_0[d_61];
                if not var147 then return end -- won't run
                local Array_19 = {};
                local var148 = table.insert(Array_19, v_65);
            end
            local Character_40 = LocalPlayer.Character;
            local Not_Character_40 = not Character_40;
            local HumanoidRootPart_20 = Character_40:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_20 = not HumanoidRootPart_20;
            local Position_18 = HumanoidRootPart_20.Position;
        end)
        local Waited_For_61 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_24, Error_Message_24 = pcall(function(...)
            local Character_41 = LocalPlayer.Character;
            if not Character_41 then return end -- won't run
            local Humanoid_21 = Character_41:FindFirstChildOfClass("Humanoid");
            if not Humanoid_21 then return end -- won't run
            Humanoid_21.PlatformStand = true;
            local Living_63 = workspace:FindFirstChild("Living");
            if not Living_63 then return end -- won't run
            local Children_65 = Living:GetChildren();
            for i_66, v_66 in pairs(Children_65) do
                local Name_71 = v_66.Name;
                local Gsub_62 = Name_71.gsub;
                local d_62 = Name_71:gsub("%d+", "");
                local var147 = p1_0[d_62];
                if not var147 then return end -- won't run
                local Array_20 = {};
                local var148 = table.insert(Array_20, v_66);
            end
            local Character_42 = LocalPlayer.Character;
            local Not_Character_42 = not Character_42;
            local HumanoidRootPart_21 = Character_42:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_21 = not HumanoidRootPart_21;
            local Position_19 = HumanoidRootPart_21.Position;
        end)
        local Waited_For_62 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_25, Error_Message_25 = pcall(function(...)
            local Character_43 = LocalPlayer.Character;
            if not Character_43 then return end -- won't run
            local Humanoid_22 = Character_43:FindFirstChildOfClass("Humanoid");
            if not Humanoid_22 then return end -- won't run
            Humanoid_22.PlatformStand = true;
            local Living_64 = workspace:FindFirstChild("Living");
            if not Living_64 then return end -- won't run
            local Children_66 = Living:GetChildren();
            for i_67, v_67 in pairs(Children_66) do
                local Name_72 = v_67.Name;
                local Gsub_63 = Name_72.gsub;
                local d_63 = Name_72:gsub("%d+", "");
                local var147 = p1_0[d_63];
                if not var147 then return end -- won't run
                local Array_21 = {};
                local var148 = table.insert(Array_21, v_67);
            end
            local Character_44 = LocalPlayer.Character;
            local Not_Character_44 = not Character_44;
            local HumanoidRootPart_22 = Character_44:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_22 = not HumanoidRootPart_22;
            local Position_20 = HumanoidRootPart_22.Position;
        end)
        local Waited_For_63 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_26, Error_Message_26 = pcall(function(...)
            local Character_45 = LocalPlayer.Character;
            if not Character_45 then return end -- won't run
            local Humanoid_23 = Character_45:FindFirstChildOfClass("Humanoid");
            if not Humanoid_23 then return end -- won't run
            Humanoid_23.PlatformStand = true;
            local Living_65 = workspace:FindFirstChild("Living");
            if not Living_65 then return end -- won't run
            local Children_67 = Living:GetChildren();
            for i_68, v_68 in pairs(Children_67) do
                local Name_73 = v_68.Name;
                local Gsub_64 = Name_73.gsub;
                local d_64 = Name_73:gsub("%d+", "");
                local var147 = p1_0[d_64];
                if not var147 then return end -- won't run
                local Array_22 = {};
                local var148 = table.insert(Array_22, v_68);
            end
            local Character_46 = LocalPlayer.Character;
            local Not_Character_46 = not Character_46;
            local HumanoidRootPart_23 = Character_46:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_23 = not HumanoidRootPart_23;
            local Position_21 = HumanoidRootPart_23.Position;
        end)
        local Waited_For_64 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_27, Error_Message_27 = pcall(function(...)
            local Character_47 = LocalPlayer.Character;
            if not Character_47 then return end -- won't run
            local Humanoid_24 = Character_47:FindFirstChildOfClass("Humanoid");
            if not Humanoid_24 then return end -- won't run
            Humanoid_24.PlatformStand = true;
            local Living_66 = workspace:FindFirstChild("Living");
            if not Living_66 then return end -- won't run
            local Children_68 = Living:GetChildren();
            for i_69, v_69 in pairs(Children_68) do
                local Name_74 = v_69.Name;
                local Gsub_65 = Name_74.gsub;
                local d_65 = Name_74:gsub("%d+", "");
                local var147 = p1_0[d_65];
                if not var147 then return end -- won't run
                local Array_23 = {};
                local var148 = table.insert(Array_23, v_69);
            end
            local Character_48 = LocalPlayer.Character;
            local Not_Character_48 = not Character_48;
            local HumanoidRootPart_24 = Character_48:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_24 = not HumanoidRootPart_24;
            local Position_22 = HumanoidRootPart_24.Position;
        end)
        local Waited_For_65 = task.wait(0.1);
        if not Value_2 then return end -- won't run
        local Success_28, Error_Message_28 = pcall(function(...)
            local Character_49 = LocalPlayer.Character;
            if not Character_49 then return end -- won't run
            local Humanoid_25 = Character_49:FindFirstChildOfClass("Humanoid");
            if not Humanoid_25 then return end -- won't run
            Humanoid_25.PlatformStand = true;
            local Living_67 = workspace:FindFirstChild("Living");
            if not Living_67 then return end -- won't run
            local Children_69 = Living:GetChildren();
            for i_70, v_70 in pairs(Children_69) do
                local Name_75 = v_70.Name;
                local Gsub_66 = Name_75.gsub;
                local d_66 = Name_75:gsub("%d+", "");
                local var147 = p1_0[d_66];
                if not var147 then return end -- won't run
                local Array_24 = {};
                local var148 = table.insert(Array_24, v_70);
            end
            local Character_50 = LocalPlayer.Character;
            local Not_Character_50 = not Character_50;
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local OnChanged_11 = AutoMaterialFarm.OnChanged;
    local OnChanged_12 = AutoMaterialFarm:OnChanged(function()
        local AutoMaterialFarm_2 = Options.AutoMaterialFarm;
        local Value_3 = AutoMaterialFarm_2.Value;
        local Character_51 = LocalPlayer.Character;
        if not Value_3 then return end -- won't run
        local Len_Array_4 = #Array_4;
        local var149 = (Len_Array_4 == 0);
        if not var149 then return end -- won't run
        local Notify_5 = Loaded_Var4.Notify;
        local Notify_6 = Loaded_Var4:Notify({
            Duration = 3,
            Title = "Warning",
            Content = "Vui lòng chọn ít nhất 1 monster để farm!",
        });
        local AutoMaterialFarm_3 = Options.AutoMaterialFarm;
        local SetValue = AutoMaterialFarm_3.SetValue;
        local SetValue_2 = AutoMaterialFarm_3:SetValue(false);

    end);
    local Spawned_4 = task.spawn(function()
        local Waited_For_66 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_29, Error_Message_29 = pcall(function(...)
            local Character_52 = LocalPlayer.Character;
            if not Character_52 then return end -- won't run
            local Humanoid_26 = Character_52:FindFirstChildOfClass("Humanoid");
            if not Humanoid_26 then return end -- won't run
            Humanoid_26.PlatformStand = true;
            local Living_68 = workspace:FindFirstChild("Living");
            if not Living_68 then return end -- won't run
            local Children_70 = Living:GetChildren();
            for i_71, v_71 in pairs(Children_70) do
                local Name_76 = v_71.Name;
                local Gsub_67 = Name_76.gsub;
                local d_67 = Name_76:gsub("%d+", "");
            end
            local Character_53 = LocalPlayer.Character;
            local Not_Character_53 = not Character_53;
            local HumanoidRootPart_25 = Character_53:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_25 = not HumanoidRootPart_25;
            local Position_23 = HumanoidRootPart_25.Position;
        end)
        local Waited_For_67 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_30, Error_Message_30 = pcall(function(...)
            local Character_54 = LocalPlayer.Character;
            if not Character_54 then return end -- won't run
            local Humanoid_27 = Character_54:FindFirstChildOfClass("Humanoid");
            if not Humanoid_27 then return end -- won't run
            Humanoid_27.PlatformStand = true;
            local Living_69 = workspace:FindFirstChild("Living");
            if not Living_69 then return end -- won't run
            local Children_71 = Living:GetChildren();
            for i_72, v_72 in pairs(Children_71) do
                local Name_77 = v_72.Name;
                local Gsub_68 = Name_77.gsub;
                local d_68 = Name_77:gsub("%d+", "");
            end
            local Character_55 = LocalPlayer.Character;
            local Not_Character_55 = not Character_55;
            local HumanoidRootPart_26 = Character_55:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_26 = not HumanoidRootPart_26;
            local Position_24 = HumanoidRootPart_26.Position;
        end)
        local Waited_For_68 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_31, Error_Message_31 = pcall(function(...)
            local Character_56 = LocalPlayer.Character;
            if not Character_56 then return end -- won't run
            local Humanoid_28 = Character_56:FindFirstChildOfClass("Humanoid");
            if not Humanoid_28 then return end -- won't run
            Humanoid_28.PlatformStand = true;
            local Living_70 = workspace:FindFirstChild("Living");
            if not Living_70 then return end -- won't run
            local Children_72 = Living:GetChildren();
            for i_73, v_73 in pairs(Children_72) do
                local Name_78 = v_73.Name;
                local Gsub_69 = Name_78.gsub;
                local d_69 = Name_78:gsub("%d+", "");
            end
            local Character_57 = LocalPlayer.Character;
            local Not_Character_57 = not Character_57;
            local HumanoidRootPart_27 = Character_57:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_27 = not HumanoidRootPart_27;
            local Position_25 = HumanoidRootPart_27.Position;
        end)
        local Waited_For_69 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_32, Error_Message_32 = pcall(function(...)
            local Character_58 = LocalPlayer.Character;
            if not Character_58 then return end -- won't run
            local Humanoid_29 = Character_58:FindFirstChildOfClass("Humanoid");
            if not Humanoid_29 then return end -- won't run
            Humanoid_29.PlatformStand = true;
            local Living_71 = workspace:FindFirstChild("Living");
            if not Living_71 then return end -- won't run
            local Children_73 = Living:GetChildren();
            for i_74, v_74 in pairs(Children_73) do
                local Name_79 = v_74.Name;
                local Gsub_70 = Name_79.gsub;
                local d_70 = Name_79:gsub("%d+", "");
            end
            local Character_59 = LocalPlayer.Character;
            local Not_Character_59 = not Character_59;
            local HumanoidRootPart_28 = Character_59:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_28 = not HumanoidRootPart_28;
            local Position_26 = HumanoidRootPart_28.Position;
        end)
        local Waited_For_70 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_33, Error_Message_33 = pcall(function(...)
            local Character_60 = LocalPlayer.Character;
            if not Character_60 then return end -- won't run
            local Humanoid_30 = Character_60:FindFirstChildOfClass("Humanoid");
            if not Humanoid_30 then return end -- won't run
            Humanoid_30.PlatformStand = true;
            local Living_72 = workspace:FindFirstChild("Living");
            if not Living_72 then return end -- won't run
            local Children_74 = Living:GetChildren();
            for i_75, v_75 in pairs(Children_74) do
                local Name_80 = v_75.Name;
                local Gsub_71 = Name_80.gsub;
                local d_71 = Name_80:gsub("%d+", "");
            end
            local Character_61 = LocalPlayer.Character;
            local Not_Character_61 = not Character_61;
            local HumanoidRootPart_29 = Character_61:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_29 = not HumanoidRootPart_29;
            local Position_27 = HumanoidRootPart_29.Position;
        end)
        local Waited_For_71 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_34, Error_Message_34 = pcall(function(...)
            local Character_62 = LocalPlayer.Character;
            if not Character_62 then return end -- won't run
            local Humanoid_31 = Character_62:FindFirstChildOfClass("Humanoid");
            if not Humanoid_31 then return end -- won't run
            Humanoid_31.PlatformStand = true;
            local Living_73 = workspace:FindFirstChild("Living");
            if not Living_73 then return end -- won't run
            local Children_75 = Living:GetChildren();
            for i_76, v_76 in pairs(Children_75) do
                local Name_81 = v_76.Name;
                local Gsub_72 = Name_81.gsub;
                local d_72 = Name_81:gsub("%d+", "");
            end
            local Character_63 = LocalPlayer.Character;
            local Not_Character_63 = not Character_63;
            local HumanoidRootPart_30 = Character_63:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_30 = not HumanoidRootPart_30;
            local Position_28 = HumanoidRootPart_30.Position;
        end)
        local Waited_For_72 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_35, Error_Message_35 = pcall(function(...)
            local Character_64 = LocalPlayer.Character;
            if not Character_64 then return end -- won't run
            local Humanoid_32 = Character_64:FindFirstChildOfClass("Humanoid");
            if not Humanoid_32 then return end -- won't run
            Humanoid_32.PlatformStand = true;
            local Living_74 = workspace:FindFirstChild("Living");
            if not Living_74 then return end -- won't run
            local Children_76 = Living:GetChildren();
            for i_77, v_77 in pairs(Children_76) do
                local Name_82 = v_77.Name;
                local Gsub_73 = Name_82.gsub;
                local d_73 = Name_82:gsub("%d+", "");
            end
            local Character_65 = LocalPlayer.Character;
            local Not_Character_65 = not Character_65;
            local HumanoidRootPart_31 = Character_65:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_31 = not HumanoidRootPart_31;
            local Position_29 = HumanoidRootPart_31.Position;
        end)
        local Waited_For_73 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_36, Error_Message_36 = pcall(function(...)
            local Character_66 = LocalPlayer.Character;
            if not Character_66 then return end -- won't run
            local Humanoid_33 = Character_66:FindFirstChildOfClass("Humanoid");
            if not Humanoid_33 then return end -- won't run
            Humanoid_33.PlatformStand = true;
            local Living_75 = workspace:FindFirstChild("Living");
            if not Living_75 then return end -- won't run
            local Children_77 = Living:GetChildren();
            for i_78, v_78 in pairs(Children_77) do
                local Name_83 = v_78.Name;
                local Gsub_74 = Name_83.gsub;
                local d_74 = Name_83:gsub("%d+", "");
            end
            local Character_67 = LocalPlayer.Character;
            local Not_Character_67 = not Character_67;
            local HumanoidRootPart_32 = Character_67:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_32 = not HumanoidRootPart_32;
            local Position_30 = HumanoidRootPart_32.Position;
        end)
        local Waited_For_74 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_37, Error_Message_37 = pcall(function(...)
            local Character_68 = LocalPlayer.Character;
            if not Character_68 then return end -- won't run
            local Humanoid_34 = Character_68:FindFirstChildOfClass("Humanoid");
            if not Humanoid_34 then return end -- won't run
            Humanoid_34.PlatformStand = true;
            local Living_76 = workspace:FindFirstChild("Living");
            if not Living_76 then return end -- won't run
            local Children_78 = Living:GetChildren();
            for i_79, v_79 in pairs(Children_78) do
                local Name_84 = v_79.Name;
                local Gsub_75 = Name_84.gsub;
                local d_75 = Name_84:gsub("%d+", "");
            end
            local Character_69 = LocalPlayer.Character;
            local Not_Character_69 = not Character_69;
            local HumanoidRootPart_33 = Character_69:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_33 = not HumanoidRootPart_33;
            local Position_31 = HumanoidRootPart_33.Position;
        end)
        local Waited_For_75 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_38, Error_Message_38 = pcall(function(...)
            local Character_70 = LocalPlayer.Character;
            if not Character_70 then return end -- won't run
            local Humanoid_35 = Character_70:FindFirstChildOfClass("Humanoid");
            if not Humanoid_35 then return end -- won't run
            Humanoid_35.PlatformStand = true;
            local Living_77 = workspace:FindFirstChild("Living");
            if not Living_77 then return end -- won't run
            local Children_79 = Living:GetChildren();
            for i_80, v_80 in pairs(Children_79) do
                local Name_85 = v_80.Name;
                local Gsub_76 = Name_85.gsub;
                local d_76 = Name_85:gsub("%d+", "");
            end
            local Character_71 = LocalPlayer.Character;
            local Not_Character_71 = not Character_71;
            local HumanoidRootPart_34 = Character_71:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_34 = not HumanoidRootPart_34;
            local Position_32 = HumanoidRootPart_34.Position;
        end)
        local Waited_For_76 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_39, Error_Message_39 = pcall(function(...)
            local Character_72 = LocalPlayer.Character;
            if not Character_72 then return end -- won't run
            local Humanoid_36 = Character_72:FindFirstChildOfClass("Humanoid");
            if not Humanoid_36 then return end -- won't run
            Humanoid_36.PlatformStand = true;
            local Living_78 = workspace:FindFirstChild("Living");
            if not Living_78 then return end -- won't run
            local Children_80 = Living:GetChildren();
            for i_81, v_81 in pairs(Children_80) do
                local Name_86 = v_81.Name;
                local Gsub_77 = Name_86.gsub;
                local d_77 = Name_86:gsub("%d+", "");
            end
            local Character_73 = LocalPlayer.Character;
            local Not_Character_73 = not Character_73;
            local HumanoidRootPart_35 = Character_73:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_35 = not HumanoidRootPart_35;
            local Position_33 = HumanoidRootPart_35.Position;
        end)
        local Waited_For_77 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_40, Error_Message_40 = pcall(function(...)
            local Character_74 = LocalPlayer.Character;
            if not Character_74 then return end -- won't run
            local Humanoid_37 = Character_74:FindFirstChildOfClass("Humanoid");
            if not Humanoid_37 then return end -- won't run
            Humanoid_37.PlatformStand = true;
            local Living_79 = workspace:FindFirstChild("Living");
            if not Living_79 then return end -- won't run
            local Children_81 = Living:GetChildren();
            for i_82, v_82 in pairs(Children_81) do
                local Name_87 = v_82.Name;
                local Gsub_78 = Name_87.gsub;
                local d_78 = Name_87:gsub("%d+", "");
            end
            local Character_75 = LocalPlayer.Character;
            local Not_Character_75 = not Character_75;
            local HumanoidRootPart_36 = Character_75:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_36 = not HumanoidRootPart_36;
            local Position_34 = HumanoidRootPart_36.Position;
        end)
        local Waited_For_78 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_41, Error_Message_41 = pcall(function(...)
            local Character_76 = LocalPlayer.Character;
            if not Character_76 then return end -- won't run
            local Humanoid_38 = Character_76:FindFirstChildOfClass("Humanoid");
            if not Humanoid_38 then return end -- won't run
            Humanoid_38.PlatformStand = true;
            local Living_80 = workspace:FindFirstChild("Living");
            if not Living_80 then return end -- won't run
            local Children_82 = Living:GetChildren();
            for i_83, v_83 in pairs(Children_82) do
                local Name_88 = v_83.Name;
                local Gsub_79 = Name_88.gsub;
                local d_79 = Name_88:gsub("%d+", "");
            end
            local Character_77 = LocalPlayer.Character;
            local Not_Character_77 = not Character_77;
            local HumanoidRootPart_37 = Character_77:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_37 = not HumanoidRootPart_37;
            local Position_35 = HumanoidRootPart_37.Position;
        end)
        local Waited_For_79 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_42, Error_Message_42 = pcall(function(...)
            local Character_78 = LocalPlayer.Character;
            if not Character_78 then return end -- won't run
            local Humanoid_39 = Character_78:FindFirstChildOfClass("Humanoid");
            if not Humanoid_39 then return end -- won't run
            Humanoid_39.PlatformStand = true;
            local Living_81 = workspace:FindFirstChild("Living");
            if not Living_81 then return end -- won't run
            local Children_83 = Living:GetChildren();
            for i_84, v_84 in pairs(Children_83) do
                local Name_89 = v_84.Name;
                local Gsub_80 = Name_89.gsub;
                local d_80 = Name_89:gsub("%d+", "");
            end
            local Character_79 = LocalPlayer.Character;
            local Not_Character_79 = not Character_79;
            local HumanoidRootPart_38 = Character_79:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_38 = not HumanoidRootPart_38;
            local Position_36 = HumanoidRootPart_38.Position;
        end)
        local Waited_For_80 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_43, Error_Message_43 = pcall(function(...)
            local Character_80 = LocalPlayer.Character;
            if not Character_80 then return end -- won't run
            local Humanoid_40 = Character_80:FindFirstChildOfClass("Humanoid");
            if not Humanoid_40 then return end -- won't run
            Humanoid_40.PlatformStand = true;
            local Living_82 = workspace:FindFirstChild("Living");
            if not Living_82 then return end -- won't run
            local Children_84 = Living:GetChildren();
            for i_85, v_85 in pairs(Children_84) do
                local Name_90 = v_85.Name;
                local Gsub_81 = Name_90.gsub;
                local d_81 = Name_90:gsub("%d+", "");
            end
            local Character_81 = LocalPlayer.Character;
            local Not_Character_81 = not Character_81;
            local HumanoidRootPart_39 = Character_81:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_39 = not HumanoidRootPart_39;
            local Position_37 = HumanoidRootPart_39.Position;
        end)
        local Waited_For_81 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_44, Error_Message_44 = pcall(function(...)
            local Character_82 = LocalPlayer.Character;
            if not Character_82 then return end -- won't run
            local Humanoid_41 = Character_82:FindFirstChildOfClass("Humanoid");
            if not Humanoid_41 then return end -- won't run
            Humanoid_41.PlatformStand = true;
            local Living_83 = workspace:FindFirstChild("Living");
            if not Living_83 then return end -- won't run
            local Children_85 = Living:GetChildren();
            for i_86, v_86 in pairs(Children_85) do
                local Name_91 = v_86.Name;
                local Gsub_82 = Name_91.gsub;
                local d_82 = Name_91:gsub("%d+", "");
            end
            local Character_83 = LocalPlayer.Character;
            local Not_Character_83 = not Character_83;
            local HumanoidRootPart_40 = Character_83:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_40 = not HumanoidRootPart_40;
            local Position_38 = HumanoidRootPart_40.Position;
        end)
        local Waited_For_82 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_45, Error_Message_45 = pcall(function(...)
            local Character_84 = LocalPlayer.Character;
            if not Character_84 then return end -- won't run
            local Humanoid_42 = Character_84:FindFirstChildOfClass("Humanoid");
            if not Humanoid_42 then return end -- won't run
            Humanoid_42.PlatformStand = true;
            local Living_84 = workspace:FindFirstChild("Living");
            if not Living_84 then return end -- won't run
            local Children_86 = Living:GetChildren();
            for i_87, v_87 in pairs(Children_86) do
                local Name_92 = v_87.Name;
                local Gsub_83 = Name_92.gsub;
                local d_83 = Name_92:gsub("%d+", "");
            end
            local Character_85 = LocalPlayer.Character;
            local Not_Character_85 = not Character_85;
            local HumanoidRootPart_41 = Character_85:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_41 = not HumanoidRootPart_41;
            local Position_39 = HumanoidRootPart_41.Position;
        end)
        local Waited_For_83 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_46, Error_Message_46 = pcall(function(...)
            local Character_86 = LocalPlayer.Character;
            if not Character_86 then return end -- won't run
            local Humanoid_43 = Character_86:FindFirstChildOfClass("Humanoid");
            if not Humanoid_43 then return end -- won't run
            Humanoid_43.PlatformStand = true;
            local Living_85 = workspace:FindFirstChild("Living");
            if not Living_85 then return end -- won't run
            local Children_87 = Living:GetChildren();
            for i_88, v_88 in pairs(Children_87) do
                local Name_93 = v_88.Name;
                local Gsub_84 = Name_93.gsub;
                local d_84 = Name_93:gsub("%d+", "");
            end
            local Character_87 = LocalPlayer.Character;
            local Not_Character_87 = not Character_87;
            local HumanoidRootPart_42 = Character_87:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_42 = not HumanoidRootPart_42;
            local Position_40 = HumanoidRootPart_42.Position;
        end)
        local Waited_For_84 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_47, Error_Message_47 = pcall(function(...)
            local Character_88 = LocalPlayer.Character;
            if not Character_88 then return end -- won't run
            local Humanoid_44 = Character_88:FindFirstChildOfClass("Humanoid");
            if not Humanoid_44 then return end -- won't run
            Humanoid_44.PlatformStand = true;
            local Living_86 = workspace:FindFirstChild("Living");
            if not Living_86 then return end -- won't run
            local Children_88 = Living:GetChildren();
            for i_89, v_89 in pairs(Children_88) do
                local Name_94 = v_89.Name;
                local Gsub_85 = Name_94.gsub;
                local d_85 = Name_94:gsub("%d+", "");
            end
            local Character_89 = LocalPlayer.Character;
            local Not_Character_89 = not Character_89;
            local HumanoidRootPart_43 = Character_89:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_43 = not HumanoidRootPart_43;
            local Position_41 = HumanoidRootPart_43.Position;
        end)
        local Waited_For_85 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_48, Error_Message_48 = pcall(function(...)
            local Character_90 = LocalPlayer.Character;
            if not Character_90 then return end -- won't run
            local Humanoid_45 = Character_90:FindFirstChildOfClass("Humanoid");
            if not Humanoid_45 then return end -- won't run
            Humanoid_45.PlatformStand = true;
            local Living_87 = workspace:FindFirstChild("Living");
            if not Living_87 then return end -- won't run
            local Children_89 = Living:GetChildren();
            for i_90, v_90 in pairs(Children_89) do
                local Name_95 = v_90.Name;
                local Gsub_86 = Name_95.gsub;
                local d_86 = Name_95:gsub("%d+", "");
            end
            local Character_91 = LocalPlayer.Character;
            local Not_Character_91 = not Character_91;
            local HumanoidRootPart_44 = Character_91:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_44 = not HumanoidRootPart_44;
            local Position_42 = HumanoidRootPart_44.Position;
        end)
        local Waited_For_86 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_49, Error_Message_49 = pcall(function(...)
            local Character_92 = LocalPlayer.Character;
            if not Character_92 then return end -- won't run
            local Humanoid_46 = Character_92:FindFirstChildOfClass("Humanoid");
            if not Humanoid_46 then return end -- won't run
            Humanoid_46.PlatformStand = true;
            local Living_88 = workspace:FindFirstChild("Living");
            if not Living_88 then return end -- won't run
            local Children_90 = Living:GetChildren();
            for i_91, v_91 in pairs(Children_90) do
                local Name_96 = v_91.Name;
                local Gsub_87 = Name_96.gsub;
                local d_87 = Name_96:gsub("%d+", "");
            end
            local Character_93 = LocalPlayer.Character;
            local Not_Character_93 = not Character_93;
            local HumanoidRootPart_45 = Character_93:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_45 = not HumanoidRootPart_45;
            local Position_43 = HumanoidRootPart_45.Position;
        end)
        local Waited_For_87 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_50, Error_Message_50 = pcall(function(...)
            local Character_94 = LocalPlayer.Character;
            if not Character_94 then return end -- won't run
            local Humanoid_47 = Character_94:FindFirstChildOfClass("Humanoid");
            if not Humanoid_47 then return end -- won't run
            Humanoid_47.PlatformStand = true;
            local Living_89 = workspace:FindFirstChild("Living");
            if not Living_89 then return end -- won't run
            local Children_91 = Living:GetChildren();
            for i_92, v_92 in pairs(Children_91) do
                local Name_97 = v_92.Name;
                local Gsub_88 = Name_97.gsub;
                local d_88 = Name_97:gsub("%d+", "");
            end
            local Character_95 = LocalPlayer.Character;
            local Not_Character_95 = not Character_95;
            local HumanoidRootPart_46 = Character_95:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_46 = not HumanoidRootPart_46;
            local Position_44 = HumanoidRootPart_46.Position;
        end)
        local Waited_For_88 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_51, Error_Message_51 = pcall(function(...)
            local Character_96 = LocalPlayer.Character;
            if not Character_96 then return end -- won't run
            local Humanoid_48 = Character_96:FindFirstChildOfClass("Humanoid");
            if not Humanoid_48 then return end -- won't run
            Humanoid_48.PlatformStand = true;
            local Living_90 = workspace:FindFirstChild("Living");
            if not Living_90 then return end -- won't run
            local Children_92 = Living:GetChildren();
            for i_93, v_93 in pairs(Children_92) do
                local Name_98 = v_93.Name;
                local Gsub_89 = Name_98.gsub;
                local d_89 = Name_98:gsub("%d+", "");
            end
            local Character_97 = LocalPlayer.Character;
            local Not_Character_97 = not Character_97;
            local HumanoidRootPart_47 = Character_97:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_47 = not HumanoidRootPart_47;
            local Position_45 = HumanoidRootPart_47.Position;
        end)
        local Waited_For_89 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_52, Error_Message_52 = pcall(function(...)
            local Character_98 = LocalPlayer.Character;
            if not Character_98 then return end -- won't run
            local Humanoid_49 = Character_98:FindFirstChildOfClass("Humanoid");
            if not Humanoid_49 then return end -- won't run
            Humanoid_49.PlatformStand = true;
            local Living_91 = workspace:FindFirstChild("Living");
            if not Living_91 then return end -- won't run
            local Children_93 = Living:GetChildren();
            for i_94, v_94 in pairs(Children_93) do
                local Name_99 = v_94.Name;
                local Gsub_90 = Name_99.gsub;
                local d_90 = Name_99:gsub("%d+", "");
            end
            local Character_99 = LocalPlayer.Character;
            local Not_Character_99 = not Character_99;
            local HumanoidRootPart_48 = Character_99:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_48 = not HumanoidRootPart_48;
            local Position_46 = HumanoidRootPart_48.Position;
        end)
        local Waited_For_90 = task.wait(0.1);
        if not Value_3 then return end -- won't run
        local Success_53, Error_Message_53 = pcall(function(...)
            local Character_100 = LocalPlayer.Character;
            if not Character_100 then return end -- won't run
            local Humanoid_50 = Character_100:FindFirstChildOfClass("Humanoid");
            if not Humanoid_50 then return end -- won't run
            Humanoid_50.PlatformStand = true;
            local Living_92 = workspace:FindFirstChild("Living");
            if not Living_92 then return end -- won't run
            local Children_94 = Living:GetChildren();
            for i_95, v_95 in pairs(Children_94) do
                local Name_100 = v_95.Name;
                local Gsub_91 = Name_100.gsub;
                local d_91 = Name_100:gsub("%d+", "");
            end
            local Character_101 = LocalPlayer.Character;
            local Not_Character_101 = not Character_101;
            local HumanoidRootPart_49 = Character_101:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_49 = not HumanoidRootPart_49;
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local CreateSection_5 = Tab_8.CreateSection;
    local PICKAXE_SHOP = Tab_8:CreateSection("PICKAXE SHOP");
    local CreateDropdown_4 = Tab_8.CreateDropdown;
    local ShopPickaxe = Tab_8:CreateDropdown("ShopPickaxe", {
        Title = "Pickaxe Shop",
        Default = "Bronze Pickaxe - 150 Gold",
        Multi = false,
        Values = {
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
            "Stonewake's Pickaxe - Special",
        },
        Description = "Chọn Pickaxe muốn mua",
    });
    local OnChanged_13 = ShopPickaxe.OnChanged;
    local OnChanged_14 = ShopPickaxe:OnChanged(function(p1_0)
        local Match_2 = p1_0.match;
        local _2 = p1_0:match("^(.+) %- ");

    end);
    local CreateButton_2 = Tab_8.CreateButton;
    local Button_2 = Tab_8:CreateButton({
        Callback = function()
            if not _2 then return end -- won't run
            local Success_54, Error_Message_54 = pcall(function(...)
                local Shared = ReplicatedStorage:WaitForChild("Shared");
                local WaitForChild = Shared.WaitForChild;
                local Packages = Shared:WaitForChild("Packages");
                local WaitForChild_2 = Packages.WaitForChild;
                local Knit = Packages:WaitForChild("Knit");
                local WaitForChild_3 = Knit.WaitForChild;
                local Services = Knit:WaitForChild("Services");
                local WaitForChild_4 = Services.WaitForChild;
                local ProximityService = Services:WaitForChild("ProximityService");
                local WaitForChild_5 = ProximityService.WaitForChild;
                local RF = ProximityService:WaitForChild("RF");
                local WaitForChild_6 = RF.WaitForChild;
                local Purchase = RF:WaitForChild("Purchase");
                local InvokeServer = Purchase.InvokeServer;
                local InvokeServer_2 = Purchase:InvokeServer(_2, 1);
            end)

        end,
        Title = "Buy Pickaxe",
        Description = "Mua Pickaxe đã chọn",
    });
    local CreateSection_6 = Tab_8.CreateSection;
    local POTION_SHOP = Tab_8:CreateSection("POTION SHOP");
    local CreateDropdown_5 = Tab_8.CreateDropdown;
    local ShopPotion = Tab_8:CreateDropdown("ShopPotion", {
        Title = "Potion Shop",
        Default = "MinerPotion1 - Miner Potion I",
        Multi = false,
        Values = {
            "MinerPotion1 - Miner Potion I",
            "HealthPotion1 - Health Potion I",
            "HealthPotion2 - Health Potion II",
            "AttackDamagePotion1 - Damage Potion I",
            "MovementSpeedPotion1 - Speed Potion I",
            "LuckPotion1 - Luck Potion I",
        },
        Description = "Chọn Potion muốn mua",
    });
    local CreateParagraph_3 = Tab_8.CreateParagraph;
    local PotionEffectInfo = Tab_8:CreateParagraph("PotionEffectInfo", {
        Title = "Potion Effect",
        Content = "15% faster mining, 10% extra mining damage",
    });
    local OnChanged_15 = ShopPotion.OnChanged;
    local OnChanged_16 = ShopPotion:OnChanged(function(p1_0)
        local Match_3 = p1_0.match;
        local _3 = p1_0:match("^(.+) %- ");
        local var103 = (_3 and nil);

    end);
    local CreateButton_3 = Tab_8.CreateButton;
    local Button_3 = Tab_8:CreateButton({
        Callback = function()
            if not _3 then return end -- won't run
            local Success_55, Error_Message_55 = pcall(function(...)
                local Shared_2 = ReplicatedStorage:WaitForChild("Shared");
                local WaitForChild_7 = Shared_2.WaitForChild;
                local Packages_2 = Shared_2:WaitForChild("Packages");
                local WaitForChild_8 = Packages_2.WaitForChild;
                local Knit_2 = Packages_2:WaitForChild("Knit");
                local WaitForChild_9 = Knit_2.WaitForChild;
                local Services_2 = Knit_2:WaitForChild("Services");
                local WaitForChild_10 = Services_2.WaitForChild;
                local ProximityService_2 = Services_2:WaitForChild("ProximityService");
                local WaitForChild_11 = ProximityService_2.WaitForChild;
                local RF_2 = ProximityService_2:WaitForChild("RF");
                local WaitForChild_12 = RF_2.WaitForChild;
                local Purchase_2 = RF_2:WaitForChild("Purchase");
                local InvokeServer_3 = Purchase_2.InvokeServer;
                local InvokeServer_4 = Purchase_2:InvokeServer(_3, 1);
            end)

        end,
        Title = "Buy Potion",
        Description = "Mua Potion đã chọn",
    });
    local Backpack = LocalPlayer:FindFirstChild("Backpack");
    local Character = LocalPlayer.Character;
    if not Backpack then return end -- won't run
    local Children = Backpack:GetChildren();
    for i, v in pairs(Children) do
        local IsA = v.IsA;
        local Tool = v:IsA("Tool");
        local Name_5 = v.Name;
        local var66 = string.find(Name_5, "Pickaxe")
        local var67 = (Tool and var66);
        if not var67 then return end -- won't run
        local Name_6 = v.Name;
        local Array = {
            "Weapon",
        };
        local var68 = table.insert(Array, Name_6);
    end
    if not Character then return end -- won't run
    local Children_2 = Character:GetChildren();
    for i_2, v_2 in pairs(Children_2) do
        local IsA_2 = v_2.IsA;
        local Tool_2 = v_2:IsA("Tool");
        local Name_7 = v_2.Name;
        local var68 = string.find(Name_7, "Pickaxe")
        local var69 = (Tool_2 and var68);
        if not var69 then return end -- won't run
        local Name_8 = v_2.Name;
        local Array_2 = Array;
        local var70 = table.find(Array_2, Name_8);
        local Not_Var70 = not var70;
    end
    local Len_Array_2 = #Array_2;
    local var71 = (Len_Array_2 == 0);
    local CreateDropdown_6 = Tab_2.CreateDropdown;
    local ToolSelect = Tab_2:CreateDropdown("ToolSelect", {
        Title = "Tool Select",
        Default = "Pickaxe",
        Multi = false,
        Values = Array_2,
        Description = "Chọn Vũ Khí để đào quặng",
    });
    local OnChanged_17 = ToolSelect.OnChanged;
    local OnChanged_18 = ToolSelect:OnChanged(function(p1_0)

    end);
    local CreateToggle_4 = Tab_2.CreateToggle;
    local AutoSelectTool = Tab_2:CreateToggle("AutoSelectTool", {
        Default = false,
        Title = "Auto Select Tool",
        Description = "Tự động equip vũ khí đã chọn",
    });
    local OnChanged_19 = AutoSelectTool.OnChanged;
    local OnChanged_20 = AutoSelectTool:OnChanged(function()
        local AutoSelectTool_2 = Options.AutoSelectTool;
        local Value_4 = AutoSelectTool_2.Value;
        if not Value_4 then return end -- won't run
        local Backpack_2 = LocalPlayer:FindFirstChild("Backpack");
        local Character_102 = LocalPlayer.Character;
        if not Backpack_2 then return end -- won't run
        local Children_95 = Backpack:GetChildren();
        for i_96, v_96 in pairs(Children_95) do
            local IsA_3 = v_96.IsA;
            local Tool_3 = v_96:IsA("Tool");
            local Name_101 = v_96.Name;
            local var104 = string.find(Name_101, "Pickaxe")
            local var105 = (Tool_3 and var104);
            if not var105 then return end -- won't run
            local Name_102 = v_96.Name;
            local Array_25 = {
                "Weapon",
            };
            local var106 = table.insert(Array_25, Name_102);
        end
        if not Character_102 then return end -- won't run
        local Children_96 = Character_102:GetChildren();
        for i_97, v_97 in pairs(Children_96) do
            local IsA_4 = v_97.IsA;
            local Tool_4 = v_97:IsA("Tool");
            local Name_103 = v_97.Name;
            local var106 = string.find(Name_103, "Pickaxe")
            local var107 = (Tool_4 and var106);
            if not var107 then return end -- won't run
            local Name_104 = v_97.Name;
            local Array_26 = Array_25;
            local var108 = table.find(Array_26, Name_104);
            local Not_Var108 = not var108;
        end
        local Len_Array_26 = #Array_26;
        local var109 = (Len_Array_26 == 0);
        local Len_Array_26_2 = #Array_26;
        local var110 = (Len_Array_26_2 > 0);
        if not var110 then return end -- won't run
        local Len_Array_26_3 = #Array_26;
        local SetValue_3 = ToolSelect.SetValue;
        local SetValue_4 = ToolSelect:SetValue(nil);

    end);
    local CreateButton_4 = Tab_2.CreateButton;
    local Button_4 = Tab_2:CreateButton({
        Callback = function()
            local Backpack_3 = LocalPlayer:FindFirstChild("Backpack");
            local Character_103 = LocalPlayer.Character;
            if not Backpack_3 then return end -- won't run
            local Children_97 = Backpack:GetChildren();
            for i_98, v_98 in pairs(Children_97) do
                local IsA_5 = v_98.IsA;
                local Tool_5 = v_98:IsA("Tool");
                local Name_105 = v_98.Name;
                local var111 = string.find(Name_105, "Pickaxe")
                local var112 = (Tool_5 and var111);
                if not var112 then return end -- won't run
                local Name_106 = v_98.Name;
                local Array_27 = {
                    "Weapon",
                };
                local var113 = table.insert(Array_27, Name_106);
            end
            if not Character_103 then return end -- won't run
            local Children_98 = Character_103:GetChildren();
            for i_99, v_99 in pairs(Children_98) do
                local IsA_6 = v_99.IsA;
                local Tool_6 = v_99:IsA("Tool");
                local Name_107 = v_99.Name;
                local var113 = string.find(Name_107, "Pickaxe")
                local var114 = (Tool_6 and var113);
                if not var114 then return end -- won't run
                local Name_108 = v_99.Name;
                local Array_28 = Array_27;
                local var115 = table.find(Array_28, Name_108);
                local Not_Var115 = not var115;
            end
            local Len_Array_28 = #Array_28;
            local var116 = (Len_Array_28 == 0);
            local SetValues_3 = ToolSelect.SetValues;
            local SetValues_4 = ToolSelect:SetValues(Array_28);
            if not Value_4 then return end -- won't run
            local Backpack_4 = LocalPlayer:FindFirstChild("Backpack");
            local Character_104 = LocalPlayer.Character;
            if not Backpack_4 then return end -- won't run
            local Children_99 = Backpack:GetChildren();
            for i_100, v_100 in pairs(Children_99) do
                local IsA_7 = v_100.IsA;
                local Tool_7 = v_100:IsA("Tool");
                local Name_109 = v_100.Name;
                local var117 = string.find(Name_109, "Pickaxe")
                local var118 = (Tool_7 and var117);
                if not var118 then return end -- won't run
                local Name_110 = v_100.Name;
                local Array_29 = {
                    "Weapon",
                };
                local var119 = table.insert(Array_29, Name_110);
            end
            if not Character_104 then return end -- won't run
            local Children_100 = Character_104:GetChildren();
            for i_101, v_101 in pairs(Children_100) do
                local IsA_8 = v_101.IsA;
                local Tool_8 = v_101:IsA("Tool");
                local Name_111 = v_101.Name;
                local var119 = string.find(Name_111, "Pickaxe")
                local var120 = (Tool_8 and var119);
                if not var120 then return end -- won't run
                local Name_112 = v_101.Name;
                local Array_30 = Array_29;
                local var121 = table.find(Array_30, Name_112);
                local Not_Var121 = not var121;
            end
            local Len_Array_30 = #Array_30;
            local var122 = (Len_Array_30 == 0);
            local Len_Array_30_2 = #Array_30;
            local var123 = (Len_Array_30_2 > 0);
            if not var123 then return end -- won't run
            local Len_Array_30_3 = #Array_30;
            local SetValue_5 = ToolSelect.SetValue;
            local SetValue_6 = ToolSelect:SetValue(nil);

        end,
        Title = "Refresh Tools",
        Description = "Reset danh sách vũ khí",
    });
    local CreateButton_5 = Tab_2.CreateButton;
    local Button_5 = Tab_2:CreateButton({
        Callback = function()
            local Success_56, Error_Message_56 = pcall(function(...)
                local Shared_3 = ReplicatedStorage:WaitForChild("Shared");
                local WaitForChild_13 = Shared_3.WaitForChild;
                local Packages_3 = Shared_3:WaitForChild("Packages");
                local WaitForChild_14 = Packages_3.WaitForChild;
                local Knit_3 = Packages_3:WaitForChild("Knit");
                local WaitForChild_15 = Knit_3.WaitForChild;
                local Services_3 = Knit_3:WaitForChild("Services");
                local WaitForChild_16 = Services_3.WaitForChild;
                local RaceService = Services_3:WaitForChild("RaceService");
                local WaitForChild_17 = RaceService.WaitForChild;
                local RF_3 = RaceService:WaitForChild("RF");
                local WaitForChild_18 = RF_3.WaitForChild;
                local Reroll = RF_3:WaitForChild("Reroll");
                local InvokeServer_5 = Reroll.InvokeServer;
                local InvokeServer_6 = Reroll:InvokeServer();
            end)

        end,
        Title = "Reroll Race",
        Description = "Quay Race mới",
    });
    local Vector3_New = Vector3.new;
    local Vector3_Value = Vector3_New(-23, 81, -357);
    local Vector3_Value_2 = Vector3_New(-154, 28, 117);
    local Vector3_Value_3 = Vector3_New(-180, 29, 15);
    local Vector3_Value_4 = Vector3_New(-196, 29, 160);
    local Vector3_Value_5 = Vector3_New(-260, 20, 27);
    local Vector3_Value_6 = Vector3_New(-271, 20, 145);
    local Vector3_Value_7 = Vector3_New(-114, 38, -38);
    local Vector3_Value_8 = Vector3_New(-88, 29, 94);
    local CreateDropdown_7 = Tab_10.CreateDropdown;
    local NPCSelect = Tab_10:CreateDropdown("NPCSelect", {
        Title = "NPC Select",
        Default = "Wizard",
        Multi = false,
        Values = {
            "Wizard",
            "Maria",
            "Marbles",
            "Sensei Moro",
            "Enchanter",
            "Runermaker",
            "Greedy Cey",
            "Miner Fred",
        },
        Description = "Chọn NPC muốn di chuyển đến",
    });
    local OnChanged_21 = NPCSelect.OnChanged;
    local OnChanged_22 = NPCSelect:OnChanged(function(p1_0)

    end);
    local CreateButton_6 = Tab_10.CreateButton;
    local Button_6 = Tab_10:CreateButton({
        Callback = function()
            local Character_105 = LocalPlayer.Character;
            local Not_Character_105 = not Character_105;
            local HumanoidRootPart_50 = Character_105:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_50 = not HumanoidRootPart_50;

        end,
        Title = "Tween to NPC",
        Description = "Di chuyển đến NPC đã chọn",
    });
    local CreateToggle_5 = Tab_11.CreateToggle;
    local CameraNoClip = Tab_11:CreateToggle("CameraNoClip", {
        Default = false,
        Title = "Camera NoClip",
        Description = "Tầm nhìn không bị chặn bởi các part",
    });
    local OnChanged_23 = CameraNoClip.OnChanged;
    local OnChanged_24 = CameraNoClip:OnChanged(function()
        local CameraNoClip_2 = Options.CameraNoClip;
        local Value_5 = CameraNoClip_2.Value;
        if not Value_5 then return end -- won't run
        local Success_57, Error_Message_57 = pcall(function(...)
            local var126 = debug.setconstant;
            local var127 = (debug and nil);
            local var128 = (var127 or setconstant);
            local var129 = debug.getconstants;
            local var130 = (debug and nil);
            local var131 = (var130 or nil);
            local Not_Var128 = not var128;
            local var132 = (Not_Var128 or false);
            local Not_Var131 = not var131;
            local var133 = (var132 or Not_Var131);
            if not var133 then return end -- won't run
            local Notify_7 = Loaded_Var4.Notify;
            local Notify_8 = Loaded_Var4:Notify({
                Duration = 3,
                Title = "Error",
                Content = "Exploit không hỗ trợ camera noclip",
            });
        end)

    end);
    local CreateSection_7 = Tab_9.CreateSection;
    local QUESTAWARE_FARM = Tab_9:CreateSection("QUEST-AWARE FARM");
    local CreateDropdown_8 = Tab_9.CreateDropdown;
    local QuestTypeFilter = Tab_9:CreateDropdown("QuestTypeFilter", {
        Title = "Quest Types to Auto",
        Default = {
            "KILL",
            "MINE",
            "COLLECT",
            "ORE",
            "TALK",
            "EQUIP",
        },
        Multi = true,
        Values = {
            "KILL",
            "MINE",
            "COLLECT",
            "ORE",
            "TALK",
            "EQUIP",
            "FORGE",
            "UI",
        },
        Description = "Chọn loại quest muốn tự động làm",
    });
    local OnChanged_25 = QuestTypeFilter.OnChanged;
    local OnChanged_26 = QuestTypeFilter:OnChanged(function(p1_0)
        local var135 = typeof(p1_0);
        local var135_is_string = (var135 == "table");
        if not var135_is_string then return end -- won't run
        for i_102, v_102 in pairs(p1_0) do
        end

    end);
    local CreateDropdown_9 = Tab_9.CreateDropdown;
    local QuestTargetSelect = Tab_9:CreateDropdown("QuestTargetSelect", {
        Title = "Quest Target",
        Default = "(Đang load...)",
        Multi = false,
        Values = {
            "(Đang load...)",
        },
        Description = "Tự động refresh mỗi 1s",
    });
    local CreateParagraph_4 = Tab_9.CreateParagraph;
    local QuestFarmProgress = Tab_9:CreateParagraph("QuestFarmProgress", {
        Title = "Quest Farm Progress",
        Content = "Bật Auto Quest Farm để bắt đầu",
    });
    local CreateToggle_6 = Tab_9.CreateToggle;
    local AutoQuestFarm = Tab_9:CreateToggle("AutoQuestFarm", {
        Default = false,
        Title = "Auto Quest Farm",
        Description = "Tự động farm theo thứ tự quest, chuyển objective khi hoàn thành",
    });
    local Spawned_5 = task.spawn(function()
        local Waited_For_91 = task.wait(1);
        local Success_58, Error_Message_58 = pcall(function(...)
            local Shared_4 = ReplicatedStorage.Shared;
            local Packages_4 = Shared_4.Packages;
            local Knit_4 = Packages_4.Knit;
            local Knit_4_Module = require(Knit_4);
            local GetController = Knit_4_Module.GetController;
            local _call135 = GetController("PlayerController");
            local Replica = _call135.Replica;
            local var136 = (_call135 and Replica);
            local Replica_2 = _call135.Replica;
            local Data = Replica_2.Data;
            local var137 = (var136 and Data);
            if not var137 then return end -- won't run
            local Replica_3 = _call135.Replica;
            local Data_2 = Replica_3.Data;
            local Quests = Data_2.Quests;
            local Success_59, Error_Message_59 = pcall(function(...)
                local Shared_5 = ReplicatedStorage.Shared;
                local Data_3 = Shared_5.Data;
                local Quests_2 = Data_3.Quests;
                local Quests_2_Module = require(Quests_2);
            end)
            local Not_Quests = not Quests;
            local Not_Quests_2_Module = not Quests_2_Module;
            local var138 = (Not_Quests or Not_Quests_2_Module);
            for i_103, v_103 in pairs(Quests) do
                local var138 = Quests_2_Module[i_103];
                local Progress = v_103.Progress;
                local var139 = (v_103 and Progress);
                local var140 = (var139 and var138);
                -- local _ = var140 and (unknown_value)
            end
            local SetValues_5 = QuestTargetSelect.SetValues;
            local SetValues_6 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_92 = task.wait(1);
        local Success_60, Error_Message_60 = pcall(function(...)
            local Shared_6 = ReplicatedStorage.Shared;
            local Packages_5 = Shared_6.Packages;
            local Knit_5 = Packages_5.Knit;
            local Knit_5_Module = require(Knit_5);
            local GetController_2 = Knit_5_Module.GetController;
            local _call142 = GetController_2("PlayerController");
            local Replica_4 = _call142.Replica;
            local var143 = (_call142 and Replica_4);
            local Replica_5 = _call142.Replica;
            local Data_4 = Replica_5.Data;
            local var144 = (var143 and Data_4);
            if not var144 then return end -- won't run
            local Replica_6 = _call142.Replica;
            local Data_5 = Replica_6.Data;
            local Quests_3 = Data_5.Quests;
            local Success_61, Error_Message_61 = pcall(function(...)
                local Shared_7 = ReplicatedStorage.Shared;
                local Data_6 = Shared_7.Data;
                local Quests_4 = Data_6.Quests;
                local Quests_4_Module = require(Quests_4);
            end)
            local Not_Quests_3 = not Quests_3;
            local Not_Quests_4_Module = not Quests_4_Module;
            local var145 = (Not_Quests_3 or Not_Quests_4_Module);
            for i_104, v_104 in pairs(Quests_3) do
                local var145 = Quests_4_Module[i_104];
                local Progress_2 = v_104.Progress;
                local var146 = (v_104 and Progress_2);
                local var147 = (var146 and var145);
                -- local _ = var147 and (unknown_value)
            end
            local SetValues_7 = QuestTargetSelect.SetValues;
            local SetValues_8 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_93 = task.wait(1);
        local Success_62, Error_Message_62 = pcall(function(...)
            local Shared_8 = ReplicatedStorage.Shared;
            local Packages_6 = Shared_8.Packages;
            local Knit_6 = Packages_6.Knit;
            local Knit_6_Module = require(Knit_6);
            local GetController_3 = Knit_6_Module.GetController;
            local _call149 = GetController_3("PlayerController");
            local Replica_7 = _call149.Replica;
            local var150 = (_call149 and Replica_7);
            local Replica_8 = _call149.Replica;
            local Data_7 = Replica_8.Data;
            local var151 = (var150 and Data_7);
            if not var151 then return end -- won't run
            local Replica_9 = _call149.Replica;
            local Data_8 = Replica_9.Data;
            local Quests_5 = Data_8.Quests;
            local Success_63, Error_Message_63 = pcall(function(...)
                local Shared_9 = ReplicatedStorage.Shared;
                local Data_9 = Shared_9.Data;
                local Quests_6 = Data_9.Quests;
                local Quests_6_Module = require(Quests_6);
            end)
            local Not_Quests_5 = not Quests_5;
            local Not_Quests_6_Module = not Quests_6_Module;
            local var152 = (Not_Quests_5 or Not_Quests_6_Module);
            for i_105, v_105 in pairs(Quests_5) do
                local var152 = Quests_6_Module[i_105];
                local Progress_3 = v_105.Progress;
                local var153 = (v_105 and Progress_3);
                local var154 = (var153 and var152);
                -- local _ = var154 and (unknown_value)
            end
            local SetValues_9 = QuestTargetSelect.SetValues;
            local SetValues_10 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_94 = task.wait(1);
        local Success_64, Error_Message_64 = pcall(function(...)
            local Shared_10 = ReplicatedStorage.Shared;
            local Packages_7 = Shared_10.Packages;
            local Knit_7 = Packages_7.Knit;
            local Knit_7_Module = require(Knit_7);
            local GetController_4 = Knit_7_Module.GetController;
            local _call156 = GetController_4("PlayerController");
            local Replica_10 = _call156.Replica;
            local var157 = (_call156 and Replica_10);
            local Replica_11 = _call156.Replica;
            local Data_10 = Replica_11.Data;
            local var158 = (var157 and Data_10);
            if not var158 then return end -- won't run
            local Replica_12 = _call156.Replica;
            local Data_11 = Replica_12.Data;
            local Quests_7 = Data_11.Quests;
            local Success_65, Error_Message_65 = pcall(function(...)
                local Shared_11 = ReplicatedStorage.Shared;
                local Data_12 = Shared_11.Data;
                local Quests_8 = Data_12.Quests;
                local Quests_8_Module = require(Quests_8);
            end)
            local Not_Quests_7 = not Quests_7;
            local Not_Quests_8_Module = not Quests_8_Module;
            local var159 = (Not_Quests_7 or Not_Quests_8_Module);
            for i_106, v_106 in pairs(Quests_7) do
                local var159 = Quests_8_Module[i_106];
                local Progress_4 = v_106.Progress;
                local var160 = (v_106 and Progress_4);
                local var161 = (var160 and var159);
                -- local _ = var161 and (unknown_value)
            end
            local SetValues_11 = QuestTargetSelect.SetValues;
            local SetValues_12 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_95 = task.wait(1);
        local Success_66, Error_Message_66 = pcall(function(...)
            local Shared_12 = ReplicatedStorage.Shared;
            local Packages_8 = Shared_12.Packages;
            local Knit_8 = Packages_8.Knit;
            local Knit_8_Module = require(Knit_8);
            local GetController_5 = Knit_8_Module.GetController;
            local _call163 = GetController_5("PlayerController");
            local Replica_13 = _call163.Replica;
            local var164 = (_call163 and Replica_13);
            local Replica_14 = _call163.Replica;
            local Data_13 = Replica_14.Data;
            local var165 = (var164 and Data_13);
            if not var165 then return end -- won't run
            local Replica_15 = _call163.Replica;
            local Data_14 = Replica_15.Data;
            local Quests_9 = Data_14.Quests;
            local Success_67, Error_Message_67 = pcall(function(...)
                local Shared_13 = ReplicatedStorage.Shared;
                local Data_15 = Shared_13.Data;
                local Quests_10 = Data_15.Quests;
                local Quests_10_Module = require(Quests_10);
            end)
            local Not_Quests_9 = not Quests_9;
            local Not_Quests_10_Module = not Quests_10_Module;
            local var166 = (Not_Quests_9 or Not_Quests_10_Module);
            for i_107, v_107 in pairs(Quests_9) do
                local var166 = Quests_10_Module[i_107];
                local Progress_5 = v_107.Progress;
                local var167 = (v_107 and Progress_5);
                local var168 = (var167 and var166);
                -- local _ = var168 and (unknown_value)
            end
            local SetValues_13 = QuestTargetSelect.SetValues;
            local SetValues_14 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_96 = task.wait(1);
        local Success_68, Error_Message_68 = pcall(function(...)
            local Shared_14 = ReplicatedStorage.Shared;
            local Packages_9 = Shared_14.Packages;
            local Knit_9 = Packages_9.Knit;
            local Knit_9_Module = require(Knit_9);
            local GetController_6 = Knit_9_Module.GetController;
            local _call170 = GetController_6("PlayerController");
            local Replica_16 = _call170.Replica;
            local var171 = (_call170 and Replica_16);
            local Replica_17 = _call170.Replica;
            local Data_16 = Replica_17.Data;
            local var172 = (var171 and Data_16);
            if not var172 then return end -- won't run
            local Replica_18 = _call170.Replica;
            local Data_17 = Replica_18.Data;
            local Quests_11 = Data_17.Quests;
            local Success_69, Error_Message_69 = pcall(function(...)
                local Shared_15 = ReplicatedStorage.Shared;
                local Data_18 = Shared_15.Data;
                local Quests_12 = Data_18.Quests;
                local Quests_12_Module = require(Quests_12);
            end)
            local Not_Quests_11 = not Quests_11;
            local Not_Quests_12_Module = not Quests_12_Module;
            local var173 = (Not_Quests_11 or Not_Quests_12_Module);
            for i_108, v_108 in pairs(Quests_11) do
                local var173 = Quests_12_Module[i_108];
                local Progress_6 = v_108.Progress;
                local var174 = (v_108 and Progress_6);
                local var175 = (var174 and var173);
                -- local _ = var175 and (unknown_value)
            end
            local SetValues_15 = QuestTargetSelect.SetValues;
            local SetValues_16 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_97 = task.wait(1);
        local Success_70, Error_Message_70 = pcall(function(...)
            local Shared_16 = ReplicatedStorage.Shared;
            local Packages_10 = Shared_16.Packages;
            local Knit_10 = Packages_10.Knit;
            local Knit_10_Module = require(Knit_10);
            local GetController_7 = Knit_10_Module.GetController;
            local _call177 = GetController_7("PlayerController");
            local Replica_19 = _call177.Replica;
            local var178 = (_call177 and Replica_19);
            local Replica_20 = _call177.Replica;
            local Data_19 = Replica_20.Data;
            local var179 = (var178 and Data_19);
            if not var179 then return end -- won't run
            local Replica_21 = _call177.Replica;
            local Data_20 = Replica_21.Data;
            local Quests_13 = Data_20.Quests;
            local Success_71, Error_Message_71 = pcall(function(...)
                local Shared_17 = ReplicatedStorage.Shared;
                local Data_21 = Shared_17.Data;
                local Quests_14 = Data_21.Quests;
                local Quests_14_Module = require(Quests_14);
            end)
            local Not_Quests_13 = not Quests_13;
            local Not_Quests_14_Module = not Quests_14_Module;
            local var180 = (Not_Quests_13 or Not_Quests_14_Module);
            for i_109, v_109 in pairs(Quests_13) do
                local var180 = Quests_14_Module[i_109];
                local Progress_7 = v_109.Progress;
                local var181 = (v_109 and Progress_7);
                local var182 = (var181 and var180);
                -- local _ = var182 and (unknown_value)
            end
            local SetValues_17 = QuestTargetSelect.SetValues;
            local SetValues_18 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_98 = task.wait(1);
        local Success_72, Error_Message_72 = pcall(function(...)
            local Shared_18 = ReplicatedStorage.Shared;
            local Packages_11 = Shared_18.Packages;
            local Knit_11 = Packages_11.Knit;
            local Knit_11_Module = require(Knit_11);
            local GetController_8 = Knit_11_Module.GetController;
            local _call184 = GetController_8("PlayerController");
            local Replica_22 = _call184.Replica;
            local var185 = (_call184 and Replica_22);
            local Replica_23 = _call184.Replica;
            local Data_22 = Replica_23.Data;
            local var186 = (var185 and Data_22);
            if not var186 then return end -- won't run
            local Replica_24 = _call184.Replica;
            local Data_23 = Replica_24.Data;
            local Quests_15 = Data_23.Quests;
            local Success_73, Error_Message_73 = pcall(function(...)
                local Shared_19 = ReplicatedStorage.Shared;
                local Data_24 = Shared_19.Data;
                local Quests_16 = Data_24.Quests;
                local Quests_16_Module = require(Quests_16);
            end)
            local Not_Quests_15 = not Quests_15;
            local Not_Quests_16_Module = not Quests_16_Module;
            local var187 = (Not_Quests_15 or Not_Quests_16_Module);
            for i_110, v_110 in pairs(Quests_15) do
                local var187 = Quests_16_Module[i_110];
                local Progress_8 = v_110.Progress;
                local var188 = (v_110 and Progress_8);
                local var189 = (var188 and var187);
                -- local _ = var189 and (unknown_value)
            end
            local SetValues_19 = QuestTargetSelect.SetValues;
            local SetValues_20 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_99 = task.wait(1);
        local Success_74, Error_Message_74 = pcall(function(...)
            local Shared_20 = ReplicatedStorage.Shared;
            local Packages_12 = Shared_20.Packages;
            local Knit_12 = Packages_12.Knit;
            local Knit_12_Module = require(Knit_12);
            local GetController_9 = Knit_12_Module.GetController;
            local _call191 = GetController_9("PlayerController");
            local Replica_25 = _call191.Replica;
            local var192 = (_call191 and Replica_25);
            local Replica_26 = _call191.Replica;
            local Data_25 = Replica_26.Data;
            local var193 = (var192 and Data_25);
            if not var193 then return end -- won't run
            local Replica_27 = _call191.Replica;
            local Data_26 = Replica_27.Data;
            local Quests_17 = Data_26.Quests;
            local Success_75, Error_Message_75 = pcall(function(...)
                local Shared_21 = ReplicatedStorage.Shared;
                local Data_27 = Shared_21.Data;
                local Quests_18 = Data_27.Quests;
                local Quests_18_Module = require(Quests_18);
            end)
            local Not_Quests_17 = not Quests_17;
            local Not_Quests_18_Module = not Quests_18_Module;
            local var194 = (Not_Quests_17 or Not_Quests_18_Module);
            for i_111, v_111 in pairs(Quests_17) do
                local var194 = Quests_18_Module[i_111];
                local Progress_9 = v_111.Progress;
                local var195 = (v_111 and Progress_9);
                local var196 = (var195 and var194);
                -- local _ = var196 and (unknown_value)
            end
            local SetValues_21 = QuestTargetSelect.SetValues;
            local SetValues_22 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_100 = task.wait(1);
        local Success_76, Error_Message_76 = pcall(function(...)
            local Shared_22 = ReplicatedStorage.Shared;
            local Packages_13 = Shared_22.Packages;
            local Knit_13 = Packages_13.Knit;
            local Knit_13_Module = require(Knit_13);
            local GetController_10 = Knit_13_Module.GetController;
            local _call198 = GetController_10("PlayerController");
            local Replica_28 = _call198.Replica;
            local var199 = (_call198 and Replica_28);
            local Replica_29 = _call198.Replica;
            local Data_28 = Replica_29.Data;
            local var200 = (var199 and Data_28);
            if not var200 then return end -- won't run
            local Replica_30 = _call198.Replica;
            local Data_29 = Replica_30.Data;
            local Quests_19 = Data_29.Quests;
            local Success_77, Error_Message_77 = pcall(function(...)
                local Shared_23 = ReplicatedStorage.Shared;
                local Data_30 = Shared_23.Data;
                local Quests_20 = Data_30.Quests;
                local Quests_20_Module = require(Quests_20);
            end)
            local Not_Quests_19 = not Quests_19;
            local Not_Quests_20_Module = not Quests_20_Module;
            local var201 = (Not_Quests_19 or Not_Quests_20_Module);
            for i_112, v_112 in pairs(Quests_19) do
                local var201 = Quests_20_Module[i_112];
                local Progress_10 = v_112.Progress;
                local var202 = (v_112 and Progress_10);
                local var203 = (var202 and var201);
                -- local _ = var203 and (unknown_value)
            end
            local SetValues_23 = QuestTargetSelect.SetValues;
            local SetValues_24 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_101 = task.wait(1);
        local Success_78, Error_Message_78 = pcall(function(...)
            local Shared_24 = ReplicatedStorage.Shared;
            local Packages_14 = Shared_24.Packages;
            local Knit_14 = Packages_14.Knit;
            local Knit_14_Module = require(Knit_14);
            local GetController_11 = Knit_14_Module.GetController;
            local _call205 = GetController_11("PlayerController");
            local Replica_31 = _call205.Replica;
            local var206 = (_call205 and Replica_31);
            local Replica_32 = _call205.Replica;
            local Data_31 = Replica_32.Data;
            local var207 = (var206 and Data_31);
            if not var207 then return end -- won't run
            local Replica_33 = _call205.Replica;
            local Data_32 = Replica_33.Data;
            local Quests_21 = Data_32.Quests;
            local Success_79, Error_Message_79 = pcall(function(...)
                local Shared_25 = ReplicatedStorage.Shared;
                local Data_33 = Shared_25.Data;
                local Quests_22 = Data_33.Quests;
                local Quests_22_Module = require(Quests_22);
            end)
            local Not_Quests_21 = not Quests_21;
            local Not_Quests_22_Module = not Quests_22_Module;
            local var208 = (Not_Quests_21 or Not_Quests_22_Module);
            for i_113, v_113 in pairs(Quests_21) do
                local var208 = Quests_22_Module[i_113];
                local Progress_11 = v_113.Progress;
                local var209 = (v_113 and Progress_11);
                local var210 = (var209 and var208);
                -- local _ = var210 and (unknown_value)
            end
            local SetValues_25 = QuestTargetSelect.SetValues;
            local SetValues_26 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_102 = task.wait(1);
        local Success_80, Error_Message_80 = pcall(function(...)
            local Shared_26 = ReplicatedStorage.Shared;
            local Packages_15 = Shared_26.Packages;
            local Knit_15 = Packages_15.Knit;
            local Knit_15_Module = require(Knit_15);
            local GetController_12 = Knit_15_Module.GetController;
            local _call212 = GetController_12("PlayerController");
            local Replica_34 = _call212.Replica;
            local var213 = (_call212 and Replica_34);
            local Replica_35 = _call212.Replica;
            local Data_34 = Replica_35.Data;
            local var214 = (var213 and Data_34);
            if not var214 then return end -- won't run
            local Replica_36 = _call212.Replica;
            local Data_35 = Replica_36.Data;
            local Quests_23 = Data_35.Quests;
            local Success_81, Error_Message_81 = pcall(function(...)
                local Shared_27 = ReplicatedStorage.Shared;
                local Data_36 = Shared_27.Data;
                local Quests_24 = Data_36.Quests;
                local Quests_24_Module = require(Quests_24);
            end)
            local Not_Quests_23 = not Quests_23;
            local Not_Quests_24_Module = not Quests_24_Module;
            local var215 = (Not_Quests_23 or Not_Quests_24_Module);
            for i_114, v_114 in pairs(Quests_23) do
                local var215 = Quests_24_Module[i_114];
                local Progress_12 = v_114.Progress;
                local var216 = (v_114 and Progress_12);
                local var217 = (var216 and var215);
                -- local _ = var217 and (unknown_value)
            end
            local SetValues_27 = QuestTargetSelect.SetValues;
            local SetValues_28 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_103 = task.wait(1);
        local Success_82, Error_Message_82 = pcall(function(...)
            local Shared_28 = ReplicatedStorage.Shared;
            local Packages_16 = Shared_28.Packages;
            local Knit_16 = Packages_16.Knit;
            local Knit_16_Module = require(Knit_16);
            local GetController_13 = Knit_16_Module.GetController;
            local _call219 = GetController_13("PlayerController");
            local Replica_37 = _call219.Replica;
            local var220 = (_call219 and Replica_37);
            local Replica_38 = _call219.Replica;
            local Data_37 = Replica_38.Data;
            local var221 = (var220 and Data_37);
            if not var221 then return end -- won't run
            local Replica_39 = _call219.Replica;
            local Data_38 = Replica_39.Data;
            local Quests_25 = Data_38.Quests;
            local Success_83, Error_Message_83 = pcall(function(...)
                local Shared_29 = ReplicatedStorage.Shared;
                local Data_39 = Shared_29.Data;
                local Quests_26 = Data_39.Quests;
                local Quests_26_Module = require(Quests_26);
            end)
            local Not_Quests_25 = not Quests_25;
            local Not_Quests_26_Module = not Quests_26_Module;
            local var222 = (Not_Quests_25 or Not_Quests_26_Module);
            for i_115, v_115 in pairs(Quests_25) do
                local var222 = Quests_26_Module[i_115];
                local Progress_13 = v_115.Progress;
                local var223 = (v_115 and Progress_13);
                local var224 = (var223 and var222);
                -- local _ = var224 and (unknown_value)
            end
            local SetValues_29 = QuestTargetSelect.SetValues;
            local SetValues_30 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_104 = task.wait(1);
        local Success_84, Error_Message_84 = pcall(function(...)
            local Shared_30 = ReplicatedStorage.Shared;
            local Packages_17 = Shared_30.Packages;
            local Knit_17 = Packages_17.Knit;
            local Knit_17_Module = require(Knit_17);
            local GetController_14 = Knit_17_Module.GetController;
            local _call226 = GetController_14("PlayerController");
            local Replica_40 = _call226.Replica;
            local var227 = (_call226 and Replica_40);
            local Replica_41 = _call226.Replica;
            local Data_40 = Replica_41.Data;
            local var228 = (var227 and Data_40);
            if not var228 then return end -- won't run
            local Replica_42 = _call226.Replica;
            local Data_41 = Replica_42.Data;
            local Quests_27 = Data_41.Quests;
            local Success_85, Error_Message_85 = pcall(function(...)
                local Shared_31 = ReplicatedStorage.Shared;
                local Data_42 = Shared_31.Data;
                local Quests_28 = Data_42.Quests;
                local Quests_28_Module = require(Quests_28);
            end)
            local Not_Quests_27 = not Quests_27;
            local Not_Quests_28_Module = not Quests_28_Module;
            local var229 = (Not_Quests_27 or Not_Quests_28_Module);
            for i_116, v_116 in pairs(Quests_27) do
                local var229 = Quests_28_Module[i_116];
                local Progress_14 = v_116.Progress;
                local var230 = (v_116 and Progress_14);
                local var231 = (var230 and var229);
                -- local _ = var231 and (unknown_value)
            end
            local SetValues_31 = QuestTargetSelect.SetValues;
            local SetValues_32 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_105 = task.wait(1);
        local Success_86, Error_Message_86 = pcall(function(...)
            local Shared_32 = ReplicatedStorage.Shared;
            local Packages_18 = Shared_32.Packages;
            local Knit_18 = Packages_18.Knit;
            local Knit_18_Module = require(Knit_18);
            local GetController_15 = Knit_18_Module.GetController;
            local _call233 = GetController_15("PlayerController");
            local Replica_43 = _call233.Replica;
            local var234 = (_call233 and Replica_43);
            local Replica_44 = _call233.Replica;
            local Data_43 = Replica_44.Data;
            local var235 = (var234 and Data_43);
            if not var235 then return end -- won't run
            local Replica_45 = _call233.Replica;
            local Data_44 = Replica_45.Data;
            local Quests_29 = Data_44.Quests;
            local Success_87, Error_Message_87 = pcall(function(...)
                local Shared_33 = ReplicatedStorage.Shared;
                local Data_45 = Shared_33.Data;
                local Quests_30 = Data_45.Quests;
                local Quests_30_Module = require(Quests_30);
            end)
            local Not_Quests_29 = not Quests_29;
            local Not_Quests_30_Module = not Quests_30_Module;
            local var236 = (Not_Quests_29 or Not_Quests_30_Module);
            for i_117, v_117 in pairs(Quests_29) do
                local var236 = Quests_30_Module[i_117];
                local Progress_15 = v_117.Progress;
                local var237 = (v_117 and Progress_15);
                local var238 = (var237 and var236);
                -- local _ = var238 and (unknown_value)
            end
            local SetValues_33 = QuestTargetSelect.SetValues;
            local SetValues_34 = QuestTargetSelect:SetValues({
                "Không có quest farmable",
            });
        end)
        local Waited_For_106 = task.wait(1);
        local Success_88, Error_Message_88 = pcall(function(...)
            local Shared_34 = ReplicatedStorage.Shared;
            local Packages_19 = Shared_34.Packages;
            local Knit_19 = Packages_19.Knit;
            local Knit_19_Module = require(Knit_19);
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local OnChanged_27 = AutoQuestFarm.OnChanged;
    local OnChanged_28 = AutoQuestFarm:OnChanged(function()
        local AutoQuestFarm_2 = Options.AutoQuestFarm;
        local Value_6 = AutoQuestFarm_2.Value;
        if not Value_6 then return end -- won't run
        local QuestTargetSelect_2 = Options.QuestTargetSelect;
        local Value_7 = QuestTargetSelect_2.Value;
        local Not_Value_7 = not Value_7;
        local Value_7_is_string = (Value_7 == "(Đang load...)");
        local var240 = (Not_Value_7 or Value_7_is_string);
        local Value_7_is_string_2 = (Value_7 == "Không có quest farmable");
        local var241 = (var240 or Value_7_is_string_2);
        local Match_4 = Value_7.match;
        local W = Value_7:match("%[(%w+)%]");
        local Match_5 = Value_7.match;
        local S = Value_7:match("%]%s*([^%(]+)");
        local var242 = (W and S);
        if not var242 then return end -- won't run
        local Lower = W.lower;
        local Lower_2 = W:lower();
        local Lower_2_is_string = (Lower_2 == "ore");
        local Gsub_92 = S.gsub;
        local S_2 = S:gsub("^%s+", "");
        local Gsub_93 = S_2.gsub;
        local s = S_2:gsub("%s+$", "");
        local Success_89, Error_Message_89 = pcall(function(...)
            local Lower_2_is_string_2 = (Lower_2 == "kill");
            local Lower_2_is_string_3 = (Lower_2 == "mine");
            local Lower_2_is_string_4 = (Lower_2 == "collect");
        end)
        local Lower_2_is_string_5 = (Lower_2 == "kill");
        local Lower_2_is_string_6 = (Lower_2 == "collect");
        local Lower_2_is_string_7 = (Lower_2 == "mine");
        local Lower_2_is_string_8 = (Lower_2 == "collect_ore");
        local Lower_2_is_string_9 = (Lower_2 == "equip");
        local Lower_2_is_string_10 = (Lower_2 == "talk");
        local Lower_2_is_string_11 = (Lower_2 == "forge");
        local Lower_2_is_string_12 = (Lower_2 == "ui");
        local var244 = (Lower_2_is_string_11 or Lower_2_is_string_12);
        local Success_90, Error_Message_90 = pcall(function(...)
            local var245 = debug.setconstant;
            local var246 = (debug and nil);
            local var247 = (var246 or setconstant);
            local var248 = debug.getconstants;
            local var249 = (debug and nil);
            local var250 = (var249 or nil);
            local Not_Var247 = not var247;
            local var251 = (Not_Var247 or false);
            local Not_Var250 = not var250;
            local var252 = (var251 or Not_Var250);
            if not var252 then return end -- won't run
            local Notify_9 = Loaded_Var4.Notify;
            local Notify_10 = Loaded_Var4:Notify({
                Duration = 3,
                Title = "Error",
                Content = "Exploit không hỗ trợ camera noclip",
            });
        end)

    end);
    local Spawned_6 = task.spawn(function()
        local Waited_For_107 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_35 = ReplicatedStorage.Shared;
        local Packages_20 = Shared_35.Packages;
        local Knit_20 = Packages_20.Knit;
        local Knit_20_Module = require(Knit_20);
        local GetController_16 = Knit_20_Module.GetController;
        local _call254 = GetController_16("PlayerController");
        local Replica_46 = _call254.Replica;
        local var255 = (_call254 and Replica_46);
        local Replica_47 = _call254.Replica;
        local Data_46 = Replica_47.Data;
        local var256 = (var255 and Data_46);
        if not var256 then return end -- won't run
        local Replica_48 = _call254.Replica;
        local Data_47 = Replica_48.Data;
        local Quests_31 = Data_47.Quests;
        local Success_91, Error_Message_91 = pcall(function(...)
            local Shared_36 = ReplicatedStorage.Shared;
            local Data_48 = Shared_36.Data;
            local Quests_32 = Data_48.Quests;
            local Quests_32_Module = require(Quests_32);
        end)
        local Not_Quests_31 = not Quests_31;
        local Not_Quests_32_Module = not Quests_32_Module;
        local var257 = (Not_Quests_31 or Not_Quests_32_Module);
        for i_118, v_118 in pairs(Quests_31) do
            local var257 = Quests_32_Module[i_118];
            local Progress_16 = v_118.Progress;
            local var258 = (v_118 and Progress_16);
            local var259 = (var258 and var257);
            -- local _ = var259 and (unknown_value)
        end
        if not s then return end -- won't run
        local Success_92, Error_Message_92 = pcall(function(...)
            local AutoMonsterFarm_3 = Options.AutoMonsterFarm;
            local var260 = (Value_2 and AutoMonsterFarm_3);
            if not var260 then return end -- won't run
            local AutoMonsterFarm_4 = Options.AutoMonsterFarm;
            local SetValue_7 = AutoMonsterFarm_4.SetValue;
            local SetValue_8 = AutoMonsterFarm_4:SetValue(false);
        end)
        local SetContent = QuestFarmProgress.SetContent;
        local HoN_ThNh_TT_C_Quest = QuestFarmProgress:SetContent("Đã hoàn thành tất cả quest!");
        local AutoQuestFarm_3 = Options.AutoQuestFarm;
        local SetValue_9 = AutoQuestFarm_3.SetValue;
        local SetValue_10 = AutoQuestFarm_3:SetValue(false);
        local SetContent_2 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_108 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_37 = ReplicatedStorage.Shared;
        local Packages_21 = Shared_37.Packages;
        local Knit_21 = Packages_21.Knit;
        local Knit_21_Module = require(Knit_21);
        local GetController_17 = Knit_21_Module.GetController;
        local _call263 = GetController_17("PlayerController");
        local Replica_49 = _call263.Replica;
        local var264 = (_call263 and Replica_49);
        local Replica_50 = _call263.Replica;
        local Data_49 = Replica_50.Data;
        local var265 = (var264 and Data_49);
        if not var265 then return end -- won't run
        local Replica_51 = _call263.Replica;
        local Data_50 = Replica_51.Data;
        local Quests_33 = Data_50.Quests;
        local Success_93, Error_Message_93 = pcall(function(...)
            local Shared_38 = ReplicatedStorage.Shared;
            local Data_51 = Shared_38.Data;
            local Quests_34 = Data_51.Quests;
            local Quests_34_Module = require(Quests_34);
        end)
        local Not_Quests_33 = not Quests_33;
        local Not_Quests_34_Module = not Quests_34_Module;
        local var266 = (Not_Quests_33 or Not_Quests_34_Module);
        for i_119, v_119 in pairs(Quests_33) do
            local var266 = Quests_34_Module[i_119];
            local Progress_17 = v_119.Progress;
            local var267 = (v_119 and Progress_17);
            local var268 = (var267 and var266);
            -- local _ = var268 and (unknown_value)
        end
        local SetContent_3 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_2 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_109 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_39 = ReplicatedStorage.Shared;
        local Packages_22 = Shared_39.Packages;
        local Knit_22 = Packages_22.Knit;
        local Knit_22_Module = require(Knit_22);
        local GetController_18 = Knit_22_Module.GetController;
        local _call269 = GetController_18("PlayerController");
        local Replica_52 = _call269.Replica;
        local var270 = (_call269 and Replica_52);
        local Replica_53 = _call269.Replica;
        local Data_52 = Replica_53.Data;
        local var271 = (var270 and Data_52);
        if not var271 then return end -- won't run
        local Replica_54 = _call269.Replica;
        local Data_53 = Replica_54.Data;
        local Quests_35 = Data_53.Quests;
        local Success_94, Error_Message_94 = pcall(function(...)
            local Shared_40 = ReplicatedStorage.Shared;
            local Data_54 = Shared_40.Data;
            local Quests_36 = Data_54.Quests;
            local Quests_36_Module = require(Quests_36);
        end)
        local Not_Quests_35 = not Quests_35;
        local Not_Quests_36_Module = not Quests_36_Module;
        local var272 = (Not_Quests_35 or Not_Quests_36_Module);
        for i_120, v_120 in pairs(Quests_35) do
            local var272 = Quests_36_Module[i_120];
            local Progress_18 = v_120.Progress;
            local var273 = (v_120 and Progress_18);
            local var274 = (var273 and var272);
            -- local _ = var274 and (unknown_value)
        end
        local SetContent_4 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_3 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_110 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_41 = ReplicatedStorage.Shared;
        local Packages_23 = Shared_41.Packages;
        local Knit_23 = Packages_23.Knit;
        local Knit_23_Module = require(Knit_23);
        local GetController_19 = Knit_23_Module.GetController;
        local _call275 = GetController_19("PlayerController");
        local Replica_55 = _call275.Replica;
        local var276 = (_call275 and Replica_55);
        local Replica_56 = _call275.Replica;
        local Data_55 = Replica_56.Data;
        local var277 = (var276 and Data_55);
        if not var277 then return end -- won't run
        local Replica_57 = _call275.Replica;
        local Data_56 = Replica_57.Data;
        local Quests_37 = Data_56.Quests;
        local Success_95, Error_Message_95 = pcall(function(...)
            local Shared_42 = ReplicatedStorage.Shared;
            local Data_57 = Shared_42.Data;
            local Quests_38 = Data_57.Quests;
            local Quests_38_Module = require(Quests_38);
        end)
        local Not_Quests_37 = not Quests_37;
        local Not_Quests_38_Module = not Quests_38_Module;
        local var278 = (Not_Quests_37 or Not_Quests_38_Module);
        for i_121, v_121 in pairs(Quests_37) do
            local var278 = Quests_38_Module[i_121];
            local Progress_19 = v_121.Progress;
            local var279 = (v_121 and Progress_19);
            local var280 = (var279 and var278);
            -- local _ = var280 and (unknown_value)
        end
        local SetContent_5 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_4 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_111 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_43 = ReplicatedStorage.Shared;
        local Packages_24 = Shared_43.Packages;
        local Knit_24 = Packages_24.Knit;
        local Knit_24_Module = require(Knit_24);
        local GetController_20 = Knit_24_Module.GetController;
        local _call281 = GetController_20("PlayerController");
        local Replica_58 = _call281.Replica;
        local var282 = (_call281 and Replica_58);
        local Replica_59 = _call281.Replica;
        local Data_58 = Replica_59.Data;
        local var283 = (var282 and Data_58);
        if not var283 then return end -- won't run
        local Replica_60 = _call281.Replica;
        local Data_59 = Replica_60.Data;
        local Quests_39 = Data_59.Quests;
        local Success_96, Error_Message_96 = pcall(function(...)
            local Shared_44 = ReplicatedStorage.Shared;
            local Data_60 = Shared_44.Data;
            local Quests_40 = Data_60.Quests;
            local Quests_40_Module = require(Quests_40);
        end)
        local Not_Quests_39 = not Quests_39;
        local Not_Quests_40_Module = not Quests_40_Module;
        local var284 = (Not_Quests_39 or Not_Quests_40_Module);
        for i_122, v_122 in pairs(Quests_39) do
            local var284 = Quests_40_Module[i_122];
            local Progress_20 = v_122.Progress;
            local var285 = (v_122 and Progress_20);
            local var286 = (var285 and var284);
            -- local _ = var286 and (unknown_value)
        end
        local SetContent_6 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_5 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_112 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_45 = ReplicatedStorage.Shared;
        local Packages_25 = Shared_45.Packages;
        local Knit_25 = Packages_25.Knit;
        local Knit_25_Module = require(Knit_25);
        local GetController_21 = Knit_25_Module.GetController;
        local _call287 = GetController_21("PlayerController");
        local Replica_61 = _call287.Replica;
        local var288 = (_call287 and Replica_61);
        local Replica_62 = _call287.Replica;
        local Data_61 = Replica_62.Data;
        local var289 = (var288 and Data_61);
        if not var289 then return end -- won't run
        local Replica_63 = _call287.Replica;
        local Data_62 = Replica_63.Data;
        local Quests_41 = Data_62.Quests;
        local Success_97, Error_Message_97 = pcall(function(...)
            local Shared_46 = ReplicatedStorage.Shared;
            local Data_63 = Shared_46.Data;
            local Quests_42 = Data_63.Quests;
            local Quests_42_Module = require(Quests_42);
        end)
        local Not_Quests_41 = not Quests_41;
        local Not_Quests_42_Module = not Quests_42_Module;
        local var290 = (Not_Quests_41 or Not_Quests_42_Module);
        for i_123, v_123 in pairs(Quests_41) do
            local var290 = Quests_42_Module[i_123];
            local Progress_21 = v_123.Progress;
            local var291 = (v_123 and Progress_21);
            local var292 = (var291 and var290);
            -- local _ = var292 and (unknown_value)
        end
        local SetContent_7 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_6 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_113 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_47 = ReplicatedStorage.Shared;
        local Packages_26 = Shared_47.Packages;
        local Knit_26 = Packages_26.Knit;
        local Knit_26_Module = require(Knit_26);
        local GetController_22 = Knit_26_Module.GetController;
        local _call293 = GetController_22("PlayerController");
        local Replica_64 = _call293.Replica;
        local var294 = (_call293 and Replica_64);
        local Replica_65 = _call293.Replica;
        local Data_64 = Replica_65.Data;
        local var295 = (var294 and Data_64);
        if not var295 then return end -- won't run
        local Replica_66 = _call293.Replica;
        local Data_65 = Replica_66.Data;
        local Quests_43 = Data_65.Quests;
        local Success_98, Error_Message_98 = pcall(function(...)
            local Shared_48 = ReplicatedStorage.Shared;
            local Data_66 = Shared_48.Data;
            local Quests_44 = Data_66.Quests;
            local Quests_44_Module = require(Quests_44);
        end)
        local Not_Quests_43 = not Quests_43;
        local Not_Quests_44_Module = not Quests_44_Module;
        local var296 = (Not_Quests_43 or Not_Quests_44_Module);
        for i_124, v_124 in pairs(Quests_43) do
            local var296 = Quests_44_Module[i_124];
            local Progress_22 = v_124.Progress;
            local var297 = (v_124 and Progress_22);
            local var298 = (var297 and var296);
            -- local _ = var298 and (unknown_value)
        end
        local SetContent_8 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_7 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_114 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_49 = ReplicatedStorage.Shared;
        local Packages_27 = Shared_49.Packages;
        local Knit_27 = Packages_27.Knit;
        local Knit_27_Module = require(Knit_27);
        local GetController_23 = Knit_27_Module.GetController;
        local _call299 = GetController_23("PlayerController");
        local Replica_67 = _call299.Replica;
        local var300 = (_call299 and Replica_67);
        local Replica_68 = _call299.Replica;
        local Data_67 = Replica_68.Data;
        local var301 = (var300 and Data_67);
        if not var301 then return end -- won't run
        local Replica_69 = _call299.Replica;
        local Data_68 = Replica_69.Data;
        local Quests_45 = Data_68.Quests;
        local Success_99, Error_Message_99 = pcall(function(...)
            local Shared_50 = ReplicatedStorage.Shared;
            local Data_69 = Shared_50.Data;
            local Quests_46 = Data_69.Quests;
            local Quests_46_Module = require(Quests_46);
        end)
        local Not_Quests_45 = not Quests_45;
        local Not_Quests_46_Module = not Quests_46_Module;
        local var302 = (Not_Quests_45 or Not_Quests_46_Module);
        for i_125, v_125 in pairs(Quests_45) do
            local var302 = Quests_46_Module[i_125];
            local Progress_23 = v_125.Progress;
            local var303 = (v_125 and Progress_23);
            local var304 = (var303 and var302);
            -- local _ = var304 and (unknown_value)
        end
        local SetContent_9 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_8 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_115 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_51 = ReplicatedStorage.Shared;
        local Packages_28 = Shared_51.Packages;
        local Knit_28 = Packages_28.Knit;
        local Knit_28_Module = require(Knit_28);
        local GetController_24 = Knit_28_Module.GetController;
        local _call305 = GetController_24("PlayerController");
        local Replica_70 = _call305.Replica;
        local var306 = (_call305 and Replica_70);
        local Replica_71 = _call305.Replica;
        local Data_70 = Replica_71.Data;
        local var307 = (var306 and Data_70);
        if not var307 then return end -- won't run
        local Replica_72 = _call305.Replica;
        local Data_71 = Replica_72.Data;
        local Quests_47 = Data_71.Quests;
        local Success_100, Error_Message_100 = pcall(function(...)
            local Shared_52 = ReplicatedStorage.Shared;
            local Data_72 = Shared_52.Data;
            local Quests_48 = Data_72.Quests;
            local Quests_48_Module = require(Quests_48);
        end)
        local Not_Quests_47 = not Quests_47;
        local Not_Quests_48_Module = not Quests_48_Module;
        local var308 = (Not_Quests_47 or Not_Quests_48_Module);
        for i_126, v_126 in pairs(Quests_47) do
            local var308 = Quests_48_Module[i_126];
            local Progress_24 = v_126.Progress;
            local var309 = (v_126 and Progress_24);
            local var310 = (var309 and var308);
            -- local _ = var310 and (unknown_value)
        end
        local SetContent_10 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_9 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_116 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_53 = ReplicatedStorage.Shared;
        local Packages_29 = Shared_53.Packages;
        local Knit_29 = Packages_29.Knit;
        local Knit_29_Module = require(Knit_29);
        local GetController_25 = Knit_29_Module.GetController;
        local _call311 = GetController_25("PlayerController");
        local Replica_73 = _call311.Replica;
        local var312 = (_call311 and Replica_73);
        local Replica_74 = _call311.Replica;
        local Data_73 = Replica_74.Data;
        local var313 = (var312 and Data_73);
        if not var313 then return end -- won't run
        local Replica_75 = _call311.Replica;
        local Data_74 = Replica_75.Data;
        local Quests_49 = Data_74.Quests;
        local Success_101, Error_Message_101 = pcall(function(...)
            local Shared_54 = ReplicatedStorage.Shared;
            local Data_75 = Shared_54.Data;
            local Quests_50 = Data_75.Quests;
            local Quests_50_Module = require(Quests_50);
        end)
        local Not_Quests_49 = not Quests_49;
        local Not_Quests_50_Module = not Quests_50_Module;
        local var314 = (Not_Quests_49 or Not_Quests_50_Module);
        for i_127, v_127 in pairs(Quests_49) do
            local var314 = Quests_50_Module[i_127];
            local Progress_25 = v_127.Progress;
            local var315 = (v_127 and Progress_25);
            local var316 = (var315 and var314);
            -- local _ = var316 and (unknown_value)
        end
        local SetContent_11 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_10 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_117 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_55 = ReplicatedStorage.Shared;
        local Packages_30 = Shared_55.Packages;
        local Knit_30 = Packages_30.Knit;
        local Knit_30_Module = require(Knit_30);
        local GetController_26 = Knit_30_Module.GetController;
        local _call317 = GetController_26("PlayerController");
        local Replica_76 = _call317.Replica;
        local var318 = (_call317 and Replica_76);
        local Replica_77 = _call317.Replica;
        local Data_76 = Replica_77.Data;
        local var319 = (var318 and Data_76);
        if not var319 then return end -- won't run
        local Replica_78 = _call317.Replica;
        local Data_77 = Replica_78.Data;
        local Quests_51 = Data_77.Quests;
        local Success_102, Error_Message_102 = pcall(function(...)
            local Shared_56 = ReplicatedStorage.Shared;
            local Data_78 = Shared_56.Data;
            local Quests_52 = Data_78.Quests;
            local Quests_52_Module = require(Quests_52);
        end)
        local Not_Quests_51 = not Quests_51;
        local Not_Quests_52_Module = not Quests_52_Module;
        local var320 = (Not_Quests_51 or Not_Quests_52_Module);
        for i_128, v_128 in pairs(Quests_51) do
            local var320 = Quests_52_Module[i_128];
            local Progress_26 = v_128.Progress;
            local var321 = (v_128 and Progress_26);
            local var322 = (var321 and var320);
            -- local _ = var322 and (unknown_value)
        end
        local SetContent_12 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_11 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_118 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_57 = ReplicatedStorage.Shared;
        local Packages_31 = Shared_57.Packages;
        local Knit_31 = Packages_31.Knit;
        local Knit_31_Module = require(Knit_31);
        local GetController_27 = Knit_31_Module.GetController;
        local _call323 = GetController_27("PlayerController");
        local Replica_79 = _call323.Replica;
        local var324 = (_call323 and Replica_79);
        local Replica_80 = _call323.Replica;
        local Data_79 = Replica_80.Data;
        local var325 = (var324 and Data_79);
        if not var325 then return end -- won't run
        local Replica_81 = _call323.Replica;
        local Data_80 = Replica_81.Data;
        local Quests_53 = Data_80.Quests;
        local Success_103, Error_Message_103 = pcall(function(...)
            local Shared_58 = ReplicatedStorage.Shared;
            local Data_81 = Shared_58.Data;
            local Quests_54 = Data_81.Quests;
            local Quests_54_Module = require(Quests_54);
        end)
        local Not_Quests_53 = not Quests_53;
        local Not_Quests_54_Module = not Quests_54_Module;
        local var326 = (Not_Quests_53 or Not_Quests_54_Module);
        for i_129, v_129 in pairs(Quests_53) do
            local var326 = Quests_54_Module[i_129];
            local Progress_27 = v_129.Progress;
            local var327 = (v_129 and Progress_27);
            local var328 = (var327 and var326);
            -- local _ = var328 and (unknown_value)
        end
        local SetContent_13 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_12 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_119 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_59 = ReplicatedStorage.Shared;
        local Packages_32 = Shared_59.Packages;
        local Knit_32 = Packages_32.Knit;
        local Knit_32_Module = require(Knit_32);
        local GetController_28 = Knit_32_Module.GetController;
        local _call329 = GetController_28("PlayerController");
        local Replica_82 = _call329.Replica;
        local var330 = (_call329 and Replica_82);
        local Replica_83 = _call329.Replica;
        local Data_82 = Replica_83.Data;
        local var331 = (var330 and Data_82);
        if not var331 then return end -- won't run
        local Replica_84 = _call329.Replica;
        local Data_83 = Replica_84.Data;
        local Quests_55 = Data_83.Quests;
        local Success_104, Error_Message_104 = pcall(function(...)
            local Shared_60 = ReplicatedStorage.Shared;
            local Data_84 = Shared_60.Data;
            local Quests_56 = Data_84.Quests;
            local Quests_56_Module = require(Quests_56);
        end)
        local Not_Quests_55 = not Quests_55;
        local Not_Quests_56_Module = not Quests_56_Module;
        local var332 = (Not_Quests_55 or Not_Quests_56_Module);
        for i_130, v_130 in pairs(Quests_55) do
            local var332 = Quests_56_Module[i_130];
            local Progress_28 = v_130.Progress;
            local var333 = (v_130 and Progress_28);
            local var334 = (var333 and var332);
            -- local _ = var334 and (unknown_value)
        end
        local SetContent_14 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_13 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_120 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_61 = ReplicatedStorage.Shared;
        local Packages_33 = Shared_61.Packages;
        local Knit_33 = Packages_33.Knit;
        local Knit_33_Module = require(Knit_33);
        local GetController_29 = Knit_33_Module.GetController;
        local _call335 = GetController_29("PlayerController");
        local Replica_85 = _call335.Replica;
        local var336 = (_call335 and Replica_85);
        local Replica_86 = _call335.Replica;
        local Data_85 = Replica_86.Data;
        local var337 = (var336 and Data_85);
        if not var337 then return end -- won't run
        local Replica_87 = _call335.Replica;
        local Data_86 = Replica_87.Data;
        local Quests_57 = Data_86.Quests;
        local Success_105, Error_Message_105 = pcall(function(...)
            local Shared_62 = ReplicatedStorage.Shared;
            local Data_87 = Shared_62.Data;
            local Quests_58 = Data_87.Quests;
            local Quests_58_Module = require(Quests_58);
        end)
        local Not_Quests_57 = not Quests_57;
        local Not_Quests_58_Module = not Quests_58_Module;
        local var338 = (Not_Quests_57 or Not_Quests_58_Module);
        for i_131, v_131 in pairs(Quests_57) do
            local var338 = Quests_58_Module[i_131];
            local Progress_29 = v_131.Progress;
            local var339 = (v_131 and Progress_29);
            local var340 = (var339 and var338);
            -- local _ = var340 and (unknown_value)
        end
        local SetContent_15 = QuestFarmProgress.SetContent;
        local KhNg_CN_Quest_Farmable_14 = QuestFarmProgress:SetContent("Không còn quest farmable");
        local Waited_For_121 = task.wait(3);
        if not Value_6 then return end -- won't run
        local Shared_63 = ReplicatedStorage.Shared;
        local Packages_34 = Shared_63.Packages;
        local Knit_34 = Packages_34.Knit;
        local Knit_34_Module = require(Knit_34);
        local GetController_30 = Knit_34_Module.GetController;
        local _call341 = GetController_30("PlayerController");
        local Replica_88 = _call341.Replica;
        local var342 = (_call341 and Replica_88);
        local Replica_89 = _call341.Replica;
        local Data_88 = Replica_89.Data;
        local var343 = (var342 and Data_88);
        if not var343 then return end -- won't run
        local Replica_90 = _call341.Replica;
        local Data_89 = Replica_90.Data;
        local Quests_59 = Data_89.Quests;
        local Success_106, Error_Message_106 = pcall(function(...)
            local Shared_64 = ReplicatedStorage.Shared;
            local Data_90 = Shared_64.Data;
            local Quests_60 = Data_90.Quests;
            local Quests_60_Module = require(Quests_60);
        end)
        local Not_Quests_59 = not Quests_59;
        local Not_Quests_60_Module = not Quests_60_Module;
        local var344 = (Not_Quests_59 or Not_Quests_60_Module);
        for i_132, v_132 in pairs(Quests_59) do
            local var344 = Quests_60_Module[i_132];
            local Progress_30 = v_132.Progress;
            local var345 = (v_132 and Progress_30);
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        end

    end);
    local AddSection = Tab_4.AddSection;
    local AUTO_COMBAT = Tab_4:AddSection("AUTO COMBAT");
    local CreateToggle_7 = Tab_4.CreateToggle;
    local AutoAttack = Tab_4:CreateToggle("AutoAttack", {
        Default = false,
        Title = "Auto Attack",
        Description = "Tự động tấn công khi cầm vũ khí",
    });
    local CreateSlider = Tab_4.CreateSlider;
    local AttackSpeed = Tab_4:CreateSlider("AttackSpeed", {
        Min = 0.1,
        Title = "Attack Speed",
        Max = 2,
        Description = "Điều chỉnh tốc độ tấn công (giây)",
        Default = 0.3,
        Rounding = 1,
    });
    local CreateToggle_8 = Tab_4.CreateToggle;
    local HeavyAttack = Tab_4:CreateToggle("HeavyAttack", {
        Default = false,
        Title = "Use Heavy Attack",
        Description = "Sử dụng đòn mạnh",
    });
    local OnChanged_29 = AttackSpeed.OnChanged;
    local OnChanged_30 = AttackSpeed:OnChanged(function(p1_0)

    end);
    local OnChanged_31 = AutoAttack.OnChanged;
    local OnChanged_32 = AutoAttack:OnChanged(function()
        local AutoAttack_2 = Options.AutoAttack;
        local Value_8 = AutoAttack_2.Value;

    end);
    local Spawned_7 = task.spawn(function()
        local Waited_For_122 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_106 = LocalPlayer.Character;
        local Not_Character_106 = not Character_106;
        local Weapon = Character_106:FindFirstChild("Weapon");
        if not Weapon then return end -- won't run
        local HeavyAttack_2 = Options.HeavyAttack;
        local HeavyAttack_3 = Options.HeavyAttack;
        local Value_9 = HeavyAttack_3.Value;
        local var346 = (HeavyAttack_2 and Value_9);
        local var347 = (var346 or false);
        local Success_107, Error_Message_107 = pcall(function(...)
            if not Value_9 then return end -- won't run
            local Shared_65 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_19 = Shared_65.WaitForChild;
            local Packages_35 = Shared_65:WaitForChild("Packages");
            local WaitForChild_20 = Packages_35.WaitForChild;
            local Knit_35 = Packages_35:WaitForChild("Knit");
            local WaitForChild_21 = Knit_35.WaitForChild;
            local Services_4 = Knit_35:WaitForChild("Services");
            local WaitForChild_22 = Services_4.WaitForChild;
            local ToolService = Services_4:WaitForChild("ToolService");
            local WaitForChild_23 = ToolService.WaitForChild;
            local RF_4 = ToolService:WaitForChild("RF");
            local WaitForChild_24 = RF_4.WaitForChild;
            local ToolActivated = RF_4:WaitForChild("ToolActivated");
            local InvokeServer_7 = ToolActivated.InvokeServer;
            local Weapon_2 = ToolActivated:InvokeServer("Weapon", true);
        end)
        local Waited_For_123 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_107 = LocalPlayer.Character;
        local Not_Character_107 = not Character_107;
        local Weapon_3 = Character_107:FindFirstChild("Weapon");
        if not Weapon_3 then return end -- won't run
        local HeavyAttack_4 = Options.HeavyAttack;
        local HeavyAttack_5 = Options.HeavyAttack;
        local Value_10 = HeavyAttack_5.Value;
        local var348 = (HeavyAttack_4 and Value_10);
        local var349 = (var348 or false);
        local Success_108, Error_Message_108 = pcall(function(...)
            if not Value_10 then return end -- won't run
            local Shared_66 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_25 = Shared_66.WaitForChild;
            local Packages_36 = Shared_66:WaitForChild("Packages");
            local WaitForChild_26 = Packages_36.WaitForChild;
            local Knit_36 = Packages_36:WaitForChild("Knit");
            local WaitForChild_27 = Knit_36.WaitForChild;
            local Services_5 = Knit_36:WaitForChild("Services");
            local WaitForChild_28 = Services_5.WaitForChild;
            local ToolService_2 = Services_5:WaitForChild("ToolService");
            local WaitForChild_29 = ToolService_2.WaitForChild;
            local RF_5 = ToolService_2:WaitForChild("RF");
            local WaitForChild_30 = RF_5.WaitForChild;
            local ToolActivated_2 = RF_5:WaitForChild("ToolActivated");
            local InvokeServer_8 = ToolActivated_2.InvokeServer;
            local Weapon_4 = ToolActivated_2:InvokeServer("Weapon", true);
        end)
        local Waited_For_124 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_108 = LocalPlayer.Character;
        local Not_Character_108 = not Character_108;
        local Weapon_5 = Character_108:FindFirstChild("Weapon");
        if not Weapon_5 then return end -- won't run
        local HeavyAttack_6 = Options.HeavyAttack;
        local HeavyAttack_7 = Options.HeavyAttack;
        local Value_11 = HeavyAttack_7.Value;
        local var350 = (HeavyAttack_6 and Value_11);
        local var351 = (var350 or false);
        local Success_109, Error_Message_109 = pcall(function(...)
            if not Value_11 then return end -- won't run
            local Shared_67 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_31 = Shared_67.WaitForChild;
            local Packages_37 = Shared_67:WaitForChild("Packages");
            local WaitForChild_32 = Packages_37.WaitForChild;
            local Knit_37 = Packages_37:WaitForChild("Knit");
            local WaitForChild_33 = Knit_37.WaitForChild;
            local Services_6 = Knit_37:WaitForChild("Services");
            local WaitForChild_34 = Services_6.WaitForChild;
            local ToolService_3 = Services_6:WaitForChild("ToolService");
            local WaitForChild_35 = ToolService_3.WaitForChild;
            local RF_6 = ToolService_3:WaitForChild("RF");
            local WaitForChild_36 = RF_6.WaitForChild;
            local ToolActivated_3 = RF_6:WaitForChild("ToolActivated");
            local InvokeServer_9 = ToolActivated_3.InvokeServer;
            local Weapon_6 = ToolActivated_3:InvokeServer("Weapon", true);
        end)
        local Waited_For_125 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_109 = LocalPlayer.Character;
        local Not_Character_109 = not Character_109;
        local Weapon_7 = Character_109:FindFirstChild("Weapon");
        if not Weapon_7 then return end -- won't run
        local HeavyAttack_8 = Options.HeavyAttack;
        local HeavyAttack_9 = Options.HeavyAttack;
        local Value_12 = HeavyAttack_9.Value;
        local var352 = (HeavyAttack_8 and Value_12);
        local var353 = (var352 or false);
        local Success_110, Error_Message_110 = pcall(function(...)
            if not Value_12 then return end -- won't run
            local Shared_68 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_37 = Shared_68.WaitForChild;
            local Packages_38 = Shared_68:WaitForChild("Packages");
            local WaitForChild_38 = Packages_38.WaitForChild;
            local Knit_38 = Packages_38:WaitForChild("Knit");
            local WaitForChild_39 = Knit_38.WaitForChild;
            local Services_7 = Knit_38:WaitForChild("Services");
            local WaitForChild_40 = Services_7.WaitForChild;
            local ToolService_4 = Services_7:WaitForChild("ToolService");
            local WaitForChild_41 = ToolService_4.WaitForChild;
            local RF_7 = ToolService_4:WaitForChild("RF");
            local WaitForChild_42 = RF_7.WaitForChild;
            local ToolActivated_4 = RF_7:WaitForChild("ToolActivated");
            local InvokeServer_10 = ToolActivated_4.InvokeServer;
            local Weapon_8 = ToolActivated_4:InvokeServer("Weapon", true);
        end)
        local Waited_For_126 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_110 = LocalPlayer.Character;
        local Not_Character_110 = not Character_110;
        local Weapon_9 = Character_110:FindFirstChild("Weapon");
        if not Weapon_9 then return end -- won't run
        local HeavyAttack_10 = Options.HeavyAttack;
        local HeavyAttack_11 = Options.HeavyAttack;
        local Value_13 = HeavyAttack_11.Value;
        local var354 = (HeavyAttack_10 and Value_13);
        local var355 = (var354 or false);
        local Success_111, Error_Message_111 = pcall(function(...)
            if not Value_13 then return end -- won't run
            local Shared_69 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_43 = Shared_69.WaitForChild;
            local Packages_39 = Shared_69:WaitForChild("Packages");
            local WaitForChild_44 = Packages_39.WaitForChild;
            local Knit_39 = Packages_39:WaitForChild("Knit");
            local WaitForChild_45 = Knit_39.WaitForChild;
            local Services_8 = Knit_39:WaitForChild("Services");
            local WaitForChild_46 = Services_8.WaitForChild;
            local ToolService_5 = Services_8:WaitForChild("ToolService");
            local WaitForChild_47 = ToolService_5.WaitForChild;
            local RF_8 = ToolService_5:WaitForChild("RF");
            local WaitForChild_48 = RF_8.WaitForChild;
            local ToolActivated_5 = RF_8:WaitForChild("ToolActivated");
            local InvokeServer_11 = ToolActivated_5.InvokeServer;
            local Weapon_10 = ToolActivated_5:InvokeServer("Weapon", true);
        end)
        local Waited_For_127 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_111 = LocalPlayer.Character;
        local Not_Character_111 = not Character_111;
        local Weapon_11 = Character_111:FindFirstChild("Weapon");
        if not Weapon_11 then return end -- won't run
        local HeavyAttack_12 = Options.HeavyAttack;
        local HeavyAttack_13 = Options.HeavyAttack;
        local Value_14 = HeavyAttack_13.Value;
        local var356 = (HeavyAttack_12 and Value_14);
        local var357 = (var356 or false);
        local Success_112, Error_Message_112 = pcall(function(...)
            if not Value_14 then return end -- won't run
            local Shared_70 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_49 = Shared_70.WaitForChild;
            local Packages_40 = Shared_70:WaitForChild("Packages");
            local WaitForChild_50 = Packages_40.WaitForChild;
            local Knit_40 = Packages_40:WaitForChild("Knit");
            local WaitForChild_51 = Knit_40.WaitForChild;
            local Services_9 = Knit_40:WaitForChild("Services");
            local WaitForChild_52 = Services_9.WaitForChild;
            local ToolService_6 = Services_9:WaitForChild("ToolService");
            local WaitForChild_53 = ToolService_6.WaitForChild;
            local RF_9 = ToolService_6:WaitForChild("RF");
            local WaitForChild_54 = RF_9.WaitForChild;
            local ToolActivated_6 = RF_9:WaitForChild("ToolActivated");
            local InvokeServer_12 = ToolActivated_6.InvokeServer;
            local Weapon_12 = ToolActivated_6:InvokeServer("Weapon", true);
        end)
        local Waited_For_128 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_112 = LocalPlayer.Character;
        local Not_Character_112 = not Character_112;
        local Weapon_13 = Character_112:FindFirstChild("Weapon");
        if not Weapon_13 then return end -- won't run
        local HeavyAttack_14 = Options.HeavyAttack;
        local HeavyAttack_15 = Options.HeavyAttack;
        local Value_15 = HeavyAttack_15.Value;
        local var358 = (HeavyAttack_14 and Value_15);
        local var359 = (var358 or false);
        local Success_113, Error_Message_113 = pcall(function(...)
            if not Value_15 then return end -- won't run
            local Shared_71 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_55 = Shared_71.WaitForChild;
            local Packages_41 = Shared_71:WaitForChild("Packages");
            local WaitForChild_56 = Packages_41.WaitForChild;
            local Knit_41 = Packages_41:WaitForChild("Knit");
            local WaitForChild_57 = Knit_41.WaitForChild;
            local Services_10 = Knit_41:WaitForChild("Services");
            local WaitForChild_58 = Services_10.WaitForChild;
            local ToolService_7 = Services_10:WaitForChild("ToolService");
            local WaitForChild_59 = ToolService_7.WaitForChild;
            local RF_10 = ToolService_7:WaitForChild("RF");
            local WaitForChild_60 = RF_10.WaitForChild;
            local ToolActivated_7 = RF_10:WaitForChild("ToolActivated");
            local InvokeServer_13 = ToolActivated_7.InvokeServer;
            local Weapon_14 = ToolActivated_7:InvokeServer("Weapon", true);
        end)
        local Waited_For_129 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_113 = LocalPlayer.Character;
        local Not_Character_113 = not Character_113;
        local Weapon_15 = Character_113:FindFirstChild("Weapon");
        if not Weapon_15 then return end -- won't run
        local HeavyAttack_16 = Options.HeavyAttack;
        local HeavyAttack_17 = Options.HeavyAttack;
        local Value_16 = HeavyAttack_17.Value;
        local var360 = (HeavyAttack_16 and Value_16);
        local var361 = (var360 or false);
        local Success_114, Error_Message_114 = pcall(function(...)
            if not Value_16 then return end -- won't run
            local Shared_72 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_61 = Shared_72.WaitForChild;
            local Packages_42 = Shared_72:WaitForChild("Packages");
            local WaitForChild_62 = Packages_42.WaitForChild;
            local Knit_42 = Packages_42:WaitForChild("Knit");
            local WaitForChild_63 = Knit_42.WaitForChild;
            local Services_11 = Knit_42:WaitForChild("Services");
            local WaitForChild_64 = Services_11.WaitForChild;
            local ToolService_8 = Services_11:WaitForChild("ToolService");
            local WaitForChild_65 = ToolService_8.WaitForChild;
            local RF_11 = ToolService_8:WaitForChild("RF");
            local WaitForChild_66 = RF_11.WaitForChild;
            local ToolActivated_8 = RF_11:WaitForChild("ToolActivated");
            local InvokeServer_14 = ToolActivated_8.InvokeServer;
            local Weapon_16 = ToolActivated_8:InvokeServer("Weapon", true);
        end)
        local Waited_For_130 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_114 = LocalPlayer.Character;
        local Not_Character_114 = not Character_114;
        local Weapon_17 = Character_114:FindFirstChild("Weapon");
        if not Weapon_17 then return end -- won't run
        local HeavyAttack_18 = Options.HeavyAttack;
        local HeavyAttack_19 = Options.HeavyAttack;
        local Value_17 = HeavyAttack_19.Value;
        local var362 = (HeavyAttack_18 and Value_17);
        local var363 = (var362 or false);
        local Success_115, Error_Message_115 = pcall(function(...)
            if not Value_17 then return end -- won't run
            local Shared_73 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_67 = Shared_73.WaitForChild;
            local Packages_43 = Shared_73:WaitForChild("Packages");
            local WaitForChild_68 = Packages_43.WaitForChild;
            local Knit_43 = Packages_43:WaitForChild("Knit");
            local WaitForChild_69 = Knit_43.WaitForChild;
            local Services_12 = Knit_43:WaitForChild("Services");
            local WaitForChild_70 = Services_12.WaitForChild;
            local ToolService_9 = Services_12:WaitForChild("ToolService");
            local WaitForChild_71 = ToolService_9.WaitForChild;
            local RF_12 = ToolService_9:WaitForChild("RF");
            local WaitForChild_72 = RF_12.WaitForChild;
            local ToolActivated_9 = RF_12:WaitForChild("ToolActivated");
            local InvokeServer_15 = ToolActivated_9.InvokeServer;
            local Weapon_18 = ToolActivated_9:InvokeServer("Weapon", true);
        end)
        local Waited_For_131 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_115 = LocalPlayer.Character;
        local Not_Character_115 = not Character_115;
        local Weapon_19 = Character_115:FindFirstChild("Weapon");
        if not Weapon_19 then return end -- won't run
        local HeavyAttack_20 = Options.HeavyAttack;
        local HeavyAttack_21 = Options.HeavyAttack;
        local Value_18 = HeavyAttack_21.Value;
        local var364 = (HeavyAttack_20 and Value_18);
        local var365 = (var364 or false);
        local Success_116, Error_Message_116 = pcall(function(...)
            if not Value_18 then return end -- won't run
            local Shared_74 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_73 = Shared_74.WaitForChild;
            local Packages_44 = Shared_74:WaitForChild("Packages");
            local WaitForChild_74 = Packages_44.WaitForChild;
            local Knit_44 = Packages_44:WaitForChild("Knit");
            local WaitForChild_75 = Knit_44.WaitForChild;
            local Services_13 = Knit_44:WaitForChild("Services");
            local WaitForChild_76 = Services_13.WaitForChild;
            local ToolService_10 = Services_13:WaitForChild("ToolService");
            local WaitForChild_77 = ToolService_10.WaitForChild;
            local RF_13 = ToolService_10:WaitForChild("RF");
            local WaitForChild_78 = RF_13.WaitForChild;
            local ToolActivated_10 = RF_13:WaitForChild("ToolActivated");
            local InvokeServer_16 = ToolActivated_10.InvokeServer;
            local Weapon_20 = ToolActivated_10:InvokeServer("Weapon", true);
        end)
        local Waited_For_132 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_116 = LocalPlayer.Character;
        local Not_Character_116 = not Character_116;
        local Weapon_21 = Character_116:FindFirstChild("Weapon");
        if not Weapon_21 then return end -- won't run
        local HeavyAttack_22 = Options.HeavyAttack;
        local HeavyAttack_23 = Options.HeavyAttack;
        local Value_19 = HeavyAttack_23.Value;
        local var366 = (HeavyAttack_22 and Value_19);
        local var367 = (var366 or false);
        local Success_117, Error_Message_117 = pcall(function(...)
            if not Value_19 then return end -- won't run
            local Shared_75 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_79 = Shared_75.WaitForChild;
            local Packages_45 = Shared_75:WaitForChild("Packages");
            local WaitForChild_80 = Packages_45.WaitForChild;
            local Knit_45 = Packages_45:WaitForChild("Knit");
            local WaitForChild_81 = Knit_45.WaitForChild;
            local Services_14 = Knit_45:WaitForChild("Services");
            local WaitForChild_82 = Services_14.WaitForChild;
            local ToolService_11 = Services_14:WaitForChild("ToolService");
            local WaitForChild_83 = ToolService_11.WaitForChild;
            local RF_14 = ToolService_11:WaitForChild("RF");
            local WaitForChild_84 = RF_14.WaitForChild;
            local ToolActivated_11 = RF_14:WaitForChild("ToolActivated");
            local InvokeServer_17 = ToolActivated_11.InvokeServer;
            local Weapon_22 = ToolActivated_11:InvokeServer("Weapon", true);
        end)
        local Waited_For_133 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_117 = LocalPlayer.Character;
        local Not_Character_117 = not Character_117;
        local Weapon_23 = Character_117:FindFirstChild("Weapon");
        if not Weapon_23 then return end -- won't run
        local HeavyAttack_24 = Options.HeavyAttack;
        local HeavyAttack_25 = Options.HeavyAttack;
        local Value_20 = HeavyAttack_25.Value;
        local var368 = (HeavyAttack_24 and Value_20);
        local var369 = (var368 or false);
        local Success_118, Error_Message_118 = pcall(function(...)
            if not Value_20 then return end -- won't run
            local Shared_76 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_85 = Shared_76.WaitForChild;
            local Packages_46 = Shared_76:WaitForChild("Packages");
            local WaitForChild_86 = Packages_46.WaitForChild;
            local Knit_46 = Packages_46:WaitForChild("Knit");
            local WaitForChild_87 = Knit_46.WaitForChild;
            local Services_15 = Knit_46:WaitForChild("Services");
            local WaitForChild_88 = Services_15.WaitForChild;
            local ToolService_12 = Services_15:WaitForChild("ToolService");
            local WaitForChild_89 = ToolService_12.WaitForChild;
            local RF_15 = ToolService_12:WaitForChild("RF");
            local WaitForChild_90 = RF_15.WaitForChild;
            local ToolActivated_12 = RF_15:WaitForChild("ToolActivated");
            local InvokeServer_18 = ToolActivated_12.InvokeServer;
            local Weapon_24 = ToolActivated_12:InvokeServer("Weapon", true);
        end)
        local Waited_For_134 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_118 = LocalPlayer.Character;
        local Not_Character_118 = not Character_118;
        local Weapon_25 = Character_118:FindFirstChild("Weapon");
        if not Weapon_25 then return end -- won't run
        local HeavyAttack_26 = Options.HeavyAttack;
        local HeavyAttack_27 = Options.HeavyAttack;
        local Value_21 = HeavyAttack_27.Value;
        local var370 = (HeavyAttack_26 and Value_21);
        local var371 = (var370 or false);
        local Success_119, Error_Message_119 = pcall(function(...)
            if not Value_21 then return end -- won't run
            local Shared_77 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_91 = Shared_77.WaitForChild;
            local Packages_47 = Shared_77:WaitForChild("Packages");
            local WaitForChild_92 = Packages_47.WaitForChild;
            local Knit_47 = Packages_47:WaitForChild("Knit");
            local WaitForChild_93 = Knit_47.WaitForChild;
            local Services_16 = Knit_47:WaitForChild("Services");
            local WaitForChild_94 = Services_16.WaitForChild;
            local ToolService_13 = Services_16:WaitForChild("ToolService");
            local WaitForChild_95 = ToolService_13.WaitForChild;
            local RF_16 = ToolService_13:WaitForChild("RF");
            local WaitForChild_96 = RF_16.WaitForChild;
            local ToolActivated_13 = RF_16:WaitForChild("ToolActivated");
            local InvokeServer_19 = ToolActivated_13.InvokeServer;
            local Weapon_26 = ToolActivated_13:InvokeServer("Weapon", true);
        end)
        local Waited_For_135 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_119 = LocalPlayer.Character;
        local Not_Character_119 = not Character_119;
        local Weapon_27 = Character_119:FindFirstChild("Weapon");
        if not Weapon_27 then return end -- won't run
        local HeavyAttack_28 = Options.HeavyAttack;
        local HeavyAttack_29 = Options.HeavyAttack;
        local Value_22 = HeavyAttack_29.Value;
        local var372 = (HeavyAttack_28 and Value_22);
        local var373 = (var372 or false);
        local Success_120, Error_Message_120 = pcall(function(...)
            if not Value_22 then return end -- won't run
            local Shared_78 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_97 = Shared_78.WaitForChild;
            local Packages_48 = Shared_78:WaitForChild("Packages");
            local WaitForChild_98 = Packages_48.WaitForChild;
            local Knit_48 = Packages_48:WaitForChild("Knit");
            local WaitForChild_99 = Knit_48.WaitForChild;
            local Services_17 = Knit_48:WaitForChild("Services");
            local WaitForChild_100 = Services_17.WaitForChild;
            local ToolService_14 = Services_17:WaitForChild("ToolService");
            local WaitForChild_101 = ToolService_14.WaitForChild;
            local RF_17 = ToolService_14:WaitForChild("RF");
            local WaitForChild_102 = RF_17.WaitForChild;
            local ToolActivated_14 = RF_17:WaitForChild("ToolActivated");
            local InvokeServer_20 = ToolActivated_14.InvokeServer;
            local Weapon_28 = ToolActivated_14:InvokeServer("Weapon", true);
        end)
        local Waited_For_136 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_120 = LocalPlayer.Character;
        local Not_Character_120 = not Character_120;
        local Weapon_29 = Character_120:FindFirstChild("Weapon");
        if not Weapon_29 then return end -- won't run
        local HeavyAttack_30 = Options.HeavyAttack;
        local HeavyAttack_31 = Options.HeavyAttack;
        local Value_23 = HeavyAttack_31.Value;
        local var374 = (HeavyAttack_30 and Value_23);
        local var375 = (var374 or false);
        local Success_121, Error_Message_121 = pcall(function(...)
            if not Value_23 then return end -- won't run
            local Shared_79 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_103 = Shared_79.WaitForChild;
            local Packages_49 = Shared_79:WaitForChild("Packages");
            local WaitForChild_104 = Packages_49.WaitForChild;
            local Knit_49 = Packages_49:WaitForChild("Knit");
            local WaitForChild_105 = Knit_49.WaitForChild;
            local Services_18 = Knit_49:WaitForChild("Services");
            local WaitForChild_106 = Services_18.WaitForChild;
            local ToolService_15 = Services_18:WaitForChild("ToolService");
            local WaitForChild_107 = ToolService_15.WaitForChild;
            local RF_18 = ToolService_15:WaitForChild("RF");
            local WaitForChild_108 = RF_18.WaitForChild;
            local ToolActivated_15 = RF_18:WaitForChild("ToolActivated");
            local InvokeServer_21 = ToolActivated_15.InvokeServer;
            local Weapon_30 = ToolActivated_15:InvokeServer("Weapon", true);
        end)
        local Waited_For_137 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_121 = LocalPlayer.Character;
        local Not_Character_121 = not Character_121;
        local Weapon_31 = Character_121:FindFirstChild("Weapon");
        if not Weapon_31 then return end -- won't run
        local HeavyAttack_32 = Options.HeavyAttack;
        local HeavyAttack_33 = Options.HeavyAttack;
        local Value_24 = HeavyAttack_33.Value;
        local var376 = (HeavyAttack_32 and Value_24);
        local var377 = (var376 or false);
        local Success_122, Error_Message_122 = pcall(function(...)
            if not Value_24 then return end -- won't run
            local Shared_80 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_109 = Shared_80.WaitForChild;
            local Packages_50 = Shared_80:WaitForChild("Packages");
            local WaitForChild_110 = Packages_50.WaitForChild;
            local Knit_50 = Packages_50:WaitForChild("Knit");
            local WaitForChild_111 = Knit_50.WaitForChild;
            local Services_19 = Knit_50:WaitForChild("Services");
            local WaitForChild_112 = Services_19.WaitForChild;
            local ToolService_16 = Services_19:WaitForChild("ToolService");
            local WaitForChild_113 = ToolService_16.WaitForChild;
            local RF_19 = ToolService_16:WaitForChild("RF");
            local WaitForChild_114 = RF_19.WaitForChild;
            local ToolActivated_16 = RF_19:WaitForChild("ToolActivated");
            local InvokeServer_22 = ToolActivated_16.InvokeServer;
            local Weapon_32 = ToolActivated_16:InvokeServer("Weapon", true);
        end)
        local Waited_For_138 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_122 = LocalPlayer.Character;
        local Not_Character_122 = not Character_122;
        local Weapon_33 = Character_122:FindFirstChild("Weapon");
        if not Weapon_33 then return end -- won't run
        local HeavyAttack_34 = Options.HeavyAttack;
        local HeavyAttack_35 = Options.HeavyAttack;
        local Value_25 = HeavyAttack_35.Value;
        local var378 = (HeavyAttack_34 and Value_25);
        local var379 = (var378 or false);
        local Success_123, Error_Message_123 = pcall(function(...)
            if not Value_25 then return end -- won't run
            local Shared_81 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_115 = Shared_81.WaitForChild;
            local Packages_51 = Shared_81:WaitForChild("Packages");
            local WaitForChild_116 = Packages_51.WaitForChild;
            local Knit_51 = Packages_51:WaitForChild("Knit");
            local WaitForChild_117 = Knit_51.WaitForChild;
            local Services_20 = Knit_51:WaitForChild("Services");
            local WaitForChild_118 = Services_20.WaitForChild;
            local ToolService_17 = Services_20:WaitForChild("ToolService");
            local WaitForChild_119 = ToolService_17.WaitForChild;
            local RF_20 = ToolService_17:WaitForChild("RF");
            local WaitForChild_120 = RF_20.WaitForChild;
            local ToolActivated_17 = RF_20:WaitForChild("ToolActivated");
            local InvokeServer_23 = ToolActivated_17.InvokeServer;
            local Weapon_34 = ToolActivated_17:InvokeServer("Weapon", true);
        end)
        local Waited_For_139 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_123 = LocalPlayer.Character;
        local Not_Character_123 = not Character_123;
        local Weapon_35 = Character_123:FindFirstChild("Weapon");
        if not Weapon_35 then return end -- won't run
        local HeavyAttack_36 = Options.HeavyAttack;
        local HeavyAttack_37 = Options.HeavyAttack;
        local Value_26 = HeavyAttack_37.Value;
        local var380 = (HeavyAttack_36 and Value_26);
        local var381 = (var380 or false);
        local Success_124, Error_Message_124 = pcall(function(...)
            if not Value_26 then return end -- won't run
            local Shared_82 = ReplicatedStorage:WaitForChild("Shared");
            local WaitForChild_121 = Shared_82.WaitForChild;
            local Packages_52 = Shared_82:WaitForChild("Packages");
            local WaitForChild_122 = Packages_52.WaitForChild;
            local Knit_52 = Packages_52:WaitForChild("Knit");
            local WaitForChild_123 = Knit_52.WaitForChild;
            local Services_21 = Knit_52:WaitForChild("Services");
            local WaitForChild_124 = Services_21.WaitForChild;
            local ToolService_18 = Services_21:WaitForChild("ToolService");
            local WaitForChild_125 = ToolService_18.WaitForChild;
            local RF_21 = ToolService_18:WaitForChild("RF");
            local WaitForChild_126 = RF_21.WaitForChild;
            local ToolActivated_18 = RF_21:WaitForChild("ToolActivated");
            local InvokeServer_24 = ToolActivated_18.InvokeServer;
            local Weapon_36 = ToolActivated_18:InvokeServer("Weapon", true);
        end)
        local Waited_For_140 = task.wait(p1_0);
        if not Value_8 then return end -- won't run
        local Character_124 = LocalPlayer.Character;
        local Not_Character_124 = not Character_124;
        local Weapon_37 = Character_124:FindFirstChild("Weapon");
        if not Weapon_37 then return end -- won't run
        local HeavyAttack_38 = Options.HeavyAttack;
        local HeavyAttack_39 = Options.HeavyAttack;
        local Value_27 = HeavyAttack_39.Value;
        local var382 = (HeavyAttack_38 and Value_27);
        local var383 = (var382 or false);
        local Success_125, Error_Message_125 = pcall(function(...)
            if not Value_27 then return end -- won't run
            local Shared_83 = ReplicatedStorage:WaitForChild("Shared");
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local AddSection_2 = Tab_4.AddSection;
    local SMART_AUTO_BLOCK = Tab_4:AddSection("SMART AUTO BLOCK");
    local CreateToggle_9 = Tab_4.CreateToggle;
    local SmartAutoBlock = Tab_4:CreateToggle("SmartAutoBlock", {
        Default = false,
        Title = "Smart Auto Block",
        Description = "Tự động block khi phát hiện quái tấn công(beta)",
    });
    local CreateSlider_2 = Tab_4.CreateSlider;
    local BlockRange = Tab_4:CreateSlider("BlockRange", {
        Min = 5,
        Title = "Detection Range",
        Max = 30,
        Description = "Khoảng cách phát hiện quái (studs)",
        Default = 15,
        Rounding = 0,
    });
    local CreateSlider_3 = Tab_4.CreateSlider;
    local SmartBlockDuration = Tab_4:CreateSlider("SmartBlockDuration", {
        Min = 0.2,
        Title = "Block Duration",
        Max = 2,
        Description = "Thời gian block sau khi phát hiện (giây)",
        Default = 0.5,
        Rounding = 1,
    });
    local OnChanged_33 = SmartAutoBlock.OnChanged;
    local OnChanged_34 = SmartAutoBlock:OnChanged(function()
        local SmartAutoBlock_2 = Options.SmartAutoBlock;
        local Value_28 = SmartAutoBlock_2.Value;

    end);
    local OnChanged_35 = BlockRange.OnChanged;
    local OnChanged_36 = BlockRange:OnChanged(function(p1_0)

    end);
    local OnChanged_37 = SmartBlockDuration.OnChanged;
    local OnChanged_38 = SmartBlockDuration:OnChanged(function(p1_0)

    end);
    local Spawned_8 = task.spawn(function()
        local Waited_For_141 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_125 = LocalPlayer.Character;
        local Not_Character_125 = not Character_125;
        local Weapon_38 = Character_125:FindFirstChild("Weapon");
        if not Weapon_38 then return end -- won't run
        local Character_126 = LocalPlayer.Character;
        local Not_Character_126 = not Character_126;
        local HumanoidRootPart_51 = Character_126:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_51 = not HumanoidRootPart_51;
        local Position_47 = HumanoidRootPart_51.Position;
        local Living_93 = workspace:FindFirstChild("Living");
        local Not_Living_93 = not Living_93;
        local Children_101 = Living:GetChildren();
        for i_133, v_133 in pairs(Children_101) do
            local var383 = (v_133 ~= Character_126);
            local FindFirstChild_2 = v_133.FindFirstChild;
            local Humanoid_51 = v_133:FindFirstChild("Humanoid");
            local var384 = (var383 and Humanoid_51);
            if not var384 then return end -- won't run
            local FindFirstChild_3 = v_133.FindFirstChild;
            local HumanoidRootPart_52 = v_133:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_52 then return end -- won't run
            local Position_48 = HumanoidRootPart_52.Position;
            local var385 = Position_48 - Position_47;
            local Magnitude = var385.Magnitude;
            local var386 = (Magnitude <= p1_0);
        end
        local Waited_For_142 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_127 = LocalPlayer.Character;
        local Not_Character_127 = not Character_127;
        local Weapon_39 = Character_127:FindFirstChild("Weapon");
        if not Weapon_39 then return end -- won't run
        local Character_128 = LocalPlayer.Character;
        local Not_Character_128 = not Character_128;
        local HumanoidRootPart_53 = Character_128:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_53 = not HumanoidRootPart_53;
        local Position_49 = HumanoidRootPart_53.Position;
        local Living_94 = workspace:FindFirstChild("Living");
        local Not_Living_94 = not Living_94;
        local Children_102 = Living:GetChildren();
        for i_134, v_134 in pairs(Children_102) do
            local var386 = (v_134 ~= Character_128);
            local FindFirstChild_4 = v_134.FindFirstChild;
            local Humanoid_52 = v_134:FindFirstChild("Humanoid");
            local var387 = (var386 and Humanoid_52);
            if not var387 then return end -- won't run
            local FindFirstChild_5 = v_134.FindFirstChild;
            local HumanoidRootPart_54 = v_134:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_54 then return end -- won't run
            local Position_50 = HumanoidRootPart_54.Position;
            local var388 = Position_50 - Position_49;
            local Magnitude_2 = var388.Magnitude;
            local var389 = (Magnitude_2 <= p1_0);
        end
        local Waited_For_143 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_129 = LocalPlayer.Character;
        local Not_Character_129 = not Character_129;
        local Weapon_40 = Character_129:FindFirstChild("Weapon");
        if not Weapon_40 then return end -- won't run
        local Character_130 = LocalPlayer.Character;
        local Not_Character_130 = not Character_130;
        local HumanoidRootPart_55 = Character_130:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_55 = not HumanoidRootPart_55;
        local Position_51 = HumanoidRootPart_55.Position;
        local Living_95 = workspace:FindFirstChild("Living");
        local Not_Living_95 = not Living_95;
        local Children_103 = Living:GetChildren();
        for i_135, v_135 in pairs(Children_103) do
            local var389 = (v_135 ~= Character_130);
            local FindFirstChild_6 = v_135.FindFirstChild;
            local Humanoid_53 = v_135:FindFirstChild("Humanoid");
            local var390 = (var389 and Humanoid_53);
            if not var390 then return end -- won't run
            local FindFirstChild_7 = v_135.FindFirstChild;
            local HumanoidRootPart_56 = v_135:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_56 then return end -- won't run
            local Position_52 = HumanoidRootPart_56.Position;
            local var391 = Position_52 - Position_51;
            local Magnitude_3 = var391.Magnitude;
            local var392 = (Magnitude_3 <= p1_0);
        end
        local Waited_For_144 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_131 = LocalPlayer.Character;
        local Not_Character_131 = not Character_131;
        local Weapon_41 = Character_131:FindFirstChild("Weapon");
        if not Weapon_41 then return end -- won't run
        local Character_132 = LocalPlayer.Character;
        local Not_Character_132 = not Character_132;
        local HumanoidRootPart_57 = Character_132:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_57 = not HumanoidRootPart_57;
        local Position_53 = HumanoidRootPart_57.Position;
        local Living_96 = workspace:FindFirstChild("Living");
        local Not_Living_96 = not Living_96;
        local Children_104 = Living:GetChildren();
        for i_136, v_136 in pairs(Children_104) do
            local var392 = (v_136 ~= Character_132);
            local FindFirstChild_8 = v_136.FindFirstChild;
            local Humanoid_54 = v_136:FindFirstChild("Humanoid");
            local var393 = (var392 and Humanoid_54);
            if not var393 then return end -- won't run
            local FindFirstChild_9 = v_136.FindFirstChild;
            local HumanoidRootPart_58 = v_136:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_58 then return end -- won't run
            local Position_54 = HumanoidRootPart_58.Position;
            local var394 = Position_54 - Position_53;
            local Magnitude_4 = var394.Magnitude;
            local var395 = (Magnitude_4 <= p1_0);
        end
        local Waited_For_145 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_133 = LocalPlayer.Character;
        local Not_Character_133 = not Character_133;
        local Weapon_42 = Character_133:FindFirstChild("Weapon");
        if not Weapon_42 then return end -- won't run
        local Character_134 = LocalPlayer.Character;
        local Not_Character_134 = not Character_134;
        local HumanoidRootPart_59 = Character_134:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_59 = not HumanoidRootPart_59;
        local Position_55 = HumanoidRootPart_59.Position;
        local Living_97 = workspace:FindFirstChild("Living");
        local Not_Living_97 = not Living_97;
        local Children_105 = Living:GetChildren();
        for i_137, v_137 in pairs(Children_105) do
            local var395 = (v_137 ~= Character_134);
            local FindFirstChild_10 = v_137.FindFirstChild;
            local Humanoid_55 = v_137:FindFirstChild("Humanoid");
            local var396 = (var395 and Humanoid_55);
            if not var396 then return end -- won't run
            local FindFirstChild_11 = v_137.FindFirstChild;
            local HumanoidRootPart_60 = v_137:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_60 then return end -- won't run
            local Position_56 = HumanoidRootPart_60.Position;
            local var397 = Position_56 - Position_55;
            local Magnitude_5 = var397.Magnitude;
            local var398 = (Magnitude_5 <= p1_0);
        end
        local Waited_For_146 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_135 = LocalPlayer.Character;
        local Not_Character_135 = not Character_135;
        local Weapon_43 = Character_135:FindFirstChild("Weapon");
        if not Weapon_43 then return end -- won't run
        local Character_136 = LocalPlayer.Character;
        local Not_Character_136 = not Character_136;
        local HumanoidRootPart_61 = Character_136:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_61 = not HumanoidRootPart_61;
        local Position_57 = HumanoidRootPart_61.Position;
        local Living_98 = workspace:FindFirstChild("Living");
        local Not_Living_98 = not Living_98;
        local Children_106 = Living:GetChildren();
        for i_138, v_138 in pairs(Children_106) do
            local var398 = (v_138 ~= Character_136);
            local FindFirstChild_12 = v_138.FindFirstChild;
            local Humanoid_56 = v_138:FindFirstChild("Humanoid");
            local var399 = (var398 and Humanoid_56);
            if not var399 then return end -- won't run
            local FindFirstChild_13 = v_138.FindFirstChild;
            local HumanoidRootPart_62 = v_138:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_62 then return end -- won't run
            local Position_58 = HumanoidRootPart_62.Position;
            local var400 = Position_58 - Position_57;
            local Magnitude_6 = var400.Magnitude;
            local var401 = (Magnitude_6 <= p1_0);
        end
        local Waited_For_147 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_137 = LocalPlayer.Character;
        local Not_Character_137 = not Character_137;
        local Weapon_44 = Character_137:FindFirstChild("Weapon");
        if not Weapon_44 then return end -- won't run
        local Character_138 = LocalPlayer.Character;
        local Not_Character_138 = not Character_138;
        local HumanoidRootPart_63 = Character_138:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_63 = not HumanoidRootPart_63;
        local Position_59 = HumanoidRootPart_63.Position;
        local Living_99 = workspace:FindFirstChild("Living");
        local Not_Living_99 = not Living_99;
        local Children_107 = Living:GetChildren();
        for i_139, v_139 in pairs(Children_107) do
            local var401 = (v_139 ~= Character_138);
            local FindFirstChild_14 = v_139.FindFirstChild;
            local Humanoid_57 = v_139:FindFirstChild("Humanoid");
            local var402 = (var401 and Humanoid_57);
            if not var402 then return end -- won't run
            local FindFirstChild_15 = v_139.FindFirstChild;
            local HumanoidRootPart_64 = v_139:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_64 then return end -- won't run
            local Position_60 = HumanoidRootPart_64.Position;
            local var403 = Position_60 - Position_59;
            local Magnitude_7 = var403.Magnitude;
            local var404 = (Magnitude_7 <= p1_0);
        end
        local Waited_For_148 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_139 = LocalPlayer.Character;
        local Not_Character_139 = not Character_139;
        local Weapon_45 = Character_139:FindFirstChild("Weapon");
        if not Weapon_45 then return end -- won't run
        local Character_140 = LocalPlayer.Character;
        local Not_Character_140 = not Character_140;
        local HumanoidRootPart_65 = Character_140:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_65 = not HumanoidRootPart_65;
        local Position_61 = HumanoidRootPart_65.Position;
        local Living_100 = workspace:FindFirstChild("Living");
        local Not_Living_100 = not Living_100;
        local Children_108 = Living:GetChildren();
        for i_140, v_140 in pairs(Children_108) do
            local var404 = (v_140 ~= Character_140);
            local FindFirstChild_16 = v_140.FindFirstChild;
            local Humanoid_58 = v_140:FindFirstChild("Humanoid");
            local var405 = (var404 and Humanoid_58);
            if not var405 then return end -- won't run
            local FindFirstChild_17 = v_140.FindFirstChild;
            local HumanoidRootPart_66 = v_140:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_66 then return end -- won't run
            local Position_62 = HumanoidRootPart_66.Position;
            local var406 = Position_62 - Position_61;
            local Magnitude_8 = var406.Magnitude;
            local var407 = (Magnitude_8 <= p1_0);
        end
        local Waited_For_149 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_141 = LocalPlayer.Character;
        local Not_Character_141 = not Character_141;
        local Weapon_46 = Character_141:FindFirstChild("Weapon");
        if not Weapon_46 then return end -- won't run
        local Character_142 = LocalPlayer.Character;
        local Not_Character_142 = not Character_142;
        local HumanoidRootPart_67 = Character_142:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_67 = not HumanoidRootPart_67;
        local Position_63 = HumanoidRootPart_67.Position;
        local Living_101 = workspace:FindFirstChild("Living");
        local Not_Living_101 = not Living_101;
        local Children_109 = Living:GetChildren();
        for i_141, v_141 in pairs(Children_109) do
            local var407 = (v_141 ~= Character_142);
            local FindFirstChild_18 = v_141.FindFirstChild;
            local Humanoid_59 = v_141:FindFirstChild("Humanoid");
            local var408 = (var407 and Humanoid_59);
            if not var408 then return end -- won't run
            local FindFirstChild_19 = v_141.FindFirstChild;
            local HumanoidRootPart_68 = v_141:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_68 then return end -- won't run
            local Position_64 = HumanoidRootPart_68.Position;
            local var409 = Position_64 - Position_63;
            local Magnitude_9 = var409.Magnitude;
            local var410 = (Magnitude_9 <= p1_0);
        end
        local Waited_For_150 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_143 = LocalPlayer.Character;
        local Not_Character_143 = not Character_143;
        local Weapon_47 = Character_143:FindFirstChild("Weapon");
        if not Weapon_47 then return end -- won't run
        local Character_144 = LocalPlayer.Character;
        local Not_Character_144 = not Character_144;
        local HumanoidRootPart_69 = Character_144:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_69 = not HumanoidRootPart_69;
        local Position_65 = HumanoidRootPart_69.Position;
        local Living_102 = workspace:FindFirstChild("Living");
        local Not_Living_102 = not Living_102;
        local Children_110 = Living:GetChildren();
        for i_142, v_142 in pairs(Children_110) do
            local var410 = (v_142 ~= Character_144);
            local FindFirstChild_20 = v_142.FindFirstChild;
            local Humanoid_60 = v_142:FindFirstChild("Humanoid");
            local var411 = (var410 and Humanoid_60);
            if not var411 then return end -- won't run
            local FindFirstChild_21 = v_142.FindFirstChild;
            local HumanoidRootPart_70 = v_142:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_70 then return end -- won't run
            local Position_66 = HumanoidRootPart_70.Position;
            local var412 = Position_66 - Position_65;
            local Magnitude_10 = var412.Magnitude;
            local var413 = (Magnitude_10 <= p1_0);
        end
        local Waited_For_151 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_145 = LocalPlayer.Character;
        local Not_Character_145 = not Character_145;
        local Weapon_48 = Character_145:FindFirstChild("Weapon");
        if not Weapon_48 then return end -- won't run
        local Character_146 = LocalPlayer.Character;
        local Not_Character_146 = not Character_146;
        local HumanoidRootPart_71 = Character_146:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_71 = not HumanoidRootPart_71;
        local Position_67 = HumanoidRootPart_71.Position;
        local Living_103 = workspace:FindFirstChild("Living");
        local Not_Living_103 = not Living_103;
        local Children_111 = Living:GetChildren();
        for i_143, v_143 in pairs(Children_111) do
            local var413 = (v_143 ~= Character_146);
            local FindFirstChild_22 = v_143.FindFirstChild;
            local Humanoid_61 = v_143:FindFirstChild("Humanoid");
            local var414 = (var413 and Humanoid_61);
            if not var414 then return end -- won't run
            local FindFirstChild_23 = v_143.FindFirstChild;
            local HumanoidRootPart_72 = v_143:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_72 then return end -- won't run
            local Position_68 = HumanoidRootPart_72.Position;
            local var415 = Position_68 - Position_67;
            local Magnitude_11 = var415.Magnitude;
            local var416 = (Magnitude_11 <= p1_0);
        end
        local Waited_For_152 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_147 = LocalPlayer.Character;
        local Not_Character_147 = not Character_147;
        local Weapon_49 = Character_147:FindFirstChild("Weapon");
        if not Weapon_49 then return end -- won't run
        local Character_148 = LocalPlayer.Character;
        local Not_Character_148 = not Character_148;
        local HumanoidRootPart_73 = Character_148:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_73 = not HumanoidRootPart_73;
        local Position_69 = HumanoidRootPart_73.Position;
        local Living_104 = workspace:FindFirstChild("Living");
        local Not_Living_104 = not Living_104;
        local Children_112 = Living:GetChildren();
        for i_144, v_144 in pairs(Children_112) do
            local var416 = (v_144 ~= Character_148);
            local FindFirstChild_24 = v_144.FindFirstChild;
            local Humanoid_62 = v_144:FindFirstChild("Humanoid");
            local var417 = (var416 and Humanoid_62);
            if not var417 then return end -- won't run
            local FindFirstChild_25 = v_144.FindFirstChild;
            local HumanoidRootPart_74 = v_144:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_74 then return end -- won't run
            local Position_70 = HumanoidRootPart_74.Position;
            local var418 = Position_70 - Position_69;
            local Magnitude_12 = var418.Magnitude;
            local var419 = (Magnitude_12 <= p1_0);
        end
        local Waited_For_153 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_149 = LocalPlayer.Character;
        local Not_Character_149 = not Character_149;
        local Weapon_50 = Character_149:FindFirstChild("Weapon");
        if not Weapon_50 then return end -- won't run
        local Character_150 = LocalPlayer.Character;
        local Not_Character_150 = not Character_150;
        local HumanoidRootPart_75 = Character_150:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_75 = not HumanoidRootPart_75;
        local Position_71 = HumanoidRootPart_75.Position;
        local Living_105 = workspace:FindFirstChild("Living");
        local Not_Living_105 = not Living_105;
        local Children_113 = Living:GetChildren();
        for i_145, v_145 in pairs(Children_113) do
            local var419 = (v_145 ~= Character_150);
            local FindFirstChild_26 = v_145.FindFirstChild;
            local Humanoid_63 = v_145:FindFirstChild("Humanoid");
            local var420 = (var419 and Humanoid_63);
            if not var420 then return end -- won't run
            local FindFirstChild_27 = v_145.FindFirstChild;
            local HumanoidRootPart_76 = v_145:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_76 then return end -- won't run
            local Position_72 = HumanoidRootPart_76.Position;
            local var421 = Position_72 - Position_71;
            local Magnitude_13 = var421.Magnitude;
            local var422 = (Magnitude_13 <= p1_0);
        end
        local Waited_For_154 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_151 = LocalPlayer.Character;
        local Not_Character_151 = not Character_151;
        local Weapon_51 = Character_151:FindFirstChild("Weapon");
        if not Weapon_51 then return end -- won't run
        local Character_152 = LocalPlayer.Character;
        local Not_Character_152 = not Character_152;
        local HumanoidRootPart_77 = Character_152:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_77 = not HumanoidRootPart_77;
        local Position_73 = HumanoidRootPart_77.Position;
        local Living_106 = workspace:FindFirstChild("Living");
        local Not_Living_106 = not Living_106;
        local Children_114 = Living:GetChildren();
        for i_146, v_146 in pairs(Children_114) do
            local var422 = (v_146 ~= Character_152);
            local FindFirstChild_28 = v_146.FindFirstChild;
            local Humanoid_64 = v_146:FindFirstChild("Humanoid");
            local var423 = (var422 and Humanoid_64);
            if not var423 then return end -- won't run
            local FindFirstChild_29 = v_146.FindFirstChild;
            local HumanoidRootPart_78 = v_146:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_78 then return end -- won't run
            local Position_74 = HumanoidRootPart_78.Position;
            local var424 = Position_74 - Position_73;
            local Magnitude_14 = var424.Magnitude;
            local var425 = (Magnitude_14 <= p1_0);
        end
        local Waited_For_155 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_153 = LocalPlayer.Character;
        local Not_Character_153 = not Character_153;
        local Weapon_52 = Character_153:FindFirstChild("Weapon");
        if not Weapon_52 then return end -- won't run
        local Character_154 = LocalPlayer.Character;
        local Not_Character_154 = not Character_154;
        local HumanoidRootPart_79 = Character_154:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_79 = not HumanoidRootPart_79;
        local Position_75 = HumanoidRootPart_79.Position;
        local Living_107 = workspace:FindFirstChild("Living");
        local Not_Living_107 = not Living_107;
        local Children_115 = Living:GetChildren();
        for i_147, v_147 in pairs(Children_115) do
            local var425 = (v_147 ~= Character_154);
            local FindFirstChild_30 = v_147.FindFirstChild;
            local Humanoid_65 = v_147:FindFirstChild("Humanoid");
            local var426 = (var425 and Humanoid_65);
            if not var426 then return end -- won't run
            local FindFirstChild_31 = v_147.FindFirstChild;
            local HumanoidRootPart_80 = v_147:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_80 then return end -- won't run
            local Position_76 = HumanoidRootPart_80.Position;
            local var427 = Position_76 - Position_75;
            local Magnitude_15 = var427.Magnitude;
            local var428 = (Magnitude_15 <= p1_0);
        end
        local Waited_For_156 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_155 = LocalPlayer.Character;
        local Not_Character_155 = not Character_155;
        local Weapon_53 = Character_155:FindFirstChild("Weapon");
        if not Weapon_53 then return end -- won't run
        local Character_156 = LocalPlayer.Character;
        local Not_Character_156 = not Character_156;
        local HumanoidRootPart_81 = Character_156:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_81 = not HumanoidRootPart_81;
        local Position_77 = HumanoidRootPart_81.Position;
        local Living_108 = workspace:FindFirstChild("Living");
        local Not_Living_108 = not Living_108;
        local Children_116 = Living:GetChildren();
        for i_148, v_148 in pairs(Children_116) do
            local var428 = (v_148 ~= Character_156);
            local FindFirstChild_32 = v_148.FindFirstChild;
            local Humanoid_66 = v_148:FindFirstChild("Humanoid");
            local var429 = (var428 and Humanoid_66);
            if not var429 then return end -- won't run
            local FindFirstChild_33 = v_148.FindFirstChild;
            local HumanoidRootPart_82 = v_148:FindFirstChild("HumanoidRootPart");
            if not HumanoidRootPart_82 then return end -- won't run
            local Position_78 = HumanoidRootPart_82.Position;
            local var430 = Position_78 - Position_77;
            local Magnitude_16 = var430.Magnitude;
            local var431 = (Magnitude_16 <= p1_0);
        end
        local Waited_For_157 = task.wait(0.05);
        if not Value_28 then return end -- won't run
        local Character_157 = LocalPlayer.Character;
        local Not_Character_157 = not Character_157;
        local Weapon_54 = Character_157:FindFirstChild("Weapon");
        if not Weapon_54 then return end -- won't run
        local Character_158 = LocalPlayer.Character;
        local Not_Character_158 = not Character_158;
        local HumanoidRootPart_83 = Character_158:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_83 = not HumanoidRootPart_83;
        local Position_79 = HumanoidRootPart_83.Position;
        local Living_109 = workspace:FindFirstChild("Living");
        local Not_Living_109 = not Living_109;
        local Children_117 = Living:GetChildren();
        for i_149, v_149 in pairs(Children_117) do
            local var431 = (v_149 ~= Character_158);
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        end
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:1691: C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local Connection_6;
    Connection_6 = LocalPlayer.CharacterAdded:Connect(function() -- args: Character_159;
        local Character_160 = LocalPlayer.Character;
        local Not_Character_160 = not Character_160;
        local Humanoid_67 = Character_160:FindFirstChildOfClass("Humanoid");
        local Not_Humanoid_67 = not Humanoid_67;
        local Health_3 = Humanoid_67.Health;
        local GetPropertyChangedSignal_2 = Humanoid_67.GetPropertyChangedSignal;
        local Health_4 = Humanoid_67:GetPropertyChangedSignal("Health");
        local Connect_2 = Health_4.Connect;
        local Connected_2 = Health_4:Connect(function()
            local Not_Value_28_127 = not Value_28;
            local Character_243 = LocalPlayer.Character;
            local Not_Character_243 = not Character_243;
            local Weapon_56 = Character_243:FindFirstChild("Weapon");
            local Not_Weapon_56 = not Weapon_56;
            local Health_6 = Humanoid_67.Health;
            local var769 = (Health_6 < Health_5);

        end);

    end);
    local Character_2 = LocalPlayer.Character;
    if not Character_2 then return end -- won't run
    local Character_3 = LocalPlayer.Character;
    local Not_Character_3 = not Character_3;
    local Humanoid = Character_3:FindFirstChildOfClass("Humanoid");
    local Not_Humanoid = not Humanoid;
    local Health = Humanoid.Health;
    local GetPropertyChangedSignal = Humanoid.GetPropertyChangedSignal;
    local Health_2 = Humanoid:GetPropertyChangedSignal("Health");
    local Connect = Health_2.Connect;
    local Connected = Health_2:Connect(function()
        local Not_Value_28 = not Value_28;
        local Character_161 = LocalPlayer.Character;
        local Not_Character_161 = not Character_161;
        local Weapon_55 = Character_161:FindFirstChild("Weapon");
        local Not_Weapon_55 = not Weapon_55;
        local Health_5 = Humanoid.Health;
        local var433 = (Health_5 < Health_3);

    end);
    local AddSection_3 = Tab_4.AddSection;
    local LEGACY_AUTO_BLOCK = Tab_4:AddSection("LEGACY AUTO BLOCK");
    local CreateToggle_10 = Tab_4.CreateToggle;
    local AutoBlock = Tab_4:CreateToggle("AutoBlock", {
        Default = false,
        Title = "Auto Block (Continuous)",
        Description = "Block liên tục",
    });
    local CreateSlider_4 = Tab_4.CreateSlider;
    local BlockDuration = Tab_4:CreateSlider("BlockDuration", {
        Min = 0.1,
        Title = "Block Duration",
        Max = 3,
        Description = "Thời gian mỗi lần block (giây)",
        Default = 0.5,
        Rounding = 1,
    });
    local CreateSlider_5 = Tab_4.CreateSlider;
    local BlockInterval = Tab_4:CreateSlider("BlockInterval", {
        Min = 0.5,
        Title = "Block Interval",
        Max = 5,
        Description = "Thời gian nghỉ giữa các lần block (giây)",
        Default = 1,
        Rounding = 1,
    });
    local OnChanged_39 = BlockDuration.OnChanged;
    local OnChanged_40 = BlockDuration:OnChanged(function(p1_0)

    end);
    local OnChanged_41 = AutoBlock.OnChanged;
    local OnChanged_42 = AutoBlock:OnChanged(function()
        local AutoBlock_2 = Options.AutoBlock;
        local Value_29 = AutoBlock_2.Value;

    end);
    local Spawned_9 = task.spawn(function()
        local Waited_For_158 = task.wait(0.1);
        local Not_Value_28_2 = not Value_28;
        local var434 = (Value_29 and Not_Value_28_2);
        local Waited_For_159 = task.wait(0.1);
        local Not_Value_28_3 = not Value_28;
        local var435 = (Value_29 and Not_Value_28_3);
        local Waited_For_160 = task.wait(0.1);
        local Not_Value_28_4 = not Value_28;
        local var436 = (Value_29 and Not_Value_28_4);
        local Waited_For_161 = task.wait(0.1);
        local Not_Value_28_5 = not Value_28;
        local var437 = (Value_29 and Not_Value_28_5);
        local Waited_For_162 = task.wait(0.1);
        local Not_Value_28_6 = not Value_28;
        local var438 = (Value_29 and Not_Value_28_6);
        local Waited_For_163 = task.wait(0.1);
        local Not_Value_28_7 = not Value_28;
        local var439 = (Value_29 and Not_Value_28_7);
        local Waited_For_164 = task.wait(0.1);
        local Not_Value_28_8 = not Value_28;
        local var440 = (Value_29 and Not_Value_28_8);
        local Waited_For_165 = task.wait(0.1);
        local Not_Value_28_9 = not Value_28;
        local var441 = (Value_29 and Not_Value_28_9);
        local Waited_For_166 = task.wait(0.1);
        local Not_Value_28_10 = not Value_28;
        local var442 = (Value_29 and Not_Value_28_10);
        local Waited_For_167 = task.wait(0.1);
        local Not_Value_28_11 = not Value_28;
        local var443 = (Value_29 and Not_Value_28_11);
        local Waited_For_168 = task.wait(0.1);
        local Not_Value_28_12 = not Value_28;
        local var444 = (Value_29 and Not_Value_28_12);
        local Waited_For_169 = task.wait(0.1);
        local Not_Value_28_13 = not Value_28;
        local var445 = (Value_29 and Not_Value_28_13);
        local Waited_For_170 = task.wait(0.1);
        local Not_Value_28_14 = not Value_28;
        local var446 = (Value_29 and Not_Value_28_14);
        local Waited_For_171 = task.wait(0.1);
        local Not_Value_28_15 = not Value_28;
        local var447 = (Value_29 and Not_Value_28_15);
        local Waited_For_172 = task.wait(0.1);
        local Not_Value_28_16 = not Value_28;
        local var448 = (Value_29 and Not_Value_28_16);
        local Waited_For_173 = task.wait(0.1);
        local Not_Value_28_17 = not Value_28;
        local var449 = (Value_29 and Not_Value_28_17);
        local Waited_For_174 = task.wait(0.1);
        local Not_Value_28_18 = not Value_28;
        local var450 = (Value_29 and Not_Value_28_18);
        local Waited_For_175 = task.wait(0.1);
        local Not_Value_28_19 = not Value_28;
        local var451 = (Value_29 and Not_Value_28_19);
        local Waited_For_176 = task.wait(0.1);
        local Not_Value_28_20 = not Value_28;
        local var452 = (Value_29 and Not_Value_28_20);
        local Waited_For_177 = task.wait(0.1);
        local Not_Value_28_21 = not Value_28;
        local var453 = (Value_29 and Not_Value_28_21);
        local Waited_For_178 = task.wait(0.1);
        local Not_Value_28_22 = not Value_28;
        local var454 = (Value_29 and Not_Value_28_22);
        local Waited_For_179 = task.wait(0.1);
        local Not_Value_28_23 = not Value_28;
        local var455 = (Value_29 and Not_Value_28_23);
        local Waited_For_180 = task.wait(0.1);
        local Not_Value_28_24 = not Value_28;
        local var456 = (Value_29 and Not_Value_28_24);
        local Waited_For_181 = task.wait(0.1);
        local Not_Value_28_25 = not Value_28;
        local var457 = (Value_29 and Not_Value_28_25);
        local Waited_For_182 = task.wait(0.1);
        local Not_Value_28_26 = not Value_28;
        local var458 = (Value_29 and Not_Value_28_26);
        local Waited_For_183 = task.wait(0.1);
        local Not_Value_28_27 = not Value_28;
        local var459 = (Value_29 and Not_Value_28_27);
        local Waited_For_184 = task.wait(0.1);
        local Not_Value_28_28 = not Value_28;
        local var460 = (Value_29 and Not_Value_28_28);
        local Waited_For_185 = task.wait(0.1);
        local Not_Value_28_29 = not Value_28;
        local var461 = (Value_29 and Not_Value_28_29);
        local Waited_For_186 = task.wait(0.1);
        local Not_Value_28_30 = not Value_28;
        local var462 = (Value_29 and Not_Value_28_30);
        local Waited_For_187 = task.wait(0.1);
        local Not_Value_28_31 = not Value_28;
        local var463 = (Value_29 and Not_Value_28_31);
        local Waited_For_188 = task.wait(0.1);
        local Not_Value_28_32 = not Value_28;
        local var464 = (Value_29 and Not_Value_28_32);
        local Waited_For_189 = task.wait(0.1);
        local Not_Value_28_33 = not Value_28;
        local var465 = (Value_29 and Not_Value_28_33);
        local Waited_For_190 = task.wait(0.1);
        local Not_Value_28_34 = not Value_28;
        local var466 = (Value_29 and Not_Value_28_34);
        local Waited_For_191 = task.wait(0.1);
        local Not_Value_28_35 = not Value_28;
        local var467 = (Value_29 and Not_Value_28_35);
        local Waited_For_192 = task.wait(0.1);
        local Not_Value_28_36 = not Value_28;
        local var468 = (Value_29 and Not_Value_28_36);
        local Waited_For_193 = task.wait(0.1);
        local Not_Value_28_37 = not Value_28;
        local var469 = (Value_29 and Not_Value_28_37);
        local Waited_For_194 = task.wait(0.1);
        local Not_Value_28_38 = not Value_28;
        local var470 = (Value_29 and Not_Value_28_38);
        local Waited_For_195 = task.wait(0.1);
        local Not_Value_28_39 = not Value_28;
        local var471 = (Value_29 and Not_Value_28_39);
        local Waited_For_196 = task.wait(0.1);
        local Not_Value_28_40 = not Value_28;
        local var472 = (Value_29 and Not_Value_28_40);
        local Waited_For_197 = task.wait(0.1);
        local Not_Value_28_41 = not Value_28;
        local var473 = (Value_29 and Not_Value_28_41);
        local Waited_For_198 = task.wait(0.1);
        local Not_Value_28_42 = not Value_28;
        local var474 = (Value_29 and Not_Value_28_42);
        local Waited_For_199 = task.wait(0.1);
        local Not_Value_28_43 = not Value_28;
        local var475 = (Value_29 and Not_Value_28_43);
        local Waited_For_200 = task.wait(0.1);
        local Not_Value_28_44 = not Value_28;
        local var476 = (Value_29 and Not_Value_28_44);
        local Waited_For_201 = task.wait(0.1);
        local Not_Value_28_45 = not Value_28;
        local var477 = (Value_29 and Not_Value_28_45);
        local Waited_For_202 = task.wait(0.1);
        local Not_Value_28_46 = not Value_28;
        local var478 = (Value_29 and Not_Value_28_46);
        local Waited_For_203 = task.wait(0.1);
        local Not_Value_28_47 = not Value_28;
        local var479 = (Value_29 and Not_Value_28_47);
        local Waited_For_204 = task.wait(0.1);
        local Not_Value_28_48 = not Value_28;
        local var480 = (Value_29 and Not_Value_28_48);
        local Waited_For_205 = task.wait(0.1);
        local Not_Value_28_49 = not Value_28;
        local var481 = (Value_29 and Not_Value_28_49);
        local Waited_For_206 = task.wait(0.1);
        local Not_Value_28_50 = not Value_28;
        local var482 = (Value_29 and Not_Value_28_50);
        local Waited_For_207 = task.wait(0.1);
        local Not_Value_28_51 = not Value_28;
        local var483 = (Value_29 and Not_Value_28_51);
        local Waited_For_208 = task.wait(0.1);
        local Not_Value_28_52 = not Value_28;
        local var484 = (Value_29 and Not_Value_28_52);
        local Waited_For_209 = task.wait(0.1);
        local Not_Value_28_53 = not Value_28;
        local var485 = (Value_29 and Not_Value_28_53);
        local Waited_For_210 = task.wait(0.1);
        local Not_Value_28_54 = not Value_28;
        local var486 = (Value_29 and Not_Value_28_54);
        local Waited_For_211 = task.wait(0.1);
        local Not_Value_28_55 = not Value_28;
        local var487 = (Value_29 and Not_Value_28_55);
        local Waited_For_212 = task.wait(0.1);
        local Not_Value_28_56 = not Value_28;
        local var488 = (Value_29 and Not_Value_28_56);
        local Waited_For_213 = task.wait(0.1);
        local Not_Value_28_57 = not Value_28;
        local var489 = (Value_29 and Not_Value_28_57);
        local Waited_For_214 = task.wait(0.1);
        local Not_Value_28_58 = not Value_28;
        local var490 = (Value_29 and Not_Value_28_58);
        local Waited_For_215 = task.wait(0.1);
        local Not_Value_28_59 = not Value_28;
        local var491 = (Value_29 and Not_Value_28_59);
        local Waited_For_216 = task.wait(0.1);
        local Not_Value_28_60 = not Value_28;
        local var492 = (Value_29 and Not_Value_28_60);
        local Waited_For_217 = task.wait(0.1);
        local Not_Value_28_61 = not Value_28;
        local var493 = (Value_29 and Not_Value_28_61);
        local Waited_For_218 = task.wait(0.1);
        local Not_Value_28_62 = not Value_28;
        local var494 = (Value_29 and Not_Value_28_62);
        local Waited_For_219 = task.wait(0.1);
        local Not_Value_28_63 = not Value_28;
        local var495 = (Value_29 and Not_Value_28_63);
        local Waited_For_220 = task.wait(0.1);
        local Not_Value_28_64 = not Value_28;
        local var496 = (Value_29 and Not_Value_28_64);
        local Waited_For_221 = task.wait(0.1);
        local Not_Value_28_65 = not Value_28;
        local var497 = (Value_29 and Not_Value_28_65);
        local Waited_For_222 = task.wait(0.1);
        local Not_Value_28_66 = not Value_28;
        local var498 = (Value_29 and Not_Value_28_66);
        local Waited_For_223 = task.wait(0.1);
        local Not_Value_28_67 = not Value_28;
        local var499 = (Value_29 and Not_Value_28_67);
        local Waited_For_224 = task.wait(0.1);
        local Not_Value_28_68 = not Value_28;
        local var500 = (Value_29 and Not_Value_28_68);
        local Waited_For_225 = task.wait(0.1);
        local Not_Value_28_69 = not Value_28;
        local var501 = (Value_29 and Not_Value_28_69);
        local Waited_For_226 = task.wait(0.1);
        local Not_Value_28_70 = not Value_28;
        local var502 = (Value_29 and Not_Value_28_70);
        local Waited_For_227 = task.wait(0.1);
        local Not_Value_28_71 = not Value_28;
        local var503 = (Value_29 and Not_Value_28_71);
        local Waited_For_228 = task.wait(0.1);
        local Not_Value_28_72 = not Value_28;
        local var504 = (Value_29 and Not_Value_28_72);
        local Waited_For_229 = task.wait(0.1);
        local Not_Value_28_73 = not Value_28;
        local var505 = (Value_29 and Not_Value_28_73);
        local Waited_For_230 = task.wait(0.1);
        local Not_Value_28_74 = not Value_28;
        local var506 = (Value_29 and Not_Value_28_74);
        local Waited_For_231 = task.wait(0.1);
        local Not_Value_28_75 = not Value_28;
        local var507 = (Value_29 and Not_Value_28_75);
        local Waited_For_232 = task.wait(0.1);
        local Not_Value_28_76 = not Value_28;
        local var508 = (Value_29 and Not_Value_28_76);
        local Waited_For_233 = task.wait(0.1);
        local Not_Value_28_77 = not Value_28;
        local var509 = (Value_29 and Not_Value_28_77);
        local Waited_For_234 = task.wait(0.1);
        local Not_Value_28_78 = not Value_28;
        local var510 = (Value_29 and Not_Value_28_78);
        local Waited_For_235 = task.wait(0.1);
        local Not_Value_28_79 = not Value_28;
        local var511 = (Value_29 and Not_Value_28_79);
        local Waited_For_236 = task.wait(0.1);
        local Not_Value_28_80 = not Value_28;
        local var512 = (Value_29 and Not_Value_28_80);
        local Waited_For_237 = task.wait(0.1);
        local Not_Value_28_81 = not Value_28;
        local var513 = (Value_29 and Not_Value_28_81);
        local Waited_For_238 = task.wait(0.1);
        local Not_Value_28_82 = not Value_28;
        local var514 = (Value_29 and Not_Value_28_82);
        local Waited_For_239 = task.wait(0.1);
        local Not_Value_28_83 = not Value_28;
        local var515 = (Value_29 and Not_Value_28_83);
        local Waited_For_240 = task.wait(0.1);
        local Not_Value_28_84 = not Value_28;
        local var516 = (Value_29 and Not_Value_28_84);
        local Waited_For_241 = task.wait(0.1);
        local Not_Value_28_85 = not Value_28;
        local var517 = (Value_29 and Not_Value_28_85);
        local Waited_For_242 = task.wait(0.1);
        local Not_Value_28_86 = not Value_28;
        local var518 = (Value_29 and Not_Value_28_86);
        local Waited_For_243 = task.wait(0.1);
        local Not_Value_28_87 = not Value_28;
        local var519 = (Value_29 and Not_Value_28_87);
        local Waited_For_244 = task.wait(0.1);
        local Not_Value_28_88 = not Value_28;
        local var520 = (Value_29 and Not_Value_28_88);
        local Waited_For_245 = task.wait(0.1);
        local Not_Value_28_89 = not Value_28;
        local var521 = (Value_29 and Not_Value_28_89);
        local Waited_For_246 = task.wait(0.1);
        local Not_Value_28_90 = not Value_28;
        local var522 = (Value_29 and Not_Value_28_90);
        local Waited_For_247 = task.wait(0.1);
        local Not_Value_28_91 = not Value_28;
        local var523 = (Value_29 and Not_Value_28_91);
        local Waited_For_248 = task.wait(0.1);
        local Not_Value_28_92 = not Value_28;
        local var524 = (Value_29 and Not_Value_28_92);
        local Waited_For_249 = task.wait(0.1);
        local Not_Value_28_93 = not Value_28;
        local var525 = (Value_29 and Not_Value_28_93);
        local Waited_For_250 = task.wait(0.1);
        local Not_Value_28_94 = not Value_28;
        local var526 = (Value_29 and Not_Value_28_94);
        local Waited_For_251 = task.wait(0.1);
        local Not_Value_28_95 = not Value_28;
        local var527 = (Value_29 and Not_Value_28_95);
        local Waited_For_252 = task.wait(0.1);
        local Not_Value_28_96 = not Value_28;
        local var528 = (Value_29 and Not_Value_28_96);
        local Waited_For_253 = task.wait(0.1);
        local Not_Value_28_97 = not Value_28;
        local var529 = (Value_29 and Not_Value_28_97);
        local Waited_For_254 = task.wait(0.1);
        local Not_Value_28_98 = not Value_28;
        local var530 = (Value_29 and Not_Value_28_98);
        local Waited_For_255 = task.wait(0.1);
        local Not_Value_28_99 = not Value_28;
        local var531 = (Value_29 and Not_Value_28_99);
        local Waited_For_256 = task.wait(0.1);
        local Not_Value_28_100 = not Value_28;
        local var532 = (Value_29 and Not_Value_28_100);
        local Waited_For_257 = task.wait(0.1);
        local Not_Value_28_101 = not Value_28;
        local var533 = (Value_29 and Not_Value_28_101);
        local Waited_For_258 = task.wait(0.1);
        local Not_Value_28_102 = not Value_28;
        local var534 = (Value_29 and Not_Value_28_102);
        local Waited_For_259 = task.wait(0.1);
        local Not_Value_28_103 = not Value_28;
        local var535 = (Value_29 and Not_Value_28_103);
        local Waited_For_260 = task.wait(0.1);
        local Not_Value_28_104 = not Value_28;
        local var536 = (Value_29 and Not_Value_28_104);
        local Waited_For_261 = task.wait(0.1);
        local Not_Value_28_105 = not Value_28;
        local var537 = (Value_29 and Not_Value_28_105);
        local Waited_For_262 = task.wait(0.1);
        local Not_Value_28_106 = not Value_28;
        local var538 = (Value_29 and Not_Value_28_106);
        local Waited_For_263 = task.wait(0.1);
        local Not_Value_28_107 = not Value_28;
        local var539 = (Value_29 and Not_Value_28_107);
        local Waited_For_264 = task.wait(0.1);
        local Not_Value_28_108 = not Value_28;
        local var540 = (Value_29 and Not_Value_28_108);
        local Waited_For_265 = task.wait(0.1);
        local Not_Value_28_109 = not Value_28;
        local var541 = (Value_29 and Not_Value_28_109);
        local Waited_For_266 = task.wait(0.1);
        local Not_Value_28_110 = not Value_28;
        local var542 = (Value_29 and Not_Value_28_110);
        local Waited_For_267 = task.wait(0.1);
        local Not_Value_28_111 = not Value_28;
        local var543 = (Value_29 and Not_Value_28_111);
        local Waited_For_268 = task.wait(0.1);
        local Not_Value_28_112 = not Value_28;
        local var544 = (Value_29 and Not_Value_28_112);
        local Waited_For_269 = task.wait(0.1);
        local Not_Value_28_113 = not Value_28;
        local var545 = (Value_29 and Not_Value_28_113);
        local Waited_For_270 = task.wait(0.1);
        local Not_Value_28_114 = not Value_28;
        local var546 = (Value_29 and Not_Value_28_114);
        local Waited_For_271 = task.wait(0.1);
        local Not_Value_28_115 = not Value_28;
        local var547 = (Value_29 and Not_Value_28_115);
        local Waited_For_272 = task.wait(0.1);
        local Not_Value_28_116 = not Value_28;
        local var548 = (Value_29 and Not_Value_28_116);
        local Waited_For_273 = task.wait(0.1);
        local Not_Value_28_117 = not Value_28;
        local var549 = (Value_29 and Not_Value_28_117);
        local Waited_For_274 = task.wait(0.1);
        local Not_Value_28_118 = not Value_28;
        local var550 = (Value_29 and Not_Value_28_118);
        local Waited_For_275 = task.wait(0.1);
        local Not_Value_28_119 = not Value_28;
        local var551 = (Value_29 and Not_Value_28_119);
        local Waited_For_276 = task.wait(0.1);
        local Not_Value_28_120 = not Value_28;
        local var552 = (Value_29 and Not_Value_28_120);
        local Waited_For_277 = task.wait(0.1);
        local Not_Value_28_121 = not Value_28;
        local var553 = (Value_29 and Not_Value_28_121);
        local Waited_For_278 = task.wait(0.1);
        local Not_Value_28_122 = not Value_28;
        local var554 = (Value_29 and Not_Value_28_122);
        local Waited_For_279 = task.wait(0.1);
        local Not_Value_28_123 = not Value_28;
        local var555 = (Value_29 and Not_Value_28_123);
        local Waited_For_280 = task.wait(0.1);
        local Not_Value_28_124 = not Value_28;
        local var556 = (Value_29 and Not_Value_28_124);
        local Waited_For_281 = task.wait(0.1);
        local Not_Value_28_125 = not Value_28;
        local var557 = (Value_29 and Not_Value_28_125);
        local Waited_For_282 = task.wait(0.1);
        local Not_Value_28_126 = not Value_28;
        local var558 = (Value_29 and Not_Value_28_126);
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local CreateToggle_11 = Tab_11.CreateToggle;
    local TpWalk = Tab_11:CreateToggle("TpWalk", {
        Default = false,
        Title = "Walk Speed",
        Description = "Tăng tốc độ di chuyển",
    });
    local CreateSlider_6 = Tab_11.CreateSlider;
    local TpWalkSpeed = Tab_11:CreateSlider("TpWalkSpeed", {
        Min = 1,
        Title = "Walk Speed Multiplier",
        Max = 10,
        Description = "Điều chỉnh tốc độ di chuyển (1-10)",
        Default = 1,
        Rounding = 1,
    });
    local OnChanged_43 = TpWalkSpeed.OnChanged;
    local OnChanged_44 = TpWalkSpeed:OnChanged(function(p1_0)

    end);
    local OnChanged_45 = TpWalk.OnChanged;
    local OnChanged_46 = TpWalk:OnChanged(function()
        local TpWalk_2 = Options.TpWalk;
        local Value_30 = TpWalk_2.Value;

    end);
    local Spawned_10 = task.spawn(function()
        local Connection_Result;
        Connection_Result = RunService.Heartbeat:Wait();
        if not Value_30 then return end -- won't run
        local Character_162 = LocalPlayer.Character;
        if not Character_162 then return end -- won't run
        local Humanoid_68 = Character_162:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection = Humanoid_68.MoveDirection;
        local Magnitude_17 = MoveDirection.Magnitude;
        local var559 = (Magnitude_17 > 0);
        local var560 = (Humanoid_68 and var559);
        local Connection_Result_2;
        Connection_Result_2 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_163 = LocalPlayer.Character;
        if not Character_163 then return end -- won't run
        local Humanoid_69 = Character_163:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_2 = Humanoid_69.MoveDirection;
        local Magnitude_18 = MoveDirection_2.Magnitude;
        local var561 = (Magnitude_18 > 0);
        local var562 = (Humanoid_69 and var561);
        local Connection_Result_3;
        Connection_Result_3 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_164 = LocalPlayer.Character;
        if not Character_164 then return end -- won't run
        local Humanoid_70 = Character_164:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_3 = Humanoid_70.MoveDirection;
        local Magnitude_19 = MoveDirection_3.Magnitude;
        local var563 = (Magnitude_19 > 0);
        local var564 = (Humanoid_70 and var563);
        local Connection_Result_4;
        Connection_Result_4 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_165 = LocalPlayer.Character;
        if not Character_165 then return end -- won't run
        local Humanoid_71 = Character_165:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_4 = Humanoid_71.MoveDirection;
        local Magnitude_20 = MoveDirection_4.Magnitude;
        local var565 = (Magnitude_20 > 0);
        local var566 = (Humanoid_71 and var565);
        local Connection_Result_5;
        Connection_Result_5 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_166 = LocalPlayer.Character;
        if not Character_166 then return end -- won't run
        local Humanoid_72 = Character_166:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_5 = Humanoid_72.MoveDirection;
        local Magnitude_21 = MoveDirection_5.Magnitude;
        local var567 = (Magnitude_21 > 0);
        local var568 = (Humanoid_72 and var567);
        local Connection_Result_6;
        Connection_Result_6 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_167 = LocalPlayer.Character;
        if not Character_167 then return end -- won't run
        local Humanoid_73 = Character_167:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_6 = Humanoid_73.MoveDirection;
        local Magnitude_22 = MoveDirection_6.Magnitude;
        local var569 = (Magnitude_22 > 0);
        local var570 = (Humanoid_73 and var569);
        local Connection_Result_7;
        Connection_Result_7 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_168 = LocalPlayer.Character;
        if not Character_168 then return end -- won't run
        local Humanoid_74 = Character_168:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_7 = Humanoid_74.MoveDirection;
        local Magnitude_23 = MoveDirection_7.Magnitude;
        local var571 = (Magnitude_23 > 0);
        local var572 = (Humanoid_74 and var571);
        local Connection_Result_8;
        Connection_Result_8 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_169 = LocalPlayer.Character;
        if not Character_169 then return end -- won't run
        local Humanoid_75 = Character_169:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_8 = Humanoid_75.MoveDirection;
        local Magnitude_24 = MoveDirection_8.Magnitude;
        local var573 = (Magnitude_24 > 0);
        local var574 = (Humanoid_75 and var573);
        local Connection_Result_9;
        Connection_Result_9 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_170 = LocalPlayer.Character;
        if not Character_170 then return end -- won't run
        local Humanoid_76 = Character_170:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_9 = Humanoid_76.MoveDirection;
        local Magnitude_25 = MoveDirection_9.Magnitude;
        local var575 = (Magnitude_25 > 0);
        local var576 = (Humanoid_76 and var575);
        local Connection_Result_10;
        Connection_Result_10 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_171 = LocalPlayer.Character;
        if not Character_171 then return end -- won't run
        local Humanoid_77 = Character_171:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_10 = Humanoid_77.MoveDirection;
        local Magnitude_26 = MoveDirection_10.Magnitude;
        local var577 = (Magnitude_26 > 0);
        local var578 = (Humanoid_77 and var577);
        local Connection_Result_11;
        Connection_Result_11 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_172 = LocalPlayer.Character;
        if not Character_172 then return end -- won't run
        local Humanoid_78 = Character_172:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_11 = Humanoid_78.MoveDirection;
        local Magnitude_27 = MoveDirection_11.Magnitude;
        local var579 = (Magnitude_27 > 0);
        local var580 = (Humanoid_78 and var579);
        local Connection_Result_12;
        Connection_Result_12 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_173 = LocalPlayer.Character;
        if not Character_173 then return end -- won't run
        local Humanoid_79 = Character_173:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_12 = Humanoid_79.MoveDirection;
        local Magnitude_28 = MoveDirection_12.Magnitude;
        local var581 = (Magnitude_28 > 0);
        local var582 = (Humanoid_79 and var581);
        local Connection_Result_13;
        Connection_Result_13 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_174 = LocalPlayer.Character;
        if not Character_174 then return end -- won't run
        local Humanoid_80 = Character_174:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_13 = Humanoid_80.MoveDirection;
        local Magnitude_29 = MoveDirection_13.Magnitude;
        local var583 = (Magnitude_29 > 0);
        local var584 = (Humanoid_80 and var583);
        local Connection_Result_14;
        Connection_Result_14 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_175 = LocalPlayer.Character;
        if not Character_175 then return end -- won't run
        local Humanoid_81 = Character_175:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_14 = Humanoid_81.MoveDirection;
        local Magnitude_30 = MoveDirection_14.Magnitude;
        local var585 = (Magnitude_30 > 0);
        local var586 = (Humanoid_81 and var585);
        local Connection_Result_15;
        Connection_Result_15 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_176 = LocalPlayer.Character;
        if not Character_176 then return end -- won't run
        local Humanoid_82 = Character_176:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_15 = Humanoid_82.MoveDirection;
        local Magnitude_31 = MoveDirection_15.Magnitude;
        local var587 = (Magnitude_31 > 0);
        local var588 = (Humanoid_82 and var587);
        local Connection_Result_16;
        Connection_Result_16 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_177 = LocalPlayer.Character;
        if not Character_177 then return end -- won't run
        local Humanoid_83 = Character_177:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_16 = Humanoid_83.MoveDirection;
        local Magnitude_32 = MoveDirection_16.Magnitude;
        local var589 = (Magnitude_32 > 0);
        local var590 = (Humanoid_83 and var589);
        local Connection_Result_17;
        Connection_Result_17 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_178 = LocalPlayer.Character;
        if not Character_178 then return end -- won't run
        local Humanoid_84 = Character_178:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_17 = Humanoid_84.MoveDirection;
        local Magnitude_33 = MoveDirection_17.Magnitude;
        local var591 = (Magnitude_33 > 0);
        local var592 = (Humanoid_84 and var591);
        local Connection_Result_18;
        Connection_Result_18 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_179 = LocalPlayer.Character;
        if not Character_179 then return end -- won't run
        local Humanoid_85 = Character_179:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_18 = Humanoid_85.MoveDirection;
        local Magnitude_34 = MoveDirection_18.Magnitude;
        local var593 = (Magnitude_34 > 0);
        local var594 = (Humanoid_85 and var593);
        local Connection_Result_19;
        Connection_Result_19 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_180 = LocalPlayer.Character;
        if not Character_180 then return end -- won't run
        local Humanoid_86 = Character_180:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_19 = Humanoid_86.MoveDirection;
        local Magnitude_35 = MoveDirection_19.Magnitude;
        local var595 = (Magnitude_35 > 0);
        local var596 = (Humanoid_86 and var595);
        local Connection_Result_20;
        Connection_Result_20 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_181 = LocalPlayer.Character;
        if not Character_181 then return end -- won't run
        local Humanoid_87 = Character_181:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_20 = Humanoid_87.MoveDirection;
        local Magnitude_36 = MoveDirection_20.Magnitude;
        local var597 = (Magnitude_36 > 0);
        local var598 = (Humanoid_87 and var597);
        local Connection_Result_21;
        Connection_Result_21 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_182 = LocalPlayer.Character;
        if not Character_182 then return end -- won't run
        local Humanoid_88 = Character_182:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_21 = Humanoid_88.MoveDirection;
        local Magnitude_37 = MoveDirection_21.Magnitude;
        local var599 = (Magnitude_37 > 0);
        local var600 = (Humanoid_88 and var599);
        local Connection_Result_22;
        Connection_Result_22 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_183 = LocalPlayer.Character;
        if not Character_183 then return end -- won't run
        local Humanoid_89 = Character_183:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_22 = Humanoid_89.MoveDirection;
        local Magnitude_38 = MoveDirection_22.Magnitude;
        local var601 = (Magnitude_38 > 0);
        local var602 = (Humanoid_89 and var601);
        local Connection_Result_23;
        Connection_Result_23 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_184 = LocalPlayer.Character;
        if not Character_184 then return end -- won't run
        local Humanoid_90 = Character_184:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_23 = Humanoid_90.MoveDirection;
        local Magnitude_39 = MoveDirection_23.Magnitude;
        local var603 = (Magnitude_39 > 0);
        local var604 = (Humanoid_90 and var603);
        local Connection_Result_24;
        Connection_Result_24 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_185 = LocalPlayer.Character;
        if not Character_185 then return end -- won't run
        local Humanoid_91 = Character_185:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_24 = Humanoid_91.MoveDirection;
        local Magnitude_40 = MoveDirection_24.Magnitude;
        local var605 = (Magnitude_40 > 0);
        local var606 = (Humanoid_91 and var605);
        local Connection_Result_25;
        Connection_Result_25 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_186 = LocalPlayer.Character;
        if not Character_186 then return end -- won't run
        local Humanoid_92 = Character_186:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_25 = Humanoid_92.MoveDirection;
        local Magnitude_41 = MoveDirection_25.Magnitude;
        local var607 = (Magnitude_41 > 0);
        local var608 = (Humanoid_92 and var607);
        local Connection_Result_26;
        Connection_Result_26 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_187 = LocalPlayer.Character;
        if not Character_187 then return end -- won't run
        local Humanoid_93 = Character_187:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_26 = Humanoid_93.MoveDirection;
        local Magnitude_42 = MoveDirection_26.Magnitude;
        local var609 = (Magnitude_42 > 0);
        local var610 = (Humanoid_93 and var609);
        local Connection_Result_27;
        Connection_Result_27 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_188 = LocalPlayer.Character;
        if not Character_188 then return end -- won't run
        local Humanoid_94 = Character_188:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_27 = Humanoid_94.MoveDirection;
        local Magnitude_43 = MoveDirection_27.Magnitude;
        local var611 = (Magnitude_43 > 0);
        local var612 = (Humanoid_94 and var611);
        local Connection_Result_28;
        Connection_Result_28 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_189 = LocalPlayer.Character;
        if not Character_189 then return end -- won't run
        local Humanoid_95 = Character_189:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_28 = Humanoid_95.MoveDirection;
        local Magnitude_44 = MoveDirection_28.Magnitude;
        local var613 = (Magnitude_44 > 0);
        local var614 = (Humanoid_95 and var613);
        local Connection_Result_29;
        Connection_Result_29 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_190 = LocalPlayer.Character;
        if not Character_190 then return end -- won't run
        local Humanoid_96 = Character_190:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_29 = Humanoid_96.MoveDirection;
        local Magnitude_45 = MoveDirection_29.Magnitude;
        local var615 = (Magnitude_45 > 0);
        local var616 = (Humanoid_96 and var615);
        local Connection_Result_30;
        Connection_Result_30 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_191 = LocalPlayer.Character;
        if not Character_191 then return end -- won't run
        local Humanoid_97 = Character_191:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_30 = Humanoid_97.MoveDirection;
        local Magnitude_46 = MoveDirection_30.Magnitude;
        local var617 = (Magnitude_46 > 0);
        local var618 = (Humanoid_97 and var617);
        local Connection_Result_31;
        Connection_Result_31 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_192 = LocalPlayer.Character;
        if not Character_192 then return end -- won't run
        local Humanoid_98 = Character_192:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_31 = Humanoid_98.MoveDirection;
        local Magnitude_47 = MoveDirection_31.Magnitude;
        local var619 = (Magnitude_47 > 0);
        local var620 = (Humanoid_98 and var619);
        local Connection_Result_32;
        Connection_Result_32 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_193 = LocalPlayer.Character;
        if not Character_193 then return end -- won't run
        local Humanoid_99 = Character_193:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_32 = Humanoid_99.MoveDirection;
        local Magnitude_48 = MoveDirection_32.Magnitude;
        local var621 = (Magnitude_48 > 0);
        local var622 = (Humanoid_99 and var621);
        local Connection_Result_33;
        Connection_Result_33 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_194 = LocalPlayer.Character;
        if not Character_194 then return end -- won't run
        local Humanoid_100 = Character_194:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_33 = Humanoid_100.MoveDirection;
        local Magnitude_49 = MoveDirection_33.Magnitude;
        local var623 = (Magnitude_49 > 0);
        local var624 = (Humanoid_100 and var623);
        local Connection_Result_34;
        Connection_Result_34 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_195 = LocalPlayer.Character;
        if not Character_195 then return end -- won't run
        local Humanoid_101 = Character_195:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_34 = Humanoid_101.MoveDirection;
        local Magnitude_50 = MoveDirection_34.Magnitude;
        local var625 = (Magnitude_50 > 0);
        local var626 = (Humanoid_101 and var625);
        local Connection_Result_35;
        Connection_Result_35 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_196 = LocalPlayer.Character;
        if not Character_196 then return end -- won't run
        local Humanoid_102 = Character_196:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_35 = Humanoid_102.MoveDirection;
        local Magnitude_51 = MoveDirection_35.Magnitude;
        local var627 = (Magnitude_51 > 0);
        local var628 = (Humanoid_102 and var627);
        local Connection_Result_36;
        Connection_Result_36 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_197 = LocalPlayer.Character;
        if not Character_197 then return end -- won't run
        local Humanoid_103 = Character_197:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_36 = Humanoid_103.MoveDirection;
        local Magnitude_52 = MoveDirection_36.Magnitude;
        local var629 = (Magnitude_52 > 0);
        local var630 = (Humanoid_103 and var629);
        local Connection_Result_37;
        Connection_Result_37 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_198 = LocalPlayer.Character;
        if not Character_198 then return end -- won't run
        local Humanoid_104 = Character_198:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_37 = Humanoid_104.MoveDirection;
        local Magnitude_53 = MoveDirection_37.Magnitude;
        local var631 = (Magnitude_53 > 0);
        local var632 = (Humanoid_104 and var631);
        local Connection_Result_38;
        Connection_Result_38 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_199 = LocalPlayer.Character;
        if not Character_199 then return end -- won't run
        local Humanoid_105 = Character_199:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_38 = Humanoid_105.MoveDirection;
        local Magnitude_54 = MoveDirection_38.Magnitude;
        local var633 = (Magnitude_54 > 0);
        local var634 = (Humanoid_105 and var633);
        local Connection_Result_39;
        Connection_Result_39 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_200 = LocalPlayer.Character;
        if not Character_200 then return end -- won't run
        local Humanoid_106 = Character_200:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_39 = Humanoid_106.MoveDirection;
        local Magnitude_55 = MoveDirection_39.Magnitude;
        local var635 = (Magnitude_55 > 0);
        local var636 = (Humanoid_106 and var635);
        local Connection_Result_40;
        Connection_Result_40 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_201 = LocalPlayer.Character;
        if not Character_201 then return end -- won't run
        local Humanoid_107 = Character_201:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_40 = Humanoid_107.MoveDirection;
        local Magnitude_56 = MoveDirection_40.Magnitude;
        local var637 = (Magnitude_56 > 0);
        local var638 = (Humanoid_107 and var637);
        local Connection_Result_41;
        Connection_Result_41 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_202 = LocalPlayer.Character;
        if not Character_202 then return end -- won't run
        local Humanoid_108 = Character_202:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_41 = Humanoid_108.MoveDirection;
        local Magnitude_57 = MoveDirection_41.Magnitude;
        local var639 = (Magnitude_57 > 0);
        local var640 = (Humanoid_108 and var639);
        local Connection_Result_42;
        Connection_Result_42 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_203 = LocalPlayer.Character;
        if not Character_203 then return end -- won't run
        local Humanoid_109 = Character_203:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_42 = Humanoid_109.MoveDirection;
        local Magnitude_58 = MoveDirection_42.Magnitude;
        local var641 = (Magnitude_58 > 0);
        local var642 = (Humanoid_109 and var641);
        local Connection_Result_43;
        Connection_Result_43 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_204 = LocalPlayer.Character;
        if not Character_204 then return end -- won't run
        local Humanoid_110 = Character_204:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_43 = Humanoid_110.MoveDirection;
        local Magnitude_59 = MoveDirection_43.Magnitude;
        local var643 = (Magnitude_59 > 0);
        local var644 = (Humanoid_110 and var643);
        local Connection_Result_44;
        Connection_Result_44 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_205 = LocalPlayer.Character;
        if not Character_205 then return end -- won't run
        local Humanoid_111 = Character_205:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_44 = Humanoid_111.MoveDirection;
        local Magnitude_60 = MoveDirection_44.Magnitude;
        local var645 = (Magnitude_60 > 0);
        local var646 = (Humanoid_111 and var645);
        local Connection_Result_45;
        Connection_Result_45 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_206 = LocalPlayer.Character;
        if not Character_206 then return end -- won't run
        local Humanoid_112 = Character_206:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_45 = Humanoid_112.MoveDirection;
        local Magnitude_61 = MoveDirection_45.Magnitude;
        local var647 = (Magnitude_61 > 0);
        local var648 = (Humanoid_112 and var647);
        local Connection_Result_46;
        Connection_Result_46 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_207 = LocalPlayer.Character;
        if not Character_207 then return end -- won't run
        local Humanoid_113 = Character_207:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_46 = Humanoid_113.MoveDirection;
        local Magnitude_62 = MoveDirection_46.Magnitude;
        local var649 = (Magnitude_62 > 0);
        local var650 = (Humanoid_113 and var649);
        local Connection_Result_47;
        Connection_Result_47 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_208 = LocalPlayer.Character;
        if not Character_208 then return end -- won't run
        local Humanoid_114 = Character_208:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_47 = Humanoid_114.MoveDirection;
        local Magnitude_63 = MoveDirection_47.Magnitude;
        local var651 = (Magnitude_63 > 0);
        local var652 = (Humanoid_114 and var651);
        local Connection_Result_48;
        Connection_Result_48 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_209 = LocalPlayer.Character;
        if not Character_209 then return end -- won't run
        local Humanoid_115 = Character_209:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_48 = Humanoid_115.MoveDirection;
        local Magnitude_64 = MoveDirection_48.Magnitude;
        local var653 = (Magnitude_64 > 0);
        local var654 = (Humanoid_115 and var653);
        local Connection_Result_49;
        Connection_Result_49 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_210 = LocalPlayer.Character;
        if not Character_210 then return end -- won't run
        local Humanoid_116 = Character_210:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_49 = Humanoid_116.MoveDirection;
        local Magnitude_65 = MoveDirection_49.Magnitude;
        local var655 = (Magnitude_65 > 0);
        local var656 = (Humanoid_116 and var655);
        local Connection_Result_50;
        Connection_Result_50 = RunService.Heartbeat:wait();
        if not Value_30 then return end -- won't run
        local Character_211 = LocalPlayer.Character;
        if not Character_211 then return end -- won't run
        local Humanoid_117 = Character_211:FindFirstChildWhichIsA("Humanoid");
        local MoveDirection_50 = Humanoid_117.MoveDirection;
        local Magnitude_66 = MoveDirection_50.Magnitude;
        local var657 = (Magnitude_66 > 0);
        local var658 = (Humanoid_117 and var657);
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local CreateToggle_12 = Tab_11.CreateToggle;
    local FullBright = Tab_11:CreateToggle("FullBright", {
        Default = false,
        Title = "Full Bright",
        Description = "Làm sáng toàn bộ map",
    });
    local OnChanged_47 = FullBright.OnChanged;
    local OnChanged_48 = FullBright:OnChanged(function()
        local FullBright_2 = Options.FullBright;
        local Value_31 = FullBright_2.Value;
        if not Value_31 then return end -- won't run
        local Brightness = Lighting.Brightness;
        local ClockTime = Lighting.ClockTime;
        local FogEnd = Lighting.FogEnd;
        local GlobalShadows = Lighting.GlobalShadows;
        local OutdoorAmbient = Lighting.OutdoorAmbient;
        local Connection_11;
        Connection_11 = RunService.RenderStepped:connect(function() -- args: DeltaTime_3;
            Lighting.Brightness = 2;
            Lighting.ClockTime = 14;
            Lighting.FogEnd = 100000;
            Lighting.GlobalShadows = false;
            local Color3_Value_4 = Color3_FromRGB(128, 128, 128);
            Lighting.OutdoorAmbient = Color3_Value_4;

        end);

    end);
    local CreateToggle_13 = Tab_11.CreateToggle;
    local NoFog = Tab_11:CreateToggle("NoFog", {
        Default = false,
        Title = "No Fog",
        Description = "Xóa hiệu ứng sương mù",
    });
    local OnChanged_49 = NoFog.OnChanged;
    local OnChanged_50 = NoFog:OnChanged(function()
        local NoFog_2 = Options.NoFog;
        local Value_32 = NoFog_2.Value;
        if not Value_32 then return end -- won't run
        Lighting.FogEnd = 100000;
        local Descendants = Lighting:GetDescendants();
        for i_150, v_150 in pairs(Descendants) do
            local IsA_9 = v_150.IsA;
            local Atmosphere = v_150:IsA("Atmosphere");
            if not Atmosphere then return end -- won't run
            local Destroy_3 = v_150.Destroy;
            local Destroy_4 = v_150:Destroy();
        end

    end);
    local CreateDropdown_10 = Tab_5.CreateDropdown;
    local FarmIslandSelect = Tab_5:CreateDropdown("FarmIslandSelect", {
        Title = "Island Select",
        Default = "All",
        Multi = false,
        Values = {
            "All",
            "Stonewake's Cross",
            "Forgotten Kingdom",
            "Goblin Cave",
        },
        Description = "Chọn Island để lọc loại đá",
    });
    local CreateDropdown_11 = Tab_5.CreateDropdown;
    local FarmSelect = Tab_5:CreateDropdown("FarmSelect", {
        Title = "Farm Select",
        Default = {
            "Pebble",
        },
        Multi = true,
        Values = {
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
            "Light Crystal",
        },
        Description = "Chọn loại đá/quặng muốn farm",
    });
    local OnChanged_51 = FarmIslandSelect.OnChanged;
    local OnChanged_52 = FarmIslandSelect:OnChanged(function(p1_0)
        local SetValues_35 = FarmSelect.SetValues;
        local SetValues_36 = FarmSelect:SetValues({
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
            "Light Crystal",
        });
        local SetValue_11 = FarmSelect.SetValue;
        if not SetValue_11 then return end -- won't run
        local SetValue_12 = FarmSelect.SetValue;
        local SetValue_13 = FarmSelect:SetValue({
            Pebble = true,
        });

    end);
    local OnChanged_53 = FarmSelect.OnChanged;
    local OnChanged_54 = FarmSelect:OnChanged(function(p1_0)

    end);
    local CreateToggle_14 = Tab_5.CreateToggle;
    local AutoFarm = Tab_5:CreateToggle("AutoFarm", {
        Default = false,
        Title = "Auto Farm",
        Description = "Farm đá/quặng đã chọn",
    });
    local OnChanged_55 = AutoFarm.OnChanged;
    local OnChanged_56 = AutoFarm:OnChanged(function()
        local AutoFarm_2 = Options.AutoFarm;
        local Value_33 = AutoFarm_2.Value;
        local Character_212 = LocalPlayer.Character;
        if not Value_33 then return end -- won't run
        local Success_126, Error_Message_126 = pcall(function(...)
            local var661 = debug.setconstant;
            local var662 = (debug and nil);
            local var663 = (var662 or setconstant);
            local var664 = debug.getconstants;
            local var665 = (debug and nil);
            local var666 = (var665 or nil);
            local Not_Var663 = not var663;
            local var667 = (Not_Var663 or false);
            local Not_Var666 = not var666;
            local var668 = (var667 or Not_Var666);
            if not var668 then return end -- won't run
            local Notify_11 = Loaded_Var4.Notify;
            local Notify_12 = Loaded_Var4:Notify({
                Duration = 3,
                Title = "Error",
                Content = "Exploit không hỗ trợ camera noclip",
            });
        end)
        if not Character_212 then return end -- won't run
        local HumanoidRootPart_84 = Character_212:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_84 = not HumanoidRootPart_84;
        local BodyGyro_2 = Instance.new("BodyGyro");
        local Vector3_Value_12 = Vector3_New(math.huge, math.huge, math.huge);
        BodyGyro_2.MaxTorque = Vector3_Value_12;
        BodyGyro_2.P = 1000000;
        BodyGyro_2.D = 100;
        BodyGyro_2.Parent = HumanoidRootPart_84;
        local BodyVelocity_2 = Instance.new("BodyVelocity");
        local Vector3_Value_13 = Vector3_New(math.huge, math.huge, math.huge);
        BodyVelocity_2.MaxForce = Vector3_Value_13;
        local Vector3_Value_14 = Vector3_New(0, 0, 0);
        BodyVelocity_2.Velocity = Vector3_Value_14;
        BodyVelocity_2.Parent = HumanoidRootPart_84;
        local Connection_12;
        Connection_12 = RunService.Stepped:connect(function() -- args: Time_2, DeltaTime_4;
            local Humanoid_136 = Character_212:FindFirstChild("Humanoid");
            local var770 = (Character_212 and Humanoid_136);
            if not var770 then return end -- won't run
            local Descendants_92 = Character_212:GetDescendants();
            for i_294, v_294 in pairs(Descendants_92) do
                local IsA_44 = v_294.IsA;
                local BasePart_34 = v_294:IsA("BasePart");
                if not BasePart_34 then return end -- won't run
                v_294.CanCollide = false;
            end

        end);
        local Humanoid_118 = Character_212:FindFirstChildOfClass("Humanoid");
        if not Humanoid_118 then return end -- won't run
        Humanoid_118.PlatformStand = true;
        local HumanoidRootPart_85 = Character_212:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_85 = not HumanoidRootPart_85;
        local Connection_13;
        Connection_13 = RunService.RenderStepped:connect(function() -- args: DeltaTime_5;
            local Parent_3 = HumanoidRootPart_84.Parent;
            local var769 = (HumanoidRootPart_85 and Parent_3);
            if not var769 then return end -- won't run
            local Vector3_Value_21 = Vector3_New(0, 0, 0);
            HumanoidRootPart_84.Velocity = Vector3_Value_21;
            local Vector3_Value_22 = Vector3_New(0, 0, 0);
            HumanoidRootPart_84.RotVelocity = Vector3_Value_22;

        end);

    end);
    local CreateToggle_15 = Tab_5.CreateToggle;
    local HighlightESP = Tab_5:CreateToggle("HighlightESP", {
        Default = false,
        Title = "Highlight ESP",
        Description = "Highlight cho Rock đã chọn",
    });
    local OnChanged_57 = HighlightESP.OnChanged;
    local OnChanged_58 = HighlightESP:OnChanged(function()
        local HighlightESP_2 = Options.HighlightESP;
        local Value_34 = HighlightESP_2.Value;
        if not Value_34 then return end -- won't run
        local Not_Value_34 = not Value_34;
        local Rocks = workspace:FindFirstChild("Rocks");
        if not Rocks then return end -- won't run
        local Descendants_2 = Rocks:GetDescendants();
        for i_151, v_151 in pairs(Descendants_2) do
            local Name_113 = v_151.Name;
            local var668 = p1_0[Name_113];
            local IsA_10 = v_151.IsA;
            local BasePart = v_151:IsA("BasePart");
            -- local _ = BasePart or (unknown_value)
            local var669 = (var668 and BasePart);
            if not var669 then return end -- won't run
            local Array_31 = {};
            local var670 = table.insert(Array_31, v_151);
        end
        local Len_Array_31 = #Array_31;
        local var671 = (Len_Array_31 == 0);
        if not var671 then return end -- won't run
        local Descendants_3 = workspace:GetDescendants();
        for i_152, v_152 in pairs(Descendants_3) do
            local Name_114 = v_152.Name;
            local var671 = p1_0[Name_114];
            local IsA_11 = v_152.IsA;
            local BasePart_2 = v_152:IsA("BasePart");
            -- local _ = BasePart_2 or (unknown_value)
            local var672 = (var671 and BasePart_2);
            if not var672 then return end -- won't run
            local Array_32 = Array_31;
            local var673 = table.insert(Array_32, v_152);
        end

    end);
    local Spawned_11 = task.spawn(function()
        local Waited_For_283 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_127, Error_Message_127 = pcall(function(...)
            local Character_213 = LocalPlayer.Character;
            if not Character_213 then return end -- won't run
            local Humanoid_119 = Character_213:FindFirstChildOfClass("Humanoid");
            if not Humanoid_119 then return end -- won't run
            Humanoid_119.PlatformStand = true;
            local Rocks_2 = workspace:FindFirstChild("Rocks");
            if not Rocks_2 then return end -- won't run
            local Descendants_4 = Rocks:GetDescendants();
            for i_153, v_153 in pairs(Descendants_4) do
                local Name_115 = v_153.Name;
                local var672 = p1_0[Name_115];
                local IsA_12 = v_153.IsA;
                local BasePart_3 = v_153:IsA("BasePart");
                -- local _ = BasePart_3 or (unknown_value)
                local var673 = (var672 and BasePart_3);
                if not var673 then return end -- won't run
                local Array_33 = {};
                local var674 = table.insert(Array_33, v_153);
            end
            local Len_Array_33 = #Array_33;
            local var675 = (Len_Array_33 == 0);
            if not var675 then return end -- won't run
            local Descendants_5 = workspace:GetDescendants();
            for i_154, v_154 in pairs(Descendants_5) do
                local Name_116 = v_154.Name;
                local var675 = p1_0[Name_116];
                local IsA_13 = v_154.IsA;
                local BasePart_4 = v_154:IsA("BasePart");
                -- local _ = BasePart_4 or (unknown_value)
                local var676 = (var675 and BasePart_4);
                if not var676 then return end -- won't run
                local Array_34 = Array_33;
                local var677 = table.insert(Array_34, v_154);
            end
            local Character_214 = LocalPlayer.Character;
            local Not_Character_214 = not Character_214;
            local HumanoidRootPart_86 = Character_214:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_86 = not HumanoidRootPart_86;
            local Position_80 = HumanoidRootPart_86.Position;
        end)
        local Waited_For_284 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_128, Error_Message_128 = pcall(function(...)
            local Character_215 = LocalPlayer.Character;
            if not Character_215 then return end -- won't run
            local Humanoid_120 = Character_215:FindFirstChildOfClass("Humanoid");
            if not Humanoid_120 then return end -- won't run
            Humanoid_120.PlatformStand = true;
            local Rocks_3 = workspace:FindFirstChild("Rocks");
            if not Rocks_3 then return end -- won't run
            local Descendants_6 = Rocks:GetDescendants();
            for i_155, v_155 in pairs(Descendants_6) do
                local Name_117 = v_155.Name;
                local var676 = p1_0[Name_117];
                local IsA_14 = v_155.IsA;
                local BasePart_5 = v_155:IsA("BasePart");
                -- local _ = BasePart_5 or (unknown_value)
                local var677 = (var676 and BasePart_5);
                if not var677 then return end -- won't run
                local Array_35 = {};
                local var678 = table.insert(Array_35, v_155);
            end
            local Len_Array_35 = #Array_35;
            local var679 = (Len_Array_35 == 0);
            if not var679 then return end -- won't run
            local Descendants_7 = workspace:GetDescendants();
            for i_156, v_156 in pairs(Descendants_7) do
                local Name_118 = v_156.Name;
                local var679 = p1_0[Name_118];
                local IsA_15 = v_156.IsA;
                local BasePart_6 = v_156:IsA("BasePart");
                -- local _ = BasePart_6 or (unknown_value)
                local var680 = (var679 and BasePart_6);
                if not var680 then return end -- won't run
                local Array_36 = Array_35;
                local var681 = table.insert(Array_36, v_156);
            end
            local Character_216 = LocalPlayer.Character;
            local Not_Character_216 = not Character_216;
            local HumanoidRootPart_87 = Character_216:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_87 = not HumanoidRootPart_87;
            local Position_81 = HumanoidRootPart_87.Position;
        end)
        local Waited_For_285 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_129, Error_Message_129 = pcall(function(...)
            local Character_217 = LocalPlayer.Character;
            if not Character_217 then return end -- won't run
            local Humanoid_121 = Character_217:FindFirstChildOfClass("Humanoid");
            if not Humanoid_121 then return end -- won't run
            Humanoid_121.PlatformStand = true;
            local Rocks_4 = workspace:FindFirstChild("Rocks");
            if not Rocks_4 then return end -- won't run
            local Descendants_8 = Rocks:GetDescendants();
            for i_157, v_157 in pairs(Descendants_8) do
                local Name_119 = v_157.Name;
                local var680 = p1_0[Name_119];
                local IsA_16 = v_157.IsA;
                local BasePart_7 = v_157:IsA("BasePart");
                -- local _ = BasePart_7 or (unknown_value)
                local var681 = (var680 and BasePart_7);
                if not var681 then return end -- won't run
                local Array_37 = {};
                local var682 = table.insert(Array_37, v_157);
            end
            local Len_Array_37 = #Array_37;
            local var683 = (Len_Array_37 == 0);
            if not var683 then return end -- won't run
            local Descendants_9 = workspace:GetDescendants();
            for i_158, v_158 in pairs(Descendants_9) do
                local Name_120 = v_158.Name;
                local var683 = p1_0[Name_120];
                local IsA_17 = v_158.IsA;
                local BasePart_8 = v_158:IsA("BasePart");
                -- local _ = BasePart_8 or (unknown_value)
                local var684 = (var683 and BasePart_8);
                if not var684 then return end -- won't run
                local Array_38 = Array_37;
                local var685 = table.insert(Array_38, v_158);
            end
            local Character_218 = LocalPlayer.Character;
            local Not_Character_218 = not Character_218;
            local HumanoidRootPart_88 = Character_218:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_88 = not HumanoidRootPart_88;
            local Position_82 = HumanoidRootPart_88.Position;
        end)
        local Waited_For_286 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_130, Error_Message_130 = pcall(function(...)
            local Character_219 = LocalPlayer.Character;
            if not Character_219 then return end -- won't run
            local Humanoid_122 = Character_219:FindFirstChildOfClass("Humanoid");
            if not Humanoid_122 then return end -- won't run
            Humanoid_122.PlatformStand = true;
            local Rocks_5 = workspace:FindFirstChild("Rocks");
            if not Rocks_5 then return end -- won't run
            local Descendants_10 = Rocks:GetDescendants();
            for i_159, v_159 in pairs(Descendants_10) do
                local Name_121 = v_159.Name;
                local var684 = p1_0[Name_121];
                local IsA_18 = v_159.IsA;
                local BasePart_9 = v_159:IsA("BasePart");
                -- local _ = BasePart_9 or (unknown_value)
                local var685 = (var684 and BasePart_9);
                if not var685 then return end -- won't run
                local Array_39 = {};
                local var686 = table.insert(Array_39, v_159);
            end
            local Len_Array_39 = #Array_39;
            local var687 = (Len_Array_39 == 0);
            if not var687 then return end -- won't run
            local Descendants_11 = workspace:GetDescendants();
            for i_160, v_160 in pairs(Descendants_11) do
                local Name_122 = v_160.Name;
                local var687 = p1_0[Name_122];
                local IsA_19 = v_160.IsA;
                local BasePart_10 = v_160:IsA("BasePart");
                -- local _ = BasePart_10 or (unknown_value)
                local var688 = (var687 and BasePart_10);
                if not var688 then return end -- won't run
                local Array_40 = Array_39;
                local var689 = table.insert(Array_40, v_160);
            end
            local Character_220 = LocalPlayer.Character;
            local Not_Character_220 = not Character_220;
            local HumanoidRootPart_89 = Character_220:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_89 = not HumanoidRootPart_89;
            local Position_83 = HumanoidRootPart_89.Position;
        end)
        local Waited_For_287 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_131, Error_Message_131 = pcall(function(...)
            local Character_221 = LocalPlayer.Character;
            if not Character_221 then return end -- won't run
            local Humanoid_123 = Character_221:FindFirstChildOfClass("Humanoid");
            if not Humanoid_123 then return end -- won't run
            Humanoid_123.PlatformStand = true;
            local Rocks_6 = workspace:FindFirstChild("Rocks");
            if not Rocks_6 then return end -- won't run
            local Descendants_12 = Rocks:GetDescendants();
            for i_161, v_161 in pairs(Descendants_12) do
                local Name_123 = v_161.Name;
                local var688 = p1_0[Name_123];
                local IsA_20 = v_161.IsA;
                local BasePart_11 = v_161:IsA("BasePart");
                -- local _ = BasePart_11 or (unknown_value)
                local var689 = (var688 and BasePart_11);
                if not var689 then return end -- won't run
                local Array_41 = {};
                local var690 = table.insert(Array_41, v_161);
            end
            local Len_Array_41 = #Array_41;
            local var691 = (Len_Array_41 == 0);
            if not var691 then return end -- won't run
            local Descendants_13 = workspace:GetDescendants();
            for i_162, v_162 in pairs(Descendants_13) do
                local Name_124 = v_162.Name;
                local var691 = p1_0[Name_124];
                local IsA_21 = v_162.IsA;
                local BasePart_12 = v_162:IsA("BasePart");
                -- local _ = BasePart_12 or (unknown_value)
                local var692 = (var691 and BasePart_12);
                if not var692 then return end -- won't run
                local Array_42 = Array_41;
                local var693 = table.insert(Array_42, v_162);
            end
            local Character_222 = LocalPlayer.Character;
            local Not_Character_222 = not Character_222;
            local HumanoidRootPart_90 = Character_222:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_90 = not HumanoidRootPart_90;
            local Position_84 = HumanoidRootPart_90.Position;
        end)
        local Waited_For_288 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_132, Error_Message_132 = pcall(function(...)
            local Character_223 = LocalPlayer.Character;
            if not Character_223 then return end -- won't run
            local Humanoid_124 = Character_223:FindFirstChildOfClass("Humanoid");
            if not Humanoid_124 then return end -- won't run
            Humanoid_124.PlatformStand = true;
            local Rocks_7 = workspace:FindFirstChild("Rocks");
            if not Rocks_7 then return end -- won't run
            local Descendants_14 = Rocks:GetDescendants();
            for i_163, v_163 in pairs(Descendants_14) do
                local Name_125 = v_163.Name;
                local var692 = p1_0[Name_125];
                local IsA_22 = v_163.IsA;
                local BasePart_13 = v_163:IsA("BasePart");
                -- local _ = BasePart_13 or (unknown_value)
                local var693 = (var692 and BasePart_13);
                if not var693 then return end -- won't run
                local Array_43 = {};
                local var694 = table.insert(Array_43, v_163);
            end
            local Len_Array_43 = #Array_43;
            local var695 = (Len_Array_43 == 0);
            if not var695 then return end -- won't run
            local Descendants_15 = workspace:GetDescendants();
            for i_164, v_164 in pairs(Descendants_15) do
                local Name_126 = v_164.Name;
                local var695 = p1_0[Name_126];
                local IsA_23 = v_164.IsA;
                local BasePart_14 = v_164:IsA("BasePart");
                -- local _ = BasePart_14 or (unknown_value)
                local var696 = (var695 and BasePart_14);
                if not var696 then return end -- won't run
                local Array_44 = Array_43;
                local var697 = table.insert(Array_44, v_164);
            end
            local Character_224 = LocalPlayer.Character;
            local Not_Character_224 = not Character_224;
            local HumanoidRootPart_91 = Character_224:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_91 = not HumanoidRootPart_91;
            local Position_85 = HumanoidRootPart_91.Position;
        end)
        local Waited_For_289 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_133, Error_Message_133 = pcall(function(...)
            local Character_225 = LocalPlayer.Character;
            if not Character_225 then return end -- won't run
            local Humanoid_125 = Character_225:FindFirstChildOfClass("Humanoid");
            if not Humanoid_125 then return end -- won't run
            Humanoid_125.PlatformStand = true;
            local Rocks_8 = workspace:FindFirstChild("Rocks");
            if not Rocks_8 then return end -- won't run
            local Descendants_16 = Rocks:GetDescendants();
            for i_165, v_165 in pairs(Descendants_16) do
                local Name_127 = v_165.Name;
                local var696 = p1_0[Name_127];
                local IsA_24 = v_165.IsA;
                local BasePart_15 = v_165:IsA("BasePart");
                -- local _ = BasePart_15 or (unknown_value)
                local var697 = (var696 and BasePart_15);
                if not var697 then return end -- won't run
                local Array_45 = {};
                local var698 = table.insert(Array_45, v_165);
            end
            local Len_Array_45 = #Array_45;
            local var699 = (Len_Array_45 == 0);
            if not var699 then return end -- won't run
            local Descendants_17 = workspace:GetDescendants();
            for i_166, v_166 in pairs(Descendants_17) do
                local Name_128 = v_166.Name;
                local var699 = p1_0[Name_128];
                local IsA_25 = v_166.IsA;
                local BasePart_16 = v_166:IsA("BasePart");
                -- local _ = BasePart_16 or (unknown_value)
                local var700 = (var699 and BasePart_16);
                if not var700 then return end -- won't run
                local Array_46 = Array_45;
                local var701 = table.insert(Array_46, v_166);
            end
            local Character_226 = LocalPlayer.Character;
            local Not_Character_226 = not Character_226;
            local HumanoidRootPart_92 = Character_226:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_92 = not HumanoidRootPart_92;
            local Position_86 = HumanoidRootPart_92.Position;
        end)
        local Waited_For_290 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_134, Error_Message_134 = pcall(function(...)
            local Character_227 = LocalPlayer.Character;
            if not Character_227 then return end -- won't run
            local Humanoid_126 = Character_227:FindFirstChildOfClass("Humanoid");
            if not Humanoid_126 then return end -- won't run
            Humanoid_126.PlatformStand = true;
            local Rocks_9 = workspace:FindFirstChild("Rocks");
            if not Rocks_9 then return end -- won't run
            local Descendants_18 = Rocks:GetDescendants();
            for i_167, v_167 in pairs(Descendants_18) do
                local Name_129 = v_167.Name;
                local var700 = p1_0[Name_129];
                local IsA_26 = v_167.IsA;
                local BasePart_17 = v_167:IsA("BasePart");
                -- local _ = BasePart_17 or (unknown_value)
                local var701 = (var700 and BasePart_17);
                if not var701 then return end -- won't run
                local Array_47 = {};
                local var702 = table.insert(Array_47, v_167);
            end
            local Len_Array_47 = #Array_47;
            local var703 = (Len_Array_47 == 0);
            if not var703 then return end -- won't run
            local Descendants_19 = workspace:GetDescendants();
            for i_168, v_168 in pairs(Descendants_19) do
                local Name_130 = v_168.Name;
                local var703 = p1_0[Name_130];
                local IsA_27 = v_168.IsA;
                local BasePart_18 = v_168:IsA("BasePart");
                -- local _ = BasePart_18 or (unknown_value)
                local var704 = (var703 and BasePart_18);
                if not var704 then return end -- won't run
                local Array_48 = Array_47;
                local var705 = table.insert(Array_48, v_168);
            end
            local Character_228 = LocalPlayer.Character;
            local Not_Character_228 = not Character_228;
            local HumanoidRootPart_93 = Character_228:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_93 = not HumanoidRootPart_93;
            local Position_87 = HumanoidRootPart_93.Position;
        end)
        local Waited_For_291 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_135, Error_Message_135 = pcall(function(...)
            local Character_229 = LocalPlayer.Character;
            if not Character_229 then return end -- won't run
            local Humanoid_127 = Character_229:FindFirstChildOfClass("Humanoid");
            if not Humanoid_127 then return end -- won't run
            Humanoid_127.PlatformStand = true;
            local Rocks_10 = workspace:FindFirstChild("Rocks");
            if not Rocks_10 then return end -- won't run
            local Descendants_20 = Rocks:GetDescendants();
            for i_169, v_169 in pairs(Descendants_20) do
                local Name_131 = v_169.Name;
                local var704 = p1_0[Name_131];
                local IsA_28 = v_169.IsA;
                local BasePart_19 = v_169:IsA("BasePart");
                -- local _ = BasePart_19 or (unknown_value)
                local var705 = (var704 and BasePart_19);
                if not var705 then return end -- won't run
                local Array_49 = {};
                local var706 = table.insert(Array_49, v_169);
            end
            local Len_Array_49 = #Array_49;
            local var707 = (Len_Array_49 == 0);
            if not var707 then return end -- won't run
            local Descendants_21 = workspace:GetDescendants();
            for i_170, v_170 in pairs(Descendants_21) do
                local Name_132 = v_170.Name;
                local var707 = p1_0[Name_132];
                local IsA_29 = v_170.IsA;
                local BasePart_20 = v_170:IsA("BasePart");
                -- local _ = BasePart_20 or (unknown_value)
                local var708 = (var707 and BasePart_20);
                if not var708 then return end -- won't run
                local Array_50 = Array_49;
                local var709 = table.insert(Array_50, v_170);
            end
            local Character_230 = LocalPlayer.Character;
            local Not_Character_230 = not Character_230;
            local HumanoidRootPart_94 = Character_230:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_94 = not HumanoidRootPart_94;
            local Position_88 = HumanoidRootPart_94.Position;
        end)
        local Waited_For_292 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_136, Error_Message_136 = pcall(function(...)
            local Character_231 = LocalPlayer.Character;
            if not Character_231 then return end -- won't run
            local Humanoid_128 = Character_231:FindFirstChildOfClass("Humanoid");
            if not Humanoid_128 then return end -- won't run
            Humanoid_128.PlatformStand = true;
            local Rocks_11 = workspace:FindFirstChild("Rocks");
            if not Rocks_11 then return end -- won't run
            local Descendants_22 = Rocks:GetDescendants();
            for i_171, v_171 in pairs(Descendants_22) do
                local Name_133 = v_171.Name;
                local var708 = p1_0[Name_133];
                local IsA_30 = v_171.IsA;
                local BasePart_21 = v_171:IsA("BasePart");
                -- local _ = BasePart_21 or (unknown_value)
                local var709 = (var708 and BasePart_21);
                if not var709 then return end -- won't run
                local Array_51 = {};
                local var710 = table.insert(Array_51, v_171);
            end
            local Len_Array_51 = #Array_51;
            local var711 = (Len_Array_51 == 0);
            if not var711 then return end -- won't run
            local Descendants_23 = workspace:GetDescendants();
            for i_172, v_172 in pairs(Descendants_23) do
                local Name_134 = v_172.Name;
                local var711 = p1_0[Name_134];
                local IsA_31 = v_172.IsA;
                local BasePart_22 = v_172:IsA("BasePart");
                -- local _ = BasePart_22 or (unknown_value)
                local var712 = (var711 and BasePart_22);
                if not var712 then return end -- won't run
                local Array_52 = Array_51;
                local var713 = table.insert(Array_52, v_172);
            end
            local Character_232 = LocalPlayer.Character;
            local Not_Character_232 = not Character_232;
            local HumanoidRootPart_95 = Character_232:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_95 = not HumanoidRootPart_95;
            local Position_89 = HumanoidRootPart_95.Position;
        end)
        local Waited_For_293 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_137, Error_Message_137 = pcall(function(...)
            local Character_233 = LocalPlayer.Character;
            if not Character_233 then return end -- won't run
            local Humanoid_129 = Character_233:FindFirstChildOfClass("Humanoid");
            if not Humanoid_129 then return end -- won't run
            Humanoid_129.PlatformStand = true;
            local Rocks_12 = workspace:FindFirstChild("Rocks");
            if not Rocks_12 then return end -- won't run
            local Descendants_24 = Rocks:GetDescendants();
            for i_173, v_173 in pairs(Descendants_24) do
                local Name_135 = v_173.Name;
                local var712 = p1_0[Name_135];
                local IsA_32 = v_173.IsA;
                local BasePart_23 = v_173:IsA("BasePart");
                -- local _ = BasePart_23 or (unknown_value)
                local var713 = (var712 and BasePart_23);
                if not var713 then return end -- won't run
                local Array_53 = {};
                local var714 = table.insert(Array_53, v_173);
            end
            local Len_Array_53 = #Array_53;
            local var715 = (Len_Array_53 == 0);
            if not var715 then return end -- won't run
            local Descendants_25 = workspace:GetDescendants();
            for i_174, v_174 in pairs(Descendants_25) do
                local Name_136 = v_174.Name;
                local var715 = p1_0[Name_136];
                local IsA_33 = v_174.IsA;
                local BasePart_24 = v_174:IsA("BasePart");
                -- local _ = BasePart_24 or (unknown_value)
                local var716 = (var715 and BasePart_24);
                if not var716 then return end -- won't run
                local Array_54 = Array_53;
                local var717 = table.insert(Array_54, v_174);
            end
            local Character_234 = LocalPlayer.Character;
            local Not_Character_234 = not Character_234;
            local HumanoidRootPart_96 = Character_234:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_96 = not HumanoidRootPart_96;
            local Position_90 = HumanoidRootPart_96.Position;
        end)
        local Waited_For_294 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_138, Error_Message_138 = pcall(function(...)
            local Character_235 = LocalPlayer.Character;
            if not Character_235 then return end -- won't run
            local Humanoid_130 = Character_235:FindFirstChildOfClass("Humanoid");
            if not Humanoid_130 then return end -- won't run
            Humanoid_130.PlatformStand = true;
            local Rocks_13 = workspace:FindFirstChild("Rocks");
            if not Rocks_13 then return end -- won't run
            local Descendants_26 = Rocks:GetDescendants();
            for i_175, v_175 in pairs(Descendants_26) do
                local Name_137 = v_175.Name;
                local var716 = p1_0[Name_137];
                local IsA_34 = v_175.IsA;
                local BasePart_25 = v_175:IsA("BasePart");
                -- local _ = BasePart_25 or (unknown_value)
                local var717 = (var716 and BasePart_25);
                if not var717 then return end -- won't run
                local Array_55 = {};
                local var718 = table.insert(Array_55, v_175);
            end
            local Len_Array_55 = #Array_55;
            local var719 = (Len_Array_55 == 0);
            if not var719 then return end -- won't run
            local Descendants_27 = workspace:GetDescendants();
            for i_176, v_176 in pairs(Descendants_27) do
                local Name_138 = v_176.Name;
                local var719 = p1_0[Name_138];
                local IsA_35 = v_176.IsA;
                local BasePart_26 = v_176:IsA("BasePart");
                -- local _ = BasePart_26 or (unknown_value)
                local var720 = (var719 and BasePart_26);
                if not var720 then return end -- won't run
                local Array_56 = Array_55;
                local var721 = table.insert(Array_56, v_176);
            end
            local Character_236 = LocalPlayer.Character;
            local Not_Character_236 = not Character_236;
            local HumanoidRootPart_97 = Character_236:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_97 = not HumanoidRootPart_97;
            local Position_91 = HumanoidRootPart_97.Position;
        end)
        local Waited_For_295 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_139, Error_Message_139 = pcall(function(...)
            local Character_237 = LocalPlayer.Character;
            if not Character_237 then return end -- won't run
            local Humanoid_131 = Character_237:FindFirstChildOfClass("Humanoid");
            if not Humanoid_131 then return end -- won't run
            Humanoid_131.PlatformStand = true;
            local Rocks_14 = workspace:FindFirstChild("Rocks");
            if not Rocks_14 then return end -- won't run
            local Descendants_28 = Rocks:GetDescendants();
            for i_177, v_177 in pairs(Descendants_28) do
                local Name_139 = v_177.Name;
                local var720 = p1_0[Name_139];
                local IsA_36 = v_177.IsA;
                local BasePart_27 = v_177:IsA("BasePart");
                -- local _ = BasePart_27 or (unknown_value)
                local var721 = (var720 and BasePart_27);
                if not var721 then return end -- won't run
                local Array_57 = {};
                local var722 = table.insert(Array_57, v_177);
            end
            local Len_Array_57 = #Array_57;
            local var723 = (Len_Array_57 == 0);
            if not var723 then return end -- won't run
            local Descendants_29 = workspace:GetDescendants();
            for i_178, v_178 in pairs(Descendants_29) do
                local Name_140 = v_178.Name;
                local var723 = p1_0[Name_140];
                local IsA_37 = v_178.IsA;
                local BasePart_28 = v_178:IsA("BasePart");
                -- local _ = BasePart_28 or (unknown_value)
                local var724 = (var723 and BasePart_28);
                if not var724 then return end -- won't run
                local Array_58 = Array_57;
                local var725 = table.insert(Array_58, v_178);
            end
            local Character_238 = LocalPlayer.Character;
            local Not_Character_238 = not Character_238;
            local HumanoidRootPart_98 = Character_238:FindFirstChild("HumanoidRootPart");
            local Not_HumanoidRootPart_98 = not HumanoidRootPart_98;
            local Position_92 = HumanoidRootPart_98.Position;
        end)
        local Waited_For_296 = task.wait(0.1);
        if not Value_33 then return end -- won't run
        local Success_140, Error_Message_140 = pcall(function(...)
            local Character_239 = LocalPlayer.Character;
            if not Character_239 then return end -- won't run
            local Humanoid_132 = Character_239:FindFirstChildOfClass("Humanoid");
            if not Humanoid_132 then return end -- won't run
            Humanoid_132.PlatformStand = true;
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local Connection_7;
    Connection_7 = LocalPlayer.CharacterAdded:connect(function(Character_240) -- args: Character_241;
        local Waited_For_297 = task.wait(0.5);
        if not Value_33 then return end -- won't run
        local FindFirstChild_34 = Character_240.FindFirstChild;
        local HumanoidRootPart_99 = Character_240:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_99 = not HumanoidRootPart_99;
        if not BodyGyro_2 then return end -- won't run
        local Destroy_5 = BodyGyro_2:Destroy();
        if not BodyVelocity_2 then return end -- won't run
        local Destroy_6 = BodyVelocity_2:Destroy();
        local BodyGyro_3 = Instance.new("BodyGyro");
        local Vector3_Value_15 = Vector3_New(math.huge, math.huge, math.huge);
        BodyGyro_3.MaxTorque = Vector3_Value_15;
        BodyGyro_3.P = 1000000;
        BodyGyro_3.D = 100;
        BodyGyro_3.Parent = HumanoidRootPart_99;
        local BodyVelocity_3 = Instance.new("BodyVelocity");
        local Vector3_Value_16 = Vector3_New(math.huge, math.huge, math.huge);
        BodyVelocity_3.MaxForce = Vector3_Value_16;
        local Vector3_Value_17 = Vector3_New(0, 0, 0);
        BodyVelocity_3.Velocity = Vector3_Value_17;
        BodyVelocity_3.Parent = HumanoidRootPart_99;
        if not Connection_12 then return end -- won't run
        Connection_12:Disconnect()
        local Connection_14;
        Connection_14 = RunService.Stepped:connect(function() -- args: Time_3, DeltaTime_6;
            local FindFirstChild_38 = Character_240.FindFirstChild;
            local Humanoid_137 = Character_240:FindFirstChild("Humanoid");
            local var768 = (Character_240 and Humanoid_137);
            if not var768 then return end -- won't run
            local GetDescendants = Character_240.GetDescendants;
            local Descendants_93 = Character_240:GetDescendants();
            for i_295, v_295 in pairs(Descendants_93) do
                local IsA_45 = v_295.IsA;
                local BasePart_35 = v_295:IsA("BasePart");
                if not BasePart_35 then return end -- won't run
                v_295.CanCollide = false;
            end

        end);
        local FindFirstChildOfClass = Character_240.FindFirstChildOfClass;
        local Humanoid_133 = Character_240:FindFirstChildOfClass("Humanoid");
        if not Humanoid_133 then return end -- won't run
        Humanoid_133.PlatformStand = true;
        if not Connection_13 then return end -- won't run
        Connection_13:Disconnect()
        local FindFirstChild_35 = Character_240.FindFirstChild;
        local HumanoidRootPart_100 = Character_240:FindFirstChild("HumanoidRootPart");
        local Not_HumanoidRootPart_100 = not HumanoidRootPart_100;
        local Connection_15;
        Connection_15 = RunService.RenderStepped:connect(function() -- args: DeltaTime_7;
            local Parent_4 = HumanoidRootPart_100.Parent;
            local var768 = (HumanoidRootPart_100 and Parent_4);
            if not var768 then return end -- won't run
            local Vector3_Value_23 = Vector3_New(0, 0, 0);
            HumanoidRootPart_100.Velocity = Vector3_Value_23;
            local Vector3_Value_24 = Vector3_New(0, 0, 0);
            HumanoidRootPart_100.RotVelocity = Vector3_Value_24;

        end);
        if not Value_2 then return end -- won't run
        --[[ nil()]]
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:2961: attempt to call a nil value")

    end);
    local CreateToggle_16 = Tab_3.CreateToggle;
    local AutoForge = Tab_3:CreateToggle("AutoForge", {
        Default = false,
        Title = "Auto Forge",
        Description = "Tự động thực hiện các minigame rèn (Melt)",
    });
    local OnChanged_59 = AutoForge.OnChanged;
    local OnChanged_60 = AutoForge:OnChanged(function()
        local AutoForge_2 = Options.AutoForge;
        local Value_35 = AutoForge_2.Value;

    end);
    local Spawned_12 = task.spawn(function()
        local Success_141, Error_Message_141 = pcall(function(...)
            local Shared_84 = ReplicatedStorage.Shared;
            local Packages_53 = Shared_84.Packages;
            local Knit_53 = Packages_53.Knit;
            local Knit_53_Module = require(Knit_53);
            local GetController_31 = Knit_53_Module.GetController;
            local _call722 = GetController_31("ForgeController");
            local Waited_For_298 = task.wait(0.1);
            local Minigames = _call722.Minigames;
            local Minigames_2 = _call722.Minigames;
            local MeltMinigame = Minigames_2.MeltMinigame;
            if not MeltMinigame then return end -- won't run
            local Minigames_3 = _call722.Minigames;
            local MeltMinigame_2 = Minigames_3.MeltMinigame;
            local originalStart = MeltMinigame_2._originalStart;
            local Not_OriginalStart = not originalStart;
            local Minigames_4 = _call722.Minigames;
            local PourMinigame = Minigames_4.PourMinigame;
            if not PourMinigame then return end -- won't run
            local Minigames_5 = _call722.Minigames;
            local PourMinigame_2 = Minigames_5.PourMinigame;
            local originalStart_2 = PourMinigame_2._originalStart;
            local Not_OriginalStart_2 = not originalStart_2;
        end)

    end);
    local CreateToggle_17 = Tab_3.CreateToggle;
    local FastForge = Tab_3:CreateToggle("FastForge", {
        Callback = function(p1_0)

        end,
        Default = false,
        Title = "Fast Forge",
        Description = "Tự động hoàn thành Melt/Pour (giữ quality)",
    });
    local Lock = FastForge.Lock;
    local Lock_2 = FastForge:Lock();
    local Spawned_13 = task.spawn(function()
        local Waited_For_299 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_142, Error_Message_142 = pcall(function(...)
            local PlayerGui_2 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_2 = not PlayerGui_2;
            local Forge = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge = not Forge;
            local MeltMinigame_3 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject = MeltMinigame_3:IsA("GuiObject");
            local var723 = (MeltMinigame_3 and GuiObject);
        end)
        local Success_143, Error_Message_143 = pcall(function(...)
            local PlayerGui_3 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_3 = not PlayerGui_3;
            local Forge_2 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_2 = not Forge_2;
            local PourMinigame_3 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_3 and (unknown_value)
        end)
        local Waited_For_300 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_144, Error_Message_144 = pcall(function(...)
            local PlayerGui_4 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_4 = not PlayerGui_4;
            local Forge_3 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_3 = not Forge_3;
            local MeltMinigame_4 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_2 = MeltMinigame_3:IsA("GuiObject");
            local var724 = (MeltMinigame_4 and GuiObject_2);
        end)
        local Success_145, Error_Message_145 = pcall(function(...)
            local PlayerGui_5 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_5 = not PlayerGui_5;
            local Forge_4 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_4 = not Forge_4;
            local PourMinigame_4 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_4 and (unknown_value)
        end)
        local Waited_For_301 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_146, Error_Message_146 = pcall(function(...)
            local PlayerGui_6 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_6 = not PlayerGui_6;
            local Forge_5 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_5 = not Forge_5;
            local MeltMinigame_5 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_3 = MeltMinigame_3:IsA("GuiObject");
            local var725 = (MeltMinigame_5 and GuiObject_3);
        end)
        local Success_147, Error_Message_147 = pcall(function(...)
            local PlayerGui_7 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_7 = not PlayerGui_7;
            local Forge_6 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_6 = not Forge_6;
            local PourMinigame_5 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_5 and (unknown_value)
        end)
        local Waited_For_302 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_148, Error_Message_148 = pcall(function(...)
            local PlayerGui_8 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_8 = not PlayerGui_8;
            local Forge_7 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_7 = not Forge_7;
            local MeltMinigame_6 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_4 = MeltMinigame_3:IsA("GuiObject");
            local var726 = (MeltMinigame_6 and GuiObject_4);
        end)
        local Success_149, Error_Message_149 = pcall(function(...)
            local PlayerGui_9 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_9 = not PlayerGui_9;
            local Forge_8 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_8 = not Forge_8;
            local PourMinigame_6 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_6 and (unknown_value)
        end)
        local Waited_For_303 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_150, Error_Message_150 = pcall(function(...)
            local PlayerGui_10 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_10 = not PlayerGui_10;
            local Forge_9 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_9 = not Forge_9;
            local MeltMinigame_7 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_5 = MeltMinigame_3:IsA("GuiObject");
            local var727 = (MeltMinigame_7 and GuiObject_5);
        end)
        local Success_151, Error_Message_151 = pcall(function(...)
            local PlayerGui_11 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_11 = not PlayerGui_11;
            local Forge_10 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_10 = not Forge_10;
            local PourMinigame_7 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_7 and (unknown_value)
        end)
        local Waited_For_304 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_152, Error_Message_152 = pcall(function(...)
            local PlayerGui_12 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_12 = not PlayerGui_12;
            local Forge_11 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_11 = not Forge_11;
            local MeltMinigame_8 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_6 = MeltMinigame_3:IsA("GuiObject");
            local var728 = (MeltMinigame_8 and GuiObject_6);
        end)
        local Success_153, Error_Message_153 = pcall(function(...)
            local PlayerGui_13 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_13 = not PlayerGui_13;
            local Forge_12 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_12 = not Forge_12;
            local PourMinigame_8 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_8 and (unknown_value)
        end)
        local Waited_For_305 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_154, Error_Message_154 = pcall(function(...)
            local PlayerGui_14 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_14 = not PlayerGui_14;
            local Forge_13 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_13 = not Forge_13;
            local MeltMinigame_9 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_7 = MeltMinigame_3:IsA("GuiObject");
            local var729 = (MeltMinigame_9 and GuiObject_7);
        end)
        local Success_155, Error_Message_155 = pcall(function(...)
            local PlayerGui_15 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_15 = not PlayerGui_15;
            local Forge_14 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_14 = not Forge_14;
            local PourMinigame_9 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_9 and (unknown_value)
        end)
        local Waited_For_306 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_156, Error_Message_156 = pcall(function(...)
            local PlayerGui_16 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_16 = not PlayerGui_16;
            local Forge_15 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_15 = not Forge_15;
            local MeltMinigame_10 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_8 = MeltMinigame_3:IsA("GuiObject");
            local var730 = (MeltMinigame_10 and GuiObject_8);
        end)
        local Success_157, Error_Message_157 = pcall(function(...)
            local PlayerGui_17 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_17 = not PlayerGui_17;
            local Forge_16 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_16 = not Forge_16;
            local PourMinigame_10 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_10 and (unknown_value)
        end)
        local Waited_For_307 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_158, Error_Message_158 = pcall(function(...)
            local PlayerGui_18 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_18 = not PlayerGui_18;
            local Forge_17 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_17 = not Forge_17;
            local MeltMinigame_11 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_9 = MeltMinigame_3:IsA("GuiObject");
            local var731 = (MeltMinigame_11 and GuiObject_9);
        end)
        local Success_159, Error_Message_159 = pcall(function(...)
            local PlayerGui_19 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_19 = not PlayerGui_19;
            local Forge_18 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_18 = not Forge_18;
            local PourMinigame_11 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_11 and (unknown_value)
        end)
        local Waited_For_308 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_160, Error_Message_160 = pcall(function(...)
            local PlayerGui_20 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_20 = not PlayerGui_20;
            local Forge_19 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_19 = not Forge_19;
            local MeltMinigame_12 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_10 = MeltMinigame_3:IsA("GuiObject");
            local var732 = (MeltMinigame_12 and GuiObject_10);
        end)
        local Success_161, Error_Message_161 = pcall(function(...)
            local PlayerGui_21 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_21 = not PlayerGui_21;
            local Forge_20 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_20 = not Forge_20;
            local PourMinigame_12 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_12 and (unknown_value)
        end)
        local Waited_For_309 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_162, Error_Message_162 = pcall(function(...)
            local PlayerGui_22 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_22 = not PlayerGui_22;
            local Forge_21 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_21 = not Forge_21;
            local MeltMinigame_13 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_11 = MeltMinigame_3:IsA("GuiObject");
            local var733 = (MeltMinigame_13 and GuiObject_11);
        end)
        local Success_163, Error_Message_163 = pcall(function(...)
            local PlayerGui_23 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_23 = not PlayerGui_23;
            local Forge_22 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_22 = not Forge_22;
            local PourMinigame_13 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_13 and (unknown_value)
        end)
        local Waited_For_310 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_164, Error_Message_164 = pcall(function(...)
            local PlayerGui_24 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_24 = not PlayerGui_24;
            local Forge_23 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_23 = not Forge_23;
            local MeltMinigame_14 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_12 = MeltMinigame_3:IsA("GuiObject");
            local var734 = (MeltMinigame_14 and GuiObject_12);
        end)
        local Success_165, Error_Message_165 = pcall(function(...)
            local PlayerGui_25 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_25 = not PlayerGui_25;
            local Forge_24 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_24 = not Forge_24;
            local PourMinigame_14 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_14 and (unknown_value)
        end)
        local Waited_For_311 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_166, Error_Message_166 = pcall(function(...)
            local PlayerGui_26 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_26 = not PlayerGui_26;
            local Forge_25 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_25 = not Forge_25;
            local MeltMinigame_15 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_13 = MeltMinigame_3:IsA("GuiObject");
            local var735 = (MeltMinigame_15 and GuiObject_13);
        end)
        local Success_167, Error_Message_167 = pcall(function(...)
            local PlayerGui_27 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_27 = not PlayerGui_27;
            local Forge_26 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_26 = not Forge_26;
            local PourMinigame_15 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_15 and (unknown_value)
        end)
        local Waited_For_312 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_168, Error_Message_168 = pcall(function(...)
            local PlayerGui_28 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_28 = not PlayerGui_28;
            local Forge_27 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_27 = not Forge_27;
            local MeltMinigame_16 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_14 = MeltMinigame_3:IsA("GuiObject");
            local var736 = (MeltMinigame_16 and GuiObject_14);
        end)
        local Success_169, Error_Message_169 = pcall(function(...)
            local PlayerGui_29 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_29 = not PlayerGui_29;
            local Forge_28 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_28 = not Forge_28;
            local PourMinigame_16 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_16 and (unknown_value)
        end)
        local Waited_For_313 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_170, Error_Message_170 = pcall(function(...)
            local PlayerGui_30 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_30 = not PlayerGui_30;
            local Forge_29 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_29 = not Forge_29;
            local MeltMinigame_17 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_15 = MeltMinigame_3:IsA("GuiObject");
            local var737 = (MeltMinigame_17 and GuiObject_15);
        end)
        local Success_171, Error_Message_171 = pcall(function(...)
            local PlayerGui_31 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_31 = not PlayerGui_31;
            local Forge_30 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_30 = not Forge_30;
            local PourMinigame_17 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_17 and (unknown_value)
        end)
        local Waited_For_314 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_172, Error_Message_172 = pcall(function(...)
            local PlayerGui_32 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_32 = not PlayerGui_32;
            local Forge_31 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_31 = not Forge_31;
            local MeltMinigame_18 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_16 = MeltMinigame_3:IsA("GuiObject");
            local var738 = (MeltMinigame_18 and GuiObject_16);
        end)
        local Success_173, Error_Message_173 = pcall(function(...)
            local PlayerGui_33 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_33 = not PlayerGui_33;
            local Forge_32 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_32 = not Forge_32;
            local PourMinigame_18 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_18 and (unknown_value)
        end)
        local Waited_For_315 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_174, Error_Message_174 = pcall(function(...)
            local PlayerGui_34 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_34 = not PlayerGui_34;
            local Forge_33 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_33 = not Forge_33;
            local MeltMinigame_19 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_17 = MeltMinigame_3:IsA("GuiObject");
            local var739 = (MeltMinigame_19 and GuiObject_17);
        end)
        local Success_175, Error_Message_175 = pcall(function(...)
            local PlayerGui_35 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_35 = not PlayerGui_35;
            local Forge_34 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_34 = not Forge_34;
            local PourMinigame_19 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_19 and (unknown_value)
        end)
        local Waited_For_316 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_176, Error_Message_176 = pcall(function(...)
            local PlayerGui_36 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_36 = not PlayerGui_36;
            local Forge_35 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_35 = not Forge_35;
            local MeltMinigame_20 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_18 = MeltMinigame_3:IsA("GuiObject");
            local var740 = (MeltMinigame_20 and GuiObject_18);
        end)
        local Success_177, Error_Message_177 = pcall(function(...)
            local PlayerGui_37 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_37 = not PlayerGui_37;
            local Forge_36 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_36 = not Forge_36;
            local PourMinigame_20 = Forge:FindFirstChild("PourMinigame");
            -- local _ = PourMinigame_20 and (unknown_value)
        end)
        local Waited_For_317 = task.wait(0.1);
        if not p1_0 then return end -- won't run
        local Success_178, Error_Message_178 = pcall(function(...)
            local PlayerGui_38 = LocalPlayer:FindFirstChild("PlayerGui");
            local Not_PlayerGui_38 = not PlayerGui_38;
            local Forge_37 = PlayerGui_2:FindFirstChild("Forge");
            local Not_Forge_37 = not Forge_37;
            local MeltMinigame_21 = Forge:FindFirstChild("MeltMinigame");
            local GuiObject_19 = MeltMinigame_3:IsA("GuiObject");
            local var741 = (MeltMinigame_21 and GuiObject_19);
        end)
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local Spawned_14 = task.spawn(function()
        local Connection_16;
        Connection_16 = RunService.RenderStepped:connect(function() -- args: DeltaTime_8;
            if not p1_0 then return end -- won't run
            local Success_208, Error_Message_208 = pcall(function(...)
                local PlayerGui_40 = LocalPlayer:FindFirstChild("PlayerGui");
                local Not_PlayerGui_40 = not PlayerGui_40;
                local Forge_38 = PlayerGui_2:FindFirstChild("Forge");
                local Not_Forge_38 = not Forge_38;
                local HammerMinigame = Forge:FindFirstChild("HammerMinigame");
                -- local _ = HammerMinigame and (unknown_value)
                local Debris = workspace:FindFirstChild("Debris");
                if not Debris then return end -- won't run
                local Children_119 = Debris:GetChildren();
                for i_296, v_296 in pairs(Children_119) do
                    local Name_202 = v_296.Name;
                    local Name_202_is_string = (Name_202 == "Mold");
                    -- local _ = Name_202_is_string and (unknown_value)
                end
            end)

        end);

    end);
    local Spawned_15 = task.spawn(function()
        local Waited_For_318 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_2 = not Value_34;
        local Rocks_15 = workspace:FindFirstChild("Rocks");
        if not Rocks_15 then return end -- won't run
        local Descendants_30 = Rocks:GetDescendants();
        for i_179, v_179 in pairs(Descendants_30) do
            local Name_141 = v_179.Name;
            local var741 = p1_0[Name_141];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_31 = workspace:GetDescendants();
        for i_180, v_180 in pairs(Descendants_31) do
            local Name_142 = v_180.Name;
            local var741 = p1_0[Name_142];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_319 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_3 = not Value_34;
        local Rocks_16 = workspace:FindFirstChild("Rocks");
        if not Rocks_16 then return end -- won't run
        local Descendants_32 = Rocks:GetDescendants();
        for i_181, v_181 in pairs(Descendants_32) do
            local Name_143 = v_181.Name;
            local var741 = p1_0[Name_143];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_33 = workspace:GetDescendants();
        for i_182, v_182 in pairs(Descendants_33) do
            local Name_144 = v_182.Name;
            local var741 = p1_0[Name_144];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_320 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_4 = not Value_34;
        local Rocks_17 = workspace:FindFirstChild("Rocks");
        if not Rocks_17 then return end -- won't run
        local Descendants_34 = Rocks:GetDescendants();
        for i_183, v_183 in pairs(Descendants_34) do
            local Name_145 = v_183.Name;
            local var741 = p1_0[Name_145];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_35 = workspace:GetDescendants();
        for i_184, v_184 in pairs(Descendants_35) do
            local Name_146 = v_184.Name;
            local var741 = p1_0[Name_146];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_321 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_5 = not Value_34;
        local Rocks_18 = workspace:FindFirstChild("Rocks");
        if not Rocks_18 then return end -- won't run
        local Descendants_36 = Rocks:GetDescendants();
        for i_185, v_185 in pairs(Descendants_36) do
            local Name_147 = v_185.Name;
            local var741 = p1_0[Name_147];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_37 = workspace:GetDescendants();
        for i_186, v_186 in pairs(Descendants_37) do
            local Name_148 = v_186.Name;
            local var741 = p1_0[Name_148];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_322 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_6 = not Value_34;
        local Rocks_19 = workspace:FindFirstChild("Rocks");
        if not Rocks_19 then return end -- won't run
        local Descendants_38 = Rocks:GetDescendants();
        for i_187, v_187 in pairs(Descendants_38) do
            local Name_149 = v_187.Name;
            local var741 = p1_0[Name_149];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_39 = workspace:GetDescendants();
        for i_188, v_188 in pairs(Descendants_39) do
            local Name_150 = v_188.Name;
            local var741 = p1_0[Name_150];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_323 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_7 = not Value_34;
        local Rocks_20 = workspace:FindFirstChild("Rocks");
        if not Rocks_20 then return end -- won't run
        local Descendants_40 = Rocks:GetDescendants();
        for i_189, v_189 in pairs(Descendants_40) do
            local Name_151 = v_189.Name;
            local var741 = p1_0[Name_151];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_41 = workspace:GetDescendants();
        for i_190, v_190 in pairs(Descendants_41) do
            local Name_152 = v_190.Name;
            local var741 = p1_0[Name_152];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_324 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_8 = not Value_34;
        local Rocks_21 = workspace:FindFirstChild("Rocks");
        if not Rocks_21 then return end -- won't run
        local Descendants_42 = Rocks:GetDescendants();
        for i_191, v_191 in pairs(Descendants_42) do
            local Name_153 = v_191.Name;
            local var741 = p1_0[Name_153];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_43 = workspace:GetDescendants();
        for i_192, v_192 in pairs(Descendants_43) do
            local Name_154 = v_192.Name;
            local var741 = p1_0[Name_154];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_325 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_9 = not Value_34;
        local Rocks_22 = workspace:FindFirstChild("Rocks");
        if not Rocks_22 then return end -- won't run
        local Descendants_44 = Rocks:GetDescendants();
        for i_193, v_193 in pairs(Descendants_44) do
            local Name_155 = v_193.Name;
            local var741 = p1_0[Name_155];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_45 = workspace:GetDescendants();
        for i_194, v_194 in pairs(Descendants_45) do
            local Name_156 = v_194.Name;
            local var741 = p1_0[Name_156];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_326 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_10 = not Value_34;
        local Rocks_23 = workspace:FindFirstChild("Rocks");
        if not Rocks_23 then return end -- won't run
        local Descendants_46 = Rocks:GetDescendants();
        for i_195, v_195 in pairs(Descendants_46) do
            local Name_157 = v_195.Name;
            local var741 = p1_0[Name_157];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_47 = workspace:GetDescendants();
        for i_196, v_196 in pairs(Descendants_47) do
            local Name_158 = v_196.Name;
            local var741 = p1_0[Name_158];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_327 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_11 = not Value_34;
        local Rocks_24 = workspace:FindFirstChild("Rocks");
        if not Rocks_24 then return end -- won't run
        local Descendants_48 = Rocks:GetDescendants();
        for i_197, v_197 in pairs(Descendants_48) do
            local Name_159 = v_197.Name;
            local var741 = p1_0[Name_159];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_49 = workspace:GetDescendants();
        for i_198, v_198 in pairs(Descendants_49) do
            local Name_160 = v_198.Name;
            local var741 = p1_0[Name_160];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_328 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_12 = not Value_34;
        local Rocks_25 = workspace:FindFirstChild("Rocks");
        if not Rocks_25 then return end -- won't run
        local Descendants_50 = Rocks:GetDescendants();
        for i_199, v_199 in pairs(Descendants_50) do
            local Name_161 = v_199.Name;
            local var741 = p1_0[Name_161];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_51 = workspace:GetDescendants();
        for i_200, v_200 in pairs(Descendants_51) do
            local Name_162 = v_200.Name;
            local var741 = p1_0[Name_162];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_329 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_13 = not Value_34;
        local Rocks_26 = workspace:FindFirstChild("Rocks");
        if not Rocks_26 then return end -- won't run
        local Descendants_52 = Rocks:GetDescendants();
        for i_201, v_201 in pairs(Descendants_52) do
            local Name_163 = v_201.Name;
            local var741 = p1_0[Name_163];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_53 = workspace:GetDescendants();
        for i_202, v_202 in pairs(Descendants_53) do
            local Name_164 = v_202.Name;
            local var741 = p1_0[Name_164];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_330 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_14 = not Value_34;
        local Rocks_27 = workspace:FindFirstChild("Rocks");
        if not Rocks_27 then return end -- won't run
        local Descendants_54 = Rocks:GetDescendants();
        for i_203, v_203 in pairs(Descendants_54) do
            local Name_165 = v_203.Name;
            local var741 = p1_0[Name_165];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_55 = workspace:GetDescendants();
        for i_204, v_204 in pairs(Descendants_55) do
            local Name_166 = v_204.Name;
            local var741 = p1_0[Name_166];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_331 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_15 = not Value_34;
        local Rocks_28 = workspace:FindFirstChild("Rocks");
        if not Rocks_28 then return end -- won't run
        local Descendants_56 = Rocks:GetDescendants();
        for i_205, v_205 in pairs(Descendants_56) do
            local Name_167 = v_205.Name;
            local var741 = p1_0[Name_167];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_57 = workspace:GetDescendants();
        for i_206, v_206 in pairs(Descendants_57) do
            local Name_168 = v_206.Name;
            local var741 = p1_0[Name_168];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_332 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_16 = not Value_34;
        local Rocks_29 = workspace:FindFirstChild("Rocks");
        if not Rocks_29 then return end -- won't run
        local Descendants_58 = Rocks:GetDescendants();
        for i_207, v_207 in pairs(Descendants_58) do
            local Name_169 = v_207.Name;
            local var741 = p1_0[Name_169];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_59 = workspace:GetDescendants();
        for i_208, v_208 in pairs(Descendants_59) do
            local Name_170 = v_208.Name;
            local var741 = p1_0[Name_170];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_333 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_17 = not Value_34;
        local Rocks_30 = workspace:FindFirstChild("Rocks");
        if not Rocks_30 then return end -- won't run
        local Descendants_60 = Rocks:GetDescendants();
        for i_209, v_209 in pairs(Descendants_60) do
            local Name_171 = v_209.Name;
            local var741 = p1_0[Name_171];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_61 = workspace:GetDescendants();
        for i_210, v_210 in pairs(Descendants_61) do
            local Name_172 = v_210.Name;
            local var741 = p1_0[Name_172];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_334 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_18 = not Value_34;
        local Rocks_31 = workspace:FindFirstChild("Rocks");
        if not Rocks_31 then return end -- won't run
        local Descendants_62 = Rocks:GetDescendants();
        for i_211, v_211 in pairs(Descendants_62) do
            local Name_173 = v_211.Name;
            local var741 = p1_0[Name_173];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_63 = workspace:GetDescendants();
        for i_212, v_212 in pairs(Descendants_63) do
            local Name_174 = v_212.Name;
            local var741 = p1_0[Name_174];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_335 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_19 = not Value_34;
        local Rocks_32 = workspace:FindFirstChild("Rocks");
        if not Rocks_32 then return end -- won't run
        local Descendants_64 = Rocks:GetDescendants();
        for i_213, v_213 in pairs(Descendants_64) do
            local Name_175 = v_213.Name;
            local var741 = p1_0[Name_175];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_65 = workspace:GetDescendants();
        for i_214, v_214 in pairs(Descendants_65) do
            local Name_176 = v_214.Name;
            local var741 = p1_0[Name_176];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_336 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_20 = not Value_34;
        local Rocks_33 = workspace:FindFirstChild("Rocks");
        if not Rocks_33 then return end -- won't run
        local Descendants_66 = Rocks:GetDescendants();
        for i_215, v_215 in pairs(Descendants_66) do
            local Name_177 = v_215.Name;
            local var741 = p1_0[Name_177];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_67 = workspace:GetDescendants();
        for i_216, v_216 in pairs(Descendants_67) do
            local Name_178 = v_216.Name;
            local var741 = p1_0[Name_178];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_337 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_21 = not Value_34;
        local Rocks_34 = workspace:FindFirstChild("Rocks");
        if not Rocks_34 then return end -- won't run
        local Descendants_68 = Rocks:GetDescendants();
        for i_217, v_217 in pairs(Descendants_68) do
            local Name_179 = v_217.Name;
            local var741 = p1_0[Name_179];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_69 = workspace:GetDescendants();
        for i_218, v_218 in pairs(Descendants_69) do
            local Name_180 = v_218.Name;
            local var741 = p1_0[Name_180];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_338 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_22 = not Value_34;
        local Rocks_35 = workspace:FindFirstChild("Rocks");
        if not Rocks_35 then return end -- won't run
        local Descendants_70 = Rocks:GetDescendants();
        for i_219, v_219 in pairs(Descendants_70) do
            local Name_181 = v_219.Name;
            local var741 = p1_0[Name_181];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_71 = workspace:GetDescendants();
        for i_220, v_220 in pairs(Descendants_71) do
            local Name_182 = v_220.Name;
            local var741 = p1_0[Name_182];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_339 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_23 = not Value_34;
        local Rocks_36 = workspace:FindFirstChild("Rocks");
        if not Rocks_36 then return end -- won't run
        local Descendants_72 = Rocks:GetDescendants();
        for i_221, v_221 in pairs(Descendants_72) do
            local Name_183 = v_221.Name;
            local var741 = p1_0[Name_183];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_73 = workspace:GetDescendants();
        for i_222, v_222 in pairs(Descendants_73) do
            local Name_184 = v_222.Name;
            local var741 = p1_0[Name_184];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_340 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_24 = not Value_34;
        local Rocks_37 = workspace:FindFirstChild("Rocks");
        if not Rocks_37 then return end -- won't run
        local Descendants_74 = Rocks:GetDescendants();
        for i_223, v_223 in pairs(Descendants_74) do
            local Name_185 = v_223.Name;
            local var741 = p1_0[Name_185];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_75 = workspace:GetDescendants();
        for i_224, v_224 in pairs(Descendants_75) do
            local Name_186 = v_224.Name;
            local var741 = p1_0[Name_186];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_341 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_25 = not Value_34;
        local Rocks_38 = workspace:FindFirstChild("Rocks");
        if not Rocks_38 then return end -- won't run
        local Descendants_76 = Rocks:GetDescendants();
        for i_225, v_225 in pairs(Descendants_76) do
            local Name_187 = v_225.Name;
            local var741 = p1_0[Name_187];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_77 = workspace:GetDescendants();
        for i_226, v_226 in pairs(Descendants_77) do
            local Name_188 = v_226.Name;
            local var741 = p1_0[Name_188];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_342 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_26 = not Value_34;
        local Rocks_39 = workspace:FindFirstChild("Rocks");
        if not Rocks_39 then return end -- won't run
        local Descendants_78 = Rocks:GetDescendants();
        for i_227, v_227 in pairs(Descendants_78) do
            local Name_189 = v_227.Name;
            local var741 = p1_0[Name_189];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_79 = workspace:GetDescendants();
        for i_228, v_228 in pairs(Descendants_79) do
            local Name_190 = v_228.Name;
            local var741 = p1_0[Name_190];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_343 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_27 = not Value_34;
        local Rocks_40 = workspace:FindFirstChild("Rocks");
        if not Rocks_40 then return end -- won't run
        local Descendants_80 = Rocks:GetDescendants();
        for i_229, v_229 in pairs(Descendants_80) do
            local Name_191 = v_229.Name;
            local var741 = p1_0[Name_191];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_81 = workspace:GetDescendants();
        for i_230, v_230 in pairs(Descendants_81) do
            local Name_192 = v_230.Name;
            local var741 = p1_0[Name_192];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_344 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_28 = not Value_34;
        local Rocks_41 = workspace:FindFirstChild("Rocks");
        if not Rocks_41 then return end -- won't run
        local Descendants_82 = Rocks:GetDescendants();
        for i_231, v_231 in pairs(Descendants_82) do
            local Name_193 = v_231.Name;
            local var741 = p1_0[Name_193];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_83 = workspace:GetDescendants();
        for i_232, v_232 in pairs(Descendants_83) do
            local Name_194 = v_232.Name;
            local var741 = p1_0[Name_194];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_345 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_29 = not Value_34;
        local Rocks_42 = workspace:FindFirstChild("Rocks");
        if not Rocks_42 then return end -- won't run
        local Descendants_84 = Rocks:GetDescendants();
        for i_233, v_233 in pairs(Descendants_84) do
            local Name_195 = v_233.Name;
            local var741 = p1_0[Name_195];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_85 = workspace:GetDescendants();
        for i_234, v_234 in pairs(Descendants_85) do
            local Name_196 = v_234.Name;
            local var741 = p1_0[Name_196];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_346 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_30 = not Value_34;
        local Rocks_43 = workspace:FindFirstChild("Rocks");
        if not Rocks_43 then return end -- won't run
        local Descendants_86 = Rocks:GetDescendants();
        for i_235, v_235 in pairs(Descendants_86) do
            local Name_197 = v_235.Name;
            local var741 = p1_0[Name_197];
            -- local _ = var741 and (unknown_value)
        end
        local Descendants_87 = workspace:GetDescendants();
        for i_236, v_236 in pairs(Descendants_87) do
            local Name_198 = v_236.Name;
            local var741 = p1_0[Name_198];
            -- local _ = var741 and (unknown_value)
        end
        local Waited_For_347 = task.wait(2);
        if not Value_34 then return end -- won't run
        local Not_Value_34_31 = not Value_34;
        local Rocks_44 = workspace:FindFirstChild("Rocks");
        if not Rocks_44 then return end -- won't run
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    _G.OreRarityMap = {
        Stone = "Common",
        Tin = "Uncommon",
        Silver = "Uncommon",
        Sapphire = "Rare",
        Rivalite = "Epic",
        Obsidian = "Epic",
        Ruby = "Epic",
        Darkryte = "Mythic",
        Gold = "Uncommon",
        Poopite = "Epic",
        Cuprite = "Epic",
        ["Volcanic Rock"] = "Rare",
        Magmaite = "Legendary",
        Boneite = "Rare",
        ["Lapis Lazuli"] = "Uncommon",
        Platinum = "Rare",
        Emerald = "Epic",
        Slimite = "Epic",
        Grass = "Common",
        ["Eye Ore"] = "Legendary",
        Titanium = "Uncommon",
        Iron = "Common",
        Demonite = "Mythic",
        Uranium = "Legendary",
        Amethyst = "Rare",
        Fichilliumorite = "Unobtainable",
        ["Sand Stone"] = "Common",
        Mushroomite = "Rare",
        Diamond = "Rare",
        Copper = "Common",
        Galaxite = "Divine",
        Lightite = "Legendary",
        Fichillium = "Relic",
        Starite = "Mythic",
        Topaz = "Rare",
        Fireite = "Legendary",
        Mythril = "Legendary",
        Aite = "Epic",
        ["Dark Boneite"] = "Rare",
        Quartz = "Rare",
        Cardboardite = "Common",
        Bananite = "Uncommon",
        Cobalt = "Uncommon",
    };
    _G.RarityList = {
        "Common",
        "Uncommon",
        "Rare",
        "Epic",
        "Legendary",
        "Mythic",
    };
    _G.getOresByRarity = function(p1_0)
        local G_OreRarityMap = _G.OreRarityMap;
        local string_is_p1_0 = ("Common" == p1_0);
        local string_is_p1_0_2 = ("Uncommon" == p1_0);
        local string_is_p1_0_3 = ("Uncommon" == p1_0);
        local string_is_p1_0_4 = ("Rare" == p1_0);
        local string_is_p1_0_5 = ("Epic" == p1_0);
        local string_is_p1_0_6 = ("Epic" == p1_0);
        local string_is_p1_0_7 = ("Epic" == p1_0);
        local string_is_p1_0_8 = ("Mythic" == p1_0);
        local string_is_p1_0_9 = ("Uncommon" == p1_0);
        local string_is_p1_0_10 = ("Epic" == p1_0);
        local string_is_p1_0_11 = ("Epic" == p1_0);
        local string_is_p1_0_12 = ("Rare" == p1_0);
        local string_is_p1_0_13 = ("Legendary" == p1_0);
        local string_is_p1_0_14 = ("Rare" == p1_0);
        local string_is_p1_0_15 = ("Uncommon" == p1_0);
        local string_is_p1_0_16 = ("Rare" == p1_0);
        local string_is_p1_0_17 = ("Epic" == p1_0);
        local string_is_p1_0_18 = ("Epic" == p1_0);
        local string_is_p1_0_19 = ("Common" == p1_0);
        local string_is_p1_0_20 = ("Legendary" == p1_0);
        local string_is_p1_0_21 = ("Uncommon" == p1_0);
        local string_is_p1_0_22 = ("Common" == p1_0);
        local string_is_p1_0_23 = ("Mythic" == p1_0);
        local string_is_p1_0_24 = ("Legendary" == p1_0);
        local string_is_p1_0_25 = ("Rare" == p1_0);
        local string_is_p1_0_26 = ("Unobtainable" == p1_0);
        local string_is_p1_0_27 = ("Common" == p1_0);
        local string_is_p1_0_28 = ("Rare" == p1_0);
        local string_is_p1_0_29 = ("Rare" == p1_0);
        local string_is_p1_0_30 = ("Common" == p1_0);
        local string_is_p1_0_31 = ("Divine" == p1_0);
        local string_is_p1_0_32 = ("Legendary" == p1_0);
        local string_is_p1_0_33 = ("Relic" == p1_0);
        local string_is_p1_0_34 = ("Mythic" == p1_0);
        local string_is_p1_0_35 = ("Rare" == p1_0);
        local string_is_p1_0_36 = ("Legendary" == p1_0);
        local string_is_p1_0_37 = ("Legendary" == p1_0);
        local string_is_p1_0_38 = ("Epic" == p1_0);
        local string_is_p1_0_39 = ("Rare" == p1_0);
        local string_is_p1_0_40 = ("Rare" == p1_0);
        local string_is_p1_0_41 = ("Common" == p1_0);
        local string_is_p1_0_42 = ("Uncommon" == p1_0);
        local string_is_p1_0_43 = ("Uncommon" == p1_0);
        return {}

    end;
    Env.SellWeaponTypes = {
        "Dagger",
        "Falchion Knife",
        "Gladius Dagger",
        "Hook",
        "Falchion",
        "Gladius",
        "Cutlass",
        "Rapier",
        "Chaos",
        "Ironhand",
        "Boxing Gloves",
        "Relevator",
        "Uchigatana",
        "Tachi",
        "Crusader Sword",
        "Long Sword",
        "Double Battle Axe",
        "Scythe",
        "Reaper",
        "Hammer",
        "Great Sword",
        "Dragon Slayer",
        "Skull Crusher",
        "Comically Large Spoon",
    };
    local CreateDropdown_12 = Tab_7.CreateDropdown;
    local SellIslandSelect = Tab_7:CreateDropdown("SellIslandSelect", {
        Title = "Island Select",
        Default = "All",
        Multi = false,
        Values = {
            "All",
            "Stonewake's Cross",
            "Forgotten Kingdom",
            "Goblin Cave",
        },
        Description = "Chọn Island để lọc Ore/Material",
    });
    local OnChanged_61 = SellIslandSelect.OnChanged;
    local OnChanged_62 = SellIslandSelect:OnChanged(function(p1_0)
        if not SellOreSelect then return end -- won't run
        local SetValues_37 = SellOreSelect.SetValues;
        local SetValues_38 = SellOreSelect:SetValues({
            "Stone",
            "Copper",
            "Tin",
            "Sand Stone",
            "Iron",
            "Silver",
            "Gold",
            "Platinum",
            "Starite",
            "Poopite",
            "Bananite",
            "Cardboardite",
            "Cobalt",
            "Titanium",
            "Lapis Lazuli",
            "Quartz",
            "Amethyst",
            "Topaz",
            "Diamond",
            "Sapphire",
            "Ruby",
            "Emerald",
            "Cuprite",
            "Eye Ore",
            "Rivalite",
            "Uranium",
            "Mythril",
            "Lightite",
            "Obsidian",
            "Fireite",
            "Magmaite",
            "Demonite",
            "Slimite",
            "Boneite",
            "Dark Boneite",
            "Aite",
            "Grass",
            "Mushroomite",
            "Fichillium",
            "Fichilliumorite",
            "Galaxite",
            "Darkryte",
            "Volcanic Rock",
        });
        if not SellMaterialSelect then return end -- won't run
        local SetValues_39 = SellMaterialSelect.SetValues;
        local SetValues_40 = SellMaterialSelect:SetValues({
            "Tiny Essence",
            "Small Essence",
            "Medium Essence",
            "Large Essence",
            "Greater Essence",
            "Superior Essence",
            "Epic Essence",
            "Legendary Essence",
            "Mythical Essence",
        });

    end);
    local CreateSection_8 = Tab_7.CreateSection;
    local SELL_BY_RANK = Tab_7:CreateSection("SELL BY RANK");
    local G_RarityList = _G.RarityList;
    local CreateDropdown_13 = Tab_7.CreateDropdown;
    local SellRankSelect = Tab_7:CreateDropdown("SellRankSelect", {
        Title = "Chọn Rank",
        Default = {},
        Multi = true,
        Values = {
            "Common",
            "Uncommon",
            "Rare",
            "Epic",
            "Legendary",
            "Mythic",
        },
        Description = "Chọn nhiều rank để bán ore",
    });
    local CreateParagraph_5 = Tab_7.CreateParagraph;
    local RankOresInfo = Tab_7:CreateParagraph("RankOresInfo", {
        Title = "Ores trong các rank đã chọn",
        Content = "Chưa chọn rank nào",
    });
    local OnChanged_63 = SellRankSelect.OnChanged;
    local OnChanged_64 = SellRankSelect:OnChanged(function(p1_0)
        for i_237, v_237 in pairs(p1_0) do
            if not v_237 then return end -- won't run
            local G_GetOresByRarity = _G.getOresByRarity;
            local G_OreRarityMap_2 = _G.OreRarityMap;
            local string_is_i_237 = ("Common" == i_237);
            local string_is_i_237_2 = ("Uncommon" == i_237);
            local string_is_i_237_3 = ("Uncommon" == i_237);
            local string_is_i_237_4 = ("Rare" == i_237);
            local string_is_i_237_5 = ("Epic" == i_237);
            local string_is_i_237_6 = ("Epic" == i_237);
            local string_is_i_237_7 = ("Epic" == i_237);
            local string_is_i_237_8 = ("Mythic" == i_237);
            local string_is_i_237_9 = ("Uncommon" == i_237);
            local string_is_i_237_10 = ("Epic" == i_237);
            local string_is_i_237_11 = ("Epic" == i_237);
            local string_is_i_237_12 = ("Rare" == i_237);
            local string_is_i_237_13 = ("Legendary" == i_237);
            local string_is_i_237_14 = ("Rare" == i_237);
            local string_is_i_237_15 = ("Uncommon" == i_237);
            local string_is_i_237_16 = ("Rare" == i_237);
            local string_is_i_237_17 = ("Epic" == i_237);
            local string_is_i_237_18 = ("Epic" == i_237);
            local string_is_i_237_19 = ("Common" == i_237);
            local string_is_i_237_20 = ("Legendary" == i_237);
            local string_is_i_237_21 = ("Uncommon" == i_237);
            local string_is_i_237_22 = ("Common" == i_237);
            local string_is_i_237_23 = ("Mythic" == i_237);
            local string_is_i_237_24 = ("Legendary" == i_237);
            local string_is_i_237_25 = ("Rare" == i_237);
            local string_is_i_237_26 = ("Unobtainable" == i_237);
            local string_is_i_237_27 = ("Common" == i_237);
            local string_is_i_237_28 = ("Rare" == i_237);
            local string_is_i_237_29 = ("Rare" == i_237);
            local string_is_i_237_30 = ("Common" == i_237);
            local string_is_i_237_31 = ("Divine" == i_237);
            local string_is_i_237_32 = ("Legendary" == i_237);
            local string_is_i_237_33 = ("Relic" == i_237);
            local string_is_i_237_34 = ("Mythic" == i_237);
            local string_is_i_237_35 = ("Rare" == i_237);
            local string_is_i_237_36 = ("Legendary" == i_237);
            local string_is_i_237_37 = ("Legendary" == i_237);
            local string_is_i_237_38 = ("Epic" == i_237);
            local string_is_i_237_39 = ("Rare" == i_237);
            local string_is_i_237_40 = ("Rare" == i_237);
            local string_is_i_237_41 = ("Common" == i_237);
            local string_is_i_237_42 = ("Uncommon" == i_237);
            local string_is_i_237_43 = ("Uncommon" == i_237);
        end
        local SetContent_16 = RankOresInfo.SetContent;
        local ChA_ChN_Rank_NO = RankOresInfo:SetContent("Chưa chọn rank nào");

    end);
    local CreateToggle_18 = Tab_7.CreateToggle;
    local AutoSellByRank = Tab_7:CreateToggle("AutoSellByRank", {
        Callback = function(p1_0)
            if not p1_0 then return end -- won't run
            local var743 = (p1_0 or {});
            for i_238, v_238 in pairs(p1_0) do
                if not v_238 then return end -- won't run
                local G_GetOresByRarity_2 = _G.getOresByRarity;
                local G_OreRarityMap_3 = _G.OreRarityMap;
                local string_is_i_238 = ("Common" == i_238);
                local string_is_i_238_2 = ("Uncommon" == i_238);
                local string_is_i_238_3 = ("Uncommon" == i_238);
                local string_is_i_238_4 = ("Rare" == i_238);
                local string_is_i_238_5 = ("Epic" == i_238);
                local string_is_i_238_6 = ("Epic" == i_238);
                local string_is_i_238_7 = ("Epic" == i_238);
                local string_is_i_238_8 = ("Mythic" == i_238);
                local string_is_i_238_9 = ("Uncommon" == i_238);
                local string_is_i_238_10 = ("Epic" == i_238);
                local string_is_i_238_11 = ("Epic" == i_238);
                local string_is_i_238_12 = ("Rare" == i_238);
                local string_is_i_238_13 = ("Legendary" == i_238);
                local string_is_i_238_14 = ("Rare" == i_238);
                local string_is_i_238_15 = ("Uncommon" == i_238);
                local string_is_i_238_16 = ("Rare" == i_238);
                local string_is_i_238_17 = ("Epic" == i_238);
                local string_is_i_238_18 = ("Epic" == i_238);
                local string_is_i_238_19 = ("Common" == i_238);
                local string_is_i_238_20 = ("Legendary" == i_238);
                local string_is_i_238_21 = ("Uncommon" == i_238);
                local string_is_i_238_22 = ("Common" == i_238);
                local string_is_i_238_23 = ("Mythic" == i_238);
                local string_is_i_238_24 = ("Legendary" == i_238);
                local string_is_i_238_25 = ("Rare" == i_238);
                local string_is_i_238_26 = ("Unobtainable" == i_238);
                local string_is_i_238_27 = ("Common" == i_238);
                local string_is_i_238_28 = ("Rare" == i_238);
                local string_is_i_238_29 = ("Rare" == i_238);
                local string_is_i_238_30 = ("Common" == i_238);
                local string_is_i_238_31 = ("Divine" == i_238);
                local string_is_i_238_32 = ("Legendary" == i_238);
                local string_is_i_238_33 = ("Relic" == i_238);
                local string_is_i_238_34 = ("Mythic" == i_238);
                local string_is_i_238_35 = ("Rare" == i_238);
                local string_is_i_238_36 = ("Legendary" == i_238);
                local string_is_i_238_37 = ("Legendary" == i_238);
                local string_is_i_238_38 = ("Epic" == i_238);
                local string_is_i_238_39 = ("Rare" == i_238);
                local string_is_i_238_40 = ("Rare" == i_238);
                local string_is_i_238_41 = ("Common" == i_238);
                local string_is_i_238_42 = ("Uncommon" == i_238);
                local string_is_i_238_43 = ("Uncommon" == i_238);
            end
            local AutoSellOre_2 = Options.AutoSellOre;
            if not AutoSellOre_2 then return end -- won't run
            local AutoSellOre_3 = Options.AutoSellOre;
            local SetValue_14 = AutoSellOre_3.SetValue;
            local SetValue_15 = AutoSellOre_3:SetValue(true);

        end,
        Default = false,
        Title = "Auto Sell By Rank",
        Description = "Tự động bán ore của các rank đã chọn",
    });
    local CreateSection_9 = Tab_7.CreateSection;
    local ORE_SELL = Tab_7:CreateSection("ORE SELL");
    local CreateInput = Tab_7.CreateInput;
    local OreSearch = Tab_7:CreateInput("OreSearch", {
        Placeholder = "Nhập tên ore...",
        Title = "Find Ore",
        Default = "",
        Numeric = false,
        Finished = false,
        Callback = function(p1_0)
            if not SellOreSelect then return end -- won't run
            local Not_P1_0 = not p1_0;
            local p1_0_is_string = (p1_0 == "");
            local var744 = (Not_P1_0 or p1_0_is_string);
            local var745 = string.lower(p1_0);
            local var746 = string.find("stone", var745, 1, true)
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:3001: C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:4739: invalid argument #1 to 'find', string expected got string")

        end,
        Description = "Nhập tên ore để lọc",
    });
    local CreateDropdown_14 = Tab_7.CreateDropdown;
    local SellOreSelect = Tab_7:CreateDropdown("SellOreSelect", {
        Title = "Chọn Ore để bán",
        Default = {},
        Multi = true,
        Values = {
            "Stone",
            "Copper",
            "Tin",
            "Sand Stone",
            "Iron",
            "Silver",
            "Gold",
            "Platinum",
            "Starite",
            "Poopite",
            "Bananite",
            "Cardboardite",
            "Cobalt",
            "Titanium",
            "Lapis Lazuli",
            "Quartz",
            "Amethyst",
            "Topaz",
            "Diamond",
            "Sapphire",
            "Ruby",
            "Emerald",
            "Cuprite",
            "Eye Ore",
            "Rivalite",
            "Uranium",
            "Mythril",
            "Lightite",
            "Obsidian",
            "Fireite",
            "Magmaite",
            "Demonite",
            "Slimite",
            "Boneite",
            "Dark Boneite",
            "Aite",
            "Grass",
            "Mushroomite",
            "Fichillium",
            "Fichilliumorite",
            "Galaxite",
            "Darkryte",
            "Volcanic Rock",
        },
        Description = "Chọn các loại ore",
    });
    local OnChanged_65 = SellOreSelect.OnChanged;
    local OnChanged_66 = SellOreSelect:OnChanged(function(p1_0)

    end);
    local CreateInput_2 = Tab_7.CreateInput;
    local OreQuantity = Tab_7:CreateInput("OreQuantity", {
        Placeholder = "1",
        Title = "Ore Quantity",
        Default = "1",
        Numeric = true,
        Finished = true,
        Callback = function(p1_0)
            local var747 = tonumber(p1_0, nil);
            local var748 = (var747 or 1);

        end,
        Description = "Mỗi lần bán sẽ bán số lượng này",
    });
    local CreateToggle_19 = Tab_7.CreateToggle;
    local AutoSellOre = Tab_7:CreateToggle("AutoSellOre", {
        Callback = function(p1_0)

        end,
        Default = false,
        Title = "Auto Sell Ore",
        Description = "Tự động bán ore đã chọn",
    });
    local CreateSection_10 = Tab_7.CreateSection;
    local MATERIAL_SELL = Tab_7:CreateSection("MATERIAL SELL");
    local CreateInput_3 = Tab_7.CreateInput;
    local MaterialSearch = Tab_7:CreateInput("MaterialSearch", {
        Placeholder = "Nhập tên material...",
        Title = "Find Material",
        Default = "",
        Numeric = false,
        Finished = false,
        Callback = function(p1_0)
            if not SellMaterialSelect then return end -- won't run
            local Not_P1_0_2 = not p1_0;
            local p1_0_is_string_2 = (p1_0 == "");
            local var749 = (Not_P1_0_2 or p1_0_is_string_2);
            local var750 = string.lower(p1_0);
            local var751 = string.find("tiny essence", var750, 1, true)
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:3001: C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:4739: invalid argument #1 to 'find', string expected got string")

        end,
        Description = "Nhập tên material để lọc",
    });
    local CreateDropdown_15 = Tab_7.CreateDropdown;
    local SellMaterialSelect = Tab_7:CreateDropdown("SellMaterialSelect", {
        Title = "Select Material to sell",
        Default = {},
        Multi = true,
        Values = {
            "Tiny Essence",
            "Small Essence",
            "Medium Essence",
            "Large Essence",
            "Greater Essence",
            "Superior Essence",
            "Epic Essence",
            "Legendary Essence",
            "Mythical Essence",
        },
        Description = "Chọn các loại material",
    });
    local OnChanged_67 = SellMaterialSelect.OnChanged;
    local OnChanged_68 = SellMaterialSelect:OnChanged(function(p1_0)

    end);
    local CreateInput_4 = Tab_7.CreateInput;
    local MaterialQuantity = Tab_7:CreateInput("MaterialQuantity", {
        Placeholder = "1",
        Title = "Material Quantity",
        Default = "1",
        Numeric = true,
        Finished = true,
        Callback = function(p1_0)
            local var752 = tonumber(p1_0, nil);
            local var753 = (var752 or 1);

        end,
        Description = "Mỗi lần bán sẽ bán số lượng này",
    });
    local CreateToggle_20 = Tab_7.CreateToggle;
    local AutoSellMaterial = Tab_7:CreateToggle("AutoSellMaterial", {
        Callback = function(p1_0)

        end,
        Default = false,
        Title = "Auto Sell Material",
        Description = "Tự động bán material đã chọn",
    });
    local CreateSection_11 = Tab_7.CreateSection;
    local PICKAXE_SELL = Tab_7:CreateSection("PICKAXE SELL");
    local CreateDropdown_16 = Tab_7.CreateDropdown;
    local SellPickaxeSelect = Tab_7:CreateDropdown("SellPickaxeSelect", {
        Title = "Chọn Pickaxe để bán",
        Default = {},
        Multi = true,
        Values = {
            "Stone Pickaxe",
            "Bronze Pickaxe",
            "Iron Pickaxe",
            "Gold Pickaxe",
            "Platinum Pickaxe",
            "Arcane Pickaxe",
            "Cobalt Pickaxe",
            "Titanium Pickaxe",
            "Uranium Pickaxe",
            "Mythril Pickaxe",
            "Lightite Pickaxe",
            "Magma Pickaxe",
            "Demonic Pickaxe",
            "Stonewake's Pickaxe",
        },
        Description = "Giữ lại ít nhất 1 pickaxe",
    });
    local OnChanged_69 = SellPickaxeSelect.OnChanged;
    local OnChanged_70 = SellPickaxeSelect:OnChanged(function(p1_0)

    end);
    local CreateToggle_21 = Tab_7.CreateToggle;
    local AutoSellPickaxe = Tab_7:CreateToggle("AutoSellPickaxe", {
        Callback = function(p1_0)

        end,
        Default = false,
        Title = "Auto Sell Pickaxe",
        Description = "Tự động bán pickaxe đã chọn",
    });
    local CreateSection_12 = Tab_7.CreateSection;
    local WEAPON_SELL = Tab_7:CreateSection("WEAPON SELL");
    local CreateDropdown_17 = Tab_7.CreateDropdown;
    local SellWeaponSelect = Tab_7:CreateDropdown("SellWeaponSelect", {
        Title = "Select Weapon to sell",
        Default = {},
        Multi = true,
        Values = {
            "Dagger",
            "Falchion Knife",
            "Gladius Dagger",
            "Hook",
            "Falchion",
            "Gladius",
            "Cutlass",
            "Rapier",
            "Chaos",
            "Ironhand",
            "Boxing Gloves",
            "Relevator",
            "Uchigatana",
            "Tachi",
            "Crusader Sword",
            "Long Sword",
            "Double Battle Axe",
            "Scythe",
            "Reaper",
            "Hammer",
            "Great Sword",
            "Dragon Slayer",
            "Skull Crusher",
            "Comically Large Spoon",
        },
        Description = "Không bán weapon equipped",
    });
    local OnChanged_71 = SellWeaponSelect.OnChanged;
    local OnChanged_72 = SellWeaponSelect:OnChanged(function(p1_0)

    end);
    local CreateToggle_22 = Tab_7.CreateToggle;
    local AutoSellWeapon = Tab_7:CreateToggle("AutoSellWeapon", {
        Callback = function(p1_0)

        end,
        Default = false,
        Title = "Auto Sell Weapon",
        Description = "Tự động bán weapon đã chọn",
    });
    local CreateSection_13 = Tab_7.CreateSection;
    local SETTINGS = Tab_7:CreateSection("SETTINGS");
    local CreateSlider_7 = Tab_7.CreateSlider;
    local SellInterval = Tab_7:CreateSlider("SellInterval", {
        Min = 0.1,
        Title = "Sell (s)",
        Default = 0.1,
        Max = 60,
        Description = "Thời gian giữa mỗi lần auto sell",
        Callback = function(p1_0)

        end,
        Rounding = 1,
    });
    local CreateParagraph_6 = Tab_7.CreateParagraph;
    local SellStatus = Tab_7:CreateParagraph("SellStatus", {
        Title = "Sell Status",
        Content = "Sẵn sàng",
    });
    local CreateButton_7 = Tab_7.CreateButton;
    local Button_7 = Tab_7:CreateButton({
        Callback = function()
            for i_239, v_239 in pairs(p1_0) do
                if not v_239 then return end -- won't run
            end
            if not i_239 then return end -- won't run
            for i_240, v_240 in pairs(p1_0) do
                if not v_240 then return end -- won't run
            end
            local Not_I_240 = not i_240;
            local Waited_For_348 = task.wait(0.3);
            local Success_180, Error_Message_180 = pcall(function(...)
                local Proximity = workspace:WaitForChild("Proximity", 5);
                local WaitForChild_127 = Proximity.WaitForChild;
                local Greedy_Cey = Proximity:WaitForChild("Greedy Cey", 5);
                local Not_Greedy_Cey = not Greedy_Cey;
                local PrimaryPart = Greedy_Cey.PrimaryPart;
                if not PrimaryPart then return end -- won't run
                local PrimaryPart_2 = Greedy_Cey.PrimaryPart;
                local Position_93 = PrimaryPart_2.Position;
                local Character_242 = LocalPlayer.Character;
                local HumanoidRootPart_101 = Character_242:FindFirstChild("HumanoidRootPart");
                local var752 = (Character_242 and HumanoidRootPart_101);
                local var753 = (Position_93 and var752);
                if not var753 then return end -- won't run
                local CFrame_New = CFrame.new;
                local Vector3_Value_18 = Vector3_New(0, 3, 3);
                local var754 = Position_93 + Vector3_Value_18;
                local CFrame_Value = CFrame_New(var754, Position_93);
                local Position_94 = HumanoidRootPart_101.Position;
                local var755 = Position_93 - Position_94;
                local Magnitude_67 = var755.Magnitude;
                local var756 = Magnitude_67 / 80;
                local var757 = math.clamp(var756, 0.5, 5);
                local New_3 = TweenInfo.new;
                local Linear = Enum_EasingStyle.Linear;
                local _call759 = New_3(var757, Linear);
                local Humanoid_134 = Character_242:FindFirstChild("Humanoid");
                local Anchored = HumanoidRootPart_101.Anchored;
                if not Humanoid_134 then return end -- won't run
                Humanoid_134.PlatformStand = true;
                HumanoidRootPart_101.Anchored = true;
                local Vector3_Zero = Vector3.zero;
                HumanoidRootPart_101.AssemblyLinearVelocity = Vector3_Zero;
                HumanoidRootPart_101.AssemblyAngularVelocity = Vector3_Zero;
                local Descendants_88 = Character_242:GetDescendants();
                for i_241, v_241 in pairs(Descendants_88) do
                    local IsA_38 = v_241.IsA;
                    local BasePart_29 = v_241:IsA("BasePart");
                    if not BasePart_29 then return end -- won't run
                    local CanCollide = v_241.CanCollide;
                    v_241.CanCollide = false;
                end
                local str_3 = TweenService:Create(var752, _call759, {
                    CFrame = CFrame_Value,
                });
                local Play_5 = str_3.Play;
                local Play_6 = str_3:Play();
                local Completed = str_3.Completed;
                local Wait = Completed.Wait;
                local Wait_2 = Completed:Wait();
                local Parent = v_241.Parent;
                local var757 = (v_241 and Parent);
                if not var757 then return end -- won't run
                v_241.CanCollide = CanCollide;
                HumanoidRootPart_101.Anchored = Anchored;
                HumanoidRootPart_101.AssemblyLinearVelocity = Vector3_Zero;
                HumanoidRootPart_101.AssemblyAngularVelocity = Vector3_Zero;
                if not Humanoid_134 then return end -- won't run
                Humanoid_134.PlatformStand = false;
                local Waited_For_349 = task.wait(0.3);
                local Shared_85 = ReplicatedStorage.Shared;
                local Packages_54 = Shared_85.Packages;
                local Knit_54 = Packages_54.Knit;
                local Services_22 = Knit_54.Services;
                local ProximityService_3 = Services_22.ProximityService;
                local RF_22 = ProximityService_3.RF;
                local Dialogue = RF_22.Dialogue;
                local InvokeServer_25 = Dialogue.InvokeServer;
                local InvokeServer_26 = Dialogue:InvokeServer(Greedy_Cey);
                local Waited_For_350 = task.wait(0.2);
                local Shared_86 = ReplicatedStorage.Shared;
                local Packages_55 = Shared_86.Packages;
                local Knit_55 = Packages_55.Knit;
                local Services_23 = Knit_55.Services;
                local DialogueService = Services_23.DialogueService;
                local RE = DialogueService.RE;
                local DialogueEvent = RE.DialogueEvent;
                local FireServer = DialogueEvent.FireServer;
                local Opened = DialogueEvent:FireServer("Opened");
            end)
            local Waited_For_351 = task.wait(5);
            local Success_181, Error_Message_181 = pcall(function(...)
                local PlayerGui_39 = LocalPlayer:WaitForChild("PlayerGui");
                local FindFirstChild_36 = PlayerGui_39.FindFirstChild;
                local DialogueUI = PlayerGui_39:FindFirstChild("DialogueUI");
                if not DialogueUI then return end -- won't run
                local FindFirstChild_37 = DialogueUI.FindFirstChild;
                local ResponseBillboard = DialogueUI:FindFirstChild("ResponseBillboard");
                if not ResponseBillboard then return end -- won't run
                local GetChildren = ResponseBillboard.GetChildren;
                local Children_118 = ResponseBillboard:GetChildren();
                for i_242, v_242 in pairs(Children_118) do
                    local IsA_39 = v_242.IsA;
                    local Frame_2 = v_242:IsA("Frame");
                    local LayoutOrder = v_242.LayoutOrder;
                    local var755 = (LayoutOrder == 2);
                    local var756 = (Frame_2 and var755);
                end
            end)
            local Waited_For_352 = task.wait(0.3);
            local Success_182, Error_Message_182 = pcall(function(...)
                local ReplicatedStorage_2 = game:GetService("ReplicatedStorage");
                local Shared_87 = ReplicatedStorage:WaitForChild("Shared");
                local WaitForChild_128 = Shared_87.WaitForChild;
                local Packages_56 = Shared_87:WaitForChild("Packages");
                local WaitForChild_129 = Packages_56.WaitForChild;
                local Knit_56 = Packages_56:WaitForChild("Knit");
                local WaitForChild_130 = Knit_56.WaitForChild;
                local Services_24 = Knit_56:WaitForChild("Services");
                local WaitForChild_131 = Services_24.WaitForChild;
                local DialogueService_2 = Services_24:WaitForChild("DialogueService");
                local WaitForChild_132 = DialogueService_2.WaitForChild;
                local RE_2 = DialogueService_2:WaitForChild("RE");
                local WaitForChild_133 = RE_2.WaitForChild;
                local DialogueEvent_2 = RE_2:WaitForChild("DialogueEvent");
                local FireServer_2 = DialogueEvent_2.FireServer;
                local Closed = DialogueEvent_2:FireServer("Closed");
            end)
            local Success_183, Error_Message_183 = pcall(function(...)
                local Shared_88 = ReplicatedStorage.Shared;
                local Packages_57 = Shared_88.Packages;
                local Knit_57 = Packages_57.Knit;
                local Services_25 = Knit_57.Services;
                local DialogueService_3 = Services_25.DialogueService;
                local RF_23 = DialogueService_3.RF;
                local RunCommand = RF_23.RunCommand;
                local InvokeServer_27 = RunCommand.InvokeServer;
                local SellConfirm = RunCommand:InvokeServer("SellConfirm", {
                    Basket = {
                        [i_240] = var747,
                    },
                });
                local Shared_89 = ReplicatedStorage.Shared;
                local Packages_58 = Shared_89.Packages;
                local Knit_58 = Packages_58.Knit;
                local Services_26 = Knit_58.Services;
                local StatusService = Services_26.StatusService;
                local RF_24 = StatusService.RF;
                local GetPlayerEquipmentInfo = RF_24.GetPlayerEquipmentInfo;
                local InvokeServer_28 = GetPlayerEquipmentInfo.InvokeServer;
                local InvokeServer_29 = GetPlayerEquipmentInfo:InvokeServer();
            end)
            for i_243, v_243 in pairs(p1_0) do
                if not v_243 then return end -- won't run
            end
            if not i_243 then return end -- won't run
            for i_244, v_244 in pairs(p1_0) do
                if not v_244 then return end -- won't run
            end
            local Not_I_244 = not i_244;
            local Success_184, Error_Message_184 = pcall(function(...)
                local Shared_90 = ReplicatedStorage.Shared;
                local Packages_59 = Shared_90.Packages;
                local Knit_59 = Packages_59.Knit;
                local Services_27 = Knit_59.Services;
                local DialogueService_4 = Services_27.DialogueService;
                local RF_25 = DialogueService_4.RF;
                local RunCommand_2 = RF_25.RunCommand;
                local InvokeServer_30 = RunCommand_2.InvokeServer;
                local SellConfirm_2 = RunCommand_2:InvokeServer("SellConfirm", {
                    Basket = {
                        [i_244] = var752,
                    },
                });
                local Shared_91 = ReplicatedStorage.Shared;
                local Packages_60 = Shared_91.Packages;
                local Knit_60 = Packages_60.Knit;
                local Services_28 = Knit_60.Services;
                local StatusService_2 = Services_28.StatusService;
                local RF_26 = StatusService_2.RF;
                local GetPlayerEquipmentInfo_2 = RF_26.GetPlayerEquipmentInfo;
                local InvokeServer_31 = GetPlayerEquipmentInfo_2.InvokeServer;
                local InvokeServer_32 = GetPlayerEquipmentInfo_2:InvokeServer();
            end)
            for i_245, v_245 in pairs(p1_0) do
                if not v_245 then return end -- won't run
            end
            if not i_245 then return end -- won't run
            for i_246, v_246 in pairs(p1_0) do
                if not v_246 then return end -- won't run
            end
            local Not_I_246 = not i_246;
            local Success_185, Error_Message_185 = pcall(function(...)
                local Shared_92 = ReplicatedStorage.Shared;
                local Packages_61 = Shared_92.Packages;
                local Knit_61 = Packages_61.Knit;
                local Services_29 = Knit_61.Services;
                local DialogueService_5 = Services_29.DialogueService;
                local RF_27 = DialogueService_5.RF;
                local RunCommand_3 = RF_27.RunCommand;
                local InvokeServer_33 = RunCommand_3.InvokeServer;
                local SellConfirm_3 = RunCommand_3:InvokeServer("SellConfirm", {
                    Basket = {
                        [i_246] = true,
                    },
                });
                local Shared_93 = ReplicatedStorage.Shared;
                local Packages_62 = Shared_93.Packages;
                local Knit_62 = Packages_62.Knit;
                local Services_30 = Knit_62.Services;
                local StatusService_3 = Services_30.StatusService;
                local RF_28 = StatusService_3.RF;
                local GetPlayerEquipmentInfo_3 = RF_28.GetPlayerEquipmentInfo;
                local InvokeServer_34 = GetPlayerEquipmentInfo_3.InvokeServer;
                local InvokeServer_35 = GetPlayerEquipmentInfo_3:InvokeServer();
            end)
            for i_247, v_247 in pairs(p1_0) do
                if not v_247 then return end -- won't run
            end
            if not i_247 then return end -- won't run
            for i_248, v_248 in pairs(p1_0) do
                if not v_248 then return end -- won't run
            end
            local Not_I_248 = not i_248;
            local Success_186, Error_Message_186 = pcall(function(...)
                local Shared_94 = ReplicatedStorage.Shared;
                local Packages_63 = Shared_94.Packages;
                local Knit_63 = Packages_63.Knit;
                local Services_31 = Knit_63.Services;
                local DialogueService_6 = Services_31.DialogueService;
                local RF_29 = DialogueService_6.RF;
                local RunCommand_4 = RF_29.RunCommand;
                local InvokeServer_36 = RunCommand_4.InvokeServer;
                local SellConfirm_4 = RunCommand_4:InvokeServer("SellConfirm", {
                    Basket = {
                        [i_248] = true,
                    },
                });
                local Shared_95 = ReplicatedStorage.Shared;
                local Packages_64 = Shared_95.Packages;
                local Knit_64 = Packages_64.Knit;
                local Services_32 = Knit_64.Services;
                local StatusService_4 = Services_32.StatusService;
                local RF_30 = StatusService_4.RF;
                local GetPlayerEquipmentInfo_4 = RF_30.GetPlayerEquipmentInfo;
                local InvokeServer_37 = GetPlayerEquipmentInfo_4.InvokeServer;
                local InvokeServer_38 = GetPlayerEquipmentInfo_4:InvokeServer();
            end)
            if not SellStatus then return end -- won't run
            local SetContent_17 = SellStatus.SetContent;
            local var755 = SellStatus:SetContent("Đã bán 4 loại - 09:06:06");

        end,
        Title = "Sell All Now",
        Description = "Bán ngay tất cả items đã chọn",
    });
    local Spawned_16 = task.spawn(function()
        local Waited_For_353 = task.wait(p1_0);
        for i_249, v_249 in pairs(p1_0) do
            if not v_249 then return end -- won't run
        end
        local var755 = (p1_0 and i_249);
        if not var755 then return end -- won't run
        for i_250, v_250 in pairs(p1_0) do
            if not v_250 then return end -- won't run
        end
        local Not_I_250 = not i_250;
        local Success_187, Error_Message_187 = pcall(function(...)
            local Shared_96 = ReplicatedStorage.Shared;
            local Packages_65 = Shared_96.Packages;
            local Knit_65 = Packages_65.Knit;
            local Services_33 = Knit_65.Services;
            local DialogueService_7 = Services_33.DialogueService;
            local RF_31 = DialogueService_7.RF;
            local RunCommand_5 = RF_31.RunCommand;
            local InvokeServer_39 = RunCommand_5.InvokeServer;
            local SellConfirm_5 = RunCommand_5:InvokeServer("SellConfirm", {
                Basket = {
                    [i_250] = var747,
                },
            });
            local Shared_97 = ReplicatedStorage.Shared;
            local Packages_66 = Shared_97.Packages;
            local Knit_66 = Packages_66.Knit;
            local Services_34 = Knit_66.Services;
            local StatusService_5 = Services_34.StatusService;
            local RF_32 = StatusService_5.RF;
            local GetPlayerEquipmentInfo_5 = RF_32.GetPlayerEquipmentInfo;
            local InvokeServer_40 = GetPlayerEquipmentInfo_5.InvokeServer;
            local InvokeServer_41 = GetPlayerEquipmentInfo_5:InvokeServer();
        end)
        local var756 = (p1_0 and "ByRank");
        -- local _ = var756 or (unknown_value)
        for i_251, v_251 in pairs(p1_0) do
            if not v_251 then return end -- won't run
        end
        local var756 = (p1_0 and i_251);
        if not var756 then return end -- won't run
        for i_252, v_252 in pairs(p1_0) do
            if not v_252 then return end -- won't run
        end
        local Not_I_252 = not i_252;
        local Success_188, Error_Message_188 = pcall(function(...)
            local Shared_98 = ReplicatedStorage.Shared;
            local Packages_67 = Shared_98.Packages;
            local Knit_67 = Packages_67.Knit;
            local Services_35 = Knit_67.Services;
            local DialogueService_8 = Services_35.DialogueService;
            local RF_33 = DialogueService_8.RF;
            local RunCommand_6 = RF_33.RunCommand;
            local InvokeServer_42 = RunCommand_6.InvokeServer;
            local SellConfirm_6 = RunCommand_6:InvokeServer("SellConfirm", {
                Basket = {
                    [i_252] = var752,
                },
            });
            local Shared_99 = ReplicatedStorage.Shared;
            local Packages_68 = Shared_99.Packages;
            local Knit_68 = Packages_68.Knit;
            local Services_36 = Knit_68.Services;
            local StatusService_6 = Services_36.StatusService;
            local RF_34 = StatusService_6.RF;
            local GetPlayerEquipmentInfo_6 = RF_34.GetPlayerEquipmentInfo;
            local InvokeServer_43 = GetPlayerEquipmentInfo_6.InvokeServer;
            local InvokeServer_44 = GetPlayerEquipmentInfo_6:InvokeServer();
        end)
        for i_253, v_253 in pairs(p1_0) do
            if not v_253 then return end -- won't run
        end
        local var756 = (p1_0 and i_253);
        if not var756 then return end -- won't run
        for i_254, v_254 in pairs(p1_0) do
            if not v_254 then return end -- won't run
        end
        local Not_I_254 = not i_254;
        local Success_189, Error_Message_189 = pcall(function(...)
            local Shared_100 = ReplicatedStorage.Shared;
            local Packages_69 = Shared_100.Packages;
            local Knit_69 = Packages_69.Knit;
            local Services_37 = Knit_69.Services;
            local DialogueService_9 = Services_37.DialogueService;
            local RF_35 = DialogueService_9.RF;
            local RunCommand_7 = RF_35.RunCommand;
            local InvokeServer_45 = RunCommand_7.InvokeServer;
            local SellConfirm_7 = RunCommand_7:InvokeServer("SellConfirm", {
                Basket = {
                    [i_254] = true,
                },
            });
            local Shared_101 = ReplicatedStorage.Shared;
            local Packages_70 = Shared_101.Packages;
            local Knit_70 = Packages_70.Knit;
            local Services_38 = Knit_70.Services;
            local StatusService_7 = Services_38.StatusService;
            local RF_36 = StatusService_7.RF;
            local GetPlayerEquipmentInfo_7 = RF_36.GetPlayerEquipmentInfo;
            local InvokeServer_46 = GetPlayerEquipmentInfo_7.InvokeServer;
            local InvokeServer_47 = GetPlayerEquipmentInfo_7:InvokeServer();
        end)
        for i_255, v_255 in pairs(p1_0) do
            if not v_255 then return end -- won't run
        end
        local var756 = (p1_0 and i_255);
        if not var756 then return end -- won't run
        for i_256, v_256 in pairs(p1_0) do
            if not v_256 then return end -- won't run
        end
        local Not_I_256 = not i_256;
        local Success_190, Error_Message_190 = pcall(function(...)
            local Shared_102 = ReplicatedStorage.Shared;
            local Packages_71 = Shared_102.Packages;
            local Knit_71 = Packages_71.Knit;
            local Services_39 = Knit_71.Services;
            local DialogueService_10 = Services_39.DialogueService;
            local RF_37 = DialogueService_10.RF;
            local RunCommand_8 = RF_37.RunCommand;
            local InvokeServer_48 = RunCommand_8.InvokeServer;
            local SellConfirm_8 = RunCommand_8:InvokeServer("SellConfirm", {
                Basket = {
                    [i_256] = true,
                },
            });
            local Shared_103 = ReplicatedStorage.Shared;
            local Packages_72 = Shared_103.Packages;
            local Knit_72 = Packages_72.Knit;
            local Services_40 = Knit_72.Services;
            local StatusService_8 = Services_40.StatusService;
            local RF_38 = StatusService_8.RF;
            local GetPlayerEquipmentInfo_8 = RF_38.GetPlayerEquipmentInfo;
            local InvokeServer_49 = GetPlayerEquipmentInfo_8.InvokeServer;
            local InvokeServer_50 = GetPlayerEquipmentInfo_8:InvokeServer();
        end)
        if not SellStatus then return end -- won't run
        local SetContent_18 = SellStatus.SetContent;
        local var757 = SellStatus:SetContent("Sold: ByRank, Mat, Pick, Weap - 09:06:06");
        local Waited_For_354 = task.wait(p1_0);
        for i_257, v_257 in pairs(p1_0) do
            if not v_257 then return end -- won't run
        end
        local var757 = (p1_0 and i_257);
        if not var757 then return end -- won't run
        for i_258, v_258 in pairs(p1_0) do
            if not v_258 then return end -- won't run
        end
        local Not_I_258 = not i_258;
        local Success_191, Error_Message_191 = pcall(function(...)
            local Shared_104 = ReplicatedStorage.Shared;
            local Packages_73 = Shared_104.Packages;
            local Knit_73 = Packages_73.Knit;
            local Services_41 = Knit_73.Services;
            local DialogueService_11 = Services_41.DialogueService;
            local RF_39 = DialogueService_11.RF;
            local RunCommand_9 = RF_39.RunCommand;
            local InvokeServer_51 = RunCommand_9.InvokeServer;
            local SellConfirm_9 = RunCommand_9:InvokeServer("SellConfirm", {
                Basket = {
                    [i_258] = var747,
                },
            });
            local Shared_105 = ReplicatedStorage.Shared;
            local Packages_74 = Shared_105.Packages;
            local Knit_74 = Packages_74.Knit;
            local Services_42 = Knit_74.Services;
            local StatusService_9 = Services_42.StatusService;
            local RF_40 = StatusService_9.RF;
            local GetPlayerEquipmentInfo_9 = RF_40.GetPlayerEquipmentInfo;
            local InvokeServer_52 = GetPlayerEquipmentInfo_9.InvokeServer;
            local InvokeServer_53 = GetPlayerEquipmentInfo_9:InvokeServer();
        end)
        local var758 = (p1_0 and "ByRank");
        -- local _ = var758 or (unknown_value)
        for i_259, v_259 in pairs(p1_0) do
            if not v_259 then return end -- won't run
        end
        local var758 = (p1_0 and i_259);
        if not var758 then return end -- won't run
        for i_260, v_260 in pairs(p1_0) do
            if not v_260 then return end -- won't run
        end
        local Not_I_260 = not i_260;
        local Success_192, Error_Message_192 = pcall(function(...)
            local Shared_106 = ReplicatedStorage.Shared;
            local Packages_75 = Shared_106.Packages;
            local Knit_75 = Packages_75.Knit;
            local Services_43 = Knit_75.Services;
            local DialogueService_12 = Services_43.DialogueService;
            local RF_41 = DialogueService_12.RF;
            local RunCommand_10 = RF_41.RunCommand;
            local InvokeServer_54 = RunCommand_10.InvokeServer;
            local SellConfirm_10 = RunCommand_10:InvokeServer("SellConfirm", {
                Basket = {
                    [i_260] = var752,
                },
            });
            local Shared_107 = ReplicatedStorage.Shared;
            local Packages_76 = Shared_107.Packages;
            local Knit_76 = Packages_76.Knit;
            local Services_44 = Knit_76.Services;
            local StatusService_10 = Services_44.StatusService;
            local RF_42 = StatusService_10.RF;
            local GetPlayerEquipmentInfo_10 = RF_42.GetPlayerEquipmentInfo;
            local InvokeServer_55 = GetPlayerEquipmentInfo_10.InvokeServer;
            local InvokeServer_56 = GetPlayerEquipmentInfo_10:InvokeServer();
        end)
        for i_261, v_261 in pairs(p1_0) do
            if not v_261 then return end -- won't run
        end
        local var758 = (p1_0 and i_261);
        if not var758 then return end -- won't run
        for i_262, v_262 in pairs(p1_0) do
            if not v_262 then return end -- won't run
        end
        local Not_I_262 = not i_262;
        local Success_193, Error_Message_193 = pcall(function(...)
            local Shared_108 = ReplicatedStorage.Shared;
            local Packages_77 = Shared_108.Packages;
            local Knit_77 = Packages_77.Knit;
            local Services_45 = Knit_77.Services;
            local DialogueService_13 = Services_45.DialogueService;
            local RF_43 = DialogueService_13.RF;
            local RunCommand_11 = RF_43.RunCommand;
            local InvokeServer_57 = RunCommand_11.InvokeServer;
            local SellConfirm_11 = RunCommand_11:InvokeServer("SellConfirm", {
                Basket = {
                    [i_262] = true,
                },
            });
            local Shared_109 = ReplicatedStorage.Shared;
            local Packages_78 = Shared_109.Packages;
            local Knit_78 = Packages_78.Knit;
            local Services_46 = Knit_78.Services;
            local StatusService_11 = Services_46.StatusService;
            local RF_44 = StatusService_11.RF;
            local GetPlayerEquipmentInfo_11 = RF_44.GetPlayerEquipmentInfo;
            local InvokeServer_58 = GetPlayerEquipmentInfo_11.InvokeServer;
            local InvokeServer_59 = GetPlayerEquipmentInfo_11:InvokeServer();
        end)
        for i_263, v_263 in pairs(p1_0) do
            if not v_263 then return end -- won't run
        end
        local var758 = (p1_0 and i_263);
        if not var758 then return end -- won't run
        for i_264, v_264 in pairs(p1_0) do
            if not v_264 then return end -- won't run
        end
        local Not_I_264 = not i_264;
        local Success_194, Error_Message_194 = pcall(function(...)
            local Shared_110 = ReplicatedStorage.Shared;
            local Packages_79 = Shared_110.Packages;
            local Knit_79 = Packages_79.Knit;
            local Services_47 = Knit_79.Services;
            local DialogueService_14 = Services_47.DialogueService;
            local RF_45 = DialogueService_14.RF;
            local RunCommand_12 = RF_45.RunCommand;
            local InvokeServer_60 = RunCommand_12.InvokeServer;
            local SellConfirm_12 = RunCommand_12:InvokeServer("SellConfirm", {
                Basket = {
                    [i_264] = true,
                },
            });
            local Shared_111 = ReplicatedStorage.Shared;
            local Packages_80 = Shared_111.Packages;
            local Knit_80 = Packages_80.Knit;
            local Services_48 = Knit_80.Services;
            local StatusService_12 = Services_48.StatusService;
            local RF_46 = StatusService_12.RF;
            local GetPlayerEquipmentInfo_12 = RF_46.GetPlayerEquipmentInfo;
            local InvokeServer_61 = GetPlayerEquipmentInfo_12.InvokeServer;
            local InvokeServer_62 = GetPlayerEquipmentInfo_12:InvokeServer();
        end)
        if not SellStatus then return end -- won't run
        local SetContent_19 = SellStatus.SetContent;
        local var759 = SellStatus:SetContent("Sold: ByRank, Mat, Pick, Weap - 09:06:06");
        local Waited_For_355 = task.wait(p1_0);
        for i_265, v_265 in pairs(p1_0) do
            if not v_265 then return end -- won't run
        end
        local var759 = (p1_0 and i_265);
        if not var759 then return end -- won't run
        for i_266, v_266 in pairs(p1_0) do
            if not v_266 then return end -- won't run
        end
        local Not_I_266 = not i_266;
        local Success_195, Error_Message_195 = pcall(function(...)
            local Shared_112 = ReplicatedStorage.Shared;
            local Packages_81 = Shared_112.Packages;
            local Knit_81 = Packages_81.Knit;
            local Services_49 = Knit_81.Services;
            local DialogueService_15 = Services_49.DialogueService;
            local RF_47 = DialogueService_15.RF;
            local RunCommand_13 = RF_47.RunCommand;
            local InvokeServer_63 = RunCommand_13.InvokeServer;
            local SellConfirm_13 = RunCommand_13:InvokeServer("SellConfirm", {
                Basket = {
                    [i_266] = var747,
                },
            });
            local Shared_113 = ReplicatedStorage.Shared;
            local Packages_82 = Shared_113.Packages;
            local Knit_82 = Packages_82.Knit;
            local Services_50 = Knit_82.Services;
            local StatusService_13 = Services_50.StatusService;
            local RF_48 = StatusService_13.RF;
            local GetPlayerEquipmentInfo_13 = RF_48.GetPlayerEquipmentInfo;
            local InvokeServer_64 = GetPlayerEquipmentInfo_13.InvokeServer;
            local InvokeServer_65 = GetPlayerEquipmentInfo_13:InvokeServer();
        end)
        local var760 = (p1_0 and "ByRank");
        -- local _ = var760 or (unknown_value)
        for i_267, v_267 in pairs(p1_0) do
            if not v_267 then return end -- won't run
        end
        local var760 = (p1_0 and i_267);
        if not var760 then return end -- won't run
        for i_268, v_268 in pairs(p1_0) do
            if not v_268 then return end -- won't run
        end
        local Not_I_268 = not i_268;
        local Success_196, Error_Message_196 = pcall(function(...)
            local Shared_114 = ReplicatedStorage.Shared;
            local Packages_83 = Shared_114.Packages;
            local Knit_83 = Packages_83.Knit;
            local Services_51 = Knit_83.Services;
            local DialogueService_16 = Services_51.DialogueService;
            local RF_49 = DialogueService_16.RF;
            local RunCommand_14 = RF_49.RunCommand;
            local InvokeServer_66 = RunCommand_14.InvokeServer;
            local SellConfirm_14 = RunCommand_14:InvokeServer("SellConfirm", {
                Basket = {
                    [i_268] = var752,
                },
            });
            local Shared_115 = ReplicatedStorage.Shared;
            local Packages_84 = Shared_115.Packages;
            local Knit_84 = Packages_84.Knit;
            local Services_52 = Knit_84.Services;
            local StatusService_14 = Services_52.StatusService;
            local RF_50 = StatusService_14.RF;
            local GetPlayerEquipmentInfo_14 = RF_50.GetPlayerEquipmentInfo;
            local InvokeServer_67 = GetPlayerEquipmentInfo_14.InvokeServer;
            local InvokeServer_68 = GetPlayerEquipmentInfo_14:InvokeServer();
        end)
        for i_269, v_269 in pairs(p1_0) do
            if not v_269 then return end -- won't run
        end
        local var760 = (p1_0 and i_269);
        if not var760 then return end -- won't run
        for i_270, v_270 in pairs(p1_0) do
            if not v_270 then return end -- won't run
        end
        local Not_I_270 = not i_270;
        local Success_197, Error_Message_197 = pcall(function(...)
            local Shared_116 = ReplicatedStorage.Shared;
            local Packages_85 = Shared_116.Packages;
            local Knit_85 = Packages_85.Knit;
            local Services_53 = Knit_85.Services;
            local DialogueService_17 = Services_53.DialogueService;
            local RF_51 = DialogueService_17.RF;
            local RunCommand_15 = RF_51.RunCommand;
            local InvokeServer_69 = RunCommand_15.InvokeServer;
            local SellConfirm_15 = RunCommand_15:InvokeServer("SellConfirm", {
                Basket = {
                    [i_270] = true,
                },
            });
            local Shared_117 = ReplicatedStorage.Shared;
            local Packages_86 = Shared_117.Packages;
            local Knit_86 = Packages_86.Knit;
            local Services_54 = Knit_86.Services;
            local StatusService_15 = Services_54.StatusService;
            local RF_52 = StatusService_15.RF;
            local GetPlayerEquipmentInfo_15 = RF_52.GetPlayerEquipmentInfo;
            local InvokeServer_70 = GetPlayerEquipmentInfo_15.InvokeServer;
            local InvokeServer_71 = GetPlayerEquipmentInfo_15:InvokeServer();
        end)
        for i_271, v_271 in pairs(p1_0) do
            if not v_271 then return end -- won't run
        end
        local var760 = (p1_0 and i_271);
        if not var760 then return end -- won't run
        for i_272, v_272 in pairs(p1_0) do
            if not v_272 then return end -- won't run
        end
        local Not_I_272 = not i_272;
        local Success_198, Error_Message_198 = pcall(function(...)
            local Shared_118 = ReplicatedStorage.Shared;
            local Packages_87 = Shared_118.Packages;
            local Knit_87 = Packages_87.Knit;
            local Services_55 = Knit_87.Services;
            local DialogueService_18 = Services_55.DialogueService;
            local RF_53 = DialogueService_18.RF;
            local RunCommand_16 = RF_53.RunCommand;
            local InvokeServer_72 = RunCommand_16.InvokeServer;
            local SellConfirm_16 = RunCommand_16:InvokeServer("SellConfirm", {
                Basket = {
                    [i_272] = true,
                },
            });
            local Shared_119 = ReplicatedStorage.Shared;
            local Packages_88 = Shared_119.Packages;
            local Knit_88 = Packages_88.Knit;
            local Services_56 = Knit_88.Services;
            local StatusService_16 = Services_56.StatusService;
            local RF_54 = StatusService_16.RF;
            local GetPlayerEquipmentInfo_16 = RF_54.GetPlayerEquipmentInfo;
            local InvokeServer_73 = GetPlayerEquipmentInfo_16.InvokeServer;
            local InvokeServer_74 = GetPlayerEquipmentInfo_16:InvokeServer();
        end)
        if not SellStatus then return end -- won't run
        local SetContent_20 = SellStatus.SetContent;
        local var761 = SellStatus:SetContent("Sold: ByRank, Mat, Pick, Weap - 09:06:07");
        local Waited_For_356 = task.wait(p1_0);
        for i_273, v_273 in pairs(p1_0) do
            if not v_273 then return end -- won't run
        end
        local var761 = (p1_0 and i_273);
        if not var761 then return end -- won't run
        for i_274, v_274 in pairs(p1_0) do
            if not v_274 then return end -- won't run
        end
        local Not_I_274 = not i_274;
        local Success_199, Error_Message_199 = pcall(function(...)
            local Shared_120 = ReplicatedStorage.Shared;
            local Packages_89 = Shared_120.Packages;
            local Knit_89 = Packages_89.Knit;
            local Services_57 = Knit_89.Services;
            local DialogueService_19 = Services_57.DialogueService;
            local RF_55 = DialogueService_19.RF;
            local RunCommand_17 = RF_55.RunCommand;
            local InvokeServer_75 = RunCommand_17.InvokeServer;
            local SellConfirm_17 = RunCommand_17:InvokeServer("SellConfirm", {
                Basket = {
                    [i_274] = var747,
                },
            });
            local Shared_121 = ReplicatedStorage.Shared;
            local Packages_90 = Shared_121.Packages;
            local Knit_90 = Packages_90.Knit;
            local Services_58 = Knit_90.Services;
            local StatusService_17 = Services_58.StatusService;
            local RF_56 = StatusService_17.RF;
            local GetPlayerEquipmentInfo_17 = RF_56.GetPlayerEquipmentInfo;
            local InvokeServer_76 = GetPlayerEquipmentInfo_17.InvokeServer;
            local InvokeServer_77 = GetPlayerEquipmentInfo_17:InvokeServer();
        end)
        local var762 = (p1_0 and "ByRank");
        -- local _ = var762 or (unknown_value)
        for i_275, v_275 in pairs(p1_0) do
            if not v_275 then return end -- won't run
        end
        local var762 = (p1_0 and i_275);
        if not var762 then return end -- won't run
        for i_276, v_276 in pairs(p1_0) do
            if not v_276 then return end -- won't run
        end
        local Not_I_276 = not i_276;
        local Success_200, Error_Message_200 = pcall(function(...)
            local Shared_122 = ReplicatedStorage.Shared;
            local Packages_91 = Shared_122.Packages;
            local Knit_91 = Packages_91.Knit;
            local Services_59 = Knit_91.Services;
            local DialogueService_20 = Services_59.DialogueService;
            local RF_57 = DialogueService_20.RF;
            local RunCommand_18 = RF_57.RunCommand;
            local InvokeServer_78 = RunCommand_18.InvokeServer;
            local SellConfirm_18 = RunCommand_18:InvokeServer("SellConfirm", {
                Basket = {
                    [i_276] = var752,
                },
            });
            local Shared_123 = ReplicatedStorage.Shared;
            local Packages_92 = Shared_123.Packages;
            local Knit_92 = Packages_92.Knit;
            local Services_60 = Knit_92.Services;
            local StatusService_18 = Services_60.StatusService;
            local RF_58 = StatusService_18.RF;
            local GetPlayerEquipmentInfo_18 = RF_58.GetPlayerEquipmentInfo;
            local InvokeServer_79 = GetPlayerEquipmentInfo_18.InvokeServer;
            local InvokeServer_80 = GetPlayerEquipmentInfo_18:InvokeServer();
        end)
        for i_277, v_277 in pairs(p1_0) do
            if not v_277 then return end -- won't run
        end
        local var762 = (p1_0 and i_277);
        if not var762 then return end -- won't run
        for i_278, v_278 in pairs(p1_0) do
            if not v_278 then return end -- won't run
        end
        local Not_I_278 = not i_278;
        local Success_201, Error_Message_201 = pcall(function(...)
            local Shared_124 = ReplicatedStorage.Shared;
            local Packages_93 = Shared_124.Packages;
            local Knit_93 = Packages_93.Knit;
            local Services_61 = Knit_93.Services;
            local DialogueService_21 = Services_61.DialogueService;
            local RF_59 = DialogueService_21.RF;
            local RunCommand_19 = RF_59.RunCommand;
            local InvokeServer_81 = RunCommand_19.InvokeServer;
            local SellConfirm_19 = RunCommand_19:InvokeServer("SellConfirm", {
                Basket = {
                    [i_278] = true,
                },
            });
            local Shared_125 = ReplicatedStorage.Shared;
            local Packages_94 = Shared_125.Packages;
            local Knit_94 = Packages_94.Knit;
            local Services_62 = Knit_94.Services;
            local StatusService_19 = Services_62.StatusService;
            local RF_60 = StatusService_19.RF;
            local GetPlayerEquipmentInfo_19 = RF_60.GetPlayerEquipmentInfo;
            local InvokeServer_82 = GetPlayerEquipmentInfo_19.InvokeServer;
            local InvokeServer_83 = GetPlayerEquipmentInfo_19:InvokeServer();
        end)
        for i_279, v_279 in pairs(p1_0) do
            if not v_279 then return end -- won't run
        end
        local var762 = (p1_0 and i_279);
        if not var762 then return end -- won't run
        for i_280, v_280 in pairs(p1_0) do
            if not v_280 then return end -- won't run
        end
        local Not_I_280 = not i_280;
        local Success_202, Error_Message_202 = pcall(function(...)
            local Shared_126 = ReplicatedStorage.Shared;
            local Packages_95 = Shared_126.Packages;
            local Knit_95 = Packages_95.Knit;
            local Services_63 = Knit_95.Services;
            local DialogueService_22 = Services_63.DialogueService;
            local RF_61 = DialogueService_22.RF;
            local RunCommand_20 = RF_61.RunCommand;
            local InvokeServer_84 = RunCommand_20.InvokeServer;
            local SellConfirm_20 = RunCommand_20:InvokeServer("SellConfirm", {
                Basket = {
                    [i_280] = true,
                },
            });
            local Shared_127 = ReplicatedStorage.Shared;
            local Packages_96 = Shared_127.Packages;
            local Knit_96 = Packages_96.Knit;
            local Services_64 = Knit_96.Services;
            local StatusService_20 = Services_64.StatusService;
            local RF_62 = StatusService_20.RF;
            local GetPlayerEquipmentInfo_20 = RF_62.GetPlayerEquipmentInfo;
            local InvokeServer_85 = GetPlayerEquipmentInfo_20.InvokeServer;
            local InvokeServer_86 = GetPlayerEquipmentInfo_20:InvokeServer();
        end)
        if not SellStatus then return end -- won't run
        local SetContent_21 = SellStatus.SetContent;
        local var763 = SellStatus:SetContent("Sold: ByRank, Mat, Pick, Weap - 09:06:07");
        local Waited_For_357 = task.wait(p1_0);
        for i_281, v_281 in pairs(p1_0) do
            if not v_281 then return end -- won't run
        end
        local var763 = (p1_0 and i_281);
        if not var763 then return end -- won't run
        for i_282, v_282 in pairs(p1_0) do
            if not v_282 then return end -- won't run
        end
        local Not_I_282 = not i_282;
        local Success_203, Error_Message_203 = pcall(function(...)
            local Shared_128 = ReplicatedStorage.Shared;
            local Packages_97 = Shared_128.Packages;
            local Knit_97 = Packages_97.Knit;
            local Services_65 = Knit_97.Services;
            local DialogueService_23 = Services_65.DialogueService;
            local RF_63 = DialogueService_23.RF;
            local RunCommand_21 = RF_63.RunCommand;
            local InvokeServer_87 = RunCommand_21.InvokeServer;
            local SellConfirm_21 = RunCommand_21:InvokeServer("SellConfirm", {
                Basket = {
                    [i_282] = var747,
                },
            });
            local Shared_129 = ReplicatedStorage.Shared;
            local Packages_98 = Shared_129.Packages;
            local Knit_98 = Packages_98.Knit;
            local Services_66 = Knit_98.Services;
            local StatusService_21 = Services_66.StatusService;
            local RF_64 = StatusService_21.RF;
            local GetPlayerEquipmentInfo_21 = RF_64.GetPlayerEquipmentInfo;
            local InvokeServer_88 = GetPlayerEquipmentInfo_21.InvokeServer;
            local InvokeServer_89 = GetPlayerEquipmentInfo_21:InvokeServer();
        end)
        local var764 = (p1_0 and "ByRank");
        -- local _ = var764 or (unknown_value)
        for i_283, v_283 in pairs(p1_0) do
            if not v_283 then return end -- won't run
        end
        local var764 = (p1_0 and i_283);
        if not var764 then return end -- won't run
        for i_284, v_284 in pairs(p1_0) do
            if not v_284 then return end -- won't run
        end
        local Not_I_284 = not i_284;
        local Success_204, Error_Message_204 = pcall(function(...)
            local Shared_130 = ReplicatedStorage.Shared;
            local Packages_99 = Shared_130.Packages;
            local Knit_99 = Packages_99.Knit;
            local Services_67 = Knit_99.Services;
            local DialogueService_24 = Services_67.DialogueService;
            local RF_65 = DialogueService_24.RF;
            local RunCommand_22 = RF_65.RunCommand;
            local InvokeServer_90 = RunCommand_22.InvokeServer;
            local SellConfirm_22 = RunCommand_22:InvokeServer("SellConfirm", {
                Basket = {
                    [i_284] = var752,
                },
            });
            local Shared_131 = ReplicatedStorage.Shared;
            local Packages_100 = Shared_131.Packages;
            local Knit_100 = Packages_100.Knit;
            local Services_68 = Knit_100.Services;
            local StatusService_22 = Services_68.StatusService;
            local RF_66 = StatusService_22.RF;
            local GetPlayerEquipmentInfo_22 = RF_66.GetPlayerEquipmentInfo;
            local InvokeServer_91 = GetPlayerEquipmentInfo_22.InvokeServer;
            local InvokeServer_92 = GetPlayerEquipmentInfo_22:InvokeServer();
        end)
        for i_285, v_285 in pairs(p1_0) do
            if not v_285 then return end -- won't run
        end
        local var764 = (p1_0 and i_285);
        if not var764 then return end -- won't run
        for i_286, v_286 in pairs(p1_0) do
            if not v_286 then return end -- won't run
        end
        local Not_I_286 = not i_286;
        local Success_205, Error_Message_205 = pcall(function(...)
            local Shared_132 = ReplicatedStorage.Shared;
            local Packages_101 = Shared_132.Packages;
            local Knit_101 = Packages_101.Knit;
            local Services_69 = Knit_101.Services;
            local DialogueService_25 = Services_69.DialogueService;
            local RF_67 = DialogueService_25.RF;
            local RunCommand_23 = RF_67.RunCommand;
            local InvokeServer_93 = RunCommand_23.InvokeServer;
            local SellConfirm_23 = RunCommand_23:InvokeServer("SellConfirm", {
                Basket = {
                    [i_286] = true,
                },
            });
            local Shared_133 = ReplicatedStorage.Shared;
            local Packages_102 = Shared_133.Packages;
            local Knit_102 = Packages_102.Knit;
            local Services_70 = Knit_102.Services;
            local StatusService_23 = Services_70.StatusService;
            local RF_68 = StatusService_23.RF;
            local GetPlayerEquipmentInfo_23 = RF_68.GetPlayerEquipmentInfo;
            local InvokeServer_94 = GetPlayerEquipmentInfo_23.InvokeServer;
            local InvokeServer_95 = GetPlayerEquipmentInfo_23:InvokeServer();
        end)
        for i_287, v_287 in pairs(p1_0) do
            if not v_287 then return end -- won't run
        end
        local var764 = (p1_0 and i_287);
        if not var764 then return end -- won't run
        for i_288, v_288 in pairs(p1_0) do
            if not v_288 then return end -- won't run
        end
        local Not_I_288 = not i_288;
        local Success_206, Error_Message_206 = pcall(function(...)
            local Shared_134 = ReplicatedStorage.Shared;
            local Packages_103 = Shared_134.Packages;
            local Knit_103 = Packages_103.Knit;
            local Services_71 = Knit_103.Services;
            local DialogueService_26 = Services_71.DialogueService;
            local RF_69 = DialogueService_26.RF;
            local RunCommand_24 = RF_69.RunCommand;
            local InvokeServer_96 = RunCommand_24.InvokeServer;
            local SellConfirm_24 = RunCommand_24:InvokeServer("SellConfirm", {
                Basket = {
                    [i_288] = true,
                },
            });
            local Shared_135 = ReplicatedStorage.Shared;
            local Packages_104 = Shared_135.Packages;
            local Knit_104 = Packages_104.Knit;
            local Services_72 = Knit_104.Services;
            local StatusService_24 = Services_72.StatusService;
            local RF_70 = StatusService_24.RF;
            local GetPlayerEquipmentInfo_24 = RF_70.GetPlayerEquipmentInfo;
            local InvokeServer_97 = GetPlayerEquipmentInfo_24.InvokeServer;
            local InvokeServer_98 = GetPlayerEquipmentInfo_24:InvokeServer();
        end)
        if not SellStatus then return end -- won't run
        local SetContent_22 = SellStatus.SetContent;
        local var765 = SellStatus:SetContent("Sold: ByRank, Mat, Pick, Weap - 09:06:07");
        local Waited_For_358 = task.wait(p1_0);
        for i_289, v_289 in pairs(p1_0) do
            if not v_289 then return end -- won't run
        end
        local var765 = (p1_0 and i_289);
        if not var765 then return end -- won't run
        for i_290, v_290 in pairs(p1_0) do
            if not v_290 then return end -- won't run
        end
        local Not_I_290 = not i_290;
        local Success_207, Error_Message_207 = pcall(function(...)
            local Shared_136 = ReplicatedStorage.Shared;
            local Packages_105 = Shared_136.Packages;
            local Knit_105 = Packages_105.Knit;
            error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")
        end)
        local var765 = (p1_0 and "ByRank");
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
    local CreateSection_14 = Tab_7.CreateSection;
    local UTILITY = Tab_7:CreateSection("UTILITY");
    local CreateButton_8 = Tab_7.CreateButton;
    local Button_8 = Tab_7:CreateButton({
        Callback = function()
            local Descendants_89 = workspace:GetDescendants();
            for i_291, v_291 in pairs(Descendants_89) do
                local IsA_40 = v_291.IsA;
                local BasePart_30 = v_291:IsA("BasePart");
                if not BasePart_30 then return end -- won't run
                local Name_199 = v_291.Name;
                local Lower_3 = Name_199.lower;
                local Lower_4 = Name_199:lower();
                local Material = v_291.Material;
                local Enum_Material = Enum.Material;
                local CrackedLava = Enum_Material.CrackedLava;
                local var767 = (Material == CrackedLava);
                local BrickColor = v_291.BrickColor;
                local BrickColor_New = BrickColor.new;
                local BrickColor_Value = BrickColor_New("Bright orange");
                local var768 = (BrickColor == BrickColor_Value);
                -- local _ = var768 and (unknown_value)
                local Find = Lower_4.find;
                local Lava = Lower_4:find("lava");
                -- local _ = Lava or (unknown_value)
                -- local _ = Lava or (unknown_value)
                if not Lava then return end -- won't run
                v_291.CanCollide = false;
                v_291.CanTouch = false;
                v_291.Transparency = 1;
            end
            local Notify_13 = Loaded_Var4.Notify;
            local Notify_14 = Loaded_Var4:Notify({
                Duration = 3,
                Title = "Remove Lava",
                Content = "Đã ẩn 1 lava parts",
            });

        end,
        Title = "Remove Lava (Map 2)",
        Description = "Xóa lava ở Volcanic Depths/Cave tránh mất HP khi farm",
    });
    local CreateToggle_23 = Tab_7.CreateToggle;
    local AutoRemoveLava = Tab_7:CreateToggle("AutoRemoveLava", {
        Callback = function(p1_0)
            if not p1_0 then return end -- won't run
            local Descendants_90 = workspace:GetDescendants();
            for i_292, v_292 in pairs(Descendants_90) do
                local IsA_41 = v_292.IsA;
                local BasePart_31 = v_292:IsA("BasePart");
                if not BasePart_31 then return end -- won't run
                local Name_200 = v_292.Name;
                local Lower_5 = Name_200.lower;
                local Lower_6 = Name_200:lower();
                local Material_2 = v_292.Material;
                local CrackedLava_2 = Enum_Material.CrackedLava;
                local var768 = (Material_2 == CrackedLava_2);
                local BrickColor_2 = v_292.BrickColor;
                local BrickColor_Value_2 = BrickColor_New("Bright orange");
                local var769 = (BrickColor_2 == BrickColor_Value_2);
                -- local _ = var769 and (unknown_value)
                local Find_2 = Lower_6.find;
                local Lava_2 = Lower_6:find("lava");
                -- local _ = Lava_2 or (unknown_value)
                -- local _ = Lava_2 or (unknown_value)
                if not Lava_2 then return end -- won't run
                v_292.CanCollide = false;
                v_292.CanTouch = false;
                v_292.Transparency = 1;
            end

        end,
        Default = true,
        Title = "Auto Remove Lava",
        Description = "Tự động ẩn lava khi load map (CrackedLava material)",
    });
    local Connection_8;
    Connection_8 = workspace.DescendantAdded:Connect(function(Descendant) -- args: Descendant_2;
        local IsA_42 = Descendant.IsA;
        local BasePart_32 = Descendant:IsA("BasePart");
        local var767 = (p1_0 and BasePart_32);
        if not var767 then return end -- won't run
        local Waited_For_359 = task.wait(0.1);
        local Name_201 = Descendant.Name;
        local Lower_7 = Name_201.lower;
        local Lower_8 = Name_201:lower();
        local Material_3 = Descendant.Material;
        local CrackedLava_3 = Enum_Material.CrackedLava;
        local var770 = (Material_3 == CrackedLava_3);
        local BrickColor_3 = Descendant.BrickColor;
        local BrickColor_Value_3 = BrickColor_New("Bright orange");
        local var771 = (BrickColor_3 == BrickColor_Value_3);
        -- local _ = var771 and (unknown_value)
        local Find_3 = Lower_8.find;
        local Lava_3 = Lower_8:find("lava");
        -- local _ = Lava_3 or (unknown_value)
        -- local _ = Lava_3 or (unknown_value)
        if not Lava_3 then return end -- won't run
        Descendant.CanCollide = false;
        Descendant.CanTouch = false;
        Descendant.Transparency = 1;

    end);
    local SetLibrary = _call8.SetLibrary;
    local SetLibrary_2 = _call8:SetLibrary(Loaded_Var4);
    local SetLibrary_3 = _call11.SetLibrary;
    local SetLibrary_4 = _call11:SetLibrary(Loaded_Var4);
    local IgnoreThemeSettings = _call8.IgnoreThemeSettings;
    local IgnoreThemeSettings_2 = _call8:IgnoreThemeSettings();
    local SetIgnoreIndexes = _call8.SetIgnoreIndexes;
    local SetIgnoreIndexes_2 = _call8:SetIgnoreIndexes({});
    local SetFolder = _call11.SetFolder;
    local VxezeHubTheForge = _call11:SetFolder("VxezeHub-TheForge");
    local SetFolder_2 = _call8.SetFolder;
    local VxezeHubTheForgeConfigs = _call8:SetFolder("VxezeHub-TheForge/Configs");
    local BuildInterfaceSection = _call11.BuildInterfaceSection;
    local BuildInterfaceSection_2 = _call11:BuildInterfaceSection(Tab_12);
    local BuildConfigSection = _call8.BuildConfigSection;
    local BuildConfigSection_2 = _call8:BuildConfigSection(Tab_12);
    local SelectTab = Window.SelectTab;
    local SelectTab_2 = Window:SelectTab(1);
    local G_TF = _G.__TF;
    _G.__TF = {};
    local G_TF_2 = _G.__TF;
    local G_TF_3 = _G.__TF;
    _G.AutoTalkNPC = function(p1_0)
        local var769 = typeof(p1_0);
        local var769_is_string = (var769 == "string");
        if not var769_is_string then return end -- won't run
        local var770 = typeof(p1_0);
        local var770_is_string = (var770 == "Instance");
        return false

    end;
    local G_TF_4 = _G.__TF;
    local G_TF_5 = _G.__TF;
    local G_TF_6 = _G.__TF;
    local G_TF_7 = _G.__TF;
    local Spawned_17 = task.spawn(function()
        local Waited_For_360 = task.wait(1);
        local G_TF_8 = _G.__TF;
        local Waited_For_361 = task.wait(1);
        local G_TF_9 = _G.__TF;
        local Waited_For_362 = task.wait(1);
        local G_TF_10 = _G.__TF;
        local Waited_For_363 = task.wait(1);
        local G_TF_11 = _G.__TF;
        local Waited_For_364 = task.wait(1);
        local G_TF_12 = _G.__TF;
        local Waited_For_365 = task.wait(1);
        local G_TF_13 = _G.__TF;
        local Waited_For_366 = task.wait(1);
        local G_TF_14 = _G.__TF;
        local Waited_For_367 = task.wait(1);
        local G_TF_15 = _G.__TF;
        local Waited_For_368 = task.wait(1);
        local G_TF_16 = _G.__TF;
        local Waited_For_369 = task.wait(1);
        local G_TF_17 = _G.__TF;
        local Waited_For_370 = task.wait(1);
        local G_TF_18 = _G.__TF;
        local Waited_For_371 = task.wait(1);
        local G_TF_19 = _G.__TF;
        local Waited_For_372 = task.wait(1);
        local G_TF_20 = _G.__TF;
        local Waited_For_373 = task.wait(1);
        local G_TF_21 = _G.__TF;
        local Waited_For_374 = task.wait(1);
        local G_TF_22 = _G.__TF;
        local Waited_For_375 = task.wait(1);
        local G_TF_23 = _G.__TF;
        local Waited_For_376 = task.wait(1);
        local G_TF_24 = _G.__TF;
        local Waited_For_377 = task.wait(1);
        local G_TF_25 = _G.__TF;
        local Waited_For_378 = task.wait(1);
        local G_TF_26 = _G.__TF;
        local Waited_For_379 = task.wait(1);
        local G_TF_27 = _G.__TF;
        local Waited_For_380 = task.wait(1);
        local G_TF_28 = _G.__TF;
        local Waited_For_381 = task.wait(1);
        local G_TF_29 = _G.__TF;
        local Waited_For_382 = task.wait(1);
        local G_TF_30 = _G.__TF;
        local Waited_For_383 = task.wait(1);
        local G_TF_31 = _G.__TF;
        local Waited_For_384 = task.wait(1);
        local G_TF_32 = _G.__TF;
        local Waited_For_385 = task.wait(1);
        local G_TF_33 = _G.__TF;
        local Waited_For_386 = task.wait(1);
        local G_TF_34 = _G.__TF;
        local Waited_For_387 = task.wait(1);
        local G_TF_35 = _G.__TF;
        local Waited_For_388 = task.wait(1);
        local G_TF_36 = _G.__TF;
        local Waited_For_389 = task.wait(1);
        local G_TF_37 = _G.__TF;
        local Waited_For_390 = task.wait(1);
        local G_TF_38 = _G.__TF;
        local Waited_For_391 = task.wait(1);
        local G_TF_39 = _G.__TF;
        local Waited_For_392 = task.wait(1);
        local G_TF_40 = _G.__TF;
        local Waited_For_393 = task.wait(1);
        local G_TF_41 = _G.__TF;
        local Waited_For_394 = task.wait(1);
        local G_TF_42 = _G.__TF;
        local Waited_For_395 = task.wait(1);
        local G_TF_43 = _G.__TF;
        local Waited_For_396 = task.wait(1);
        local G_TF_44 = _G.__TF;
        local Waited_For_397 = task.wait(1);
        local G_TF_45 = _G.__TF;
        local Waited_For_398 = task.wait(1);
        local G_TF_46 = _G.__TF;
        local Waited_For_399 = task.wait(1);
        local G_TF_47 = _G.__TF;
        local Waited_For_400 = task.wait(1);
        local G_TF_48 = _G.__TF;
        local Waited_For_401 = task.wait(1);
        local G_TF_49 = _G.__TF;
        local Waited_For_402 = task.wait(1);
        local G_TF_50 = _G.__TF;
        local Waited_For_403 = task.wait(1);
        local G_TF_51 = _G.__TF;
        local Waited_For_404 = task.wait(1);
        local G_TF_52 = _G.__TF;
        local Waited_For_405 = task.wait(1);
        local G_TF_53 = _G.__TF;
        local Waited_For_406 = task.wait(1);
        local G_TF_54 = _G.__TF;
        local Waited_For_407 = task.wait(1);
        local G_TF_55 = _G.__TF;
        local Waited_For_408 = task.wait(1);
        local G_TF_56 = _G.__TF;
        local Waited_For_409 = task.wait(1);
        local G_TF_57 = _G.__TF;
        local Waited_For_410 = task.wait(1);
        local G_TF_58 = _G.__TF;
        local Waited_For_411 = task.wait(1);
        local G_TF_59 = _G.__TF;
        local Waited_For_412 = task.wait(1);
        local G_TF_60 = _G.__TF;
        local Waited_For_413 = task.wait(1);
        local G_TF_61 = _G.__TF;
        local Waited_For_414 = task.wait(1);
        local G_TF_62 = _G.__TF;
        local Waited_For_415 = task.wait(1);
        local G_TF_63 = _G.__TF;
        local Waited_For_416 = task.wait(1);
        local G_TF_64 = _G.__TF;
        local Waited_For_417 = task.wait(1);
        local G_TF_65 = _G.__TF;
        local Waited_For_418 = task.wait(1);
        local G_TF_66 = _G.__TF;
        local Waited_For_419 = task.wait(1);
        local G_TF_67 = _G.__TF;
        local Waited_For_420 = task.wait(1);
        local G_TF_68 = _G.__TF;
        local Waited_For_421 = task.wait(1);
        local G_TF_69 = _G.__TF;
        local Waited_For_422 = task.wait(1);
        local G_TF_70 = _G.__TF;
        local Waited_For_423 = task.wait(1);
        local G_TF_71 = _G.__TF;
        local Waited_For_424 = task.wait(1);
        local G_TF_72 = _G.__TF;
        local Waited_For_425 = task.wait(1);
        local G_TF_73 = _G.__TF;
        local Waited_For_426 = task.wait(1);
        local G_TF_74 = _G.__TF;
        local Waited_For_427 = task.wait(1);
        local G_TF_75 = _G.__TF;
        local Waited_For_428 = task.wait(1);
        local G_TF_76 = _G.__TF;
        local Waited_For_429 = task.wait(1);
        local G_TF_77 = _G.__TF;
        local Waited_For_430 = task.wait(1);
        local G_TF_78 = _G.__TF;
        local Waited_For_431 = task.wait(1);
        local G_TF_79 = _G.__TF;
        local Waited_For_432 = task.wait(1);
        local G_TF_80 = _G.__TF;
        local Waited_For_433 = task.wait(1);
        local G_TF_81 = _G.__TF;
        local Waited_For_434 = task.wait(1);
        local G_TF_82 = _G.__TF;
        local Waited_For_435 = task.wait(1);
        local G_TF_83 = _G.__TF;
        local Waited_For_436 = task.wait(1);
        local G_TF_84 = _G.__TF;
        local Waited_For_437 = task.wait(1);
        local G_TF_85 = _G.__TF;
        local Waited_For_438 = task.wait(1);
        local G_TF_86 = _G.__TF;
        local Waited_For_439 = task.wait(1);
        local G_TF_87 = _G.__TF;
        local Waited_For_440 = task.wait(1);
        local G_TF_88 = _G.__TF;
        local Waited_For_441 = task.wait(1);
        local G_TF_89 = _G.__TF;
        local Waited_For_442 = task.wait(1);
        local G_TF_90 = _G.__TF;
        local Waited_For_443 = task.wait(1);
        local G_TF_91 = _G.__TF;
        local Waited_For_444 = task.wait(1);
        local G_TF_92 = _G.__TF;
        local Waited_For_445 = task.wait(1);
        local G_TF_93 = _G.__TF;
        local Waited_For_446 = task.wait(1);
        local G_TF_94 = _G.__TF;
        local Waited_For_447 = task.wait(1);
        local G_TF_95 = _G.__TF;
        local Waited_For_448 = task.wait(1);
        local G_TF_96 = _G.__TF;
        local Waited_For_449 = task.wait(1);
        local G_TF_97 = _G.__TF;
        local Waited_For_450 = task.wait(1);
        local G_TF_98 = _G.__TF;
        local Waited_For_451 = task.wait(1);
        local G_TF_99 = _G.__TF;
        local Waited_For_452 = task.wait(1);
        local G_TF_100 = _G.__TF;
        local Waited_For_453 = task.wait(1);
        local G_TF_101 = _G.__TF;
        local Waited_For_454 = task.wait(1);
        local G_TF_102 = _G.__TF;
        local Waited_For_455 = task.wait(1);
        local G_TF_103 = _G.__TF;
        local Waited_For_456 = task.wait(1);
        local G_TF_104 = _G.__TF;
        local Waited_For_457 = task.wait(1);
        local G_TF_105 = _G.__TF;
        local Waited_For_458 = task.wait(1);
        local G_TF_106 = _G.__TF;
        local Waited_For_459 = task.wait(1);
        local G_TF_107 = _G.__TF;
        local Waited_For_460 = task.wait(1);
        local G_TF_108 = _G.__TF;
        local Waited_For_461 = task.wait(1);
        local G_TF_109 = _G.__TF;
        local Waited_For_462 = task.wait(1);
        local G_TF_110 = _G.__TF;
        local Waited_For_463 = task.wait(1);
        local G_TF_111 = _G.__TF;
        local Waited_For_464 = task.wait(1);
        local G_TF_112 = _G.__TF;
        local Waited_For_465 = task.wait(1);
        local G_TF_113 = _G.__TF;
        local Waited_For_466 = task.wait(1);
        local G_TF_114 = _G.__TF;
        local Waited_For_467 = task.wait(1);
        local G_TF_115 = _G.__TF;
        local Waited_For_468 = task.wait(1);
        local G_TF_116 = _G.__TF;
        local Waited_For_469 = task.wait(1);
        local G_TF_117 = _G.__TF;
        local Waited_For_470 = task.wait(1);
        local G_TF_118 = _G.__TF;
        local Waited_For_471 = task.wait(1);
        local G_TF_119 = _G.__TF;
        local Waited_For_472 = task.wait(1);
        local G_TF_120 = _G.__TF;
        local Waited_For_473 = task.wait(1);
        local G_TF_121 = _G.__TF;
        local Waited_For_474 = task.wait(1);
        local G_TF_122 = _G.__TF;
        local Waited_For_475 = task.wait(1);
        local G_TF_123 = _G.__TF;
        local Waited_For_476 = task.wait(1);
        local G_TF_124 = _G.__TF;
        local Waited_For_477 = task.wait(1);
        local G_TF_125 = _G.__TF;
        local Waited_For_478 = task.wait(1);
        local G_TF_126 = _G.__TF;
        local Waited_For_479 = task.wait(1);
        local G_TF_127 = _G.__TF;
        local Waited_For_480 = task.wait(1);
        local G_TF_128 = _G.__TF;
        local Waited_For_481 = task.wait(1);
        local G_TF_129 = _G.__TF;
        local Waited_For_482 = task.wait(1);
        local G_TF_130 = _G.__TF;
        local Waited_For_483 = task.wait(1);
        local G_TF_131 = _G.__TF;
        local Waited_For_484 = task.wait(1);
        local G_TF_132 = _G.__TF;
        local Waited_For_485 = task.wait(1);
        local G_TF_133 = _G.__TF;
        local Waited_For_486 = task.wait(1);
        local G_TF_134 = _G.__TF;
        local Waited_For_487 = task.wait(1);
        local G_TF_135 = _G.__TF;
        local Waited_For_488 = task.wait(1);
        local G_TF_136 = _G.__TF;
        local Waited_For_489 = task.wait(1);
        local G_TF_137 = _G.__TF;
        local Waited_For_490 = task.wait(1);
        local G_TF_138 = _G.__TF;
        local Waited_For_491 = task.wait(1);
        local G_TF_139 = _G.__TF;
        local Waited_For_492 = task.wait(1);
        local G_TF_140 = _G.__TF;
        local Waited_For_493 = task.wait(1);
        local G_TF_141 = _G.__TF;
        local Waited_For_494 = task.wait(1);
        local G_TF_142 = _G.__TF;
        local Waited_For_495 = task.wait(1);
        local G_TF_143 = _G.__TF;
        local Waited_For_496 = task.wait(1);
        local G_TF_144 = _G.__TF;
        local Waited_For_497 = task.wait(1);
        local G_TF_145 = _G.__TF;
        local Waited_For_498 = task.wait(1);
        local G_TF_146 = _G.__TF;
        local Waited_For_499 = task.wait(1);
        local G_TF_147 = _G.__TF;
        local Waited_For_500 = task.wait(1);
        local G_TF_148 = _G.__TF;
        local Waited_For_501 = task.wait(1);
        local G_TF_149 = _G.__TF;
        local Waited_For_502 = task.wait(1);
        local G_TF_150 = _G.__TF;
        local Waited_For_503 = task.wait(1);
        local G_TF_151 = _G.__TF;
        local Waited_For_504 = task.wait(1);
        local G_TF_152 = _G.__TF;
        local Waited_For_505 = task.wait(1);
        local G_TF_153 = _G.__TF;
        local Waited_For_506 = task.wait(1);
        local G_TF_154 = _G.__TF;
        local Waited_For_507 = task.wait(1);
        local G_TF_155 = _G.__TF;
        local Waited_For_508 = task.wait(1);
        local G_TF_156 = _G.__TF;
        local Waited_For_509 = task.wait(1);
        local G_TF_157 = _G.__TF;
        local Waited_For_510 = task.wait(1);
        local G_TF_158 = _G.__TF;
        local Waited_For_511 = task.wait(1);
        local G_TF_159 = _G.__TF;
        local Waited_For_512 = task.wait(1);
        local G_TF_160 = _G.__TF;
        local Waited_For_513 = task.wait(1);
        local G_TF_161 = _G.__TF;
        local Waited_For_514 = task.wait(1);
        local G_TF_162 = _G.__TF;
        local Waited_For_515 = task.wait(1);
        local G_TF_163 = _G.__TF;
        local Waited_For_516 = task.wait(1);
        local G_TF_164 = _G.__TF;
        local Waited_For_517 = task.wait(1);
        local G_TF_165 = _G.__TF;
        local Waited_For_518 = task.wait(1);
        local G_TF_166 = _G.__TF;
        local Waited_For_519 = task.wait(1);
        local G_TF_167 = _G.__TF;
        local Waited_For_520 = task.wait(1);
        local G_TF_168 = _G.__TF;
        local Waited_For_521 = task.wait(1);
        local G_TF_169 = _G.__TF;
        local Waited_For_522 = task.wait(1);
        local G_TF_170 = _G.__TF;
        local Waited_For_523 = task.wait(1);
        local G_TF_171 = _G.__TF;
        local Waited_For_524 = task.wait(1);
        local G_TF_172 = _G.__TF;
        local Waited_For_525 = task.wait(1);
        local G_TF_173 = _G.__TF;
        local Waited_For_526 = task.wait(1);
        local G_TF_174 = _G.__TF;
        local Waited_For_527 = task.wait(1);
        local G_TF_175 = _G.__TF;
        local Waited_For_528 = task.wait(1);
        local G_TF_176 = _G.__TF;
        local Waited_For_529 = task.wait(1);
        local G_TF_177 = _G.__TF;
        local Waited_For_530 = task.wait(1);
        local G_TF_178 = _G.__TF;
        local Waited_For_531 = task.wait(1);
        local G_TF_179 = _G.__TF;
        local Waited_For_532 = task.wait(1);
        local G_TF_180 = _G.__TF;
        local Waited_For_533 = task.wait(1);
        local G_TF_181 = _G.__TF;
        local Waited_For_534 = task.wait(1);
        local G_TF_182 = _G.__TF;
        local Waited_For_535 = task.wait(1);
        local G_TF_183 = _G.__TF;
        local Waited_For_536 = task.wait(1);
        local G_TF_184 = _G.__TF;
        local Waited_For_537 = task.wait(1);
        local G_TF_185 = _G.__TF;
        local Waited_For_538 = task.wait(1);
        local G_TF_186 = _G.__TF;
        local Waited_For_539 = task.wait(1);
        local G_TF_187 = _G.__TF;
        local Waited_For_540 = task.wait(1);
        local G_TF_188 = _G.__TF;
        local Waited_For_541 = task.wait(1);
        local G_TF_189 = _G.__TF;
        local Waited_For_542 = task.wait(1);
        local G_TF_190 = _G.__TF;
        local Waited_For_543 = task.wait(1);
        local G_TF_191 = _G.__TF;
        local Waited_For_544 = task.wait(1);
        local G_TF_192 = _G.__TF;
        local Waited_For_545 = task.wait(1);
        local G_TF_193 = _G.__TF;
        local Waited_For_546 = task.wait(1);
        local G_TF_194 = _G.__TF;
        local Waited_For_547 = task.wait(1);
        local G_TF_195 = _G.__TF;
        local Waited_For_548 = task.wait(1);
        local G_TF_196 = _G.__TF;
        local Waited_For_549 = task.wait(1);
        local G_TF_197 = _G.__TF;
        local Waited_For_550 = task.wait(1);
        local G_TF_198 = _G.__TF;
        local Waited_For_551 = task.wait(1);
        local G_TF_199 = _G.__TF;
        local Waited_For_552 = task.wait(1);
        local G_TF_200 = _G.__TF;
        local Waited_For_553 = task.wait(1);
        local G_TF_201 = _G.__TF;
        local Waited_For_554 = task.wait(1);
        local G_TF_202 = _G.__TF;
        local Waited_For_555 = task.wait(1);
        local G_TF_203 = _G.__TF;
        local Waited_For_556 = task.wait(1);
        local G_TF_204 = _G.__TF;
        local Waited_For_557 = task.wait(1);
        local G_TF_205 = _G.__TF;
        local Waited_For_558 = task.wait(1);
        local G_TF_206 = _G.__TF;
        local Waited_For_559 = task.wait(1);
        local G_TF_207 = _G.__TF;
        local Waited_For_560 = task.wait(1);
        local G_TF_208 = _G.__TF;
        local Waited_For_561 = task.wait(1);
        local G_TF_209 = _G.__TF;
        local Waited_For_562 = task.wait(1);
        local G_TF_210 = _G.__TF;
        local Waited_For_563 = task.wait(1);
        local G_TF_211 = _G.__TF;
        local Waited_For_564 = task.wait(1);
        local G_TF_212 = _G.__TF;
        local Waited_For_565 = task.wait(1);
        local G_TF_213 = _G.__TF;
        local Waited_For_566 = task.wait(1);
        local G_TF_214 = _G.__TF;
        local Waited_For_567 = task.wait(1);
        local G_TF_215 = _G.__TF;
        local Waited_For_568 = task.wait(1);
        local G_TF_216 = _G.__TF;
        local Waited_For_569 = task.wait(1);
        local G_TF_217 = _G.__TF;
        local Waited_For_570 = task.wait(1);
        local G_TF_218 = _G.__TF;
        local Waited_For_571 = task.wait(1);
        local G_TF_219 = _G.__TF;
        local Waited_For_572 = task.wait(1);
        local G_TF_220 = _G.__TF;
        local Waited_For_573 = task.wait(1);
        local G_TF_221 = _G.__TF;
        local Waited_For_574 = task.wait(1);
        local G_TF_222 = _G.__TF;
        local Waited_For_575 = task.wait(1);
        local G_TF_223 = _G.__TF;
        local Waited_For_576 = task.wait(1);
        local G_TF_224 = _G.__TF;
        local Waited_For_577 = task.wait(1);
        local G_TF_225 = _G.__TF;
        local Waited_For_578 = task.wait(1);
        local G_TF_226 = _G.__TF;
        local Waited_For_579 = task.wait(1);
        local G_TF_227 = _G.__TF;
        local Waited_For_580 = task.wait(1);
        local G_TF_228 = _G.__TF;
        local Waited_For_581 = task.wait(1);
        local G_TF_229 = _G.__TF;
        local Waited_For_582 = task.wait(1);
        local G_TF_230 = _G.__TF;
        local Waited_For_583 = task.wait(1);
        local G_TF_231 = _G.__TF;
        local Waited_For_584 = task.wait(1);
        local G_TF_232 = _G.__TF;
        local Waited_For_585 = task.wait(1);
        local G_TF_233 = _G.__TF;
        local Waited_For_586 = task.wait(1);
        local G_TF_234 = _G.__TF;
        local Waited_For_587 = task.wait(1);
        local G_TF_235 = _G.__TF;
        local Waited_For_588 = task.wait(1);
        local G_TF_236 = _G.__TF;
        local Waited_For_589 = task.wait(1);
        local G_TF_237 = _G.__TF;
        local Waited_For_590 = task.wait(1);
        local G_TF_238 = _G.__TF;
        local Waited_For_591 = task.wait(1);
        local G_TF_239 = _G.__TF;
        local Waited_For_592 = task.wait(1);
        local G_TF_240 = _G.__TF;
        local Waited_For_593 = task.wait(1);
        local G_TF_241 = _G.__TF;
        local Waited_For_594 = task.wait(1);
        local G_TF_242 = _G.__TF;
        local Waited_For_595 = task.wait(1);
        local G_TF_243 = _G.__TF;
        local Waited_For_596 = task.wait(1);
        local G_TF_244 = _G.__TF;
        local Waited_For_597 = task.wait(1);
        local G_TF_245 = _G.__TF;
        local Waited_For_598 = task.wait(1);
        local G_TF_246 = _G.__TF;
        local Waited_For_599 = task.wait(1);
        local G_TF_247 = _G.__TF;
        local Waited_For_600 = task.wait(1);
        local G_TF_248 = _G.__TF;
        local Waited_For_601 = task.wait(1);
        local G_TF_249 = _G.__TF;
        local Waited_For_602 = task.wait(1);
        local G_TF_250 = _G.__TF;
        local Waited_For_603 = task.wait(1);
        local G_TF_251 = _G.__TF;
        local Waited_For_604 = task.wait(1);
        local G_TF_252 = _G.__TF;
        local Waited_For_605 = task.wait(1);
        local G_TF_253 = _G.__TF;
        local Waited_For_606 = task.wait(1);
        local G_TF_254 = _G.__TF;
        local Waited_For_607 = task.wait(1);
        local G_TF_255 = _G.__TF;
        local Waited_For_608 = task.wait(1);
        local G_TF_256 = _G.__TF;
        local Waited_For_609 = task.wait(1);
        error("C:\\Users\\Administrator\\Downloads\\YetAnotherBot\\unveilr\\main:659: too many operations")

    end);
end)

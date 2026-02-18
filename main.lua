-- [[ Hamoudi Hub | حمودي هوب - النسخة الكاملة ]]

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hamoudi Hub | حمودي هوب", "DarkTheme")

-- [1] قسم التلفيل
local Tab1 = Window:NewTab("Main Farm")
local Sec1 = Tab1:NewSection("Auto Farm Level")
Sec1:NewDropdown("Weapon", "اختار سلاحك", {"Melee", "Sword", "Fruit"}, function(v) _G.SelectWeapon = v end)
Sec1:NewToggle("Auto Farm", "تلفيل تلقائي", function(s) _G.AutoFarm = s end)
Sec1:NewToggle("Fast Attack", "ضرب سريع", function(s) _G.FastAttack = s end)

-- [2] قسم البوصات
local Tab2 = Window:NewTab("Bosses")
local Sec2 = Tab2:NewSection("Boss & Katakuri")
Sec2:NewToggle("Auto 500 NPCs", "تجهيز كاتاكوري", function(s) _G.AutoKat = s end)
Sec2:NewToggle("Kill Bosses", "قتل البوصات", function(s) _G.KillBoss = s end)

-- [3] قسم البحر
local Tab3 = Window:NewTab("Sea Events")
local Sec3 = Tab3:NewSection("Sea Beasts")
Sec3:NewToggle("Auto Sea Beast", "وحش البحر", function(s) _G.SeaBeast = s end)

-- [4] قسم الفواكه
local Tab4 = Window:NewTab("Fruits")
local Sec4 = Tab4:NewSection("Fruit Sniper")
Sec4:NewToggle("Fruit ESP", "كشف الفواكه", function(s) _G.FESP = s end)
Sec4:NewButton("Bring Fruits", "جلب الفواكه", function() --[[كود الجلب]] end)

-- [5] قسم الأسلحة
local Tab5 = Window:NewTab("Items")
local Sec5 = Tab5:NewSection("Shop & Mastery")
Sec5:NewButton("Buy Superhuman", "شراء سوبر هيومان", function() --[[ريموت الشراء]] end)

-- [6] قسم الصناديق
local Tab6 = Window:NewTab("Chests")
local Sec6 = Tab6:NewSection("Money Farm")
Sec6:NewToggle("Auto Chest", "تجميع فلوس", function(s) _G.Chest = s end)

-- [7] قسم الإعدادات
local Tab7 = Window:NewTab("Settings")
local Sec7 = Tab7:NewSection("Misc")
Sec7:NewSlider("WalkSpeed", "السرعة", 500, 16, function(s) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s end)
Sec7:NewButton("Server Hop", "تغيير سيرفر", function() --[[كود السيرفر]] end)

-- [إضافة الدكمة العائمة للتصغير]
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Btn = Instance.new("TextButton", ScreenGui)
Btn.Size = UDim2.new(0, 50, 0, 50)
Btn.Position = UDim2.new(0, 20, 0, 20)
Btn.Text = "H"
Btn.Draggable = true
Btn.MouseButton1Click:Connect(function()
    game:GetService("CoreGui")["Hamoudi Hub | حمودي هوب"].Enabled = not game:GetService("CoreGui")["Hamoudi Hub | حمودي هوب"].Enabled
end)

-- كود الحماية من الطرد (Anti-AFK)
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

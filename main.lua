local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Hamoudi Hub | حمودي هوب (No Key)",
    SubTitle = "Special Redz Version",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.End
})

-- الأقسام نفس ترتيب الصور بالضبط
local Tabs = {
    Farm = Window:AddTab({ Title = "Farming", Icon = "home" }),
    Fishing = Window:AddTab({ Title = "Fishing", Icon = "fish" }),
    Quest = Window:AddTab({ Title = "Quest/Items", Icon = "sword" }),
    Fruit = Window:AddTab({ Title = "Fruit/Raid", Icon = "cherry" }),
    Stats = Window:AddTab({ Title = "Stats", Icon = "bar-chart" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    Misc = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

-- [1] Farming (مثل الصورة الأولى والثانية)
Tabs.Farm:AddDropdown("Weapon", { Title = "Select Tool", Values = {"Melee", "Sword", "Fruit", "Gun"}, Default = "Melee", Callback = function(v) _G.SelectWeapon = v end })
Tabs.Farm:AddToggle("AutoFarm", { Title = "Auto Farm Level", Default = false, Callback = function(v) _G.AutoFarm = v end })
Tabs.Farm:AddToggle("AutoNearest", { Title = "Auto Farm Nearest", Default = false, Callback = function(v) _G.Nearest = v end })
Tabs.Farm:AddSection("Collect")
Tabs.Farm:AddToggle("AutoChest", { Title = "Auto Chest [ Tween ]", Default = false, Callback = function(v) _G.Chest = v end })
Tabs.Farm:AddToggle("AutoBerry", { Title = "Auto Collect Berries", Default = false, Callback = function(v) _G.Berry = v end })

-- [2] Fishing (مثل الصورة الرابعة والسادسة)
Tabs.Fishing:AddToggle("AutoFish", { Title = "Auto Fish", Default = false, Callback = function(v) _G.AutoFish = v end })
Tabs.Fishing:AddSlider("MaxBaits", { Title = "Max Baits", Min = 0, Max = 100, Default = 90, Callback = function(v) _G.Baits = v end })
Tabs.Fishing:AddToggle("BuyBait", { Title = "Auto Buy Baits", Default = false, Callback = function(v) _G.BuyBait = v end })

-- [3] Quest & Bosses (مثل الصورة الثالثة والسابعة)
Tabs.Quest:AddDropdown("BossList", { Title = "Boss List", Values = {"The Gorilla King", "Bobby", "Yeti", "Katakuri"}, Default = "Bobby", Callback = function(v) _G.SelectedBoss = v end })
Tabs.Quest:AddToggle("KillBoss", { Title = "Auto Kill Boss Selected", Default = false, Callback = function(v) _G.KillBoss = v end })
Tabs.Quest:AddToggle("AllBosses", { Title = "Auto Farm All Bosses", Default = false, Callback = function(v) _G.AllBoss = v end })
Tabs.Quest:AddToggle("TakeQuest", { Title = "Take Boss Quest", Default = false, Callback = function(v) _G.Quest = v end })

-- [4] Fruits (مثل الصورة الخامسة)
Tabs.Fruit:AddToggle("StoreFruit", { Title = "Auto Store Fruits", Default = false, Callback = function(v) _G.Store = v end })
Tabs.Fruit:AddToggle("TpFruit", { Title = "Teleport To Fruits", Default = false, Callback = function(v) _G.TpFruit = v end })
Tabs.Fruit:AddSection("Gacha")
Tabs.Fruit:AddToggle("AutoGacha", { Title = "Auto Random Fruit", Default = false, Callback = function(v) _G.Gacha = v end })

-- [5] Stats
Tabs.Stats:AddToggle("AutoStat", { Title = "Auto Add Stats", Default = false, Callback = function(v) _G.UpStat = v end })

-- [6] Settings
Tabs.Misc:AddSlider("WalkSpeed", { Title = "Walk Speed", Min = 16, Max = 500, Default = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end })
Tabs.Misc:AddButton({ Title = "Server Hop", Callback = function() --[[كود السيرفر]] end })

Window:SelectTab(1)
Fluent:Notify({ Title = "Hamoudi Hub", Content = "شغال وبدون مفتاح! استمتع ضلعي", Duration = 5 })

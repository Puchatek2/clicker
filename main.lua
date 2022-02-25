    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Puchatek Script", "DarkTheme")
    
    local Credits = Window:NewTab("Credits")
    local CreditsSection = Credits:NewSection("Authors")
    
    CreditsSection:NewButton("Puchatek#5660", "ButtonInfo", function(v)
        print("Clicked")
    end)

    local AutoClicker = Window:NewTab("AutoFarm")
    local AutoClickerSection = AutoClicker:NewSection("WorldBoost")
    AutoClickerSection:NewToggle("WorldBoost", "WorldBoost", function(state)
        if state then
                local args = {
                    [1] = "Cyber"
                }
                
                game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
            end
        end)
    local AutoClickerSection = AutoClicker:NewSection("Rebirth")
    AutoClickerSection:NewToggle("Rebirth", "Rebirth", function(state)
            if state then
            getgenv().Start = true

while wait(0) and getgenv().Start do
local args = {
    [1] = 16
}

game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
end
            else
                getgenv().Start = true

                while wait(0) and getgenv().Start do
                local args = {
                    [1] = 16
                }
                
                game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
                end
            end
        end)

    local AutoClickerSection = AutoClicker:NewSection("AutoClicker")
    AutoClickerSection:NewToggle("AutoFarm", "To open an egg click on the open egg", function(state)
            if state then
                getgenv().Start = true

while wait(0) and getgenv().Start do
game:GetService("ReplicatedStorage").Events.Click3:FireServer()
end
            else
                getgenv().Start = false

while wait(0) and getgenv().Start do
game:GetService("ReplicatedStorage").Events.Click3:FireServer()
end

        end
    end)

    local Main = Window:NewTab("🥚 Eggs")
    local MainSection = Main:NewSection("Eggs")
    MainSection:NewToggle("Open Egg", "To open an egg click on the open egg", function(state)
        if state then
            _G.autohatch1 = true
while _G.autohatch1 == false do
local args = {
    [1] = "Atlantis",
    [2] = "Single"
}

game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(unpack(args))


workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
wait()
end

    else
        _G.autohatch1 = false
        while _G.autohatch1 == true do
            local args = {
            [1] = {
                [1] = "Hacker Egg",
                [2] = true
            }
        }
        
        workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
        wait()
        end
    end
end)
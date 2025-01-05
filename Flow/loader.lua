local StarterGui = cloneref(game:GetService("StarterGui"))

StarterGui:SetCore("SendNotification", {
    Title = "We've moved!",
    Text = "Please execute the script copied to your clipboard to continue.",
    Duration = 10
})

setclipboard([[loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/Pulse/loader.lua", true))()]])


repeat wait() until game:IsLoaded()

local Services = setmetatable({}, {
    __index = function(_, serviceName)
        return cloneref(game:GetService(serviceName))
    end
})

local starterGui = Services.StarterGui

setclipboard([[loadstring(game:HttpGet("https://github.com/Synergy-Networks/products/raw/main/Rift/loader.lua"))()]])

starterGui:SetCore("SendNotification", {
    Title = "Read me",
    Text = "Pulse has been moved to a new loadstring. Execute the loadstring pasted on your clipboard.",
    Duration = 5
})

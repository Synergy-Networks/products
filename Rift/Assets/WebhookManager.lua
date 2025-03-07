--[[

// -- Webhook Documentation -- \\

local Webhook = loadstring(game:HttpGet('https://raw.githubusercontent.com/zuvbruuv/Therion/refs/heads/main/Libraries/Webhook.lua'))()
local webhook = Webhook.new(url, username, avatar_url) 

-- url <string> : The webhook URL
-- username <string?> : (Optional) Username for your webhook, set to nil if not used
-- avatar_url <string?> : (Optional) Avatar for your webhook, set to nil if not used

// -- Send Message -- \\

local message_id = webhook:Send(content, embed)

-- content <string?> : (Optional) The message content, set to nil if not used
-- embed <table?> : (Optional) A table containing embed data, set to nil if not used

// -- Edit Message -- \\

webhook:Edit(message_id, content, embed)

-- message_id <string> : The ID of the message to edit
-- content <string?> : (Optional) The new message content, set to nil if not changing
-- embed <table?> : (Optional) A table containing embed data, set to nil if not changing

// -- Delete Message -- \\

webhook:Delete(message_id)

]]

local HttpService = game:GetService("HttpService")

local Webhook = {}
Webhook.__index = Webhook

function Webhook.new(Url, Username, Avatar)
    local self = setmetatable({}, Webhook)
    self.Url = Url:match("(.+)%?") or Url
    self.Id, self.Token = self.Url:match("webhooks/(%d+)/([%w-_]+)")
    self.Username = Username
    self.Avatar = Avatar
    
    return self
end

local function Request(Url, Method, Body)
    local http = request or http_request

    return http({
        Url = Url,
        Method = Method,
        Headers = { ["Content-Type"] = "application/json" },
        Body = Body and HttpService:JSONEncode(Body) or nil
    })
end

function Webhook:Send(Content, Embed)
    local Res = Request(self.Url .. "?wait=true", "POST", {
        username = self.Username,
        avatar_url = self.Avatar,
        content = Content,
        embeds = Embed and {Embed} or nil
    })
    
    if Res and Res.Success then
        local Data = HttpService:JSONDecode(Res.Body)
        return Data.id
    end
    
    warn("Failed to Send Message")
    return nil
end

function Webhook:Edit(MessageId, Content, Embed)
    local Res = Request(self.Url .. "/messages/" .. MessageId, "PATCH", {
        username = self.Username,
        avatar_url = self.Avatar,
        content = Content,
        embeds = Embed and {Embed} or nil
    })
    
    if Res and Res.Success then
        return true
    end
    
    warn("Failed to Edit Message")
    return false
end

function Webhook:Delete(MessageId)
    local Res = Request(self.Url .. "/messages/" .. MessageId, "DELETE")
    
    if Res and Res.Success then
        return true
    end
    
    warn("Failed to Delete Message")
    return false
end

return Webhook

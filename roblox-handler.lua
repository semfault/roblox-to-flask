local httpserv = game:GetService("HttpService")
local networksettings = {
    url = "127.0.0.1",
    port = "8080"
  }
local baseurl = "https://"..networksettings[url]..":"..networksettings[port].."/"

httpserv:GetAsync(baseurl.."/get")

local httpserv = game:GetService("HttpService")
local networksettings = {
	["ip"] = "127.0.0.1",
	["port"] = "8080"
}
local baseurl = "https://"..networksettings["ip"]..":"..networksettings["port"]

httpserv:PostAsync(baseurl.."/post", "test 123", Enum.HttpContentType.ApplicationUrlEncoded, false)
httpserv:GetAsync(baseurl.."/get", false)

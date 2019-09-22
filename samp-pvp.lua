local sampev = require 'lib.samp.events'
function main()
  if not isSampfuncsLoaded() or not isSampLoaded() then return end
  while not isSampAvailable() do wait(100) end
  wait(-1)
end
function sampev.onShowTextDraw(id, data)
  if id == 0 then
    i = require 'inspect'
    data["text"] = "~b~~h~Samp-Pvp.Ru"
    data["position"]["x"] = data["position"]["x"] 
		data["position"]["y"] = data["position"]["y"] 
    return {id, data}
  end
end

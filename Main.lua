repeat wait()
if game:GetService("Players").LocalPlayer.Character.Humanoid.Health < 100 then
                        local Client = {}
                
                
                        for i,v in pairs(debug.getregistry()) do
                            if typeof(v) == "function" then
                                for i2,v2 in pairs(debug.getupvalues(v)) do
                                    if typeof(v2) == "table" and v2.FireServer then
                                        Client.FireServerT = v2
                                    end
                                end
                            end    
                        end    
                        
                        local Arguments = {
                        [1] = "fc642693",
                        [2] = "Donut"
                        }
                        
                        Client.FireServerT:FireServer(unpack(Arguments))
                        
                        
                        local Arguments = {
                        [1] = "b64b530e"
                        }
                        Client.FireServerT:FireServer(unpack(Arguments))
                    end
                until gae

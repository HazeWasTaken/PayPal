getconstants = debug.getconstants or getconstants
bread = {}
for i, v in pairs(getgc(true)) do
  if type(v) == "table" then
    for i2, v2 in pairs(v) do
      if type(v2) == "string" and v2:sub(1, 1) == "!" and v2:len() > 10 then
        bread.AllHashes = v
      end
    end
    if rawget(v, "FireServer") then
      bread.Remote = v
    end            
  end
end

local teama = (function()
        for i, v in pairs(getgc()) do
            if type(v) == "function" and getfenv(v).script == game:GetService("ReplicatedStorage").Game.TeamChooseUI then
                local con = getconstants(v)
                if table.find(con, "delay") and table.find(con, "assert") then
                    local aaabaea = getproto(v, 6)
                    return getconstants(aaabaea)
                end
            end
        end
    end)()

    bread.TeamChangee =
        (function()
    
        local tbon = {}
        for i, v in pairs(teama) do
            if
                type(v) == "string" and v ~= "Police" and v ~= "Prisoner" and v ~= "sub" and v ~= "reverse" and
                    v ~= "assert" and
                    v ~= "FireServer"
             then
                table.insert(tbon, v)
            end
        end
        local taa = tbon[1]
        local tbb = tbon[table.maxn(tbon)]
        for i, v in pairs(bread.AllHashes) do
            if string.find(i, taa) and string.find(i, tbb) then
                return i
            end
        end
    end)()
    
     getgenv().teamhesh = bread.TeamChangee
     
     bread.Remote:FireServer(getgenv().teamhesh, "Police")

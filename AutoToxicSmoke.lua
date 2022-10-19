local choosePlayer = false --set true if you want to insult one person only
local chosenPlayer = "" --if chosePlayer = true, type playername in quotes



local Taunts = { 

  "Imagine Not Being Able To Exploit",

  "SmokeX Client on top",

  "SmokeX Client on top",

  "Get Lost Loser",

  "The dog is better than you",

"Better fork in the table",

"Noob sheets",

"How are you so good at the game lol",

"Use SmokeX Client -- smokex.site.xyz --",

"Roblox bedwars never improved their anti cheat :skull:",

  
}

local Remote = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local function Insult()
   local players = game.Players:GetChildren()
   local howManyPlayers = #players
   
   local ran = math.random(1,howManyPlayers)
   local chosenOne = players[ran]
   local chance = math.random(1,20)
   
   if choosePlayer == true then
       Remote:FireServer(chosenPlayer.." " ..Taunts[math.random(1,#Taunts)],"All")
   elseif chance <= 5 then
       Remote:FireServer(chosenOne.Name.." " ..Taunts[math.random(1,#Taunts)],"All")
   else
       Remote:FireServer(Taunts[math.random(1,#Taunts)],"All")
   end
end
   
local randTime = math.random(5,15)

while true and wait(randTime) do
   Insult()
end

while true do
wait(6)
task.spawn(function()
function func1()
return math.random(-30,30)
end
function func2()
return math.random(1,100)
end
function func3(var1)
game.TextChatService.TextChannels.RBXGeneral:SendAsync(tostring(var1))
end
var1=game.Players.LocalPlayer
var2=var1.Character or var1.CharacterAdded:Wait()
var3=var2:WaitForChild("HumanoidRootPart")
var4=var2:WaitForChild("Humanoid")
var5=var1.Backpack
function func4(var6)
var7=Vector3.new(var6.X,var6.Y+3,var6.Z)
var8=Vector3.new(0,-10,0)
var9=RaycastParams.new()
var9.FilterDescendantsInstances={var2}
var9.FilterType=Enum.RaycastFilterType.Blacklist
var10=workspace:Raycast(var7,var8,var9)
return var10 and var10.Position.Y<var6.Y
end
while true do
var11,var12,var13=nil,nil,nil
repeat
var11=func1()
var12=0
var13=func1()
var14=Vector3.new(var3.Position.X+var11,var3.Position.Y+var12,var3.Position.Z+var13)
until func4(var14)
var4:MoveTo(Vector3.new(var3.Position.X+var11,var3.Position.Y+var12,var3.Position.Z+var13))
if math.random(1,5)==1 then
var4.Jump=true
end
wait(math.random(3,5))
var15=func2()
if var15==1 then func3("/e cheer")
elseif var15==2 then func3("/e point")
elseif var15==3 then func3("I feel... Scared.")
elseif var15==4 then func3("/e dance")
elseif var15==5 then func3("/e cheer") func3("Hooray!")
elseif var15==6 then func3("/e laugh")
elseif var15==7 then func3("Weird place, huh?")
elseif var15==8 then func3("/e wave")
elseif var15==9 then func3("Wait for me!")
elseif var15==10 then func3("/e shrug")
elseif var15==11 then func3("I'm not sure about this.")
elseif var15==12 then func3("/e bow")
elseif var15==13 then func3("Why are we here again?")
elseif var15==14 then func3("/e salute")
elseif var15==15 then func3("Stay back!")
elseif var15==16 then func3("/e confused")
elseif var15==17 then func3("Let's go somewhere fun.")
elseif var15==18 then func3("/e dance2")
elseif var15==19 then func3("I heard something...")
elseif var15==20 then func3("Who's watching us?")
elseif var15==21 then func3("/e excited")
elseif var15==22 then func3("Boo!")
elseif var15==23 then func3("I need a nap.")
elseif var15==24 then func3("/e dizzy")
elseif var15==25 then func3("Do you trust them?")
elseif var15==26 then func3("/e confused")
elseif var15==27 then func3("Hehe, oops.")
elseif var15==28 then func3("/e head")
elseif var15==29 then func3("I have an idea.")
elseif var15==30 then func3("Follow me!")
elseif var15==31 then func3("/e laugh")
elseif var15==32 then func3("Don't fall behind.")
elseif var15==33 then func3("Wanna team up?")
elseif var15==34 then func3("/e robot")
elseif var15==35 then func3("I see everything.")
elseif var15==36 then func3("Let's split up.")
elseif var15==37 then func3("/e laugh")
elseif var15==38 then func3("Need backup!")
elseif var15==39 then func3("/e dance3")
elseif var15==40 then func3("Never mind...")
elseif var15==41 then func3("I'm being followed.")
elseif var15==42 then func3("/e startled")
elseif var15==43 then func3("Too quiet...")
elseif var15==44 then func3("Where'd they go?")
elseif var15==45 then func3("Don't move.")
elseif var15==46 then func3("/e sleepy")
elseif var15==47 then func3("Oops, wrong button.")
elseif var15==48 then func3("/e agree")
elseif var15==49 then func3("Watch this!")
elseif var15==50 then func3("/e superhero")
elseif var15==51 then func3("Spooky vibe here.")
elseif var15==52 then func3("Did you see that?")
elseif var15==53 then func3("/e whistle")
elseif var15==54 then func3("This is getting weird.")
elseif var15==55 then func3("/e climb")
elseif var15==56 then func3("Come closer...")
elseif var15==57 then func3("/e dab")
elseif var15==58 then func3("Chill vibes only.")
elseif var15==59 then func3("/e happy")
elseif var15==60 then func3("Too many people.")
elseif var15==61 then func3("/e think")
elseif var15==62 then func3("Let’s prank someone.")
elseif var15==63 then func3("You saw nothing.")
elseif var15==64 then func3("Don’t question it.")
elseif var15==65 then func3("Back in my day...")
elseif var15==66 then func3("/e confident")
elseif var15==67 then func3("I’m invisible now.")
elseif var15==68 then func3("/e mysterious")
elseif var15==69 then func3("Look behind you.")
elseif var15==70 then func3("No witnesses.")
elseif var15==71 then func3("I'm not sus.")
elseif var15==72 then func3("/e hacker")
elseif var15==73 then func3("Secret mission.")
elseif var15==74 then func3("Is this real?")
elseif var15==75 then func3("/e wink")
elseif var15==76 then func3("Shhh...")
elseif var15==77 then func3("/e shy")
elseif var15==78 then func3("I saw everything.")
elseif var15==79 then func3("/e nerd")
elseif var15==80 then func3("I coded this.")
elseif var15==81 then func3("/e evil")
elseif var15==82 then func3("Caught in 4K.")
elseif var15==83 then func3("What the dog doin?")
elseif var15==84 then func3("/e panik")
elseif var15==85 then func3("Relax, I’m pro.")
elseif var15==86 then func3("/e sleep")
elseif var15==87 then func3("Someone’s watching...")
elseif var15==88 then func3("/e suspicious")
elseif var15==89 then func3("Don’t tell anyone.")
elseif var15==90 then func3("/e ban")
elseif var15==91 then func3("I have the power.")
elseif var15==92 then func3("/e zzz")
elseif var15==93 then func3("Too laggy.")
elseif var15==94 then func3("/e explode")
elseif var15==95 then func3("Uhhhh...")
elseif var15==96 then func3("/e panic")
elseif var15==97 then func3("Me when...")
elseif var15==98 then func3("/e stare")
elseif var15==99 then func3("FBI OPEN UP!")
elseif var15==100 then func3("/e vanish")
end
if math.random(1,8)==1 then
var4.Sit=true
wait(2)
var4.Sit=false
end
if math.random(1,6)==1 then
var3.CFrame=var3.CFrame*CFrame.Angles(0,math.rad(math.random(-180,180)),0)
end
wait(math.random(1,3))
for _,var16 in ipairs(var2:GetDescendants()) do
if typeof(var16.Activate)=="function" then
pcall(function()
var16:Activate()
end)
end
end
var17={}
for _,var18 in ipairs(var5:GetChildren()) do
if var18:IsA("Tool") then
table.insert(var17,var18)
end
end
if #var17>0 then
var19=var17[math.random(1,#var17)]
var19.Parent=var2
end
end
end)
end

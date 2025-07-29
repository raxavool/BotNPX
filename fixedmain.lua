while true do
		wait(6)
		task.spawn(function()
				local function r()
						return math.random(-30,30)
				end

				local function t()
						return math.random(1,100)
				end

				local function c(m)
						game.TextChatService.TextChannels.rbxgeneral:SendAsync(tostring(m))
				end

				local p = game.Players.LocalPlayer
				local ch = p.Character or p.CharacterAdded:Wait()
				local hrp = ch:WaitForChild("HumanoidRootPart")
				local h = ch:WaitForChild("Humanoid")
				local bp = p.Backpack

				local function s(pos)
						local o = Vector3.new(pos.X, pos.Y + 3, pos.Z)
						local d = Vector3.new(0, -10, 0)
						local rp = RaycastParams.new()
						rp.FilterDescendantsInstances = {ch}
						rp.FilterType = Enum.RaycastFilterType.Blacklist
						local rs = workspace:Raycast(o, d, rp)
						return rs and rs.Position.Y < pos.Y
				end

				while true do
						local x, y, z
						repeat
								x = r()
								y = 0
								z = r()
								local tp = Vector3.new(hrp.Position.X + x, hrp.Position.Y + y, hrp.Position.Z + z)
						until s(Vector3.new(hrp.Position.X + x, hrp.Position.Y + y, hrp.Position.Z + z))

						h:MoveTo(Vector3.new(hrp.Position.X + x, hrp.Position.Y + y, hrp.Position.Z + z))

						if math.random(1,5) == 1 then
								h.Jump = true
						end

						wait(math.random(3,5))

						local a = t()
						local m = {
								[1]="/e cheer",[2]="/e point",[3]="I feel... Scared.",[4]="/e dance",[5]="/e cheer|Hooray!",
								[6]="/e laugh",[7]="Weird place, huh?",[8]="/e wave",[9]="Wait for me!",[10]="/e shrug",
								[11]="I'm not sure about this.",[12]="/e bow",[13]="Why are we here again?",[14]="/e salute",
								[15]="Stay back!",[16]="/e confused",[17]="Let's go somewhere fun.",[18]="/e dance2",
								[19]="I heard something...",[20]="Who's watching us?",[21]="/e excited",[22]="Boo!",
								[23]="I need a nap.",[24]="/e dizzy",[25]="Do you trust them?",[26]="/e confused",
								[27]="Hehe, oops.",[28]="/e head",[29]="I have an idea.",[30]="Follow me!",[31]="/e laugh",
								[32]="Don't fall behind.",[33]="Wanna team up?",[34]="/e robot",[35]="I see everything.",
								[36]="Let's split up.",[37]="/e laugh",[38]="Need backup!",[39]="/e dance3",
								[40]="Never mind...",[41]="I'm being followed.",[42]="/e startled",[43]="Too quiet...",
								[44]="Where'd they go?",[45]="Don't move.",[46]="/e sleepy",[47]="Oops, wrong button.",
								[48]="/e agree",[49]="Watch this!",[50]="/e superhero",[51]="Spooky vibe here.",
								[52]="Did you see that?",[53]="/e whistle",[54]="This is getting weird.",[55]="/e climb",
								[56]="Come closer...",[57]="/e dab",[58]="Chill vibes only.",[59]="/e happy",
								[60]="Too many people.",[61]="/e think",[62]="Let’s prank someone.",[63]="You saw nothing.",
								[64]="Don’t question it.",[65]="Back in my day...",[66]="/e confident",[67]="I’m invisible now.",
								[68]="/e mysterious",[69]="Look behind you.",[70]="No witnesses.",[71]="I'm not sus.",
								[72]="/e hacker",[73]="Secret mission.",[74]="Is this real?",[75]="/e wink",[76]="Shhh...",
								[77]="/e shy",[78]="I saw everything.",[79]="/e nerd",[80]="I coded this.",[81]="/e evil",
								[82]="Caught in 4K.",[83]="What the dog doin?",[84]="/e panik",[85]="Relax, I’m pro.",
								[86]="/e sleep",[87]="Someone’s watching...",[88]="/e suspicious",[89]="Don’t tell anyone.",
								[90]="/e ban",[91]="I have the power.",[92]="/e zzz",[93]="Too laggy.",[94]="/e explode",
								[95]="Uhhhh...",[96]="/e panic",[97]="Me when...",[98]="/e stare",[99]="FBI OPEN UP!",
								[100]="/e vanish"
						}
						local msg = m[a]
						if msg then
								if string.find(msg, "|") then
										for _, part in ipairs(string.split(msg, "|")) do
												c(part)
										end
								else
										c(msg)
								end
						end

						if math.random(1,8) == 1 then
								h.Sit = true
								wait(2)
								h.Sit = false
						end

						if math.random(1,6) == 1 then
								hrp.CFrame = hrp.CFrame * CFrame.Angles(0, math.rad(math.random(-180, 180)), 0)
						end

						wait(math.random(1,3))

						for _, v in ipairs(ch:GetDescendants()) do
								if typeof(v.Activate) == "function" then
										pcall(function()
												v:Activate()
										end)
								end
						end

						local tl = {}
						for _, t in ipairs(bp:GetChildren()) do
								if t:IsA("Tool") then
										table.insert(tl, t)
								end
						end
						if #tl > 0 then
								local rt = tl[math.random(1, #tl)]
								rt.Parent = ch
						end
				end
		end)
end

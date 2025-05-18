--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.9) ~  Much Love, Ferib 

]]--

local v0 = Rayfield:CreateWindow({Name="Vice Test version",LoadingTitle="Vice",LoadingSubtitle="by ViceTeam",Theme="Default",ConfigurationSaving={Enabled=true,FileName="ViceLocalocal Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()l"},KeySystem=true,KeySettings={Title="Untitled",Subtitle="Key System",Note="Enter key to proceed",FileName="Key",SaveKey=true,GrabKeyFromSite=false,Key={"Hello"}}});
local v1 = game:GetService("Players");
local v2 = game:GetService("RunService");
local v3 = game:GetService("UserInputService");
local v4 = game:GetService("Workspace");
local v5 = v1.LocalPlayer;
local v6 = v4.CurrentCamera;
local v7 = v0:CreateTab("AimBot", 4483362877 - (259 + 160));
v7:CreateSection("Main");
v7:CreateParagraph({Title="QnA",Content="Meant for HvH (hacker vs hacker), no silent aim unless you configure it."});
local v8 = false;
local v9 = 0.1 + 0;
local v10 = "Head";
local v11 = true;
local v12 = false;
local v13 = false;
local v14 = 643 - (215 + 328);
local v15 = true;
local v16 = 1 + 0;
local v17 = Drawing.new("Circle");
v17.Thickness = 1 + 0;
v17.NumSides = 33 + 31;
v17.Radius = v14;
v17.Filled = false;
v17.Color = Color3.fromRGB(513 - 258, 212 + 43, 980 - 725);
v17.Transparency = 442.5 - (416 + 26);
v17.Visible = v15;
v2.RenderStepped:Connect(function()
	if v17.Visible then
		local FlatIdent_95CAC = 0;
		local v157;
		while true do
			if (FlatIdent_95CAC == 0) then
				v157 = v3:GetMouseLocation();
				v17.Position = Vector2.new(v157.X, v157.Y);
				break;
			end
		end
	end
end);
local function v25(v58, v59)
	local FlatIdent_76979 = 0;
	local v60;
	local v61;
	local v62;
	local v67;
	while true do
		if (FlatIdent_76979 == 2) then
			v62.FilterDescendantsInstances = {v58.Character,v59.Character};
			v62.FilterType = Enum.RaycastFilterType.Blacklist;
			FlatIdent_76979 = 3;
		end
		if (FlatIdent_76979 == 1) then
			if (not v60 or not v61) then
				return true;
			end
			v62 = RaycastParams.new();
			FlatIdent_76979 = 2;
		end
		if (FlatIdent_76979 == 4) then
			return v67 and (v67.Instance ~= nil);
		end
		if (FlatIdent_76979 == 0) then
			v60 = v58.Character and v58.Character:FindFirstChild("Head") and v58.Character.Head.Position;
			v61 = v59.Character and v59.Character:FindFirstChild(v10);
			FlatIdent_76979 = 1;
		end
		if (FlatIdent_76979 == 3) then
			v62.IgnoreWater = true;
			v67 = workspace:Raycast(v60, v61.Position - v60, v62);
			FlatIdent_76979 = 4;
		end
	end
end
local function v26()
	local FlatIdent_47A9C = 0;
	local v68;
	local v69;
	while true do
		if (FlatIdent_47A9C == 1) then
			for v140, v141 in pairs(v1:GetPlayers()) do
				if ((v141 ~= v5) and v141.Character and v141.Character:FindFirstChild(v10)) then
					if (v11 or (v141.Team ~= v5.Team)) then
						local FlatIdent_23BE8 = 0;
						local v179;
						local v180;
						local v181;
						while true do
							if (1 == FlatIdent_23BE8) then
								if v181 then
									local v203 = 0 - 0;
									local v204;
									local v205;
									while true do
										if (v203 == (0 - 0)) then
											local FlatIdent_31A5A = 0;
											while true do
												if (FlatIdent_31A5A == 1) then
													v203 = 1 + 0;
													break;
												end
												if (FlatIdent_31A5A == 0) then
													v204 = v3:GetMouseLocation();
													v205 = (Vector2.new(v180.X, v180.Y) - Vector2.new(v204.X, v204.Y)).Magnitude;
													FlatIdent_31A5A = 1;
												end
											end
										end
										if (v203 == 1) then
											if (v205 < v69) then
												if (not v12 or not v25(v5, v141)) then
													v69 = v205;
													v68 = v141;
												end
											end
											break;
										end
									end
								end
								break;
							end
							if (FlatIdent_23BE8 == 0) then
								v179 = v141.Character[v10];
								v180, v181 = v6:WorldToViewportPoint(v179.Position);
								FlatIdent_23BE8 = 1;
							end
						end
					end
				end
			end
			return v68;
		end
		if (FlatIdent_47A9C == 0) then
			v68 = nil;
			v69 = v14;
			FlatIdent_47A9C = 1;
		end
	end
end
v2:BindToRenderStep("Aimbot", Enum.RenderPriority.Camera.Value + (1 - 0), function()
	if (v8 and v13) then
		local FlatIdent_61585 = 0;
		local v159;
		local v160;
		while true do
			if (1 == FlatIdent_61585) then
				while true do
					if ((285 - (134 + 151)) == v159) then
						v160 = v26();
						if (v160 and v160.Character and v160.Character:FindFirstChild(v10)) then
							local FlatIdent_7F35E = 0;
							local v206;
							local v207;
							local v208;
							while true do
								if (1 == FlatIdent_7F35E) then
									v208 = CFrame.new(v6.CFrame.Position, v207);
									v6.CFrame = v6.CFrame:Lerp(v208, v9);
									break;
								end
								if (FlatIdent_7F35E == 0) then
									v206 = v160.Character[v10];
									v207 = v206.Position;
									FlatIdent_7F35E = 1;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (0 == FlatIdent_61585) then
				v159 = 0 - 0;
				v160 = nil;
				FlatIdent_61585 = 1;
			end
		end
	end
end);
v3.InputBegan:Connect(function(v70, v71)
	if (not v71 and (v70.UserInputType == Enum.UserInputType.MouseButton2)) then
		v13 = true;
	end
end);
v3.InputEnded:Connect(function(v72)
	if (v72.UserInputType == Enum.UserInputType.MouseButton2) then
		v13 = false;
	end
end);
v7:CreateToggle({Name="Enable Aimbot",CurrentValue=false,Flag="AimbotToggle",Callback=function(v73)
	local v74 = 0 - 0;
	while true do
		if (v74 == 0) then
			v8 = v73;
			if not v73 then
				v13 = false;
			end
			break;
		end
	end
end});
v7:CreateSlider({Name="Aimbot Softness",Range={(1991 - (582 + 1408)),(530 - (44 + 386))},Increment=(1487 - (998 + 488)),Suffix="%",CurrentValue=(37 - 27),Flag="AimbotSoftness",Callback=function(v75)
	v9 = math.clamp((1 + 0) - (v75 / (82 + 18)), 772.01 - (201 + 571), 1139 - (116 + 1022));
end});
v7:CreateSlider({Name="Aimbot FOV Radius",Range={(30 + 20),(1065 - 765)},Increment=(1 - 0),Suffix="Studs",CurrentValue=(168 - 68),Flag="AimbotFOVRadius",Callback=function(v76)
	local FlatIdent_40CF = 0;
	while true do
		if (FlatIdent_40CF == 0) then
			v14 = v76;
			v17.Radius = v76;
			break;
		end
	end
end});
v7:CreateToggle({Name="Show FOV Circle",CurrentValue=true,Flag="ShowFOVCircle",Callback=function(v78)
	local FlatIdent_49AED = 0;
	while true do
		if (FlatIdent_49AED == 0) then
			v15 = v78;
			v17.Visible = v78;
			break;
		end
	end
end});
v7:CreateInput({Name="Switch Aim Part Key",PlaceholderText="Default is Q",RemoveTextAfterFocusLost=true,Flag="SwitchAimPartKey",Callback=function(v80)
	v10 = ((v10 == "Head") and "Torso") or "Head";
end});
v7:CreateToggle({Name="Team Check",CurrentValue=false,Flag="TeamCheck",Callback=function(v81)
	v11 = not v81;
end});
v7:CreateToggle({Name="Wallcheck",CurrentValue=false,Flag="WallCheck",Callback=function(v82)
	v12 = v82;
end});
v7:CreateSection("Misc Combat");
v7:CreateSlider({Name="Hitbox Expander",Range={(2 - 1),(2 + 3)},Increment=(0.1 + 0),Suffix="x",CurrentValue=(886 - (261 + 624)),Flag="HitboxExpander",Callback=function(v83)
	v16 = v83;
	for v142, v143 in pairs(v1:GetPlayers()) do
		if ((v143 ~= v5) and v143.Character and v143.Character:FindFirstChild("Head")) then
			local FlatIdent_99389 = 0;
			local v170;
			local v171;
			while true do
				if (FlatIdent_99389 == 1) then
					while true do
						if (v170 == (1080 - (1020 + 60))) then
							local FlatIdent_33EA4 = 0;
							while true do
								if (FlatIdent_33EA4 == 1) then
									v170 = 342 - (218 + 123);
									break;
								end
								if (FlatIdent_33EA4 == 0) then
									v171 = v143.Character.Head;
									v171.Size = Vector3.new(1425 - (630 + 793), 1 * v16, (1 - 0) * v16);
									FlatIdent_33EA4 = 1;
								end
							end
						end
						if (v170 == (3 - 2)) then
							v171.CanCollide = false;
							break;
						end
					end
					break;
				end
				if (FlatIdent_99389 == 0) then
					v170 = 0 - 0;
					v171 = nil;
					FlatIdent_99389 = 1;
				end
			end
		end
	end
end});
v1.PlayerAdded:Connect(function(v84)
	v84.CharacterAdded:Connect(function(v144)
		local FlatIdent_5BA5E = 0;
		local v145;
		local v146;
		while true do
			if (FlatIdent_5BA5E == 1) then
				while true do
					if (v145 == (0 + 0)) then
						v146 = v144:WaitForChild("Head", 23 - 18);
						if v146 then
							v146.Size = Vector3.new(1 + 1, (1 + 0) * v16, (3 - 2) * v16);
							v146.CanCollide = false;
						end
						break;
					end
				end
				break;
			end
			if (FlatIdent_5BA5E == 0) then
				v145 = 0 + 0;
				v146 = nil;
				FlatIdent_5BA5E = 1;
			end
		end
	end);
end);
for v85, v86 in pairs(v1:GetPlayers()) do
	if ((v86 ~= v5) and v86.Character and v86.Character:FindFirstChild("Head")) then
		local FlatIdent_295EB = 0;
		local v161;
		while true do
			if (FlatIdent_295EB == 1) then
				v161.CanCollide = false;
				break;
			end
			if (FlatIdent_295EB == 0) then
				v161 = v86.Character.Head;
				v161.Size = Vector3.new(1749 - (760 + 987), (1914 - (1789 + 124)) * v16, (767 - (745 + 21)) * v16);
				FlatIdent_295EB = 1;
			end
		end
	end
end
local v27 = v0:CreateTab("ESP", 4352867776 - -130494682);
local v28 = false;
local v29 = false;
local v30 = Color3.fromRGB(0 - 0, 3 + 252, 0 + 0);
local v31 = false;
local v32 = Color3.fromRGB(545 - (60 + 230), 0, 1055 - (87 + 968));
local v33 = {};
local v34 = {};
local function v35(v87)
	if (v87 == v5) then
		return;
	end
	if not v87.Character then
		return;
	end
	if v33[v87] then
		return;
	end
	local v88 = v87.Character:FindFirstChild("Torso") or v87.Character:FindFirstChild("UpperTorso");
	if not v88 then
		return;
	end
	local v89 = Instance.new("BillboardGui");
	v89.Name = "TorsoESP";
	v89.AlwaysOnTop = true;
	v89.Size = UDim2.new(17 - 13, 0, 5 + 0, 0 - 0);
	v89.Adornee = v88;
	v89.Parent = v87.Character;
	local v96 = Instance.new("Frame");
	v96.Size = UDim2.new(811.8 - (569 + 242), 1413 - (447 + 966), 0.8 - 0, 0);
	v96.Position = UDim2.new(1817.1 - (1703 + 114), 701 - (376 + 325), 0.1 - 0, 0 - 0);
	v96.BackgroundTransparency = 1252 - (721 + 530);
	v96.Parent = v89;
	local v101 = Instance.new("UIStroke");
	v101.Thickness = 2;
	v101.Color = v30;
	v101.Transparency = 1271 - (945 + 326);
	v101.Parent = v96;
	v33[v87] = v89;
end
local function v36(v107)
	local FlatIdent_817B0 = 0;
	local v108;
	local v109;
	while true do
		if (FlatIdent_817B0 == 2) then
			v109.Transparency = 1 + 0;
			v109.Visible = true;
			v34[v107] = v109;
			break;
		end
		if (FlatIdent_817B0 == 1) then
			if not v108 then
				return;
			end
			v109 = Drawing.new("Line");
			v109.Thickness = 1.5 + 0;
			v109.Color = v32;
			FlatIdent_817B0 = 2;
		end
		if (FlatIdent_817B0 == 0) then
			if (v107 == v5) then
				return;
			end
			if not v107.Character then
				return;
			end
			if v34[v107] then
				return;
			end
			v108 = v107.Character:FindFirstChild("Torso") or v107.Character:FindFirstChild("UpperTorso");
			FlatIdent_817B0 = 1;
		end
	end
end
local function v37()
	for v147, v148 in pairs(v33) do
		if (v148 and v148:FindFirstChildOfClass("Frame")) then
			local v172 = 0 - 0;
			local v173;
			local v174;
			while true do
				if (v172 == (14 - (9 + 5))) then
					v173 = v148:FindFirstChildOfClass("Frame");
					v174 = v173 and v173:FindFirstChildOfClass("UIStroke");
					v172 = 1 + 0;
				end
				if (v172 == 1) then
					if v174 then
						v174.Color = v30;
					end
					break;
				end
			end
		end
	end
end
local function v38(v115)
	local FlatIdent_4CC24 = 0;
	local v116;
	while true do
		if (FlatIdent_4CC24 == 0) then
			v116 = v33[v115];
			if v116 then
				local FlatIdent_207CC = 0;
				local v164;
				while true do
					if (FlatIdent_207CC == 0) then
						v164 = 376 - (85 + 291);
						while true do
							if ((1500 - (1408 + 92)) == v164) then
								v116:Destroy();
								v33[v115] = nil;
								break;
							end
						end
						break;
					end
				end
			end
			break;
		end
	end
end
local function v39()
	local FlatIdent_6DC53 = 0;
	while true do
		if (0 == FlatIdent_6DC53) then
			for v149, v150 in pairs(v33) do
				if v150 then
					v150:Destroy();
				end
			end
			v33 = {};
			break;
		end
	end
end
local function v40(v117)
	local FlatIdent_61EE = 0;
	local v118;
	while true do
		if (0 == FlatIdent_61EE) then
			v118 = v34[v117];
			if v118 then
				local v165 = 1265 - (243 + 1022);
				while true do
					if (v165 == (0 - 0)) then
						v118:Remove();
						v34[v117] = nil;
						break;
					end
				end
			end
			break;
		end
	end
end
local function v41()
	local FlatIdent_5477B = 0;
	while true do
		if (FlatIdent_5477B == 0) then
			for v151, v152 in pairs(v34) do
				v152:Remove();
			end
			v34 = {};
			break;
		end
	end
end
v2.RenderStepped:Connect(function()
	local v119 = 1288 - (993 + 295);
	while true do
		if ((1 + 0) == v119) then
			for v175, v176 in ipairs(v1:GetPlayers()) do
				if ((v176 ~= v5) and v176.Character) then
					local v199 = v176.Character:FindFirstChild("Torso") or v176.Character:FindFirstChild("UpperTorso");
					if v199 then
						local v211 = 0 + 0;
						while true do
							if (v211 == (1180 - (1123 + 57))) then
								if v28 then
									if (v29 and (v176.Team == v5.Team)) then
										v38(v176);
									elseif not v33[v176] then
										v35(v176);
									end
								else
									v38(v176);
								end
								if v31 then
									if (v29 and (v176.Team == v5.Team)) then
										v40(v176);
									else
										local FlatIdent_5998C = 0;
										local v216;
										local v217;
										local v218;
										local v219;
										while true do
											if (FlatIdent_5998C == 0) then
												v216 = 0;
												v217 = nil;
												FlatIdent_5998C = 1;
											end
											if (FlatIdent_5998C == 2) then
												while true do
													if (v216 == (0 + 0)) then
														local FlatIdent_69253 = 0;
														while true do
															if (0 == FlatIdent_69253) then
																if not v34[v176] then
																	v36(v176);
																end
																v217, v218 = v6:WorldToViewportPoint(v199.Position);
																FlatIdent_69253 = 1;
															end
															if (1 == FlatIdent_69253) then
																v216 = 1;
																break;
															end
														end
													end
													if (v216 == (255 - (163 + 91))) then
														v219 = v3:GetMouseLocation();
														if v218 then
															local FlatIdent_2BE02 = 0;
															local v221;
															while true do
																if (FlatIdent_2BE02 == 0) then
																	v221 = 1930 - (1869 + 61);
																	while true do
																		if (v221 == (0 + 0)) then
																			local FlatIdent_494F6 = 0;
																			while true do
																				if (FlatIdent_494F6 == 0) then
																					v34[v176].From = Vector2.new(v6.ViewportSize.X / (6 - 4), v6.ViewportSize.Y);
																					v34[v176].To = Vector2.new(v217.X, v217.Y);
																					FlatIdent_494F6 = 1;
																				end
																				if (FlatIdent_494F6 == 1) then
																					v221 = 1;
																					break;
																				end
																			end
																		end
																		if (v221 == (1 - 0)) then
																			v34[v176].Color = v32;
																			v34[v176].Visible = true;
																			break;
																		end
																	end
																	break;
																end
															end
														else
															v34[v176].Visible = false;
														end
														break;
													end
												end
												break;
											end
											if (1 == FlatIdent_5998C) then
												v218 = nil;
												v219 = nil;
												FlatIdent_5998C = 2;
											end
										end
									end
								else
									v40(v176);
								end
								break;
							end
						end
					else
						v38(v176);
						v40(v176);
					end
				else
					local FlatIdent_1B881 = 0;
					while true do
						if (FlatIdent_1B881 == 0) then
							v38(v176);
							v40(v176);
							break;
						end
					end
				end
			end
			break;
		end
		if (v119 == (0 + 0)) then
			local FlatIdent_25A9F = 0;
			while true do
				if (FlatIdent_25A9F == 0) then
					if not v28 then
						v39();
					end
					if not v31 then
						v41();
					end
					FlatIdent_25A9F = 1;
				end
				if (FlatIdent_25A9F == 1) then
					v119 = 1 - 0;
					break;
				end
			end
		end
	end
end);
v27:CreateToggle({Name="Enable ESP Boxes",CurrentValue=false,Flag="ESPBoxesToggle",Callback=function(v120)
	local v121 = 1769 - (1749 + 20);
	while true do
		if (v121 == (0 + 0)) then
			v28 = v120;
			if not v120 then
				v39();
			end
			break;
		end
	end
end});
v27:CreateToggle({Name="Enable Tracers",CurrentValue=false,Flag="TracersToggle",Callback=function(v122)
	local FlatIdent_4508F = 0;
	while true do
		if (FlatIdent_4508F == 0) then
			v31 = v122;
			if not v122 then
				v41();
			end
			break;
		end
	end
end});
v27:CreateToggle({Name="Team Check (Enemies Only)",CurrentValue=false,Flag="ESPTeamCheckToggle",Callback=function(v123)
	v29 = v123;
end});
v27:CreateColorPicker({Name="ESP Box Color",Color=v30,Flag="ESPBoxColorPicker",Callback=function(v124)
	local v125 = 1474 - (1329 + 145);
	while true do
		if (v125 == 0) then
			v30 = v124;
			v37();
			break;
		end
	end
end});
v27:CreateColorPicker({Name="Tracers Color",Color=v32,Flag="TracersColorPicker",Callback=function(v126)
	v32 = v126;
end});
local v42 = false;
local v43 = true;
local v44 = Color3.fromRGB(1577 - (1249 + 73), 971 - (140 + 831), 0 + 0);
local v45 = Color3.fromRGB(2105 - (1409 + 441), 973 - (15 + 703), 119 + 136);
local v46 = {};
local function v47(v127)
	if (v127.Character and not v46[v127]) then
		local FlatIdent_284EA = 0;
		local v166;
		local v167;
		while true do
			if (FlatIdent_284EA == 0) then
				v166 = 438 - (262 + 176);
				v167 = nil;
				FlatIdent_284EA = 1;
			end
			if (FlatIdent_284EA == 1) then
				while true do
					if (v166 == (1721 - (345 + 1376))) then
						local FlatIdent_628E3 = 0;
						while true do
							if (FlatIdent_628E3 == 0) then
								v167 = Instance.new("Highlight");
								v167.Name = "HighlightESP";
								FlatIdent_628E3 = 1;
							end
							if (FlatIdent_628E3 == 1) then
								v166 = 1901 - (106 + 1794);
								break;
							end
						end
					end
					if (v166 == (691 - (198 + 490))) then
						local FlatIdent_634AF = 0;
						while true do
							if (0 == FlatIdent_634AF) then
								v167.Adornee = v127.Character;
								v167.Parent = v127.Character;
								FlatIdent_634AF = 1;
							end
							if (FlatIdent_634AF == 1) then
								v166 = 17 - 13;
								break;
							end
						end
					end
					if (v166 == (4 - 2)) then
						local FlatIdent_21297 = 0;
						while true do
							if (FlatIdent_21297 == 0) then
								v167.FillTransparency = 1206.5 - (696 + 510);
								v167.OutlineTransparency = 0 - 0;
								FlatIdent_21297 = 1;
							end
							if (FlatIdent_21297 == 1) then
								v166 = 1265 - (1091 + 171);
								break;
							end
						end
					end
					if (v166 == (1 + 3)) then
						v46[v127] = v167;
						break;
					end
					if (v166 == (2 - 1)) then
						v167.FillColor = v44;
						v167.OutlineColor = v45;
						v166 = 2;
					end
				end
				break;
			end
		end
	end
end
local function v48(v128)
	if v46[v128] then
		local FlatIdent_28855 = 0;
		local v168;
		while true do
			if (FlatIdent_28855 == 0) then
				v168 = 0 - 0;
				while true do
					if (v168 == (0 - 0)) then
						v46[v128]:Destroy();
						v46[v128] = nil;
						break;
					end
				end
				break;
			end
		end
	end
end
local function v49()
	for v153, v154 in pairs(v46) do
		if v154 then
			v154:Destroy();
		end
	end
	table.clear(v46);
end
v2.RenderStepped:Connect(function()
	local FlatIdent_15A17 = 0;
	while true do
		if (FlatIdent_15A17 == 0) then
			if not v42 then
				local FlatIdent_912A7 = 0;
				local v169;
				while true do
					if (FlatIdent_912A7 == 0) then
						v169 = 374 - (123 + 251);
						while true do
							if (v169 == (584 - (57 + 527))) then
								local FlatIdent_69C4C = 0;
								while true do
									if (FlatIdent_69C4C == 0) then
										v49();
										return;
									end
								end
							end
						end
						break;
					end
				end
			end
			for v155, v156 in pairs(v1:GetPlayers()) do
				if ((v156 ~= v5) and v156.Character) then
					if (v43 and (v156.Team == v5.Team)) then
						v48(v156);
					else
						v47(v156);
					end
				else
					v48(v156);
				end
			end
			break;
		end
	end
end);
v27:CreateToggle({Name="Enable Highlights",CurrentValue=false,Flag="HighlightESP",Callback=function(v129)
	local FlatIdent_8B272 = 0;
	local v130;
	while true do
		if (0 == FlatIdent_8B272) then
			v130 = 0 - 0;
			while true do
				if (v130 == (698 - (208 + 490))) then
					v42 = v129;
					if not v129 then
						v49();
					end
					break;
				end
			end
			break;
		end
	end
end});
v27:CreateToggle({Name="Highlight Team Check",CurrentValue=true,Flag="HighlightTeamCheck",Callback=function(v131)
	v43 = v131;
end});
v27:CreateColorPicker({Name="Highlight Color",Color=v44,Flag="HighlightColorPicker",Callback=function(v132)
	local FlatIdent_5D802 = 0;
	local v133;
	while true do
		if (FlatIdent_5D802 == 0) then
			v133 = 0 + 0;
			while true do
				if ((0 + 0) == v133) then
					v44 = v132;
					for v177, v178 in pairs(v46) do
						if v178 then
							v178.FillColor = v132;
						end
					end
					break;
				end
			end
			break;
		end
	end
end});
local v50 = v0:CreateTab("Misc", 4483362458 - 0);
local v51 = v1.LocalPlayer;
local v52 = false;
local v53 = true;
local v54;
local function v55()
	local FlatIdent_7063 = 0;
	local v134;
	local v135;
	local v136;
	while true do
		if (FlatIdent_7063 == 0) then
			v134 = v51.Character or v51.CharacterAdded:Wait();
			v135 = v134:WaitForChild("HumanoidRootPart");
			FlatIdent_7063 = 1;
		end
		if (FlatIdent_7063 == 1) then
			v136 = v135.CFrame.LookVector * (289 - 189);
			v135.Velocity = Vector3.new(v136.X, v135.Velocity.Y, v136.Z);
			break;
		end
	end
end
local function v56()
	local FlatIdent_3B08E = 0;
	local v138;
	while true do
		if (FlatIdent_3B08E == 0) then
			v138 = 836 - (660 + 176);
			while true do
				if (v138 == (0 + 0)) then
					if v54 then
						v54:Disconnect();
					end
					v54 = v3.JumpRequest:Connect(function()
						if (v52 and v53) then
							local v201 = 202 - (14 + 188);
							local v202;
							while true do
								if (v201 == (675 - (534 + 141))) then
									v202 = v51.Character;
									if v202 then
										local FlatIdent_4D83A = 0;
										local v214;
										local v215;
										while true do
											if (FlatIdent_4D83A == 0) then
												v214 = 0 + 0;
												v215 = nil;
												FlatIdent_4D83A = 1;
											end
											if (1 == FlatIdent_4D83A) then
												while true do
													if (v214 == 0) then
														v215 = v202:FindFirstChildOfClass("Humanoid");
														if (v215 and (v215:GetState() ~= Enum.HumanoidStateType.Dead)) then
															local FlatIdent_985A2 = 0;
															local v220;
															while true do
																if (FlatIdent_985A2 == 0) then
																	v220 = 0 + 0;
																	while true do
																		if ((0 + 0) == v220) then
																			local FlatIdent_512FF = 0;
																			while true do
																				if (FlatIdent_512FF == 0) then
																					v53 = false;
																					v215:ChangeState(Enum.HumanoidStateType.Jumping);
																					FlatIdent_512FF = 1;
																				end
																				if (1 == FlatIdent_512FF) then
																					v220 = 1 - 0;
																					break;
																				end
																			end
																		end
																		if (v220 == 1) then
																			v55();
																			task.delay(0.3 - 0, function()
																				v53 = true;
																			end);
																			break;
																		end
																	end
																	break;
																end
															end
														end
														break;
													end
												end
												break;
											end
										end
									end
									break;
								end
							end
						end
					end);
					break;
				end
			end
			break;
		end
	end
end
local function v57()
	if v54 then
		local FlatIdent_89562 = 0;
		while true do
			if (FlatIdent_89562 == 0) then
				v54:Disconnect();
				v54 = nil;
				break;
			end
		end
	end
end
v50:CreateToggle({Name="Bhop",CurrentValue=false,Flag="BhopToggle",Callback=function(v139)
	local FlatIdent_10DED = 0;
	while true do
		if (FlatIdent_10DED == 0) then
			v52 = v139;
			if v139 then
				v56();
			else
				v57();
			end
			break;
		end
	end
end});
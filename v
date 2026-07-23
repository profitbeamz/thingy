local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")
local StarterGui = game:GetService("StarterGui")
local Lighting = game:GetService("Lighting")
local Workspace = game:GetService("Workspace")
local localPlayer = Players.LocalPlayer
local playerGui = localPlayer:WaitForChild("PlayerGui")

-- ============================================================
--  WEAPON MESH DATABASE - PASTE YOUR FULL LIST HERE
-- ============================================================
local WEAPON_MESH_DATABASE = {


	{
		Name = "2015",
		Tool = "2015",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://198947272",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.2015.Handle.Mesh",
	},

	{
		Name = "8bit",
		Tool = "8bit",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://159546779",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.8bit.Handle.Mesh",
	},

	{
		Name = "Abduction_K_2025",
		Tool = "Abduction_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://125213231050513",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Abduction_K_2025.Handle.Mesh",
	},

	{
		Name = "Abstract",
		Tool = "Abstract",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5437299417",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Abstract.Handle.Mesh",
	},

	{
		Name = "Ace",
		Tool = "Ace",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://178208194",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ace.Handle.Mesh",
	},

	{
		Name = "Adurite",
		Tool = "Adurite",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://192482160",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Adurite.Handle.Mesh",
	},

	{
		Name = "AduriteGun",
		Tool = "AduriteGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://162812733",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AduriteGun.Handle.Mesh",
	},

	{
		Name = "Aid",
		Tool = "Aid",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7164849213",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aid.Handle.Mesh",
	},

	{
		Name = "Alex",
		Tool = "Alex",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://545604317",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Alex.Handle.Mesh",
	},

	{
		Name = "Aliens_G_2021",
		Tool = "Aliens_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://94636545088559",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aliens_G_2021.Handle.Mesh",
	},

	{
		Name = "AmericaGun",
		Tool = "AmericaGun",
		MeshId = "rbxassetid://25298496",
		TextureId = "rbxassetid://164669251",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AmericaGun.Handle.Mesh",
	},

	{
		Name = "AmericaSword",
		Tool = "AmericaSword",
		MeshId = "rbxassetid://262027449",
		TextureId = "rbxassetid://445805934",
		Size = Vector3.new(0.25, 1, 3.299999952316284),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AmericaSword.Handle.Mesh",
	},

	{
		Name = "Amerilaser",
		Tool = "Amerilaser",
		MeshId = "rbxassetid://116657254",
		TextureId = "rbxassetid://445884341",
		Size = Vector3.new(0.7, 0.7, 0.7),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Amerilaser.Handle.Mesh",
	},

	{
		Name = "AmethystGun_25",
		Tool = "AmethystGun_25",
		MeshId = "rbxassetid://89938662357143",
		TextureId = "rbxassetid://82502966922987",
		Size = Vector3.new(0.3079240024089813, 0.9112139940261841, 1.7612519264221191),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AmethystGun_25.Handle",
	},

	{
		Name = "Apoc_G_2022",
		Tool = "Apoc_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11228269165",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Apoc_G_2022.Handle.Mesh",
	},

	{
		Name = "Apoc_K_2022",
		Tool = "Apoc_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11218500706",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Apoc_K_2022.Handle.Mesh",
	},

	{
		Name = "Aqua",
		Tool = "Aqua",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://250006854",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aqua.Handle.Mesh",
	},

	{
		Name = "Archangel",
		Tool = "Archangel",
		MeshId = "rbxassetid://16734922649",
		TextureId = "rbxassetid://16734901721",
		Size = Vector3.new(0.4451479911804199, 6.69101619720459, 2.514547824859619),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Archangel.Handle",
	},

	{
		Name = "Arctic_G_2022",
		Tool = "Arctic_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://85287913991189",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Arctic_G_2022.Handle.Mesh",
	},

	{
		Name = "Arctic_K_2022",
		Tool = "Arctic_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11802561076",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Arctic_K_2022.Handle.Mesh",
	},

	{
		Name = "Asteroid",
		Tool = "Asteroid",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6394252363",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Asteroid.Handle.Mesh",
	},

	{
		Name = "AuroraGun",
		Tool = "AuroraGun",
		MeshId = "rbxassetid://16070198638",
		TextureId = "rbxassetid://107873598804292",
		Size = Vector3.new(0.4591051936149597, 1.3549294471740723, 2.346302032470703),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AuroraGun.Handle",
	},

	{
		Name = "AuroraKnife",
		Tool = "AuroraKnife",
		MeshId = "rbxassetid://16025287191",
		TextureId = "rbxassetid://97521579968070",
		Size = Vector3.new(0.22987930476665497, 3.765988349914551, 1.1533899307250977),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.AuroraKnife.Handle",
	},

	{
		Name = "Aurora_G_2019",
		Tool = "Aurora_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://70440729181948",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aurora_G_2019.Handle.Mesh",
	},

	{
		Name = "Aurora_G_2021",
		Tool = "Aurora_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://96698273353001",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aurora_G_2021.Handle.Mesh",
	},

	{
		Name = "Aurora_K_2019",
		Tool = "Aurora_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534823003",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aurora_K_2019.Handle.Mesh",
	},

	{
		Name = "Aurora_K_2021",
		Tool = "Aurora_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275036346",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Aurora_K_2021.Handle.Mesh",
	},

	{
		Name = "Bacon",
		Tool = "Bacon",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://178240361",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bacon.Handle.Mesh",
	},

	{
		Name = "BanHammer",
		Tool = "BanHammer",
		MeshId = "rbxassetid://10604848",
		TextureId = "rbxassetid://10605252",
		Size = Vector3.new(1.3814481496810913, 3.6346421241760254, 2.1410272121429443),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BanHammer.Handle",
	},

	{
		Name = "Bats",
		Tool = "Bats",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531836446",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bats.Handle.Mesh",
	},

	{
		Name = "BatsG",
		Tool = "BatsG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648112",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BatsG.Handle.Mesh",
	},

	{
		Name = "BatsK",
		Tool = "BatsK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513648113",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BatsK.Handle.Mesh",
	},

	{
		Name = "Bats_G_2024",
		Tool = "Bats_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://127442391741629",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bats_G_2024.Handle.Mesh",
	},

	{
		Name = "Bats_K_2020",
		Tool = "Bats_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5930584000",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bats_K_2020.Handle.Mesh",
	},

	{
		Name = "Bats_K_2024",
		Tool = "Bats_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://134605667915149",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bats_K_2024.Handle.Mesh",
	},

	{
		Name = "Bats_K_2025",
		Tool = "Bats_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://116130292497156",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bats_K_2025.Handle.Mesh",
	},

	{
		Name = "BattleAxe",
		Tool = "BattleAxe",
		MeshId = "rbxassetid://1084767698",
		TextureId = "rbxassetid://1084767901",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BattleAxe.Handle.Mesh",
	},

	{
		Name = "BattleAxe2",
		Tool = "BattleAxe2",
		MeshId = "rbxassetid://2397016406",
		TextureId = "rbxassetid://2521633652",
		Size = Vector3.new(0.37879276275634766, 3.6555023193359375, 1.670109748840332),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BattleAxe2.Handle",
	},

	{
		Name = "Batwing",
		Tool = "Batwing",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://191784815",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Batwing.Handle.Mesh",
	},

	{
		Name = "Bauble",
		Tool = "Bauble",
		MeshId = "rbxassetid://107813118898769",
		TextureId = "rbxassetid://109913147403488",
		Size = Vector3.new(0.05, 0.05, 0.05),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bauble.Handle",
	},

	{
		Name = "BaubleChroma",
		Tool = "BaubleChroma",
		MeshId = "rbxassetid://107813118898769",
		TextureId = "rbxassetid://109913147403488",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BaubleChroma.Handle.Mesh",
	},

	{
		Name = "BaubleKnife",
		Tool = "BaubleKnife",
		MeshId = "rbxassetid://116508096109443",
		TextureId = "rbxassetid://135843404105980",
		Size = Vector3.new(0.492881715297699, 3.6559207439422607, 0.8300465941429138),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BaubleKnife.Handle",
	},

	{
		Name = "BaubleKnifeChroma",
		Tool = "BaubleKnifeChroma",
		MeshId = "rbxassetid://116508096109443",
		TextureId = "rbxassetid://135843404105980",
		Size = Vector3.new(4.840000152587891, 1.2100000381469727, 2.4200000762939453),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BaubleKnifeChroma.Handle.Mesh",
	},

	{
		Name = "Beach_K_2023",
		Tool = "Beach_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13894391232",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Beach_K_2023.Handle.Mesh",
	},

	{
		Name = "Bells_K_2023",
		Tool = "Bells_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15382279697",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bells_K_2023.Handle.Mesh",
	},

	{
		Name = "BigKill",
		Tool = "BigKill",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159963965",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BigKill.Handle.Mesh",
	},

	{
		Name = "Bio_K_2023",
		Tool = "Bio_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12926766355",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bio_K_2023.Handle.Mesh",
	},

	{
		Name = "Bioblade",
		Tool = "Bioblade",
		MeshId = "rbxassetid://4662600017",
		TextureId = "rbxassetid://4751538400",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bioblade.Handle",
	},

	{
		Name = "Biogun",
		Tool = "Biogun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4659589763",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Biogun.Handle.Mesh",
	},

	{
		Name = "Bit",
		Tool = "Bit",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://178259396",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bit.Handle.Mesh",
	},

	{
		Name = "BlackGingerscope",
		Tool = "BlackGingerscope",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://86020437078071",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlackGingerscope.Handle",
	},

	{
		Name = "BlackGingerscythe_Godly",
		Tool = "BlackGingerscythe_Godly",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://112969790461154",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlackGingerscythe_Godly.Handle",
	},

	{
		Name = "BlackLuger",
		Tool = "BlackLuger",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://95387789",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlackLuger.Handle.Mesh",
	},

	{
		Name = "Blaster",
		Tool = "Blaster",
		MeshId = "rbxassetid://92656610",
		TextureId = "rbxassetid://90586029262535",
		Size = Vector3.new(0.6, 0.6, 0.6),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Blaster.Handle.Mesh",
	},

	{
		Name = "Bleached",
		Tool = "Bleached",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://311711104",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bleached.Handle.Mesh",
	},

	{
		Name = "Bleed",
		Tool = "Bleed",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://315010891",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bleed.Handle.Mesh",
	},

	{
		Name = "BloodKnife",
		Tool = "BloodKnife",
		MeshId = "rbxassetid://51682254",
		TextureId = "rbxassetid://51941734",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BloodKnife.Handle.Mesh",
	},

	{
		Name = "Bloom",
		Tool = "Bloom",
		MeshId = "rbxassetid://73266355643345",
		TextureId = "rbxassetid://103489229144925",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bloom.Handle",
	},

	{
		Name = "Blossom",
		Tool = "Blossom",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://363138170",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Blossom.Handle.Mesh",
	},

	{
		Name = "Blossom_G",
		Tool = "Blossom_G",
		MeshId = "rbxassetid://12322809632",
		TextureId = "rbxassetid://12322809917",
		Size = Vector3.new(0.05, 0.05, 0.05),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Blossom_G.Handle.Mesh",
	},

	{
		Name = "BlueCamo_K_2022",
		Tool = "BlueCamo_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueCamo_K_2022.Handle.Mesh",
	},

	{
		Name = "BlueCandy",
		Tool = "BlueCandy",
		MeshId = "rbxassetid://19040337",
		TextureId = "rbxassetid://3241832047",
		Size = Vector3.new(0.40000006556510925, 4, 0.8000001311302185),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueCandy.Handle.Mesh",
	},

	{
		Name = "BlueHarvester",
		Tool = "BlueHarvester",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://8266618476",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueHarvester.Handle.Mesh",
	},

	{
		Name = "BlueSeer",
		Tool = "BlueSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://3184062977",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueSeer.Handle.Mesh",
	},

	{
		Name = "BlueSugar",
		Tool = "BlueSugar",
		MeshId = "rbxassetid://101086719",
		TextureId = "rbxassetid://3241860913",
		Size = Vector3.new(1.399999976158142, 1.399999976158142, 3.1113929748535156),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueSugar.Handle.Mesh",
	},

	{
		Name = "BlueVampiresEdge",
		Tool = "BlueVampiresEdge",
		MeshId = "rbxassetid://5841895234",
		TextureId = "rbxassetid://116887066557099",
		Size = Vector3.new(0.39546874165534973, 3.351449966430664, 1.0144076347351074),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BlueVampiresEdge.Handle",
	},

	{
		Name = "Bluesteel",
		Tool = "Bluesteel",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://157904876",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bluesteel.Handle.Mesh",
	},

	{
		Name = "BluesteelGun",
		Tool = "BluesteelGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://161420087",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BluesteelGun.Handle.Mesh",
	},

	{
		Name = "Boneblade",
		Tool = "Boneblade",
		MeshId = "rbxassetid://1857106669",
		TextureId = "rbxassetid://2516324337",
		Size = Vector3.new(0.3375881314277649, 3.030880928039551, 1.1909538507461548),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Boneblade.Handle",
	},

	{
		Name = "BonebladeChroma",
		Tool = "BonebladeChroma",
		MeshId = "rbxassetid://1857106669",
		TextureId = "rbxassetid://2516324337",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BonebladeChroma.Handle.Mesh",
	},

	{
		Name = "Bones",
		Tool = "Bones",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531836449",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bones.Handle.Mesh",
	},

	{
		Name = "Bones2019",
		Tool = "Bones2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4210405561",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bones2019.Handle.Mesh",
	},

	{
		Name = "Bones_K_2020",
		Tool = "Bones_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5872477763",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bones_K_2020.Handle.Mesh",
	},

	{
		Name = "Bones_K_2022",
		Tool = "Bones_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bones_K_2022.Handle.Mesh",
	},

	{
		Name = "Bones_K_2024",
		Tool = "Bones_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://89105172362040",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bones_K_2024.Handle.Mesh",
	},

	{
		Name = "Borders",
		Tool = "Borders",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://155199285",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Borders.Handle.Mesh",
	},

	{
		Name = "Brains",
		Tool = "Brains",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531864479",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Brains.Handle.Mesh",
	},

	{
		Name = "Brains2019",
		Tool = "Brains2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409062",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Brains2019.Handle.Mesh",
	},

	{
		Name = "Brains_G_2022",
		Tool = "Brains_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11254925304",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Brains_G_2022.Handle.Mesh",
	},

	{
		Name = "Branches",
		Tool = "Branches",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409800",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Branches.Handle.Mesh",
	},

	{
		Name = "Broken_K_2023",
		Tool = "Broken_K_2023",
		MeshId = "rbxassetid://10855586895",
		TextureId = "rbxassetid://12237805628",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Broken_K_2023.Handle.Mesh",
	},

	{
		Name = "BronzeCandy",
		Tool = "BronzeCandy",
		MeshId = "rbxassetid://19040337",
		TextureId = "rbxassetid://122687610829006",
		Size = Vector3.new(0.40000006556510925, 4, 0.8000001311302185),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeCandy.Handle.Mesh",
	},

	{
		Name = "BronzeHallow",
		Tool = "BronzeHallow",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://2518167440",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeHallow.Handle.Mesh",
	},

	{
		Name = "BronzeHarvester",
		Tool = "BronzeHarvester",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://8266617019",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeHarvester.Handle.Mesh",
	},

	{
		Name = "BronzeIceblaster",
		Tool = "BronzeIceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6246948951",
		Size = Vector3.new(0.4432010054588318, 1.9299800395965576, 1.0238100290298462),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeIceblaster.Handle",
	},

	{
		Name = "BronzeIcebreaker",
		Tool = "BronzeIcebreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6237991982",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeIcebreaker.Handle.Mesh",
	},

	{
		Name = "BronzeSugar",
		Tool = "BronzeSugar",
		MeshId = "rbxassetid://101086719",
		TextureId = "rbxassetid://6958436959",
		Size = Vector3.new(1.399999976158142, 1.399999976158142, 3.1113929748535156),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeSugar.Handle.Mesh",
	},

	{
		Name = "BronzeVampiresEdge",
		Tool = "BronzeVampiresEdge",
		MeshId = "rbxassetid://5841895234",
		TextureId = "rbxassetid://124129066234254",
		Size = Vector3.new(0.39546874165534973, 3.351449966430664, 1.0144076347351074),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.BronzeVampiresEdge.Handle",
	},

	{
		Name = "Brush",
		Tool = "Brush",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5435976404",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Brush.Handle.Mesh",
	},

	{
		Name = "Bunnies_K_2025",
		Tool = "Bunnies_K_2025",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://104875261384354",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bunnies_K_2025.Handle.Mesh",
	},

	{
		Name = "Bunny",
		Tool = "Bunny",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://387366668",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Bunny.Handle.Mesh",
	},

	{
		Name = "Butterflies_G_2025",
		Tool = "Butterflies_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://124763121225655",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Butterflies_G_2025.Handle.Mesh",
	},

	{
		Name = "Camo",
		Tool = "Camo",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://160024546",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Camo.Handle.Mesh",
	},

	{
		Name = "CamoKnife",
		Tool = "CamoKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://3183403069",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CamoKnife.Handle.Mesh",
	},

	{
		Name = "Candied_G_2022",
		Tool = "Candied_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11809753556",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candied_G_2022.Handle.Mesh",
	},

	{
		Name = "Candied_K_2022",
		Tool = "Candied_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11802560748",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candied_K_2022.Handle.Mesh",
	},

	{
		Name = "Candle_K_2020",
		Tool = "Candle_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5872478022",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candle_K_2020.Handle.Mesh",
	},

	{
		Name = "Candleflame",
		Tool = "Candleflame",
		MeshId = "rbxassetid://7791364860",
		TextureId = "rbxassetid://7791364988",
		Size = Vector3.new(0.4497750401496887, 3.3375871181488037, 1.1087257862091064),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candleflame.Handle",
	},

	{
		Name = "CandleflameChroma",
		Tool = "CandleflameChroma",
		MeshId = "rbxassetid://7791364860",
		TextureId = "rbxassetid://7791364988",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandleflameChroma.Handle.Mesh",
	},

	{
		Name = "Candleflame_G_2024",
		Tool = "Candleflame_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://115359559909377",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candleflame_G_2024.Handle.Mesh",
	},

	{
		Name = "Candles_K_2024",
		Tool = "Candles_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://137012419503995",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candles_K_2024.Handle.Mesh",
	},

	{
		Name = "Candy",
		Tool = "Candy",
		MeshId = "rbxassetid://19040337",
		TextureId = "rbxassetid://19040326",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Candy.Handle.Mesh",
	},

	{
		Name = "CandyCorn",
		Tool = "CandyCorn",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1311187229",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn.Handle.Mesh",
	},

	{
		Name = "CandyCorn2019",
		Tool = "CandyCorn2019",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://4210409803",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn2019.Handle.Mesh",
	},

	{
		Name = "CandyCorn_G_2020",
		Tool = "CandyCorn_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866371945",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_G_2020.Handle.Mesh",
	},

	{
		Name = "CandyCorn_G_2022",
		Tool = "CandyCorn_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11226919330",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_G_2022.Handle.Mesh",
	},

	{
		Name = "CandyCorn_G_2024",
		Tool = "CandyCorn_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://110799536201694",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_G_2024.Handle.Mesh",
	},

	{
		Name = "CandyCorn_G_2025",
		Tool = "CandyCorn_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://88054952272755",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_G_2025.Handle.Mesh",
	},

	{
		Name = "CandyCorn_K_2020",
		Tool = "CandyCorn_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866354929",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_K_2020.Handle.Mesh",
	},

	{
		Name = "CandyCorn_K_2022",
		Tool = "CandyCorn_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217550170",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_K_2022.Handle.Mesh",
	},

	{
		Name = "CandyCorn_K_2024",
		Tool = "CandyCorn_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://76315981363183",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_K_2024.Handle.Mesh",
	},

	{
		Name = "CandyCorn_K_2025",
		Tool = "CandyCorn_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://84607607123689",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandyCorn_K_2025.Handle.Mesh",
	},

	{
		Name = "CandySwirl_G_2019",
		Tool = "CandySwirl_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534836730",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandySwirl_G_2019.Handle.Mesh",
	},

	{
		Name = "CandySwirl_K_2019",
		Tool = "CandySwirl_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534829449",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CandySwirl_K_2019.Handle.Mesh",
	},

	{
		Name = "Cane",
		Tool = "Cane",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5359571109",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cane.Handle.Mesh",
	},

	{
		Name = "CaneGun",
		Tool = "CaneGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://112112286408164",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CaneGun.Handle.Mesh",
	},

	{
		Name = "Cane_G_2018",
		Tool = "Cane_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2659489762",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cane_G_2018.Handle.Mesh",
	},

	{
		Name = "Cane_G_2021",
		Tool = "Cane_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275031710",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cane_G_2021.Handle.Mesh",
	},

	{
		Name = "Cane_K_2018",
		Tool = "Cane_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659489980",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cane_K_2018.Handle.Mesh",
	},

	{
		Name = "Cane_K_2021",
		Tool = "Cane_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8293557762",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cane_K_2021.Handle.Mesh",
	},

	{
		Name = "Canes_G_2023",
		Tool = "Canes_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15383886872",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Canes_G_2023.Handle.Mesh",
	},

	{
		Name = "Canes_K_2023",
		Tool = "Canes_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15381447325",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Canes_K_2023.Handle.Mesh",
	},

	{
		Name = "Cardboard",
		Tool = "Cardboard",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://159435782",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cardboard.Handle.Mesh",
	},

	{
		Name = "Carrot",
		Tool = "Carrot",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://387418042",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carrot.Handle.Mesh",
	},

	{
		Name = "Carrot_G_2024",
		Tool = "Carrot_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://16856497935",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carrot_G_2024.Handle.Mesh",
	},

	{
		Name = "Carrot_K_2023",
		Tool = "Carrot_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12928323969",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carrot_K_2023.Handle.Mesh",
	},

	{
		Name = "Carrot_K_2024",
		Tool = "Carrot_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://16845528588",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carrot_K_2024.Handle.Mesh",
	},

	{
		Name = "Carrots_K_2025",
		Tool = "Carrots_K_2025",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://137285542474252",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carrots_K_2025.Handle.Mesh",
	},

	{
		Name = "Carved_G_2020",
		Tool = "Carved_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866372800",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carved_G_2020.Handle.Mesh",
	},

	{
		Name = "Carved_K_2020",
		Tool = "Carved_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866356691",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Carved_K_2020.Handle.Mesh",
	},

	{
		Name = "Cat_G_2021",
		Tool = "Cat_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7759004533",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cat_G_2021.Handle.Mesh",
	},

	{
		Name = "Caution",
		Tool = "Caution",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://48737841",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Caution.Handle.Mesh",
	},

	{
		Name = "Cavern_G_2019",
		Tool = "Cavern_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://128240852390197",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cavern_G_2019.Handle.Mesh",
	},

	{
		Name = "Cavern_K_2019",
		Tool = "Cavern_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534822092",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cavern_K_2019.Handle.Mesh",
	},

	{
		Name = "Celestial",
		Tool = "Celestial",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://117556526686597",
		Size = Vector3.new(0.397622287273407, 2.6648693084716797, 2.3640010356903076),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Celestial.Handle",
	},

	{
		Name = "CelestialChroma",
		Tool = "CelestialChroma",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://79010754957272",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CelestialChroma.Handle.Mesh",
	},

	{
		Name = "Celestial_Bronze",
		Tool = "Celestial_Bronze",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://118098317574486",
		Size = Vector3.new(0.397622287273407, 2.6648693084716797, 2.3640010356903076),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Celestial_Bronze.Handle",
	},

	{
		Name = "Celestial_Gold",
		Tool = "Celestial_Gold",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://74186573010586",
		Size = Vector3.new(0.397622287273407, 2.6648693084716797, 2.3640010356903076),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Celestial_Gold.Handle",
	},

	{
		Name = "Celestial_Red",
		Tool = "Celestial_Red",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://91261836086535",
		Size = Vector3.new(0.397622287273407, 2.6648693084716797, 2.3640010356903076),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Celestial_Red.Handle",
	},

	{
		Name = "Celestial_Silver",
		Tool = "Celestial_Silver",
		MeshId = "rbxassetid://109711282082830",
		TextureId = "rbxassetid://119629165572031",
		Size = Vector3.new(0.397622287273407, 2.6648693084716797, 2.3640010356903076),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Celestial_Silver.Handle",
	},

	{
		Name = "Checker",
		Tool = "Checker",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://160167441",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Checker.Handle.Mesh",
	},

	{
		Name = "Cheddar",
		Tool = "Cheddar",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://160274812",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cheddar.Handle.Mesh",
	},

	{
		Name = "Cheesy",
		Tool = "Cheesy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161425686",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cheesy.Handle.Mesh",
	},

	{
		Name = "Cherry",
		Tool = "Cherry",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://155195316",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cherry.Handle.Mesh",
	},

	{
		Name = "Chick_K_2025",
		Tool = "Chick_K_2025",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://116056287470892",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Chick_K_2025.Handle.Mesh",
	},

	{
		Name = "Chill",
		Tool = "Chill",
		MeshId = "rbxassetid://105329941",
		TextureId = "rbxassetid://105978218",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Chill.Handle.Mesh",
	},

	{
		Name = "Chips",
		Tool = "Chips",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621164",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Chips.Handle.Mesh",
	},

	{
		Name = "Choco",
		Tool = "Choco",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://386204101",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Choco.Handle.Mesh",
	},

	{
		Name = "ChocoBunny",
		Tool = "ChocoBunny",
		MeshId = "rbxassetid://123895172288530",
		TextureId = "rbxassetid://77059581015917",
		Size = Vector3.new(0.548004150390625, 3.4580001831054688, 0.9617996215820312),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChocoBunny.Handle",
	},

	{
		Name = "ChromaBlossom_G",
		Tool = "ChromaBlossom_G",
		MeshId = "rbxassetid://12322809632",
		TextureId = "rbxassetid://12322809917",
		Size = Vector3.new(0.6061215996742249, 0.26581668853759766, 1.1624228954315186),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaBlossom_G.Handle.Mesh",
	},

	{
		Name = "ChromaDarkbringer",
		Tool = "ChromaDarkbringer",
		MeshId = "rbxassetid://4730813852",
		TextureId = "rbxassetid://4728494788",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaDarkbringer.Handle.Mesh",
	},

	{
		Name = "ChromaHeartWand",
		Tool = "ChromaHeartWand",
		MeshId = "rbxassetid://77738838473091",
		TextureId = "rbxassetid://78842905206144",
		Size = Vector3.new(0.8040235042572021, 2.2835466861724854, 3.462681293487549),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaHeartWand.Handle.Mesh",
	},

	{
		Name = "ChromaHeartblade",
		Tool = "ChromaHeartblade",
		MeshId = "rbxassetid://6404140078",
		TextureId = "",
		Size = Vector3.new(0.27900001406669617, 3.2899999618530273, 1.1469999551773071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaHeartblade.Handle.Mesh",
	},

	{
		Name = "ChromaIceBreaker",
		Tool = "ChromaIceBreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6124173821",
		Size = Vector3.new(0.4553804397583008, 3.439777135848999, 2.660630226135254),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaIceBreaker.Handle.Mesh",
	},

	{
		Name = "ChromaIceblaster",
		Tool = "ChromaIceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6120563948",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaIceblaster.Handle.Mesh",
	},

	{
		Name = "ChromaIcecrusher",
		Tool = "ChromaIcecrusher",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://11850483027",
		Size = Vector3.new(0.42399999499320984, 3.1740000247955322, 2.0190000534057617),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaIcecrusher.Handle.Mesh",
	},

	{
		Name = "ChromaLightbringer",
		Tool = "ChromaLightbringer",
		MeshId = "rbxassetid://4730813852",
		TextureId = "rbxassetid://4728487789",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaLightbringer.Handle.Mesh",
	},

	{
		Name = "ChromaSakura_K",
		Tool = "ChromaSakura_K",
		MeshId = "rbxassetid://12307707430",
		TextureId = "rbxassetid://12307707797",
		Size = Vector3.new(0.5, 3.5, 0.5),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaSakura_K.Handle.Mesh",
	},

	{
		Name = "ChromaScythe",
		Tool = "ChromaScythe",
		MeshId = "rbxassetid://305826272",
		TextureId = "rbxassetid://2551856737",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaScythe.Handle.Mesh",
	},

	{
		Name = "ChromaSweet",
		Tool = "ChromaSweet",
		MeshId = "rbxassetid://88250692342609",
		TextureId = "rbxassetid://120707737118924",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = true,
		Source = "ReplicatedStorage.Folder.ChromaSweet.Handle.Mesh",
	},

	{
		Name = "ChromaTreat",
		Tool = "ChromaTreat",
		MeshId = "rbxassetid://135790480817772",
		TextureId = "rbxassetid://86649236464456",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ChromaTreat.Handle.Mesh",
	},

	{
		Name = "Chromatic_G_2023",
		Tool = "Chromatic_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://12937562728",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Chromatic_G_2023.Handle.Mesh",
	},

	{
		Name = "Chromatic_K_2023",
		Tool = "Chromatic_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12927939898",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Chromatic_K_2023.Handle.Mesh",
	},

	{
		Name = "Circuit",
		Tool = "Circuit",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://155356565",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Circuit.Handle.Mesh",
	},

	{
		Name = "Clan",
		Tool = "Clan",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161495171",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clan.Handle.Mesh",
	},

	{
		Name = "Clockwork",
		Tool = "Clockwork",
		MeshId = "rbxassetid://352571495",
		TextureId = "rbxassetid://352570357",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clockwork.Handle.Mesh",
	},

	{
		Name = "Clown",
		Tool = "Clown",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://197196512",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clown.Handle.Mesh",
	},

	{
		Name = "Clown_G",
		Tool = "Clown_G",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4663058089",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clown_G.Handle.Mesh",
	},

	{
		Name = "Clown_G_2024",
		Tool = "Clown_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://83300450889998",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clown_G_2024.Handle.Mesh",
	},

	{
		Name = "Clownfish_G_2024",
		Tool = "Clownfish_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18321972771",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clownfish_G_2024.Handle.Mesh",
	},

	{
		Name = "Clownfish_K_2024",
		Tool = "Clownfish_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18321899540",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Clownfish_K_2024.Handle.Mesh",
	},

	{
		Name = "Coal",
		Tool = "Coal",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268280806",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal.Handle.Mesh",
	},

	{
		Name = "Coal_G_2018",
		Tool = "Coal_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2669120201",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_G_2018.Handle.Mesh",
	},

	{
		Name = "Coal_G_2021",
		Tool = "Coal_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275033614",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_G_2021.Handle.Mesh",
	},

	{
		Name = "Coal_G_2022",
		Tool = "Coal_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11809114380",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_G_2022.Handle.Mesh",
	},

	{
		Name = "Coal_K_2018",
		Tool = "Coal_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2669120347",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_K_2018.Handle.Mesh",
	},

	{
		Name = "Coal_K_2021",
		Tool = "Coal_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275036203",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_K_2021.Handle.Mesh",
	},

	{
		Name = "Coal_K_2022",
		Tool = "Coal_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11802560508",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Coal_K_2022.Handle.Mesh",
	},

	{
		Name = "Cola",
		Tool = "Cola",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://320398770",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cola.Handle.Mesh",
	},

	{
		Name = "Cold",
		Tool = "Cold",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://161309663",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cold.Handle.Mesh",
	},

	{
		Name = "Combat",
		Tool = "Combat",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://3183532466",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Combat.Handle.Mesh",
	},

	{
		Name = "Combat2",
		Tool = "Combat2",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://6932358967",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Combat2.Handle.Mesh",
	},

	{
		Name = "Constellation",
		Tool = "Constellation",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://79010754957272",
		Size = Vector3.new(0.5371553897857666, 1.5830214023590088, 2.3671317100524902),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation.Handle",
	},

	{
		Name = "ConstellationChroma",
		Tool = "ConstellationChroma",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://123603327635244",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ConstellationChroma.Handle.Mesh",
	},

	{
		Name = "Constellation_Bronze",
		Tool = "Constellation_Bronze",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://84518828644661",
		Size = Vector3.new(0.5371553897857666, 1.5830214023590088, 2.3671317100524902),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_Bronze.Handle",
	},

	{
		Name = "Constellation_G_2024",
		Tool = "Constellation_G_2024",
		MeshId = "rbxassetid://6600918074",
		TextureId = "rbxassetid://140562006976774",
		Size = Vector3.new(1.8300000429153442, 0.949999988079071, 0.32499998807907104),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_G_2024.Handle",
	},

	{
		Name = "Constellation_Gold",
		Tool = "Constellation_Gold",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://129541547610095",
		Size = Vector3.new(0.5371553897857666, 1.5830214023590088, 2.3671317100524902),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_Gold.Handle",
	},

	{
		Name = "Constellation_K_2024",
		Tool = "Constellation_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://125699146017319",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_K_2024.Handle.Mesh",
	},

	{
		Name = "Constellation_Red",
		Tool = "Constellation_Red",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://97613309386908",
		Size = Vector3.new(0.5371553897857666, 1.5830214023590088, 2.3671317100524902),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_Red.Handle",
	},

	{
		Name = "Constellation_Silver",
		Tool = "Constellation_Silver",
		MeshId = "rbxassetid://124598402927958",
		TextureId = "rbxassetid://88000474566609",
		Size = Vector3.new(0.5371553897857666, 1.5830214023590088, 2.3671317100524902),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Constellation_Silver.Handle",
	},

	{
		Name = "Cookie_G_2021",
		Tool = "Cookie_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275032831",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cookie_G_2021.Handle.Mesh",
	},

	{
		Name = "Cookie_K_2021",
		Tool = "Cookie_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275035982",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cookie_K_2021.Handle.Mesh",
	},

	{
		Name = "Cookieblade",
		Tool = "Cookieblade",
		MeshId = "rbxassetid://6123168377",
		TextureId = "rbxassetid://6123168583",
		Size = Vector3.new(0.233001708984375, 2.640000343322754, 0.899993896484375),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cookieblade.Handle",
	},

	{
		Name = "Copper",
		Tool = "Copper",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://3183401534",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Copper.Handle.Mesh",
	},

	{
		Name = "Corl",
		Tool = "Corl",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://545392975",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Corl.Handle.Mesh",
	},

	{
		Name = "CottonCandy",
		Tool = "CottonCandy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://435754345",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.CottonCandy.Handle.Mesh",
	},

	{
		Name = "Cracks_G_2021",
		Tool = "Cracks_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758056748",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cracks_G_2021.Handle.Mesh",
	},

	{
		Name = "Cracks_K_2021",
		Tool = "Cracks_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756612787",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cracks_K_2021.Handle.Mesh",
	},

	{
		Name = "Crimson_Periastron",
		Tool = "Crimson_Periastron",
		MeshId = "rbxassetid://80557857",
		TextureId = "rbxassetid://99058823",
		Size = Vector3.new(1, 0.6000000238418579, 5.19999885559082),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Crimson_Periastron.Handle.Mesh",
	},

	{
		Name = "Cursed_G_2024",
		Tool = "Cursed_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://134978959658778",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cursed_G_2024.Handle.Mesh",
	},

	{
		Name = "Cursed_K_2024",
		Tool = "Cursed_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://137589393181339",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Cursed_K_2024.Handle.Mesh",
	},

	{
		Name = "Damp",
		Tool = "Damp",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161673042",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Damp.Handle.Mesh",
	},

	{
		Name = "Dark_G_2023",
		Tool = "Dark_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15082826256",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Dark_G_2023.Handle.Mesh",
	},

	{
		Name = "Dark_K_2023",
		Tool = "Dark_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15081468336",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Dark_K_2023.Handle.Mesh",
	},

	{
		Name = "Darkbringer",
		Tool = "Darkbringer",
		MeshId = "rbxassetid://4730813852",
		TextureId = "rbxassetid://4728494788",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Darkbringer.Handle.Mesh",
	},

	{
		Name = "Darkness_G_2022",
		Tool = "Darkness_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11242038756",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Darkness_G_2022.Handle.Mesh",
	},

	{
		Name = "Darkness_K_2022",
		Tool = "Darkness_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217282454",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Darkness_K_2022.Handle.Mesh",
	},

	{
		Name = "Darkshot",
		Tool = "Darkshot",
		MeshId = "rbxassetid://15027451531",
		TextureId = "rbxassetid://15027451643",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Darkshot.Handle.Mesh",
	},

	{
		Name = "Darksword",
		Tool = "Darksword",
		MeshId = "rbxassetid://15020899066",
		TextureId = "rbxassetid://15020899218",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Darksword.Handle.Mesh",
	},

	{
		Name = "Dartbringer",
		Tool = "Dartbringer",
		MeshId = "rbxassetid://6689725889",
		TextureId = "rbxassetid://6689727175",
		Size = Vector3.new(0.4266298711299896, 1.3700000047683716, 1.6499967575073242),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Dartbringer.Handle.Mesh",
	},

	{
		Name = "Deathshard",
		Tool = "Deathshard",
		MeshId = "rbxassetid://62275962",
		TextureId = "rbxassetid://192567360",
		Size = Vector3.new(0.7, 0.7, 0.7),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Deathshard.Handle.Mesh",
	},

	{
		Name = "DeathshardChroma",
		Tool = "DeathshardChroma",
		MeshId = "rbxassetid://62275962",
		TextureId = "rbxassetid://3167029738",
		Size = Vector3.new(0.7, 0.7, 0.7),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.DeathshardChroma.Handle.Mesh",
	},

	{
		Name = "Decorated_K_2025",
		Tool = "Decorated_K_2025",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://136070215876929",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Decorated_K_2025.Handle.Mesh",
	},

	{
		Name = "DeepSea",
		Tool = "DeepSea",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659571247",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.DeepSea.Handle.Mesh",
	},

	{
		Name = "DefaultGun",
		Tool = "DefaultGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://91723031",
		Size = Vector3.new(1.6, 1.6, 1.6),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.DefaultGun.Handle.Mesh",
	},

	{
		Name = "DefaultKnife",
		Tool = "DefaultKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.DefaultKnife.Handle.Mesh",
	},

	{
		Name = "Denis",
		Tool = "Denis",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://539825831",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Denis.Handle.Mesh",
	},

	{
		Name = "Dew",
		Tool = "Dew",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621267",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Dew.Handle.Mesh",
	},

	{
		Name = "Disint",
		Tool = "Disint",
		MeshId = "rbxassetid://18265627",
		TextureId = "rbxassetid://18265614",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Disint.Handle.Mesh",
	},

	{
		Name = "Doge",
		Tool = "Doge",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://159758190",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Doge.Handle.Mesh",
	},

	{
		Name = "Donut",
		Tool = "Donut",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161529618",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Donut.Handle.Mesh",
	},

	{
		Name = "Doritos",
		Tool = "Doritos",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621310",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Doritos.Handle.Mesh",
	},

	{
		Name = "Dungeon",
		Tool = "Dungeon",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409814",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Dungeon.Handle.Mesh",
	},

	{
		Name = "Eclipse_K_2023",
		Tool = "Eclipse_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15081587332",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eclipse_K_2023.Handle.Mesh",
	},

	{
		Name = "Eco",
		Tool = "Eco",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566401",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eco.Handle.Mesh",
	},

	{
		Name = "Ecto",
		Tool = "Ecto",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1132715027",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ecto.Handle.Mesh",
	},

	{
		Name = "Eggblade",
		Tool = "Eggblade",
		MeshId = "rbxassetid://6596834762",
		TextureId = "rbxassetid://6596824396",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eggblade.Handle",
	},

	{
		Name = "Eggs",
		Tool = "Eggs",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://386052294",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eggs.Handle.Mesh",
	},

	{
		Name = "ElderwoodGun",
		Tool = "ElderwoodGun",
		MeshId = "rbxassetid://4210029922",
		TextureId = "rbxassetid://4210038158",
		Size = Vector3.new(1.4900001287460327, 1.1320445537567139, 0.3586988151073456),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodGun.Handle",
	},

	{
		Name = "ElderwoodGunBlue",
		Tool = "ElderwoodGunBlue",
		MeshId = "rbxassetid://4210029922",
		TextureId = "rbxassetid://5827160585",
		Size = Vector3.new(0.9900000095367432, 0.5249702334403992, 0.14760228991508484),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodGunBlue.Handle.Mesh",
	},

	{
		Name = "ElderwoodGunBronze",
		Tool = "ElderwoodGunBronze",
		MeshId = "rbxassetid://4210029922",
		TextureId = "rbxassetid://5355144249",
		Size = Vector3.new(0.9900000095367432, 0.5249702334403992, 0.14760228991508484),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodGunBronze.Handle.Mesh",
	},

	{
		Name = "ElderwoodGunGold",
		Tool = "ElderwoodGunGold",
		MeshId = "rbxassetid://4210029922",
		TextureId = "rbxassetid://126940459873407",
		Size = Vector3.new(0.9900000095367432, 0.5249702334403992, 0.14760228991508484),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodGunGold.Handle.Mesh",
	},

	{
		Name = "ElderwoodGunSilver",
		Tool = "ElderwoodGunSilver",
		MeshId = "rbxassetid://4210029922",
		TextureId = "rbxassetid://5357372620",
		Size = Vector3.new(0.9900000095367432, 0.5249702334403992, 0.14760228991508484),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodGunSilver.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnife",
		Tool = "ElderwoodKnife",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://11238176757",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnife.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnifeBlue",
		Tool = "ElderwoodKnifeBlue",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://14741388867",
		Size = Vector3.new(0.2759999930858612, 3.5309998989105225, 1.0410000085830688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnifeBlue.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnifeBronze",
		Tool = "ElderwoodKnifeBronze",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://14741383535",
		Size = Vector3.new(0.2759999930858612, 3.5309998989105225, 1.0410000085830688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnifeBronze.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnifeChroma",
		Tool = "ElderwoodKnifeChroma",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://11238176757",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnifeChroma.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnifeGold",
		Tool = "ElderwoodKnifeGold",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://14741358103",
		Size = Vector3.new(0.2759999930858612, 3.5309998989105225, 1.0410000085830688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnifeGold.Handle.Mesh",
	},

	{
		Name = "ElderwoodKnifeSilver",
		Tool = "ElderwoodKnifeSilver",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://14741374486",
		Size = Vector3.new(0.2759999930858612, 3.5309998989105225, 1.0410000085830688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodKnifeSilver.Handle.Mesh",
	},

	{
		Name = "ElderwoodPink",
		Tool = "ElderwoodPink",
		MeshId = "rbxassetid://11238166013",
		TextureId = "rbxassetid://105136616973432",
		Size = Vector3.new(0.2759999930858612, 3.5309998989105225, 1.0410000085830688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodPink.Handle.Mesh",
	},

	{
		Name = "ElderwoodScythe",
		Tool = "ElderwoodScythe",
		MeshId = "rbxassetid://4217523241",
		TextureId = "rbxassetid://4210044808",
		Size = Vector3.new(0.28809061646461487, 3.8218226432800293, 2.6152942180633545),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElderwoodScythe.Handle",
	},

	{
		Name = "Elf",
		Tool = "Elf",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5364286895",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Elf.Handle.Mesh",
	},

	{
		Name = "Elf2017",
		Tool = "Elf2017",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268702375",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Elf2017.Handle.Mesh",
	},

	{
		Name = "ElfGun",
		Tool = "ElfGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://86899632763415",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.ElfGun.Handle.Mesh",
	},

	{
		Name = "Elf_G_2023",
		Tool = "Elf_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15349698419",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Elf_G_2023.Handle.Mesh",
	},

	{
		Name = "Elite",
		Tool = "Elite",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://241077941",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Elite.Handle.Mesh",
	},

	{
		Name = "EliteBlue",
		Tool = "EliteBlue",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1269369946",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.EliteBlue.Handle.Mesh",
	},

	{
		Name = "EliteGreen",
		Tool = "EliteGreen",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://137946316996767",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.EliteGreen.Handle.Mesh",
	},

	{
		Name = "Emerald",
		Tool = "Emerald",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://173946596",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Emerald.Handle.Mesh",
	},

	{
		Name = "Emptybringer",
		Tool = "Emptybringer",
		MeshId = "rbxassetid://4730813852",
		TextureId = "rbxassetid://4728494788",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Emptybringer.Handle.Mesh",
	},

	{
		Name = "Energized_G_2025",
		Tool = "Energized_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://96975375477860",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Energized_G_2025.Handle.Mesh",
	},

	{
		Name = "Energized_K_2025",
		Tool = "Energized_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://104379655242590",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Energized_K_2025.Handle.Mesh",
	},

	{
		Name = "Engraved",
		Tool = "Engraved",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159670413",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Engraved.Handle.Mesh",
	},

	{
		Name = "Eternal",
		Tool = "Eternal",
		MeshId = "rbxassetid://532155954",
		TextureId = "rbxassetid://532156041",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eternal.Handle.Mesh",
	},

	{
		Name = "Eternal2",
		Tool = "Eternal2",
		MeshId = "rbxassetid://532155954",
		TextureId = "rbxassetid://2545251852",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eternal2.Handle.Mesh",
	},

	{
		Name = "Eternal3",
		Tool = "Eternal3",
		MeshId = "rbxassetid://3132923779",
		TextureId = "rbxassetid://3279683257",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eternal3.Handle.Mesh",
	},

	{
		Name = "Eternal4",
		Tool = "Eternal4",
		MeshId = "rbxassetid://3132923779",
		TextureId = "rbxassetid://4999951444",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eternal4.Handle.Mesh",
	},

	{
		Name = "EternalCane",
		Tool = "EternalCane",
		MeshId = "rbxassetid://3132923779",
		TextureId = "rbxassetid://4488374804",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.EternalCane.Handle.Mesh",
	},

	{
		Name = "Euro",
		Tool = "Euro",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://240940193",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Euro.Handle.Mesh",
	},

	{
		Name = "EvilIcecrusher",
		Tool = "EvilIcecrusher",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://13417053414",
		Size = Vector3.new(1.024999976158142, 3.680999994277954, 2.4100000858306885),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.EvilIcecrusher.Handle.Mesh",
	},

	{
		Name = "Eyeball_K_2022",
		Tool = "Eyeball_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217645677",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eyeball_K_2022.Handle.Mesh",
	},

	{
		Name = "Eyes_G_2020",
		Tool = "Eyes_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866372450",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eyes_G_2020.Handle.Mesh",
	},

	{
		Name = "Eyes_G_2025",
		Tool = "Eyes_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://81682248459741",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eyes_G_2025.Handle.Mesh",
	},

	{
		Name = "Eyes_K_2020",
		Tool = "Eyes_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866358413",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Eyes_K_2020.Handle.Mesh",
	},

	{
		Name = "Fade",
		Tool = "Fade",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://288136894",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fade.Handle.Mesh",
	},

	{
		Name = "FairyAxe",
		Tool = "FairyAxe",
		MeshId = "rbxassetid://109616135",
		TextureId = "rbxassetid://98547701848488",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FairyAxe.Handle.Mesh",
	},

	{
		Name = "FallCamo_G_2021",
		Tool = "FallCamo_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758737021",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FallCamo_G_2021.Handle.Mesh",
	},

	{
		Name = "Fall_G_2025",
		Tool = "Fall_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://72560612536240",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fall_G_2025.Handle.Mesh",
	},

	{
		Name = "Fallout",
		Tool = "Fallout",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://172596465",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fallout.Handle.Mesh",
	},

	{
		Name = "Fang",
		Tool = "Fang",
		MeshId = "rbxassetid://117500241",
		TextureId = "rbxassetid://117500388",
		Size = Vector3.new(0.3, 0.3, 0.3),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fang.Handle.Mesh",
	},

	{
		Name = "FangChroma",
		Tool = "FangChroma",
		MeshId = "rbxassetid://117500241",
		TextureId = "",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FangChroma.Handle.Mesh",
	},

	{
		Name = "Fanta",
		Tool = "Fanta",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621067",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fanta.Handle.Mesh",
	},

	{
		Name = "Fireplace_K_2023",
		Tool = "Fireplace_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15382624195",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fireplace_K_2023.Handle.Mesh",
	},

	{
		Name = "Flames",
		Tool = "Flames",
		MeshId = "rbxassetid://238314098",
		TextureId = "rbxassetid://238314124",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Flames.Handle.Mesh",
	},

	{
		Name = "Flamingo_K",
		Tool = "Flamingo_K",
		MeshId = "rbxassetid://82883202565191",
		TextureId = "rbxassetid://71611293732462",
		Size = Vector3.new(0.3657360076904297, 2.6708009243011475, 0.9902259707450867),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Flamingo_K.Handle",
	},

	{
		Name = "Floatie_G_2024",
		Tool = "Floatie_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18321972013",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Floatie_G_2024.Handle.Mesh",
	},

	{
		Name = "Flora",
		Tool = "Flora",
		MeshId = "rbxassetid://108253816085047",
		TextureId = "rbxassetid://116621225933096",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Flora.Handle",
	},

	{
		Name = "Floral_G_2024",
		Tool = "Floral_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18323742549",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Floral_G_2024.Handle.Mesh",
	},

	{
		Name = "Floral_K_2023",
		Tool = "Floral_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13894957068",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Floral_K_2023.Handle.Mesh",
	},

	{
		Name = "FlowerwoodGun",
		Tool = "FlowerwoodGun",
		MeshId = "rbxassetid://16895099893",
		TextureId = "rbxassetid://16895448237",
		Size = Vector3.new(0.05, 0.05, 0.05),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FlowerwoodGun.Handle",
	},

	{
		Name = "FlowerwoodGun_Pink",
		Tool = "FlowerwoodGun_Pink",
		MeshId = "rbxassetid://16895099893",
		TextureId = "rbxassetid://113757236242216",
		Size = Vector3.new(0.6652389764785767, 1.5399999618530273, 2.5944900512695312),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FlowerwoodGun_Pink.Handle",
	},

	{
		Name = "FlowerwoodKnife",
		Tool = "FlowerwoodKnife",
		MeshId = "rbxassetid://16883629972",
		TextureId = "rbxassetid://16895441338",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FlowerwoodKnife.Handle",
	},

	{
		Name = "FlowerwoodKnife_Pink",
		Tool = "FlowerwoodKnife_Pink",
		MeshId = "rbxassetid://16883629972",
		TextureId = "rbxassetid://120209611611400",
		Size = Vector3.new(0.44446584582328796, 3.9581594467163086, 1.0733442306518555),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.FlowerwoodKnife_Pink.Handle",
	},

	{
		Name = "Forest_G_2024",
		Tool = "Forest_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://114741314080418",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Forest_G_2024.Handle.Mesh",
	},

	{
		Name = "Fragile_G_2023",
		Tool = "Fragile_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://12942152157",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fragile_G_2023.Handle.Mesh",
	},

	{
		Name = "Fragile_K_2023",
		Tool = "Fragile_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12936083164",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fragile_K_2023.Handle.Mesh",
	},

	{
		Name = "Frostbite",
		Tool = "Frostbite",
		MeshId = "rbxassetid://4528435571",
		TextureId = "rbxassetid://4528435630",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostbite.Handle.Mesh",
	},

	{
		Name = "Frosted_G_2019",
		Tool = "Frosted_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4528661069",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frosted_G_2019.Handle.Mesh",
	},

	{
		Name = "Frosted_K_2019",
		Tool = "Frosted_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534831933",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frosted_K_2019.Handle.Mesh",
	},

	{
		Name = "Frostfade_G_2023",
		Tool = "Frostfade_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15383614259",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostfade_G_2023.Handle.Mesh",
	},

	{
		Name = "Frostfade_K_2023",
		Tool = "Frostfade_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://15344578184",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostfade_K_2023.Handle.Mesh",
	},

	{
		Name = "Frostflame_G_2024",
		Tool = "Frostflame_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://76059118984667",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostflame_G_2024.Handle.Mesh",
	},

	{
		Name = "Frostflame_K_2024",
		Tool = "Frostflame_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://121019096457803",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostflame_K_2024.Handle.Mesh",
	},

	{
		Name = "Frostsaber",
		Tool = "Frostsaber",
		MeshId = "rbxassetid://1192795322",
		TextureId = "rbxassetid://1192795941",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frostsaber.Handle.Mesh",
	},

	{
		Name = "Frosty",
		Tool = "Frosty",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268375270",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frosty.Handle.Mesh",
	},

	{
		Name = "Frozen_25_xmas",
		Tool = "Frozen_25_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://91723031",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_25_xmas.Handle.Mesh",
	},

	{
		Name = "Frozen_G_2019",
		Tool = "Frozen_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4528661973",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_G_2019.Handle.Mesh",
	},

	{
		Name = "Frozen_G_2022",
		Tool = "Frozen_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4528661973",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_G_2022.Handle.Mesh",
	},

	{
		Name = "Frozen_G_2023",
		Tool = "Frozen_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15344638282",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_G_2023.Handle.Mesh",
	},

	{
		Name = "Frozen_K_2019",
		Tool = "Frozen_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4528568803",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_K_2019.Handle.Mesh",
	},

	{
		Name = "Frozen_K_2022",
		Tool = "Frozen_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://4528568803",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_K_2022.Handle.Mesh",
	},

	{
		Name = "Frozen_K_2023",
		Tool = "Frozen_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15382634403",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_K_2023.Handle.Mesh",
	},

	{
		Name = "Frozen_K_2025_xmas",
		Tool = "Frozen_K_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://103391577880162",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Frozen_K_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Fusion",
		Tool = "Fusion",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566399",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Fusion.Handle.Mesh",
	},

	{
		Name = "Future",
		Tool = "Future",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://163926951",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Future.Handle.Mesh",
	},

	{
		Name = "Galactic",
		Tool = "Galactic",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://173912996",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Galactic.Handle.Mesh",
	},

	{
		Name = "Galaxy",
		Tool = "Galaxy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://192367012",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Galaxy.Handle.Mesh",
	},

	{
		Name = "Gemstone",
		Tool = "Gemstone",
		MeshId = "rbxassetid://1626714161",
		TextureId = "rbxassetid://3183579677",
		Size = Vector3.new(23, 23, 23),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gemstone.Handle.Mesh",
	},

	{
		Name = "GemstoneChroma",
		Tool = "GemstoneChroma",
		MeshId = "rbxassetid://1626714161",
		TextureId = "rbxassetid://3183577898",
		Size = Vector3.new(23, 23, 23),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GemstoneChroma.Handle.Mesh",
	},

	{
		Name = "Ghastly_G_2023",
		Tool = "Ghastly_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15045716708",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghastly_G_2023.Handle.Mesh",
	},

	{
		Name = "Ghastly_K_2023",
		Tool = "Ghastly_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15029785979",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghastly_K_2023.Handle.Mesh",
	},

	{
		Name = "GhostG2018",
		Tool = "GhostG2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648114",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GhostG2018.Handle.Mesh",
	},

	{
		Name = "GhostK2018",
		Tool = "GhostK2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2514800940",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GhostK2018.Handle.Mesh",
	},

	{
		Name = "GhostKnife",
		Tool = "GhostKnife",
		MeshId = "rbxassetid://64131019",
		TextureId = "rbxassetid://64131051",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GhostKnife.Handle.Mesh",
	},

	{
		Name = "GhostRbx_K_2022",
		Tool = "GhostRbx_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11117362816",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GhostRbx_K_2022.Handle.Mesh",
	},

	{
		Name = "Ghostblade",
		Tool = "Ghostblade",
		MeshId = "rbxassetid://4217554208",
		TextureId = "rbxassetid://4210531490",
		Size = Vector3.new(0.35426053404808044, 2.672701597213745, 0.628343403339386),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghostblade.Handle",
	},

	{
		Name = "Ghostfire_G_2022",
		Tool = "Ghostfire_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11254634864",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghostfire_G_2022.Handle.Mesh",
	},

	{
		Name = "Ghosts_G_2020",
		Tool = "Ghosts_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866372208",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_G_2020.Handle.Mesh",
	},

	{
		Name = "Ghosts_G_2021",
		Tool = "Ghosts_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758397251",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_G_2021.Handle.Mesh",
	},

	{
		Name = "Ghosts_K_2020",
		Tool = "Ghosts_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866362606",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_K_2020.Handle.Mesh",
	},

	{
		Name = "Ghosts_K_2021",
		Tool = "Ghosts_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7808358755",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_K_2021.Handle.Mesh",
	},

	{
		Name = "Ghosts_K_2023",
		Tool = "Ghosts_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15037729398",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_K_2023.Handle.Mesh",
	},

	{
		Name = "Ghosts_K_2024",
		Tool = "Ghosts_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://128247285156176",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosts_K_2024.Handle.Mesh",
	},

	{
		Name = "Ghosty",
		Tool = "Ghosty",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531835085",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ghosty.Handle.Mesh",
	},

	{
		Name = "Gift_G_2020",
		Tool = "Gift_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121866988",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gift_G_2020.Handle.Mesh",
	},

	{
		Name = "Gift_K_2020",
		Tool = "Gift_K_2020",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://6121854102",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gift_K_2020.Handle.Mesh",
	},

	{
		Name = "Giftbag_G_2020",
		Tool = "Giftbag_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121864116",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Giftbag_G_2020.Handle.Mesh",
	},

	{
		Name = "Giftbag_K_2020",
		Tool = "Giftbag_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6121846201",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Giftbag_K_2020.Handle.Mesh",
	},

	{
		Name = "Gifted",
		Tool = "Gifted",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://190131936",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gifted.Handle.Mesh",
	},

	{
		Name = "Gifts_G_2019",
		Tool = "Gifts_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534835908",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gifts_G_2019.Handle.Mesh",
	},

	{
		Name = "Gifts_K_2019",
		Tool = "Gifts_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534828383",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gifts_K_2019.Handle.Mesh",
	},

	{
		Name = "Gifts_K_2024",
		Tool = "Gifts_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://80884642545249",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gifts_K_2024.Handle.Mesh",
	},

	{
		Name = "Giftwrap_K_2021",
		Tool = "Giftwrap_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275035514",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Giftwrap_K_2021.Handle.Mesh",
	},

	{
		Name = "Ginger",
		Tool = "Ginger",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5353674093",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ginger.Handle.Mesh",
	},

	{
		Name = "GingerGun",
		Tool = "GingerGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://140264190350882",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GingerGun.Handle.Mesh",
	},

	{
		Name = "GingerLuger",
		Tool = "GingerLuger",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://2674981863",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GingerLuger.Handle.Mesh",
	},

	{
		Name = "Ginger_G_2018",
		Tool = "Ginger_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2659488834",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ginger_G_2018.Handle.Mesh",
	},

	{
		Name = "Ginger_K_2018",
		Tool = "Ginger_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659488706",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ginger_K_2018.Handle.Mesh",
	},

	{
		Name = "Gingerblade",
		Tool = "Gingerblade",
		MeshId = "rbxassetid://2248389833",
		TextureId = "rbxassetid://2248390749",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerblade.Handle.Mesh",
	},

	{
		Name = "GingerbladeChroma",
		Tool = "GingerbladeChroma",
		MeshId = "rbxassetid://2248389833",
		TextureId = "rbxassetid://2248390749",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GingerbladeChroma.Handle.Mesh",
	},

	{
		Name = "Gingerbread2017",
		Tool = "Gingerbread2017",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268295971",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread2017.Handle.Mesh",
	},

	{
		Name = "Gingerbread_25_xmas",
		Tool = "Gingerbread_25_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://91723031",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_25_xmas.Handle.Mesh",
	},

	{
		Name = "Gingerbread_G_2019",
		Tool = "Gingerbread_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534842979",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_G_2019.Handle.Mesh",
	},

	{
		Name = "Gingerbread_G_2020",
		Tool = "Gingerbread_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121859173",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_G_2020.Handle.Mesh",
	},

	{
		Name = "Gingerbread_G_2021",
		Tool = "Gingerbread_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275032201",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_G_2021.Handle.Mesh",
	},

	{
		Name = "Gingerbread_G_2022",
		Tool = "Gingerbread_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11810420546",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_G_2022.Handle.Mesh",
	},

	{
		Name = "Gingerbread_K_2019",
		Tool = "Gingerbread_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534824961",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_K_2019.Handle.Mesh",
	},

	{
		Name = "Gingerbread_K_2020",
		Tool = "Gingerbread_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6121849468",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_K_2020.Handle.Mesh",
	},

	{
		Name = "Gingerbread_K_2022",
		Tool = "Gingerbread_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11802560347",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_K_2022.Handle.Mesh",
	},

	{
		Name = "Gingerbread_K_2_2025_xmas",
		Tool = "Gingerbread_K_2_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://86777384953188",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerbread_K_2_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Gingercookie_2025_xmas",
		Tool = "Gingercookie_2025_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://112196863510306",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingercookie_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Gingercookie_25_xmas",
		Tool = "Gingercookie_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingercookie_25_xmas.Handle.Mesh",
	},

	{
		Name = "Gingerheart_K_2024",
		Tool = "Gingerheart_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://77403934219171",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerheart_K_2024.Handle.Mesh",
	},

	{
		Name = "Gingermint_G",
		Tool = "Gingermint_G",
		MeshId = "rbxassetid://11866444071",
		TextureId = "rbxassetid://11866444253",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingermint_G.Handle.Mesh",
	},

	{
		Name = "Gingermint_K",
		Tool = "Gingermint_K",
		MeshId = "rbxassetid://11837984324",
		TextureId = "rbxassetid://11837984504",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingermint_K.Handle.Mesh",
	},

	{
		Name = "Gingermint_KChroma",
		Tool = "Gingermint_KChroma",
		MeshId = "rbxassetid://11837984324",
		TextureId = "rbxassetid://11837984504",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingermint_KChroma.Handle.Mesh",
	},

	{
		Name = "Gingerscope",
		Tool = "Gingerscope",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://15409041564",
		Size = Vector3.new(0.1, 0.1, 0.1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope.Handle",
	},

	{
		Name = "Gingerscope_Blue",
		Tool = "Gingerscope_Blue",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://100142423147247",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope_Blue.Handle",
	},

	{
		Name = "Gingerscope_Bronze",
		Tool = "Gingerscope_Bronze",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://93684911189915",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope_Bronze.Handle",
	},

	{
		Name = "Gingerscope_Gold",
		Tool = "Gingerscope_Gold",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://75888854860786",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope_Gold.Handle",
	},

	{
		Name = "Gingerscope_Purple",
		Tool = "Gingerscope_Purple",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://107224776622554",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope_Purple.Handle",
	},

	{
		Name = "Gingerscope_Silver",
		Tool = "Gingerscope_Silver",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://129527194826480",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscope_Silver.Handle",
	},

	{
		Name = "Gingerscythe",
		Tool = "Gingerscythe",
		MeshId = "rbxassetid://15397894467",
		TextureId = "rbxassetid://15397714781",
		Size = Vector3.new(0.34559082984924316, 2.919776678085327, 0.7474207878112793),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe.Handle",
	},

	{
		Name = "Gingerscythe_Ancient",
		Tool = "Gingerscythe_Ancient",
		MeshId = "rbxassetid://15395668244",
		TextureId = "rbxassetid://15409195246",
		Size = Vector3.new(0.19320771098136902, 2.9376256465911865, 3.1887130737304688),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Ancient.Handle",
	},

	{
		Name = "Gingerscythe_Blue",
		Tool = "Gingerscythe_Blue",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://125204450826311",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Blue.Handle",
	},

	{
		Name = "Gingerscythe_Bronze",
		Tool = "Gingerscythe_Bronze",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://88640690300238",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Bronze.Handle",
	},

	{
		Name = "Gingerscythe_Godly",
		Tool = "Gingerscythe_Godly",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://15409017869",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Godly.Handle",
	},

	{
		Name = "Gingerscythe_Gold",
		Tool = "Gingerscythe_Gold",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://87952488946515",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Gold.Handle",
	},

	{
		Name = "Gingerscythe_Legendary",
		Tool = "Gingerscythe_Legendary",
		MeshId = "rbxassetid://15397894467",
		TextureId = "rbxassetid://15397484015",
		Size = Vector3.new(0.34559082984924316, 2.919776678085327, 0.7474207878112793),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Legendary.Handle",
	},

	{
		Name = "Gingerscythe_Purple",
		Tool = "Gingerscythe_Purple",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://127786947607538",
		Size = Vector3.new(0.29823338985443115, 2.606750726699829, 0.6764667630195618),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Purple.Handle.Mesh",
	},

	{
		Name = "Gingerscythe_Silver",
		Tool = "Gingerscythe_Silver",
		MeshId = "rbxassetid://15397282571",
		TextureId = "rbxassetid://110584978259893",
		Size = Vector3.new(0.201806902885437, 3.4817378520965576, 0.8913927674293518),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gingerscythe_Silver.Handle",
	},

	{
		Name = "GlacierGun",
		Tool = "GlacierGun",
		MeshId = "rbxassetid://92163059456910",
		TextureId = "rbxassetid://95126161540202",
		Size = Vector3.new(0.3529999852180481, 1.812000036239624, 1.940000057220459),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GlacierGun.Handle",
	},

	{
		Name = "GlacierGunChroma",
		Tool = "GlacierGunChroma",
		MeshId = "rbxassetid://77235373292363",
		TextureId = "rbxassetid://97280881789656",
		Size = Vector3.new(4, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GlacierGunChroma.Handle.Mesh",
	},

	{
		Name = "GlacierKnife",
		Tool = "GlacierKnife",
		MeshId = "rbxassetid://124453141587170",
		TextureId = "rbxassetid://134889791800687",
		Size = Vector3.new(0.3996419906616211, 4.185398101806641, 0.9929089546203613),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GlacierKnife.Handle",
	},

	{
		Name = "GlacierKnifeChroma",
		Tool = "GlacierKnifeChroma",
		MeshId = "rbxassetid://86944837615327",
		TextureId = "rbxassetid://86253759560362",
		Size = Vector3.new(4, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GlacierKnifeChroma.Handle.Mesh",
	},

	{
		Name = "Glowy_K_2023",
		Tool = "Glowy_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15091291377",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Glowy_K_2023.Handle.Mesh",
	},

	{
		Name = "GoldCandy",
		Tool = "GoldCandy",
		MeshId = "rbxassetid://19040337",
		TextureId = "rbxassetid://2885942815",
		Size = Vector3.new(0.40000006556510925, 4, 0.8000001311302185),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldCandy.Handle.Mesh",
	},

	{
		Name = "GoldHallow",
		Tool = "GoldHallow",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://110453608575133",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldHallow.Handle.Mesh",
	},

	{
		Name = "GoldHarvester",
		Tool = "GoldHarvester",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://8266613473",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldHarvester.Handle.Mesh",
	},

	{
		Name = "GoldIceblaster",
		Tool = "GoldIceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6246949956",
		Size = Vector3.new(0.4432010054588318, 1.9299800395965576, 1.0238100290298462),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldIceblaster.Handle",
	},

	{
		Name = "GoldIcebreaker",
		Tool = "GoldIcebreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6237993632",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldIcebreaker.Handle.Mesh",
	},

	{
		Name = "GoldSugar",
		Tool = "GoldSugar",
		MeshId = "rbxassetid://101086719",
		TextureId = "rbxassetid://77907977694388",
		Size = Vector3.new(1.399999976158142, 1.399999976158142, 3.1113929748535156),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldSugar.Handle.Mesh",
	},

	{
		Name = "GoldVampiresEdge",
		Tool = "GoldVampiresEdge",
		MeshId = "rbxassetid://5841895234",
		TextureId = "rbxassetid://89466623295527",
		Size = Vector3.new(0.39546874165534973, 3.351449966430664, 1.0144076347351074),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldVampiresEdge.Handle",
	},

	{
		Name = "GoldenGun",
		Tool = "GoldenGun",
		MeshId = "rbxassetid://25298496",
		TextureId = "rbxassetid://134632723",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GoldenGun.Handle.Mesh",
	},

	{
		Name = "Goo",
		Tool = "Goo",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://178402851",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Goo.Handle.Mesh",
	},

	{
		Name = "Gothic_G_2021",
		Tool = "Gothic_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758572472",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gothic_G_2021.Handle.Mesh",
	},

	{
		Name = "Gothic_K_2021",
		Tool = "Gothic_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756611289",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gothic_K_2021.Handle.Mesh",
	},

	{
		Name = "Graffiti",
		Tool = "Graffiti",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659573175",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Graffiti.Handle.Mesh",
	},

	{
		Name = "GraveG",
		Tool = "GraveG",
		MeshId = "rbxassetid://2514719081",
		TextureId = "rbxassetid://2513648170",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GraveG.Handle.Mesh",
	},

	{
		Name = "GraveK",
		Tool = "GraveK",
		MeshId = "rbxassetid://2514683594",
		TextureId = "rbxassetid://2513648160",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GraveK.Handle.Mesh",
	},

	{
		Name = "GreenCamo_K_2022",
		Tool = "GreenCamo_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GreenCamo_K_2022.Handle.Mesh",
	},

	{
		Name = "GreenFire",
		Tool = "GreenFire",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268253789",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GreenFire.Handle.Mesh",
	},

	{
		Name = "GreenLuger",
		Tool = "GreenLuger",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://126534866",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GreenLuger.Handle.Mesh",
	},

	{
		Name = "GreenMarble",
		Tool = "GreenMarble",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://110469751488021",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.GreenMarble.Handle.Mesh",
	},

	{
		Name = "Grind",
		Tool = "Grind",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://240937041",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Grind.Handle.Mesh",
	},

	{
		Name = "Gun1",
		Tool = "Gun1",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://79401500",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Gun1.Handle.Mesh",
	},

	{
		Name = "HL2",
		Tool = "HL2",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://181689885",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HL2.Handle.Mesh",
	},

	{
		Name = "Hacker",
		Tool = "Hacker",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://198413638",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hacker.Handle.Mesh",
	},

	{
		Name = "Hallow",
		Tool = "Hallow",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://179155105",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hallow.Handle.Mesh",
	},

	{
		Name = "Hallowgun",
		Tool = "Hallowgun",
		MeshId = "rbxassetid://5841866437",
		TextureId = "rbxassetid://5841868338",
		Size = Vector3.new(2.0399999618530273, 1.0798946619033813, 0.3719349503517151),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hallowgun.Handle",
	},

	{
		Name = "HallowsBlade",
		Tool = "HallowsBlade",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://1132750758",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HallowsBlade.Handle.Mesh",
	},

	{
		Name = "Hallowscythe",
		Tool = "Hallowscythe",
		MeshId = "rbxassetid://5841877975",
		TextureId = "rbxassetid://5841879647",
		Size = Vector3.new(0.3924271762371063, 3.541551351547241, 2.9424967765808105),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hallowscythe.Handle",
	},

	{
		Name = "Handsaw",
		Tool = "Handsaw",
		MeshId = "rbxassetid://54430772",
		TextureId = "rbxassetid://54430066",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Handsaw.Handle.Mesh",
	},

	{
		Name = "Hardened",
		Tool = "Hardened",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://3183401814",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hardened.Handle.Mesh",
	},

	{
		Name = "Harvester",
		Tool = "Harvester",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://7775245551",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Harvester.Handle.Mesh",
	},

	{
		Name = "HarvesterPink",
		Tool = "HarvesterPink",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://102956659472082",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HarvesterPink.Handle.Mesh",
	},

	{
		Name = "HauntedG",
		Tool = "HauntedG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648133",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HauntedG.Handle.Mesh",
	},

	{
		Name = "HauntedHouse_K_2025",
		Tool = "HauntedHouse_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://96264372471629",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		AnimationId = "rbxassetid://85899411018024",
		Source = "ReplicatedStorage.Folder.HauntedHouse_K_2025.Handle.Mesh",
	},

	{
		Name = "HauntedK",
		Tool = "HauntedK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513648134",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HauntedK.Handle.Mesh",
	},

	{
		Name = "Haunted_K_2021",
		Tool = "Haunted_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756611602",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Haunted_K_2021.Handle.Mesh",
	},

	{
		Name = "Hazard_G_2022",
		Tool = "Hazard_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11227146152",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hazard_G_2022.Handle.Mesh",
	},

	{
		Name = "Hazard_K_2022",
		Tool = "Hazard_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217121434",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hazard_K_2022.Handle.Mesh",
	},

	{
		Name = "Hazmat",
		Tool = "Hazmat",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://311358906",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hazmat.Handle.Mesh",
	},

	{
		Name = "HeartWand",
		Tool = "HeartWand",
		MeshId = "rbxassetid://77738838473091",
		TextureId = "rbxassetid://76246633927299",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HeartWand.Handle",
	},

	{
		Name = "Heart_K_2023",
		Tool = "Heart_K_2023",
		MeshId = "rbxassetid://10855586895",
		TextureId = "rbxassetid://12248435132",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Heart_K_2023.Handle.Mesh",
	},

	{
		Name = "Heartblade",
		Tool = "Heartblade",
		MeshId = "rbxassetid://6404140078",
		TextureId = "rbxassetid://6413074818",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Heartblade.Handle",
	},

	{
		Name = "Hearts",
		Tool = "Hearts",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://363311795",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hearts.Handle.Mesh",
	},

	{
		Name = "Heat",
		Tool = "Heat",
		MeshId = "rbxassetid://105333894",
		TextureId = "rbxassetid://105334003",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Heat.Handle.Mesh",
	},

	{
		Name = "HeatChroma",
		Tool = "HeatChroma",
		MeshId = "rbxassetid://105333894",
		TextureId = "rbxassetid://3171194706",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HeatChroma.Handle.Mesh",
	},

	{
		Name = "HighTech",
		Tool = "HighTech",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659546595",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HighTech.Handle.Mesh",
	},

	{
		Name = "Hive",
		Tool = "Hive",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://314921929",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hive.Handle.Mesh",
	},

	{
		Name = "Holly_G_2018",
		Tool = "Holly_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2664997622",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Holly_G_2018.Handle.Mesh",
	},

	{
		Name = "Holly_K_2018",
		Tool = "Holly_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2664997532",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Holly_K_2018.Handle.Mesh",
	},

	{
		Name = "Hologram_G_2025",
		Tool = "Hologram_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://130121703557220",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hologram_G_2025.Handle.Mesh",
	},

	{
		Name = "Hologram_K_2025",
		Tool = "Hologram_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://139678078674313",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hologram_K_2025.Handle.Mesh",
	},

	{
		Name = "HotChocolate_K_2024",
		Tool = "HotChocolate_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://105940775587606",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.HotChocolate_K_2024.Handle.Mesh",
	},

	{
		Name = "Hunter_K_2022",
		Tool = "Hunter_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11246309889",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Hunter_K_2022.Handle.Mesh",
	},

	{
		Name = "Ice",
		Tool = "Ice",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161313071",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ice.Handle.Mesh",
	},

	{
		Name = "IceCamo_G_2021",
		Tool = "IceCamo_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275032575",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceCamo_G_2021.Handle.Mesh",
	},

	{
		Name = "IceDragon",
		Tool = "IceDragon",
		MeshId = "rbxassetid://165708869",
		TextureId = "rbxassetid://165708903",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceDragon.Handle.Mesh",
	},

	{
		Name = "IceHammer",
		Tool = "IceHammer",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11850788417",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammer.Handle.Mesh",
	},

	{
		Name = "IceHammerBronze",
		Tool = "IceHammerBronze",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://88591542566831",
		Size = Vector3.new(1.0251774787902832, 3.680851697921753, 2.410074234008789),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammerBronze.Handle",
	},

	{
		Name = "IceHammerGold",
		Tool = "IceHammerGold",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://132842079563749",
		Size = Vector3.new(1.0251774787902832, 3.680851697921753, 2.410074234008789),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammerGold.Handle",
	},

	{
		Name = "IceHammerPink",
		Tool = "IceHammerPink",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://113648263988320",
		Size = Vector3.new(1.024999976158142, 3.680999994277954, 2.4100000858306885),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammerPink.Handle.Mesh",
	},

	{
		Name = "IceHammerRed",
		Tool = "IceHammerRed",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://71714696554176",
		Size = Vector3.new(1.0251774787902832, 3.680851697921753, 2.410074234008789),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammerRed.Handle",
	},

	{
		Name = "IceHammerSilver",
		Tool = "IceHammerSilver",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://108890976731643",
		Size = Vector3.new(1.0251774787902832, 3.680851697921753, 2.410074234008789),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammerSilver.Handle",
	},

	{
		Name = "IceHammer_Ancient",
		Tool = "IceHammer_Ancient",
		MeshId = "rbxassetid://11848711686",
		TextureId = "rbxassetid://11850483027",
		Size = Vector3.new(0.42399999499320984, 3.1740000247955322, 2.0190000534057617),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammer_Ancient.Handle.Mesh",
	},

	{
		Name = "IceHammer_Godly",
		Tool = "IceHammer_Godly",
		MeshId = "rbxassetid://11855737283",
		TextureId = "rbxassetid://11855737599",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammer_Godly.Handle.Mesh",
	},

	{
		Name = "IceHammer_Legendary",
		Tool = "IceHammer_Legendary",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11851776706",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceHammer_Legendary.Handle.Mesh",
	},

	{
		Name = "IceShard",
		Tool = "IceShard",
		MeshId = "rbxassetid://188539751",
		TextureId = "rbxassetid://188539820",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IceShard.Handle.Mesh",
	},

	{
		Name = "Icebeam",
		Tool = "Icebeam",
		MeshId = "rbxassetid://8310908064",
		TextureId = "rbxassetid://8231066536",
		Size = Vector3.new(0.328000009059906, 2.1989998817443848, 1.090000033378601),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icebeam.Handle",
	},

	{
		Name = "Iceblaster",
		Tool = "Iceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6120563948",
		Size = Vector3.new(0.4432010054588318, 1.9299800395965576, 1.0238100290298462),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Iceblaster.Handle",
	},

	{
		Name = "Icebreaker",
		Tool = "Icebreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6124173821",
		Size = Vector3.new(0.4106239974498749, 3.0742900371551514, 1.9553924798965454),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icebreaker.Handle",
	},

	{
		Name = "Icecracker_K_2020",
		Tool = "Icecracker_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6121847917",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icecracker_K_2020.Handle.Mesh",
	},

	{
		Name = "Icedriller_G_2020",
		Tool = "Icedriller_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121865669",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icedriller_G_2020.Handle.Mesh",
	},

	{
		Name = "Iceflake",
		Tool = "Iceflake",
		MeshId = "rbxassetid://8231045240",
		TextureId = "rbxassetid://8231046270",
		Size = Vector3.new(0.18448802828788757, 3.376877784729004, 0.8257585167884827),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Iceflake.Handle",
	},

	{
		Name = "Icepiercer",
		Tool = "Icepiercer",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://11869075814",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icepiercer.Handle",
	},

	{
		Name = "IcepiercerBronze",
		Tool = "IcepiercerBronze",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://136041212037383",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IcepiercerBronze.Handle",
	},

	{
		Name = "IcepiercerGold",
		Tool = "IcepiercerGold",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://89221956008018",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IcepiercerGold.Handle",
	},

	{
		Name = "IcepiercerPink",
		Tool = "IcepiercerPink",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://115165577845738",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IcepiercerPink.Handle",
	},

	{
		Name = "IcepiercerRed",
		Tool = "IcepiercerRed",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://12196203001",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IcepiercerRed.Handle",
	},

	{
		Name = "IcepiercerSilver",
		Tool = "IcepiercerSilver",
		MeshId = "rbxassetid://11868991644",
		TextureId = "rbxassetid://122077395445706",
		Size = Vector3.new(2.4693942070007324, 0.7526339888572693, 2.738354444503784),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.IcepiercerSilver.Handle",
	},

	{
		Name = "Icewing",
		Tool = "Icewing",
		MeshId = "rbxassetid://3183449780",
		TextureId = "rbxassetid://2279588369",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icewing.Handle.Mesh",
	},

	{
		Name = "Icicles_G_2018",
		Tool = "Icicles_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2659488496",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icicles_G_2018.Handle.Mesh",
	},

	{
		Name = "Icicles_K_2018",
		Tool = "Icicles_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659488219",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Icicles_K_2018.Handle.Mesh",
	},

	{
		Name = "Igloo_G_2024",
		Tool = "Igloo_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://73071132008000",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Igloo_G_2024.Handle.Mesh",
	},

	{
		Name = "Igloo_K_2024",
		Tool = "Igloo_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://126697433046307",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Igloo_K_2024.Handle.Mesh",
	},

	{
		Name = "Imbued",
		Tool = "Imbued",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://156263287",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Imbued.Handle.Mesh",
	},

	{
		Name = "Indy",
		Tool = "Indy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://240943629",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Indy.Handle.Mesh",
	},

	{
		Name = "Infected",
		Tool = "Infected",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://6978645136",
		Size = Vector3.new(1, 3, 1),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Infected.Handle.Mesh",
	},

	{
		Name = "Infected_G_2022",
		Tool = "Infected_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11227996367",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Infected_G_2022.Handle.Mesh",
	},

	{
		Name = "Infected_K_2022",
		Tool = "Infected_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217988441",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Infected_K_2022.Handle.Mesh",
	},

	{
		Name = "Infiltrator",
		Tool = "Infiltrator",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://156265112",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Infiltrator.Handle.Mesh",
	},

	{
		Name = "Iron",
		Tool = "Iron",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159707533",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Iron.Handle.Mesh",
	},

	{
		Name = "Ivory_Periastron",
		Tool = "Ivory_Periastron",
		MeshId = "rbxassetid://80557857",
		TextureId = "rbxassetid://108134401",
		Size = Vector3.new(1, 0.6000000238418579, 5.19999885559082),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Ivory_Periastron.Handle.Mesh",
	},

	{
		Name = "JD",
		Tool = "JD",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://559676009",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.JD.Handle.Mesh",
	},

	{
		Name = "Jack",
		Tool = "Jack",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://315094945",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Jack.Handle.Mesh",
	},

	{
		Name = "Jack_K_2022",
		Tool = "Jack_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11245572024",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Jack_K_2022.Handle.Mesh",
	},

	{
		Name = "Jellyfish_K_2024",
		Tool = "Jellyfish_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18321899333",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Jellyfish_K_2024.Handle.Mesh",
	},

	{
		Name = "Jigsaw",
		Tool = "Jigsaw",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566397",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Jigsaw.Handle.Mesh",
	},

	{
		Name = "Jinglegun",
		Tool = "Jinglegun",
		MeshId = "rbxassetid://6125843704",
		TextureId = "rbxassetid://6125843755",
		Size = Vector3.new(0.7514989972114563, 1.7990490198135376, 1.1753349304199219),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Jinglegun.Handle",
	},

	{
		Name = "Knife1",
		Tool = "Knife1",
		MeshId = "rbxassetid://22771612",
		TextureId = "rbxassetid://22771560",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Knife1.Handle.Mesh",
	},

	{
		Name = "Kool",
		Tool = "Kool",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621021",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Kool.Handle.Mesh",
	},

	{
		Name = "Korblox",
		Tool = "Korblox",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://313561541",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ReplicatedStorage.Folder.Korblox.Handle.Mesh",
	},

	{
		Name = "Wood_K_2023",
		Tool = "Wood_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15036170420",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wood_K_2023.Handle.Mesh",
	},

	{
		Name = "Vines_K_2023",
		Tool = "Vines_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15037307112",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Vines_K_2023.Handle.Mesh",
	},

	{
		Name = "Wolf",
		Tool = "Wolf",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531835092",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wolf.Handle.Mesh",
	},

	{
		Name = "Wrapped_K_2018",
		Tool = "Wrapped_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2672196316",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped_K_2018.Handle.Mesh",
	},

	{
		Name = "Zombie_K_2023",
		Tool = "Zombie_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11218741536",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Zombie_K_2023.Handle.Mesh",
	},

	{
		Name = "Xmas",
		Tool = "Xmas",
		MeshId = "rbxassetid://187852667",
		TextureId = "rbxassetid://187852629",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Xmas.Handle.Mesh",
	},

	{
		Name = "VampireK2018",
		Tool = "VampireK2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513708625",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.VampireK2018.Handle.Mesh",
	},

	{
		Name = "Watergun",
		Tool = "Watergun",
		MeshId = "rbxassetid://18280999342",
		TextureId = "rbxassetid://129036269962882",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.Watergun.Handle",
	},

	{
		Name = "WraithKnife",
		Tool = "WraithKnife",
		MeshId = "rbxassetid://112444333460928",
		TextureId = "rbxassetid://131787177447081",
		Size = Vector3.new(0.2255622148513794, 3.568437337875366, 0.9524789452552795),
		Chroma = false,
		Source = "ServerStorage.Items.WraithKnife.Handle",
	},

	{
		Name = "ltsCometSCOPE",
		Tool = "ltsCometSCOPE",
		MeshId = "rbxassetid://15374602183",
		TextureId = "rbxassetid://17590727852",
		Size = Vector3.new(0.26970499753952026, 1.258154034614563, 4.208714008331299),
		Chroma = false,
		Source = "ServerStorage.Items.ltsCometSCOPE.Handle",
	},

	{
		Name = "WrappedGun",
		Tool = "WrappedGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://103005044438900",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.WrappedGun.Handle.Mesh",
	},

	{
		Name = "Wrapped",
		Tool = "Wrapped",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5366242489",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped.Handle.Mesh",
	},

	{
		Name = "WebbedK",
		Tool = "WebbedK",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210410097",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.WebbedK.Handle.Mesh",
	},

	{
		Name = "Wreaths_K_2024",
		Tool = "Wreaths_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://100835235112831",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wreaths_K_2024.Handle.Mesh",
	},

	{
		Name = "WintersEdge",
		Tool = "WintersEdge",
		MeshId = "rbxassetid://93108071",
		TextureId = "rbxassetid://93112631",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.WintersEdge.Handle.Mesh",
	},

	{
		Name = "Wrapped_G_2024",
		Tool = "Wrapped_G_2024",
		MeshId = "rbxassetid://6600918074",
		TextureId = "rbxassetid://137311445183389",
		Size = Vector3.new(1.8300000429153442, 0.949999988079071, 0.32499998807907104),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped_G_2024.Handle",
	},

	{
		Name = "Vines_G_2023",
		Tool = "Vines_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15045930187",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Vines_G_2023.Handle.Mesh",
	},

	{
		Name = "Xeno_G_2025",
		Tool = "Xeno_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://88277879999522",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Xeno_G_2025.Handle.Mesh",
	},

	{
		Name = "ZombieBat",
		Tool = "ZombieBat",
		MeshId = "rbxassetid://11182796403",
		TextureId = "rbxassetid://11192090515",
		Size = Vector3.new(0.7819544672966003, 3.703059196472168, 0.7837308049201965),
		Chroma = false,
		Source = "ServerStorage.Items.ZombieBat.Handle",
	},

	{
		Name = "Vortex",
		Tool = "Vortex",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://235347825",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Vortex.Handle.Mesh",
	},

	{
		Name = "Watcher_G_2021",
		Tool = "Watcher_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7757907850",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Watcher_G_2021.Handle.Mesh",
	},

	{
		Name = "Zombie",
		Tool = "Zombie",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1782551901",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Zombie.Handle.Mesh",
	},

	{
		Name = "Waves_K_2024",
		Tool = "Waves_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18321898887",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Waves_K_2024.Handle.Mesh",
	},

	{
		Name = "ZombifiedG",
		Tool = "ZombifiedG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://137443657929688",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.ZombifiedG.Handle.Mesh",
	},

	{
		Name = "XenoKnife_Blue",
		Tool = "XenoKnife_Blue",
		MeshId = "rbxassetid://136619680236977",
		TextureId = "rbxassetid://122508100446554",
		Size = Vector3.new(0.24799999594688416, 4.765999794006348, 0.9039999842643738),
		Chroma = false,
		Source = "ServerStorage.Items.XenoKnife_Blue.Handle",
	},

	{
		Name = "WaterBalloons_G_2024",
		Tool = "WaterBalloons_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18323742698",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.WaterBalloons_G_2024.Handle.Mesh",
	},

	{
		Name = "Webs",
		Tool = "Webs",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1133322612",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Webs.Handle.Mesh",
	},

	{
		Name = "WatergunChroma",
		Tool = "WatergunChroma",
		MeshId = "rbxassetid://18280999342",
		TextureId = "rbxassetid://129036269962882",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.WatergunChroma.Handle.Mesh",
	},

	{
		Name = "Zombie_K_2021",
		Tool = "Zombie_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7845697152",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Zombie_K_2021.Handle.Mesh",
	},

	{
		Name = "ZombifiedK",
		Tool = "ZombifiedK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://114781782298919",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.ZombifiedK.Handle.Mesh",
	},

	{
		Name = "ZombieK2018",
		Tool = "ZombieK2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://103728247210594",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.ZombieK2018.Handle.Mesh",
	},

	{
		Name = "Wavy_K_2024",
		Tool = "Wavy_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://16846003250",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wavy_K_2024.Handle.Mesh",
	},

	{
		Name = "Witch",
		Tool = "Witch",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531836445",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Witch.Handle.Mesh",
	},

	{
		Name = "Xbox",
		Tool = "Xbox",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://450680781",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Xbox.Handle.Mesh",
	},

	{
		Name = "Watcher_K_2021",
		Tool = "Watcher_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756613596",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Watcher_K_2021.Handle.Mesh",
	},

	{
		Name = "XmasStickers_K_2021",
		Tool = "XmasStickers_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275034832",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.XmasStickers_K_2021.Handle.Mesh",
	},

	{
		Name = "XenoKnife_Bronze",
		Tool = "XenoKnife_Bronze",
		MeshId = "rbxassetid://136619680236977",
		TextureId = "rbxassetid://103832095576632",
		Size = Vector3.new(0.24799999594688416, 4.765999794006348, 0.9039999842643738),
		Chroma = false,
		Source = "ServerStorage.Items.XenoKnife_Bronze.Handle",
	},

	{
		Name = "VampiresEdge",
		Tool = "VampiresEdge",
		MeshId = "rbxassetid://5841895234",
		TextureId = "rbxassetid://5842343736",
		Size = Vector3.new(0.39546874165534973, 3.351449966430664, 1.0144076347351074),
		Chroma = false,
		Source = "ServerStorage.Items.VampiresEdge.Handle",
	},

	{
		Name = "XenoKnife",
		Tool = "XenoKnife",
		MeshId = "rbxassetid://136619680236977",
		TextureId = "rbxassetid://113651973865393",
		Size = Vector3.new(0.18241123855113983, 3.5055320262908936, 0.6649183630943298),
		Chroma = false,
		Source = "ServerStorage.Items.XenoKnife.Handle",
	},

	{
		Name = "Viper",
		Tool = "Viper",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159991281",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Viper.Handle.Mesh",
	},

	{
		Name = "WitchBrew_K_2024",
		Tool = "WitchBrew_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://101625224396969",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.WitchBrew_K_2024.Handle.Mesh",
	},

	{
		Name = "Waves_K",
		Tool = "Waves_K",
		MeshId = "rbxassetid://13916938702",
		TextureId = "rbxassetid://13916939964",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ServerStorage.Items.Waves_K.Handle",
	},

	{
		Name = "ZombieG2018",
		Tool = "ZombieG2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://140056674605111",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.ZombieG2018.Handle.Mesh",
	},

	{
		Name = "molten",
		Tool = "molten",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://472483450",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.molten.Handle.Mesh",
	},

	{
		Name = "Vampire_G_2022",
		Tool = "Vampire_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11228808312",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Vampire_G_2022.Handle.Mesh",
	},

	{
		Name = "WraithGun",
		Tool = "WraithGun",
		MeshId = "rbxassetid://79527507796407",
		TextureId = "rbxassetid://80102752403085",
		Size = Vector3.new(0.45522749423980713, 1.3727134466171265, 2.2193078994750977),
		Chroma = false,
		Source = "ServerStorage.Items.WraithGun.Handle",
	},

	{
		Name = "iRevolver",
		Tool = "iRevolver",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://160219396",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.iRevolver.Handle.Mesh",
	},

	{
		Name = "Xeno_K_2025",
		Tool = "Xeno_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://101379516858862",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Xeno_K_2025.Handle.Mesh",
	},

	{
		Name = "Wraith_K_2022",
		Tool = "Wraith_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11215449757",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wraith_K_2022.Handle.Mesh",
	},

	{
		Name = "Wanwood",
		Tool = "Wanwood",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://159653725",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wanwood.Handle.Mesh",
	},

	{
		Name = "Wraith_G_2022",
		Tool = "Wraith_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://83637468346183",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Wraith_G_2022.Handle.Mesh",
	},

	{
		Name = "VoidRbx",
		Tool = "VoidRbx",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11548074269",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.VoidRbx.Handle.Mesh",
	},

	{
		Name = "Wrapped_K_2022",
		Tool = "Wrapped_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://331744478",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped_K_2022.Handle.Mesh",
	},

	{
		Name = "YellowSeer",
		Tool = "YellowSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://7443776855",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.YellowSeer.Handle.Mesh",
	},

	{
		Name = "WebbedG",
		Tool = "WebbedG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://130141624327731",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.WebbedG.Handle.Mesh",
	},

	{
		Name = "Wavy_G_2024",
		Tool = "Wavy_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://16846545641",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Wavy_G_2024.Handle.Mesh",
	},

	{
		Name = "WintersEdgeChroma",
		Tool = "WintersEdgeChroma",
		MeshId = "rbxassetid://93108071",
		TextureId = "rbxassetid://93112631",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.WintersEdgeChroma.Handle.Mesh",
	},

	{
		Name = "Wrapped_G_2018",
		Tool = "Wrapped_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://124221082305936",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped_G_2018.Handle.Mesh",
	},

	{
		Name = "Virtual",
		Tool = "Virtual",
		MeshId = "rbxassetid://130101214",
		TextureId = "rbxassetid://386250868",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Virtual.Handle.Mesh",
	},

	{
		Name = "Wooden",
		Tool = "Wooden",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://84001524223260",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Wooden.Handle.Mesh",
	},

	{
		Name = "Witch_K_2022",
		Tool = "Witch_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11245959206",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Witch_K_2022.Handle.Mesh",
	},

	{
		Name = "XmasStickers_G_2021",
		Tool = "XmasStickers_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://110585366732058",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.XmasStickers_G_2021.Handle.Mesh",
	},

	{
		Name = "Zombified_K_2022",
		Tool = "Zombified_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11218741536",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Zombified_K_2022.Handle.Mesh",
	},

	{
		Name = "XenoKnife_Silver",
		Tool = "XenoKnife_Silver",
		MeshId = "rbxassetid://136619680236977",
		TextureId = "rbxassetid://97436539384238",
		Size = Vector3.new(0.24799999594688416, 4.765999794006348, 0.9039999842643738),
		Chroma = false,
		Source = "ServerStorage.Items.XenoKnife_Silver.Handle",
	},

	{
		Name = "Webs_G_2022",
		Tool = "Webs_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11255255382",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Webs_G_2022.Handle.Mesh",
	},

	{
		Name = "Web",
		Tool = "Web",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://315110729",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Web.Handle.Mesh",
	},

	{
		Name = "XenoKnife_Gold",
		Tool = "XenoKnife_Gold",
		MeshId = "rbxassetid://136619680236977",
		TextureId = "rbxassetid://116746179170324",
		Size = Vector3.new(0.24799999594688416, 4.765999794006348, 0.9039999842643738),
		Chroma = false,
		Source = "ServerStorage.Items.XenoKnife_Gold.Handle",
	},

	{
		Name = "Witched",
		Tool = "Witched",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210410129",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Witched.Handle.Mesh",
	},

	{
		Name = "Wrapped_K_2024",
		Tool = "Wrapped_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://73121682334065",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Wrapped_K_2024.Handle.Mesh",
	},

	{
		Name = "Whiteout",
		Tool = "Whiteout",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://191784815",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Whiteout.Handle.Mesh",
	},

	{
		Name = "XenoGun",
		Tool = "XenoGun",
		MeshId = "rbxassetid://96867436912658",
		TextureId = "rbxassetid://103568875118220",
		Size = Vector3.new(0.3046053946018219, 1.4262880086898804, 2.885934829711914),
		Chroma = false,
		Source = "ServerStorage.Items.XenoGun.Handle",
	},

	{
		Name = "Vampire_K_2022",
		Tool = "Vampire_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11215450234",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Vampire_K_2022.Handle.Mesh",
	},

	{
		Name = "VampireGunChroma",
		Tool = "VampireGunChroma",
		MeshId = "rbxassetid://126591885289479",
		TextureId = "rbxassetid://104946799389637",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.VampireGunChroma.Handle.Mesh",
	},

	{
		Name = "VampireGun",
		Tool = "VampireGun",
		MeshId = "rbxassetid://126591885289479",
		TextureId = "rbxassetid://105399657891158",
		Size = Vector3.new(0.4225447177886963, 1.2926558256149292, 2.412714958190918),
		Chroma = false,
		Source = "ServerStorage.Items.VampireGun.Handle",
	},

	{
		Name = "VampireG2018",
		Tool = "VampireG2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513708622",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.VampireG2018.Handle.Mesh",
	},

	{
		Name = "VampireAxe_Silver",
		Tool = "VampireAxe_Silver",
		MeshId = "rbxassetid://92263601594064",
		TextureId = "rbxassetid://78665201678229",
		Size = Vector3.new(0.3119834363460541, 3.627493143081665, 1.9227759838104248),
		Chroma = false,
		Source = "ServerStorage.Items.VampireAxe_Silver.Handle",
	},

	{
		Name = "VampireAxe_Purple",
		Tool = "VampireAxe_Purple",
		MeshId = "rbxassetid://92263601594064",
		TextureId = "rbxassetid://125726996015099",
		Size = Vector3.new(0.3119834363460541, 3.627493143081665, 1.9227759838104248),
		Chroma = false,
		Source = "ServerStorage.Items.VampireAxe_Purple.Handle",
	},

	{
		Name = "VampireAxe_Gold",
		Tool = "VampireAxe_Gold",
		MeshId = "rbxassetid://92263601594064",
		TextureId = "rbxassetid://132843202397207",
		Size = Vector3.new(0.3119834363460541, 3.627493143081665, 1.9227759838104248),
		Chroma = false,
		Source = "ServerStorage.Items.VampireAxe_Gold.Handle",
	},

	{
		Name = "VampireAxe_Bronze",
		Tool = "VampireAxe_Bronze",
		MeshId = "rbxassetid://92263601594064",
		TextureId = "rbxassetid://117917193798694",
		Size = Vector3.new(0.3119834363460541, 3.627493143081665, 1.9227759838104248),
		Chroma = false,
		Source = "ServerStorage.Items.VampireAxe_Bronze.Handle",
	},

	{
		Name = "VampireAxe",
		Tool = "VampireAxe",
		MeshId = "rbxassetid://92263601594064",
		TextureId = "rbxassetid://73008954478338",
		Size = Vector3.new(0.3119834363460541, 3.627493143081665, 1.9227759838104248),
		Chroma = false,
		Source = "ServerStorage.Items.VampireAxe.Handle",
	},

	{
		Name = "Vampire",
		Tool = "Vampire",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531835090",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Vampire.Handle.Mesh",
	},

	{
		Name = "Valentine",
		Tool = "Valentine",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://363139123",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Valentine.Handle.Mesh",
	},

	{
		Name = "Universe",
		Tool = "Universe",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://238542777",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Universe.Handle.Mesh",
	},

	{
		Name = "Umbrella_K_2025_F",
		Tool = "Umbrella_K_2025_F",
		MeshId = "rbxassetid://162383533",
		TextureId = "rbxassetid://14558996395",
		Size = Vector3.new(4.550829887390137, 5.041215419769287, 4.5508599281311035),
		Chroma = false,
		Source = "ServerStorage.Items.Umbrella_K_2025_F.Handle",
	},

	{
		Name = "UFOs_G_2025",
		Tool = "UFOs_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://81729797666928",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.UFOs_G_2025.Handle.Mesh",
	},

	{
		Name = "UFOKnifeChroma",
		Tool = "UFOKnifeChroma",
		MeshId = "rbxassetid://86649405964534",
		TextureId = "rbxassetid://94763497877100",
		Size = Vector3.new(4, 1, 2),
		Chroma = false,
		Source = "ServerStorage.Items.UFOKnifeChroma.Handle.Mesh",
	},

	{
		Name = "UFOKnife",
		Tool = "UFOKnife",
		MeshId = "rbxassetid://86649405964534",
		TextureId = "rbxassetid://94763497877100",
		Size = Vector3.new(0.9328943490982056, 3.7912437915802, 1.054100513458252),
		Chroma = false,
		Source = "ServerStorage.Items.UFOKnife.Handle",
	},

	{
		Name = "Turtle_K_2024",
		Tool = "Turtle_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://127394910308086",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Turtle_K_2024.Handle.Mesh",
	},

	{
		Name = "Turkey2023",
		Tool = "Turkey2023",
		MeshId = "rbxassetid://15320557481",
		TextureId = "rbxassetid://86999625612475",
		Size = Vector3.new(0.5, 0.5, 0.5),
		Chroma = false,
		Source = "ServerStorage.Items.Turkey2023.Handle.Mesh",
	},

	{
		Name = "TungTung",
		Tool = "TungTung",
		MeshId = "rbxassetid://82464974337955",
		TextureId = "rbxassetid://105445253181063",
		Size = Vector3.new(1.6465920209884644, 3.299999952316284, 1.808820366859436),
		Chroma = false,
		Source = "ServerStorage.Items.TungTung.Handle",
	},

	{
		Name = "Tulip",
		Tool = "Tulip",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://387468258",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tulip.Handle.Mesh",
	},

	{
		Name = "Trees_K_2020",
		Tool = "Trees_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://75614417738235",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Trees_K_2020.Handle.Mesh",
	},

	{
		Name = "Tree_K_2023",
		Tool = "Tree_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tree_K_2023.Handle.Mesh",
	},

	{
		Name = "Tree_K_2022",
		Tool = "Tree_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11803199540",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tree_K_2022.Handle.Mesh",
	},

	{
		Name = "Tree_K_2021",
		Tool = "Tree_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275034131",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tree_K_2021.Handle.Mesh",
	},

	{
		Name = "Tree_G_2022",
		Tool = "Tree_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://77983878883558",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Tree_G_2022.Handle.Mesh",
	},

	{
		Name = "TreeKnife2023Chroma",
		Tool = "TreeKnife2023Chroma",
		MeshId = "rbxassetid://15408280573",
		TextureId = "rbxassetid://125133515152716",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.Mesh",
	},

	{
		Name = "LightParts1",
		Tool = "LightParts1",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.LightParts1.LightPart",
	},

	{
		Name = "LightParts2",
		Tool = "LightParts2",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.LightParts2.LightPart",
	},

	{
		Name = "LightParts3",
		Tool = "LightParts3",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.LightParts3.LightPart",
	},

	{
		Name = "LightParts4",
		Tool = "LightParts4",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.LightParts4.LightPart",
	},

	{
		Name = "LightParts5",
		Tool = "LightParts5",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023Chroma.Handle.LightParts5.LightPart",
	},

	{
		Name = "TreeKnife2023",
		Tool = "TreeKnife2023",
		MeshId = "rbxassetid://15408280573",
		TextureId = "rbxassetid://125133515152716",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023.Handle.Mesh",
	},

	{
		Name = "LightParts",
		Tool = "LightParts",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.26999998092651367, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeKnife2023.Handle.LightParts.LightPart",
	},

	{
		Name = "TreeGun2023Chroma",
		Tool = "TreeGun2023Chroma",
		MeshId = "rbxassetid://15408863676",
		TextureId = "rbxassetid://83856783954564",
		Size = Vector3.new(4, 1, 2),
		Chroma = false,
		Source = "ServerStorage.Items.TreeGun2023Chroma.Handle.Mesh",
	},

	{
		Name = "LightParts",
		Tool = "LightParts",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.20552003383636475, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeGun2023Chroma.Handle.LightParts.LightPart",
	},

	{
		Name = "TreeGun2023",
		Tool = "TreeGun2023",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.20552003383636475, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeGun2023.Handle.LightParts.LightPart",
	},

	{
		Name = "LightParts",
		Tool = "LightParts",
		MeshId = "rbxassetid://13605075077",
		TextureId = "",
		Size = Vector3.new(0.059477441012859344, 0.20552003383636475, 0.07893669605255127),
		Chroma = false,
		Source = "ServerStorage.Items.TreeGun2023.Handle.LightParts.LightPart",
	},

	{
		Name = "TreeGun",
		Tool = "TreeGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://106909830955114",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.TreeGun.Handle.Mesh",
	},

	{
		Name = "Tree2017",
		Tool = "Tree2017",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://108294449974966",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tree2017.Handle.Mesh",
	},

	{
		Name = "Tree",
		Tool = "Tree",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5838589224",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Tree.Handle.Mesh",
	},

	{
		Name = "Treats_K_2025",
		Tool = "Treats_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://117148660034316",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Treats_K_2025.Handle.Mesh",
	},

	{
		Name = "Treats_G_2025",
		Tool = "Treats_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://121735248301175",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Treats_G_2025.Handle.Mesh",
	},

	{
		Name = "Treat",
		Tool = "Treat",
		MeshId = "rbxassetid://135790480817772",
		TextureId = "rbxassetid://86649236464456",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ServerStorage.Items.Treat.Handle.Mesh",
	},

	{
		Name = "TravelersSniper",
		Tool = "TravelersSniper",
		MeshId = "rbxassetid://123217018695560",
		TextureId = "rbxassetid://15132636861",
		Size = Vector3.new(0.7849060297012329, 1.990664005279541, 5.122652053833008),
		Chroma = false,
		Source = "ServerStorage.Items.TravelersSniper.Handle",
	},

	{
		Name = "Traveler_K_2023",
		Tool = "Traveler_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15069923204",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Traveler_K_2023.Handle.Mesh",
	},

	{
		Name = "Traveler_G_2023",
		Tool = "Traveler_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://89199801409332",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Traveler_G_2023.Handle.Mesh",
	},

	{
		Name = "TravelerGunPurple",
		Tool = "TravelerGunPurple",
		MeshId = "rbxassetid://15090814396",
		TextureId = "rbxassetid://126567617316622",
		Size = Vector3.new(0.4815525412559509, 1.2631750106811523, 2.45505428314209),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerGunPurple.Handle",
	},

	{
		Name = "TravelerGunChroma",
		Tool = "TravelerGunChroma",
		MeshId = "rbxassetid://15090814396",
		TextureId = "rbxassetid://132537117087610",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerGunChroma.Handle.Mesh",
	},

	{
		Name = "TravelerGun",
		Tool = "TravelerGun",
		MeshId = "rbxassetid://15090814396",
		TextureId = "rbxassetid://132537117087610",
		Size = Vector3.new(0.4815525412559509, 1.2631750106811523, 2.45505428314209),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerGun.Handle",
	},

	{
		Name = "TravelerAxeSilver",
		Tool = "TravelerAxeSilver",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://125312600693078",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxeSilver.Handle",
	},

	{
		Name = "TravelerAxeRed",
		Tool = "TravelerAxeRed",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://129174189928841",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxeRed.Handle",
	},

	{
		Name = "TravelerAxePurple",
		Tool = "TravelerAxePurple",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://107463857817379",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxePurple.Handle",
	},

	{
		Name = "TravelerAxeGold",
		Tool = "TravelerAxeGold",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://107837737026552",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxeGold.Handle",
	},

	{
		Name = "TravelerAxeBronze",
		Tool = "TravelerAxeBronze",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://87152090639814",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxeBronze.Handle",
	},

	{
		Name = "TravelerAxeBlue",
		Tool = "TravelerAxeBlue",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://15122117790",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxeBlue.Handle",
	},

	{
		Name = "TravelerAxe",
		Tool = "TravelerAxe",
		MeshId = "rbxassetid://15057341638",
		TextureId = "rbxassetid://15057460725",
		Size = Vector3.new(0.6044147610664368, 3.4059998989105225, 2.1873629093170166),
		Chroma = false,
		Source = "ServerStorage.Items.TravelerAxe.Handle",
	},

	{
		Name = "Toy_K_2023",
		Tool = "Toy_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13884851371",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Toy_K_2023.Handle.Mesh",
	},

	{
		Name = "Toy_G_2023",
		Tool = "Toy_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://13905642635",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Toy_G_2023.Handle.Mesh",
	},

	{
		Name = "ToxicK",
		Tool = "ToxicK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513648163",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.ToxicK.Handle.Mesh",
	},

	{
		Name = "ToxicG",
		Tool = "ToxicG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648169",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.ToxicG.Handle.Mesh",
	},

	{
		Name = "TimeKnife",
		Tool = "TimeKnife",
		MeshId = "rbxassetid://70990583",
		TextureId = "rbxassetid://70990591",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.TimeKnife.Handle.Mesh",
	},

	{
		Name = "Tiger",
		Tool = "Tiger",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://3183403283",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tiger.Handle.Mesh",
	},

	{
		Name = "TidesChroma",
		Tool = "TidesChroma",
		MeshId = "rbxassetid://238314382",
		TextureId = "rbxassetid://3171168641",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.TidesChroma.Handle.Mesh",
	},

	{
		Name = "Tides",
		Tool = "Tides",
		MeshId = "rbxassetid://238314382",
		TextureId = "rbxassetid://238314431",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tides.Handle.Mesh",
	},

	{
		Name = "TheSeer",
		Tool = "TheSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://156092253",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.TheSeer.Handle.Mesh",
	},

	{
		Name = "Tailslide",
		Tool = "Tailslide",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://240942385",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Tailslide.Handle.Mesh",
	},

	{
		Name = "TNL",
		Tool = "TNL",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://201480146",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.TNL.Handle.Mesh",
	},

	{
		Name = "Synthwave_Silver",
		Tool = "Synthwave_Silver",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://108932066299502",
		Size = Vector3.new(2.9639999866485596, 0.7409999966621399, 1.4819999933242798),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Silver.Handle.Mesh",
	},

	{
		Name = "Synthwave_LegendaryChroma",
		Tool = "Synthwave_LegendaryChroma",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://115419740311345",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_LegendaryChroma.Handle.Mesh",
	},

	{
		Name = "Synthwave_Legendary",
		Tool = "Synthwave_Legendary",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://115419740311345",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Legendary.Handle.Mesh",
	},

	{
		Name = "Synthwave_Gold",
		Tool = "Synthwave_Gold",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://156956367",
		Size = Vector3.new(2.9639999866485596, 0.7409999966621399, 1.4819999933242798),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Gold.Handle.Mesh",
	},

	{
		Name = "Synthwave_GodlyChroma",
		Tool = "Synthwave_GodlyChroma",
		MeshId = "rbxassetid://132672824913652",
		TextureId = "rbxassetid://81048398253986",
		Size = Vector3.new(2.9625728130340576, 0.7406432032585144, 1.4812864065170288),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_GodlyChroma.Handle.Mesh",
	},

	{
		Name = "Synthwave_Godly",
		Tool = "Synthwave_Godly",
		MeshId = "rbxassetid://132672824913652",
		TextureId = "rbxassetid://81048398253986",
		Size = Vector3.new(2.9625728130340576, 0.7406432032585144, 1.4812864065170288),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Godly.Handle.Mesh",
	},

	{
		Name = "Synthwave_Bronze",
		Tool = "Synthwave_Bronze",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://12270756857",
		Size = Vector3.new(2.9639999866485596, 0.7409999966621399, 1.4819999933242798),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Bronze.Handle.Mesh",
	},

	{
		Name = "Synthwave_Blue",
		Tool = "Synthwave_Blue",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://17294226457",
		Size = Vector3.new(2.9639999866485596, 0.7409999966621399, 1.4819999933242798),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Blue.Handle.Mesh",
	},

	{
		Name = "Synthwave_AncientChroma",
		Tool = "Synthwave_AncientChroma",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://84281380230931",
		Size = Vector3.new(2.9625728130340576, 0.7406432032585144, 1.4812864065170288),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_AncientChroma.Handle.Mesh",
	},

	{
		Name = "Synthwave_Ancient",
		Tool = "Synthwave_Ancient",
		MeshId = "rbxassetid://81344146777937",
		TextureId = "rbxassetid://84281380230931",
		Size = Vector3.new(2.9625728130340576, 0.7406432032585144, 1.4812864065170288),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave_Ancient.Handle.Mesh",
	},

	{
		Name = "SynthwaveChroma",
		Tool = "SynthwaveChroma",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://139525295603551",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SynthwaveChroma.Handle.Mesh",
	},

	{
		Name = "Synthwave",
		Tool = "Synthwave",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://139525295603551",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Synthwave.Handle.Mesh",
	},

	{
		Name = "SwirlyGunSilver",
		Tool = "SwirlyGunSilver",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://108720084988330",
		Size = Vector3.new(0.4690000116825104, 2.5390000343322754, 1.1514999866485596),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGunSilver.Handle",
	},

	{
		Name = "SwirlyGunGold",
		Tool = "SwirlyGunGold",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://122072784662988",
		Size = Vector3.new(0.4690000116825104, 2.5390000343322754, 1.1514999866485596),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGunGold.Handle",
	},

	{
		Name = "SwirlyGunChroma",
		Tool = "SwirlyGunChroma",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://8293539377",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGunChroma.Handle.Mesh",
	},

	{
		Name = "SwirlyGunBronze",
		Tool = "SwirlyGunBronze",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://113787938041112",
		Size = Vector3.new(0.4690000116825104, 2.5390000343322754, 1.1514999866485596),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGunBronze.Handle",
	},

	{
		Name = "SwirlyGunBlue",
		Tool = "SwirlyGunBlue",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://104958144059634",
		Size = Vector3.new(0.4690000116825104, 2.5390000343322754, 1.1514999866485596),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGunBlue.Handle",
	},

	{
		Name = "SwirlyGun",
		Tool = "SwirlyGun",
		MeshId = "rbxassetid://8310911339",
		TextureId = "rbxassetid://97363489382281",
		Size = Vector3.new(0.4690000116825104, 2.5390000343322754, 1.1514999866485596),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyGun.Handle",
	},

	{
		Name = "SwirlyBlade",
		Tool = "SwirlyBlade",
		MeshId = "rbxassetid://8302964090",
		TextureId = "rbxassetid://8302965681",
		Size = Vector3.new(0.46907857060432434, 3.3470401763916016, 0.8557945489883423),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyBlade.Handle",
	},

	{
		Name = "SwirlyAxeSilver",
		Tool = "SwirlyAxeSilver",
		MeshId = "rbxassetid://8293463844",
		TextureId = "rbxassetid://137014121340838",
		Size = Vector3.new(0.5134580731391907, 2.8964831829071045, 2.6599998474121094),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyAxeSilver.Handle",
	},

	{
		Name = "SwirlyAxeGold",
		Tool = "SwirlyAxeGold",
		MeshId = "rbxassetid://8293463844",
		TextureId = "rbxassetid://76537714037540",
		Size = Vector3.new(0.5134580731391907, 2.8964831829071045, 2.6599998474121094),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyAxeGold.Handle",
	},

	{
		Name = "SwirlyAxeBronze",
		Tool = "SwirlyAxeBronze",
		MeshId = "rbxassetid://8293463844",
		TextureId = "rbxassetid://82459482426756",
		Size = Vector3.new(0.5134580731391907, 2.8964831829071045, 2.6599998474121094),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyAxeBronze.Handle",
	},

	{
		Name = "SwirlyAxeBlue",
		Tool = "SwirlyAxeBlue",
		MeshId = "rbxassetid://8293463844",
		TextureId = "rbxassetid://74192567120797",
		Size = Vector3.new(0.5134580731391907, 2.8964831829071045, 2.6599998474121094),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyAxeBlue.Handle",
	},

	{
		Name = "SwirlyAxe",
		Tool = "SwirlyAxe",
		MeshId = "rbxassetid://8293463844",
		TextureId = "rbxassetid://8293464070",
		Size = Vector3.new(0.5134580731391907, 2.8964831829071045, 2.6599998474121094),
		Chroma = false,
		Source = "ServerStorage.Items.SwirlyAxe.Handle",
	},

	{
		Name = "Swirl_K_2021",
		Tool = "Swirl_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8294015413",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Swirl_K_2021.Handle.Mesh",
	},

	{
		Name = "Sweetheart",
		Tool = "Sweetheart",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://363142139",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sweetheart.Handle.Mesh",
	},

	{
		Name = "Sweet",
		Tool = "Sweet",
		MeshId = "rbxassetid://88250692342609",
		TextureId = "rbxassetid://75844398224824",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ServerStorage.Items.Sweet.Handle",
	},

	{
		Name = "Sweater_K_2018",
		Tool = "Sweater_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2664997385",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sweater_K_2018.Handle.Mesh",
	},

	{
		Name = "Sweater_G_2018",
		Tool = "Sweater_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2664997267",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sweater_G_2018.Handle.Mesh",
	},

	{
		Name = "Sweater_25_xmas",
		Tool = "Sweater_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sweater_25_xmas.Handle.Mesh",
	},

	{
		Name = "Sweater_2025_xmas",
		Tool = "Sweater_2025_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://83785504897240",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sweater_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Sweater",
		Tool = "Sweater",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268293368",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sweater.Handle.Mesh",
	},

	{
		Name = "Survivors_K_2022",
		Tool = "Survivors_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11218956882",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Survivors_K_2022.Handle.Mesh",
	},

	{
		Name = "Sunset_G_2023",
		Tool = "Sunset_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://13896017136",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sunset_G_2023.Handle.Mesh",
	},

	{
		Name = "SunsetKnifeChroma",
		Tool = "SunsetKnifeChroma",
		MeshId = "rbxassetid://137082284051764",
		TextureId = "rbxassetid://93782017269677",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ServerStorage.Items.SunsetKnifeChroma.Handle.Mesh",
	},

	{
		Name = "SunsetKnife",
		Tool = "SunsetKnife",
		MeshId = "rbxassetid://137082284051764",
		TextureId = "rbxassetid://93782017269677",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ServerStorage.Items.SunsetKnife.Handle.Mesh",
	},

	{
		Name = "SunsetGunChroma",
		Tool = "SunsetGunChroma",
		MeshId = "rbxassetid://109742397574153",
		TextureId = "rbxassetid://71731808219690",
		Size = Vector3.new(0.045, 0.045, 0.045),
		Chroma = false,
		Source = "ServerStorage.Items.SunsetGunChroma.Handle.Mesh",
	},

	{
		Name = "SunsetGun",
		Tool = "SunsetGun",
		MeshId = "rbxassetid://109742397574153",
		TextureId = "rbxassetid://71731808219690",
		Size = Vector3.new(0.045, 0.045, 0.045),
		Chroma = false,
		Source = "ServerStorage.Items.SunsetGun.Handle.Mesh",
	},

	{
		Name = "Sunny_G_2025",
		Tool = "Sunny_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://105937622090347",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sunny_G_2025.Handle.Mesh",
	},

	{
		Name = "Summer_Stickers_K_2023",
		Tool = "Summer_Stickers_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13895498375",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Summer_Stickers_K_2023.Handle.Mesh",
	},

	{
		Name = "Summer_Stickers_G_2023",
		Tool = "Summer_Stickers_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://13905821320",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Summer_Stickers_G_2023.Handle.Mesh",
	},

	{
		Name = "Sugar",
		Tool = "Sugar",
		MeshId = "rbxassetid://101086719",
		TextureId = "rbxassetid://72286618177616",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sugar.Handle.Mesh",
	},

	{
		Name = "Sub",
		Tool = "Sub",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://545569636",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sub.Handle.Mesh",
	},

	{
		Name = "Storm_K_2024",
		Tool = "Storm_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://124972846638078",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Storm_K_2024.Handle.Mesh",
	},

	{
		Name = "Stockings_K_2022",
		Tool = "Stockings_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11824212997",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stockings_K_2022.Handle.Mesh",
	},

	{
		Name = "Stockings_K_2020",
		Tool = "Stockings_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6123161536",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stockings_K_2020.Handle.Mesh",
	},

	{
		Name = "Stockings_G_2024",
		Tool = "Stockings_G_2024",
		MeshId = "rbxassetid://6600918074",
		TextureId = "rbxassetid://75065116268922",
		Size = Vector3.new(1.8300000429153442, 0.949999988079071, 0.32499998807907104),
		Chroma = false,
		Source = "ServerStorage.Items.Stockings_G_2024.Handle",
	},

	{
		Name = "Stockings_G_2022",
		Tool = "Stockings_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11831384378",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Stockings_G_2022.Handle.Mesh",
	},

	{
		Name = "Stickers_X_K_2024",
		Tool = "Stickers_X_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://109835260607049",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_X_K_2024.Handle.Mesh",
	},

	{
		Name = "Stickers_X_G_2024",
		Tool = "Stickers_X_G_2024",
		MeshId = "rbxassetid://6600918074",
		TextureId = "rbxassetid://139997450438464",
		Size = Vector3.new(1.8300000429153442, 0.949999988079071, 0.32499998807907104),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_X_G_2024.Handle",
	},

	{
		Name = "Stickers_K_2024",
		Tool = "Stickers_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://121348523107585",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_K_2024.Handle.Mesh",
	},

	{
		Name = "Stickers_K_2022",
		Tool = "Stickers_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11217750489",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_K_2022.Handle.Mesh",
	},

	{
		Name = "Stickers_K_2021",
		Tool = "Stickers_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7757619418",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_K_2021.Handle.Mesh",
	},

	{
		Name = "Stickers_G_2024",
		Tool = "Stickers_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://89311097227409",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_G_2024.Handle.Mesh",
	},

	{
		Name = "Stickers_G_2021",
		Tool = "Stickers_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758615144",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_G_2021.Handle.Mesh",
	},

	{
		Name = "Stickers_25_xmas",
		Tool = "Stickers_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://130231206599976",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_25_xmas.Handle.Mesh",
	},

	{
		Name = "Stickers_2025_xmas",
		Tool = "Stickers_2025_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://123572826899313",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Stickers_2025_xmas.Handle.Mesh",
	},

	{
		Name = "StickersX_K_2022",
		Tool = "StickersX_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11823434191",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.StickersX_K_2022.Handle.Mesh",
	},

	{
		Name = "StickersX_G_2022",
		Tool = "StickersX_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11830420444",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.StickersX_G_2022.Handle.Mesh",
	},

	{
		Name = "StickersT2025",
		Tool = "StickersT2025",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://113144896198208",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.StickersT2025.Handle.Mesh",
	},

	{
		Name = "StickersH_K_2025",
		Tool = "StickersH_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://91672438499477",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		AnimationId = "rbxassetid://85899411018024",
		Source = "ServerStorage.Items.StickersH_K_2025.Handle.Mesh",
	},

	{
		Name = "Steel_K_2023",
		Tool = "Steel_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15028885294",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Steel_K_2023.Handle.Mesh",
	},

	{
		Name = "Steel_G_2023",
		Tool = "Steel_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15044112684",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Steel_G_2023.Handle.Mesh",
	},

	{
		Name = "Static",
		Tool = "Static",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566391",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Static.Handle.Mesh",
	},

	{
		Name = "Stars_K_2023",
		Tool = "Stars_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15381316403",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stars_K_2023.Handle.Mesh",
	},

	{
		Name = "Stars_G_2023",
		Tool = "Stars_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15383997060",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Stars_G_2023.Handle.Mesh",
	},

	{
		Name = "Starry_K_2021",
		Tool = "Starry_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8303534347",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Starry_K_2021.Handle.Mesh",
	},

	{
		Name = "Starry_G_2021",
		Tool = "Starry_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8303507091",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Starry_G_2021.Handle.Mesh",
	},

	{
		Name = "Starry_G_2020",
		Tool = "Starry_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5930583738",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Starry_G_2020.Handle.Mesh",
	},

	{
		Name = "Starfish_K_2024",
		Tool = "Starfish_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18321898656",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Starfish_K_2024.Handle.Mesh",
	},

	{
		Name = "Starfish_G_2024",
		Tool = "Starfish_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18321970590",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Starfish_G_2024.Handle.Mesh",
	},

	{
		Name = "Star",
		Tool = "Star",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://161642996",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Star.Handle.Mesh",
	},

	{
		Name = "Stalker",
		Tool = "Stalker",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://155313728",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stalker.Handle.Mesh",
	},

	{
		Name = "Stainless",
		Tool = "Stainless",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://91790701",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Stainless.Handle.Mesh",
	},

	{
		Name = "Squire",
		Tool = "Squire",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://243372276",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Squire.Handle.Mesh",
	},

	{
		Name = "Spring_K_2024",
		Tool = "Spring_K_2024",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://16830850572",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spring_K_2024.Handle.Mesh",
	},

	{
		Name = "Splatter",
		Tool = "Splatter",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://16944380350",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Splatter.Handle.Mesh",
	},

	{
		Name = "Splat",
		Tool = "Splat",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://3183406439",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Splat.Handle.Mesh",
	},

	{
		Name = "Splash_G",
		Tool = "Splash_G",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4659576260",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Splash_G.Handle.Mesh",
	},

	{
		Name = "Splash",
		Tool = "Splash",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://235343795",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Splash.Handle.Mesh",
	},

	{
		Name = "Spitfire",
		Tool = "Spitfire",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159883934",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Spitfire.Handle.Mesh",
	},

	{
		Name = "Spider_K_2023",
		Tool = "Spider_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15091217506",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spider_K_2023.Handle.Mesh",
	},

	{
		Name = "Spider",
		Tool = "Spider",
		MeshId = "rbxassetid://302165984",
		TextureId = "rbxassetid://315122091",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spider.Handle.Mesh",
	},

	{
		Name = "Spectrum",
		Tool = "Spectrum",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://162718300",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spectrum.Handle.Mesh",
	},

	{
		Name = "Spectre2022",
		Tool = "Spectre2022",
		MeshId = "rbxassetid://11165536294",
		TextureId = "rbxassetid://11165715120",
		Size = Vector3.new(0.3325660824775696, 0.9761435985565186, 2.59814453125),
		Chroma = false,
		Source = "ServerStorage.Items.Spectre2022.Handle",
	},

	{
		Name = "Spectral_K_2021",
		Tool = "Spectral_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756613337",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spectral_K_2021.Handle.Mesh",
	},

	{
		Name = "Spectral_G_2021",
		Tool = "Spectral_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7757802804",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Spectral_G_2021.Handle.Mesh",
	},

	{
		Name = "Spearmint_K_2025_xmas",
		Tool = "Spearmint_K_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://73372556711687",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Spearmint_K_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Spearmint_25_xmas",
		Tool = "Spearmint_25_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://91723031",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Spearmint_25_xmas.Handle.Mesh",
	},

	{
		Name = "Sparkle9",
		Tool = "Sparkle9",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306919809",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle9.Handle.Mesh",
	},

	{
		Name = "Sparkle8",
		Tool = "Sparkle8",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306913268",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle8.Handle.Mesh",
	},

	{
		Name = "Sparkle7",
		Tool = "Sparkle7",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306913560",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle7.Handle.Mesh",
	},

	{
		Name = "Sparkle6",
		Tool = "Sparkle6",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306915414",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle6.Handle.Mesh",
	},

	{
		Name = "Sparkle5",
		Tool = "Sparkle5",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306909649",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle5.Handle.Mesh",
	},

	{
		Name = "Sparkle4",
		Tool = "Sparkle4",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306917565",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle4.Handle.Mesh",
	},

	{
		Name = "Sparkle3",
		Tool = "Sparkle3",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306916804",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle3.Handle.Mesh",
	},

	{
		Name = "Sparkle2",
		Tool = "Sparkle2",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306914370",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle2.Handle.Mesh",
	},

	{
		Name = "Sparkle10",
		Tool = "Sparkle10",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306921666",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle10.Handle.Mesh",
	},

	{
		Name = "Sparkle1",
		Tool = "Sparkle1",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://306912202",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle1.Handle.Mesh",
	},

	{
		Name = "Sparkle",
		Tool = "Sparkle",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://162976205",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sparkle.Handle.Mesh",
	},

	{
		Name = "Space",
		Tool = "Space",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://3183404232",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Space.Handle.Mesh",
	},

	{
		Name = "SorryChroma",
		Tool = "SorryChroma",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://162016526",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SorryChroma.Handle.Mesh",
	},

	{
		Name = "Sorry",
		Tool = "Sorry",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://162016526",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sorry.Handle.Mesh",
	},

	{
		Name = "Snowy2017",
		Tool = "Snowy2017",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268287181",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowy2017.Handle.Mesh",
	},

	{
		Name = "Snowy",
		Tool = "Snowy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5538538671",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Snowy.Handle.Mesh",
	},

	{
		Name = "Snowman_K_2024",
		Tool = "Snowman_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://75066955538535",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_K_2024.Handle.Mesh",
	},

	{
		Name = "Snowman_K_2022",
		Tool = "Snowman_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11823641715",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_K_2022.Handle.Mesh",
	},

	{
		Name = "Snowman_K_2021",
		Tool = "Snowman_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275035798",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_K_2021.Handle.Mesh",
	},

	{
		Name = "Snowman_K_2018",
		Tool = "Snowman_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659487396",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_K_2018.Handle.Mesh",
	},

	{
		Name = "Snowman_G_2023",
		Tool = "Snowman_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15382659346",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_G_2023.Handle.Mesh",
	},

	{
		Name = "Snowman_G_2022",
		Tool = "Snowman_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11830604534",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_G_2022.Handle.Mesh",
	},

	{
		Name = "Snowman_G_2021",
		Tool = "Snowman_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://8275033129",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_G_2021.Handle.Mesh",
	},

	{
		Name = "Snowman_G_2018",
		Tool = "Snowman_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2669119107",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman_G_2018.Handle.Mesh",
	},

	{
		Name = "SnowmanGun",
		Tool = "SnowmanGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://332496723",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SnowmanGun.Handle.Mesh",
	},

	{
		Name = "Snowman",
		Tool = "Snowman",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5538532923",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowman.Handle.Mesh",
	},

	{
		Name = "Snowglobe_K_2023",
		Tool = "Snowglobe_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15382647009",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowglobe_K_2023.Handle.Mesh",
	},

	{
		Name = "Snowflakes_K_2020",
		Tool = "Snowflakes_K_2020",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://137773102398455",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflakes_K_2020.Handle.Mesh",
	},

	{
		Name = "Snowflakes_K_2019",
		Tool = "Snowflakes_K_2019",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://4534831727",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflakes_K_2019.Handle.Mesh",
	},

	{
		Name = "Snowflakes_G_2019",
		Tool = "Snowflakes_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534835479",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflakes_G_2019.Handle.Mesh",
	},

	{
		Name = "Snowflake_K_2022",
		Tool = "Snowflake_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11823783274",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake_K_2022.Handle.Mesh",
	},

	{
		Name = "Snowflake_K_2018",
		Tool = "Snowflake_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659487731",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake_K_2018.Handle.Mesh",
	},

	{
		Name = "Snowflake_G_2023",
		Tool = "Snowflake_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15351058932",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake_G_2023.Handle.Mesh",
	},

	{
		Name = "Snowflake_G_2022",
		Tool = "Snowflake_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11830940122",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake_G_2022.Handle.Mesh",
	},

	{
		Name = "Snowflake_G_2018",
		Tool = "Snowflake_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2659487954",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake_G_2018.Handle.Mesh",
	},

	{
		Name = "Snowflake",
		Tool = "Snowflake",
		MeshId = "rbxassetid://582120569",
		TextureId = "rbxassetid://582120836",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowflake.Handle.Mesh",
	},

	{
		Name = "Snowfall_K_2023",
		Tool = "Snowfall_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15381549802",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowfall_K_2023.Handle.Mesh",
	},

	{
		Name = "Snowdagger",
		Tool = "Snowdagger",
		MeshId = "rbxassetid://140633396635861",
		TextureId = "rbxassetid://77812964601215",
		Size = Vector3.new(0.3603898882865906, 2.990088701248169, 0.7137512564659119),
		Chroma = false,
		Source = "ServerStorage.Items.Snowdagger.Handle",
	},

	{
		Name = "SnowcannonChroma",
		Tool = "SnowcannonChroma",
		MeshId = "rbxassetid://99836890880541",
		TextureId = "rbxassetid://122392330922281",
		Size = Vector3.new(4, 1, 2),
		Chroma = false,
		Source = "ServerStorage.Items.SnowcannonChroma.Handle.Mesh",
	},

	{
		Name = "Snowball_K_2025_xmas",
		Tool = "Snowball_K_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://101965621704869",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snowball_K_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Snowball_25_xmas",
		Tool = "Snowball_25_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://91723031",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Snowball_25_xmas.Handle.Mesh",
	},

	{
		Name = "SnowDaggerChroma",
		Tool = "SnowDaggerChroma",
		MeshId = "rbxassetid://140633396635861",
		TextureId = "rbxassetid://77812964601215",
		Size = Vector3.new(0.3603898882865906, 2.990088701248169, 0.7137512564659119),
		Chroma = false,
		Source = "ServerStorage.Items.SnowDaggerChroma.Handle",
	},

	{
		Name = "SnowCannon",
		Tool = "SnowCannon",
		MeshId = "rbxassetid://99836890880541",
		TextureId = "rbxassetid://122392330922281",
		Size = Vector3.new(0.5585839152336121, 1.3548882007598877, 2.4995672702789307),
		Chroma = false,
		Source = "ServerStorage.Items.SnowCannon.Handle",
	},

	{
		Name = "Snoop",
		Tool = "Snoop",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621136",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Snoop.Handle.Mesh",
	},

	{
		Name = "SnakebiteK",
		Tool = "SnakebiteK",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409981",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SnakebiteK.Handle.Mesh",
	},

	{
		Name = "SnakebiteG",
		Tool = "SnakebiteG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://109575851098597",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SnakebiteG.Handle.Mesh",
	},

	{
		Name = "SlouseClownGun",
		Tool = "SlouseClownGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4663058089",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SlouseClownGun.Handle.Mesh",
	},

	{
		Name = "SlouseClown",
		Tool = "SlouseClown",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://197196512",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SlouseClown.Handle.Mesh",
	},

	{
		Name = "SlimyK",
		Tool = "SlimyK",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210874138",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SlimyK.Handle.Mesh",
	},

	{
		Name = "SlimeK",
		Tool = "SlimeK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513648162",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SlimeK.Handle.Mesh",
	},

	{
		Name = "SlimeG",
		Tool = "SlimeG",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648152",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SlimeG.Handle.Mesh",
	},

	{
		Name = "Sleigh_K_2024",
		Tool = "Sleigh_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://85646229893233",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sleigh_K_2024.Handle.Mesh",
	},

	{
		Name = "Slate",
		Tool = "Slate",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161577504",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Slate.Handle.Mesh",
	},

	{
		Name = "SlasherChroma",
		Tool = "SlasherChroma",
		MeshId = "rbxassetid://283709822",
		TextureId = "rbxassetid://3171107559",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SlasherChroma.Handle.Mesh",
	},

	{
		Name = "Slasher",
		Tool = "Slasher",
		MeshId = "rbxassetid://283709822",
		TextureId = "rbxassetid://313894904",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Slasher.Handle.Mesh",
	},

	{
		Name = "Slashed_K_2020",
		Tool = "Slashed_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5929316036",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Slashed_K_2020.Handle.Mesh",
	},

	{
		Name = "Skulls_K_2021",
		Tool = "Skulls_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756610618",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Skulls_K_2021.Handle.Mesh",
	},

	{
		Name = "Skulls",
		Tool = "Skulls",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409968",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Skulls.Handle.Mesh",
	},

	{
		Name = "Skull_K_2023",
		Tool = "Skull_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15029874889",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Skull_K_2023.Handle.Mesh",
	},

	{
		Name = "Skool",
		Tool = "Skool",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://178200933",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Skool.Handle.Mesh",
	},

	{
		Name = "SketchYT",
		Tool = "SketchYT",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://539831264",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SketchYT.Handle.Mesh",
	},

	{
		Name = "Sketch",
		Tool = "Sketch",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://161976144",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sketch.Handle.Mesh",
	},

	{
		Name = "SilverVampiresEdge",
		Tool = "SilverVampiresEdge",
		MeshId = "rbxassetid://5841895234",
		TextureId = "rbxassetid://93427229045342",
		Size = Vector3.new(0.39546874165534973, 3.351449966430664, 1.0144076347351074),
		Chroma = false,
		Source = "ServerStorage.Items.SilverVampiresEdge.Handle",
	},

	{
		Name = "SilverSugar",
		Tool = "SilverSugar",
		MeshId = "rbxassetid://101086719",
		TextureId = "rbxassetid://80417567706028",
		Size = Vector3.new(1.399999976158142, 1.399999976158142, 3.1113929748535156),
		Chroma = false,
		Source = "ServerStorage.Items.SilverSugar.Handle.Mesh",
	},

	{
		Name = "SilverIcebreaker",
		Tool = "SilverIcebreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6237992602",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SilverIcebreaker.Handle.Mesh",
	},

	{
		Name = "SilverIceblaster",
		Tool = "SilverIceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6246950589",
		Size = Vector3.new(0.4432010054588318, 1.9299800395965576, 1.0238100290298462),
		Chroma = false,
		Source = "ServerStorage.Items.SilverIceblaster.Handle",
	},

	{
		Name = "SilverHarvester",
		Tool = "SilverHarvester",
		MeshId = "rbxassetid://7775027413",
		TextureId = "rbxassetid://8266615645",
		Size = Vector3.new(2.05126953125, 1, 2),
		Chroma = false,
		Source = "ServerStorage.Items.SilverHarvester.Handle.Mesh",
	},

	{
		Name = "SilverHallow",
		Tool = "SilverHallow",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://104150976879041",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SilverHallow.Handle.Mesh",
	},

	{
		Name = "SilverCandy",
		Tool = "SilverCandy",
		MeshId = "rbxassetid://19040337",
		TextureId = "rbxassetid://97784569465604",
		Size = Vector3.new(0.40000006556510925, 4, 0.8000001311302185),
		Chroma = false,
		Source = "ServerStorage.Items.SilverCandy.Handle.Mesh",
	},

	{
		Name = "SilentNight_K_2020",
		Tool = "SilentNight_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6121850778",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SilentNight_K_2020.Handle.Mesh",
	},

	{
		Name = "SilentNight_G_2020",
		Tool = "SilentNight_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121861331",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SilentNight_G_2020.Handle.Mesh",
	},

	{
		Name = "Sidewinder",
		Tool = "Sidewinder",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://295302778",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sidewinder.Handle.Mesh",
	},

	{
		Name = "Sharky_K_2024",
		Tool = "Sharky_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18321899067",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sharky_K_2024.Handle.Mesh",
	},

	{
		Name = "SharkSeeker",
		Tool = "SharkSeeker",
		MeshId = "rbxassetid://6967743598",
		TextureId = "rbxassetid://6689657395",
		Size = Vector3.new(0.5800002217292786, 1.3400009870529175, 2.480001449584961),
		Chroma = false,
		Source = "ServerStorage.Items.SharkSeeker.Handle.Mesh",
	},

	{
		Name = "SharkChroma",
		Tool = "SharkChroma",
		MeshId = "rbxassetid://118269783",
		TextureId = "rbxassetid://3171214838",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SharkChroma.Handle.Mesh",
	},

	{
		Name = "Shark",
		Tool = "Shark",
		MeshId = "rbxassetid://118269783",
		TextureId = "rbxassetid://203858007",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Shark.Handle.Mesh",
	},

	{
		Name = "ShadowKnife",
		Tool = "ShadowKnife",
		MeshId = "rbxassetid://86297695",
		TextureId = "rbxassetid://86290910",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.ShadowKnife.Handle.Mesh",
	},

	{
		Name = "Shaded",
		Tool = "Shaded",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659587929",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Shaded.Handle.Mesh",
	},

	{
		Name = "SeerChroma",
		Tool = "SeerChroma",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://3184059718",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.SeerChroma.Handle.Mesh",
	},

	{
		Name = "Season1TestKnife",
		Tool = "Season1TestKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://191784815",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Season1TestKnife.Handle.Mesh",
	},

	{
		Name = "Scythe",
		Tool = "Scythe",
		MeshId = "rbxassetid://305826272",
		TextureId = "rbxassetid://2511673515",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Scythe.Handle.Mesh",
	},

	{
		Name = "ScratchBlue",
		Tool = "ScratchBlue",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1311186323",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.ScratchBlue.Handle.Mesh",
	},

	{
		Name = "Scratch",
		Tool = "Scratch",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531835091",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Scratch.Handle.Mesh",
	},

	{
		Name = "Scarf_K_2023",
		Tool = "Scarf_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15414881863",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Scarf_K_2023.Handle.Mesh",
	},

	{
		Name = "SawChroma",
		Tool = "SawChroma",
		MeshId = "rbxassetid://168119698",
		TextureId = "rbxassetid://3171086347",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SawChroma.Handle.Mesh",
	},

	{
		Name = "Saw",
		Tool = "Saw",
		MeshId = "rbxassetid://168119698",
		TextureId = "rbxassetid://168119736",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Saw.Handle.Mesh",
	},

	{
		Name = "SantasSpirit",
		Tool = "SantasSpirit",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6123356424",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SantasSpirit.Handle.Mesh",
	},

	{
		Name = "SantasMagic",
		Tool = "SantasMagic",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4535479726",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.SantasMagic.Handle.Mesh",
	},

	{
		Name = "Santa_K_2018",
		Tool = "Santa_K_2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2659488082",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Santa_K_2018.Handle.Mesh",
	},

	{
		Name = "Santa_G_2023",
		Tool = "Santa_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15349904283",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Santa_G_2023.Handle.Mesh",
	},

	{
		Name = "Santa_G_2018",
		Tool = "Santa_G_2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2664997044",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Santa_G_2018.Handle.Mesh",
	},

	{
		Name = "SantaGun",
		Tool = "SantaGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://76370731428901",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.SantaGun.Handle.Mesh",
	},

	{
		Name = "Santa2017",
		Tool = "Santa2017",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268277801",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Santa2017.Handle.Mesh",
	},

	{
		Name = "Santa",
		Tool = "Santa",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5359654461",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Santa.Handle.Mesh",
	},

	{
		Name = "Sandy_G_2024",
		Tool = "Sandy_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18323743340",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Sandy_G_2024.Handle.Mesh",
	},

	{
		Name = "Sandy",
		Tool = "Sandy",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566396",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Sandy.Handle.Mesh",
	},

	{
		Name = "Sakura_K",
		Tool = "Sakura_K",
		MeshId = "rbxassetid://12307707430",
		TextureId = "rbxassetid://12307707797",
		Size = Vector3.new(0.07, 0.07, 0.07),
		Chroma = false,
		Source = "ServerStorage.Items.Sakura_K.Handle",
	},

	{
		Name = "Runic_K_2022",
		Tool = "Runic_K_2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://11246439789",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Runic_K_2022.Handle.Mesh",
	},

	{
		Name = "Rune",
		Tool = "Rune",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://3183404423",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Rune.Handle.Mesh",
	},

	{
		Name = "Roses",
		Tool = "Roses",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://361630297",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Roses.Handle.Mesh",
	},

	{
		Name = "Rose_K_2023",
		Tool = "Rose_K_2023",
		MeshId = "rbxassetid://10855586895",
		TextureId = "rbxassetid://12238708500",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Rose_K_2023.Handle.Mesh",
	},

	{
		Name = "Robot_K_2024",
		Tool = "Robot_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://16833551908",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Robot_K_2024.Handle.Mesh",
	},

	{
		Name = "Ritual_G_2024",
		Tool = "Ritual_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://122499606241450",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Ritual_G_2024.Handle.Mesh",
	},

	{
		Name = "Ripper_K_2020",
		Tool = "Ripper_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866360934",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ripper_K_2020.Handle.Mesh",
	},

	{
		Name = "Ripper_G_2020",
		Tool = "Ripper_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866373797",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Ripper_G_2020.Handle.Mesh",
	},

	{
		Name = "Ribbons_K_2021",
		Tool = "Ribbons_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://8275035072",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ribbons_K_2021.Handle.Mesh",
	},

	{
		Name = "Ribbon_K_2023",
		Tool = "Ribbon_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15332484220",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ribbon_K_2023.Handle.Mesh",
	},

	{
		Name = "Reptile",
		Tool = "Reptile",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://162671092",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Reptile.Handle.Mesh",
	},

	{
		Name = "Reindeer_K_2024",
		Tool = "Reindeer_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://121109734938655",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Reindeer_K_2024.Handle.Mesh",
	},

	{
		Name = "RedSeer",
		Tool = "RedSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://3184063443",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.RedSeer.Handle.Mesh",
	},

	{
		Name = "RedLuger",
		Tool = "RedLuger",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://126534866",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.RedLuger.Handle.Mesh",
	},

	{
		Name = "RedIcebreaker",
		Tool = "RedIcebreaker",
		MeshId = "rbxassetid://6124173614",
		TextureId = "rbxassetid://6237994207",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RedIcebreaker.Handle.Mesh",
	},

	{
		Name = "RedIceblaster",
		Tool = "RedIceblaster",
		MeshId = "rbxassetid://6125828567",
		TextureId = "rbxassetid://6246951385",
		Size = Vector3.new(0.4432010054588318, 1.9299800395965576, 1.0238100290298462),
		Chroma = false,
		Source = "ServerStorage.Items.RedIceblaster.Handle",
	},

	{
		Name = "RedHallow",
		Tool = "RedHallow",
		MeshId = "rbxassetid://179155055",
		TextureId = "rbxassetid://73958132414440",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RedHallow.Handle.Mesh",
	},

	{
		Name = "RedFire",
		Tool = "RedFire",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1269255990",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RedFire.Handle.Mesh",
	},

	{
		Name = "Reaver_Legendary",
		Tool = "Reaver_Legendary",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121291446597917",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Reaver_Legendary.Handle.Mesh",
	},

	{
		Name = "Reaver_Godly",
		Tool = "Reaver_Godly",
		MeshId = "rbxassetid://7774174974",
		TextureId = "rbxassetid://7774175135",
		Size = Vector3.new(0.3199250102043152, 3.339900016784668, 0.9026870131492615),
		Chroma = false,
		Source = "ServerStorage.Items.Reaver_Godly.Handle",
	},

	{
		Name = "Reaver_Ancient",
		Tool = "Reaver_Ancient",
		MeshId = "rbxassetid://7774148738",
		TextureId = "rbxassetid://7774148967",
		Size = Vector3.new(0.2816675901412964, 3.6047475337982178, 2.748049736022949),
		Chroma = false,
		Source = "ServerStorage.Items.Reaver_Ancient.Handle",
	},

	{
		Name = "Reaver",
		Tool = "Reaver",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://118176521118205",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Reaver.Handle.Mesh",
	},

	{
		Name = "RbxScary_K_2023",
		Tool = "RbxScary_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://114660299589667",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RbxScary_K_2023.Handle.Mesh",
	},

	{
		Name = "RaygunSilver",
		Tool = "RaygunSilver",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://100007386901861",
		Size = Vector3.new(0.6902404427528381, 1.6429799795150757, 2.35538387298584),
		Chroma = false,
		Source = "ServerStorage.Items.RaygunSilver.Handle",
	},

	{
		Name = "RaygunRed",
		Tool = "RaygunRed",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://138793504216260",
		Size = Vector3.new(0.6902404427528381, 1.6429799795150757, 2.35538387298584),
		Chroma = false,
		Source = "ServerStorage.Items.RaygunRed.Handle",
	},

	{
		Name = "RaygunGold",
		Tool = "RaygunGold",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://121611722625223",
		Size = Vector3.new(0.6902404427528381, 1.6429799795150757, 2.35538387298584),
		Chroma = false,
		Source = "ServerStorage.Items.RaygunGold.Handle",
	},

	{
		Name = "RaygunChroma",
		Tool = "RaygunChroma",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://127881437685243",
		Size = Vector3.new(4, 1, 2),
		Chroma = true,
		Source = "ServerStorage.Items.RaygunChroma.Handle.Mesh",
	},

	{
		Name = "RaygunBronze",
		Tool = "RaygunBronze",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://131799285725581",
		Size = Vector3.new(0.6902404427528381, 1.6429799795150757, 2.35538387298584),
		Chroma = false,
		Source = "ServerStorage.Items.RaygunBronze.Handle",
	},

	{
		Name = "Raygun",
		Tool = "Raygun",
		MeshId = "rbxassetid://115447220952926",
		TextureId = "rbxassetid://127881437685243",
		Size = Vector3.new(0.6902404427528381, 1.6429799795150757, 2.35538387298584),
		Chroma = false,
		Source = "ServerStorage.Items.Raygun.Handle",
	},

	{
		Name = "RandLuger",
		Tool = "RandLuger",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://191784815",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RandLuger.Handle.Mesh",
	},

	{
		Name = "Raindeer_K_25_xmas",
		Tool = "Raindeer_K_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://106548905942683",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Raindeer_K_25_xmas.Handle.Mesh",
	},

	{
		Name = "Rainbow_Periastron",
		Tool = "Rainbow_Periastron",
		MeshId = "rbxassetid://80557857",
		TextureId = "rbxassetid://157345185",
		Size = Vector3.new(1, 0.6000000238418579, 5.19999885559082),
		Chroma = false,
		Source = "ServerStorage.Items.Rainbow_Periastron.Handle.Mesh",
	},

	{
		Name = "Rainbow_K",
		Tool = "Rainbow_K",
		MeshId = "rbxassetid://12921240966",
		TextureId = "rbxassetid://12921241867",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ServerStorage.Items.Rainbow_K.Handle",
	},

	{
		Name = "Rainbow_G",
		Tool = "Rainbow_G",
		MeshId = "rbxassetid://12921221200",
		TextureId = "rbxassetid://12921231088",
		Size = Vector3.new(0.05, 0.05, 0.05),
		Chroma = false,
		Source = "ServerStorage.Items.Rainbow_G.Handle",
	},

	{
		Name = "RainbowGun",
		Tool = "RainbowGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://3183408196",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.RainbowGun.Handle.Mesh",
	},

	{
		Name = "Rainbow",
		Tool = "Rainbow",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://157019835",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Rainbow.Handle.Mesh",
	},

	{
		Name = "RIP",
		Tool = "RIP",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4210409923",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.RIP.Handle.Mesh",
	},

	{
		Name = "RBKnife",
		Tool = "RBKnife",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.RBKnife.Handle.Mesh",
	},

	{
		Name = "PurpleSeer",
		Tool = "PurpleSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://3184063317",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.PurpleSeer.Handle.Mesh",
	},

	{
		Name = "Pumpking",
		Tool = "Pumpking",
		MeshId = "rbxassetid://94840342",
		TextureId = "rbxassetid://1133078553",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Pumpking.Handle.Mesh",
	},

	{
		Name = "Pumpkin_K_2020",
		Tool = "Pumpkin_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5872477622",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Pumpkin_K_2020.Handle.Mesh",
	},

	{
		Name = "Pumpkin_G_2023",
		Tool = "Pumpkin_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15044730839",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Pumpkin_G_2023.Handle.Mesh",
	},

	{
		Name = "PumpkinPie_K_2023",
		Tool = "PumpkinPie_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15320084464",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.PumpkinPie_K_2023.Handle.Mesh",
	},

	{
		Name = "PumpkinPatch_K_2025",
		Tool = "PumpkinPatch_K_2025",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://92052630861897",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		AnimationId = "rbxassetid://85899411018024",
		Source = "ServerStorage.Items.PumpkinPatch_K_2025.Handle.Mesh",
	},

	{
		Name = "PumpkinPatch_G_2025",
		Tool = "PumpkinPatch_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://134888889060353",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.PumpkinPatch_G_2025.Handle.Mesh",
	},

	{
		Name = "PumpkinPatch",
		Tool = "PumpkinPatch",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409792",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.PumpkinPatch.Handle.Mesh",
	},

	{
		Name = "Prismatic",
		Tool = "Prismatic",
		MeshId = "rbxassetid://5355753728",
		TextureId = "rbxassetid://5355747943",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ServerStorage.Items.Prismatic.Handle.Mesh",
	},

	{
		Name = "Prism",
		Tool = "Prism",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://297795989",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Prism.Handle.Mesh",
	},

	{
		Name = "Present_K_2023",
		Tool = "Present_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15382053242",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Present_K_2023.Handle.Mesh",
	},

	{
		Name = "Present",
		Tool = "Present",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1268314631",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Present.Handle.Mesh",
	},

	{
		Name = "PredatorKnife",
		Tool = "PredatorKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://199611278",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.PredatorKnife.Handle.Mesh",
	},

	{
		Name = "Predator",
		Tool = "Predator",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://202773960",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Predator.Handle.Mesh",
	},

	{
		Name = "PotionK2018",
		Tool = "PotionK2018",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://2513648150",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.PotionK2018.Handle.Mesh",
	},

	{
		Name = "PotionG2018",
		Tool = "PotionG2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513648149",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.PotionG2018.Handle.Mesh",
	},

	{
		Name = "Potion",
		Tool = "Potion",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1782402938",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Potion.Handle.Mesh",
	},

	{
		Name = "Portal_K_2020",
		Tool = "Portal_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://5866364902",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Portal_K_2020.Handle.Mesh",
	},

	{
		Name = "Portal_G_2020",
		Tool = "Portal_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866372960",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Portal_G_2020.Handle.Mesh",
	},

	{
		Name = "Popsicle_K_2023",
		Tool = "Popsicle_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13884848877",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Popsicle_K_2023.Handle.Mesh",
	},

	{
		Name = "Popsicle_G_2024",
		Tool = "Popsicle_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18321970792",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Popsicle_G_2024.Handle.Mesh",
	},

	{
		Name = "Polarbear_25_xmas",
		Tool = "Polarbear_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://121944805",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Polarbear_25_xmas.Handle.Mesh",
	},

	{
		Name = "Plasmite",
		Tool = "Plasmite",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161369273",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Plasmite.Handle.Mesh",
	},

	{
		Name = "Plasmablade",
		Tool = "Plasmablade",
		MeshId = "rbxassetid://9702732853",
		TextureId = "rbxassetid://10015130416",
		Size = Vector3.new(0.0016, 0.0016, 0.0016),
		Chroma = false,
		Source = "ServerStorage.Items.Plasmablade.Handle",
	},

	{
		Name = "Plasmabeam",
		Tool = "Plasmabeam",
		MeshId = "rbxassetid://9702755186",
		TextureId = "rbxassetid://10015208201",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.Plasmabeam.Handle.Mesh",
	},

	{
		Name = "Pixel",
		Tool = "Pixel",
		MeshId = "rbxassetid://361629844",
		TextureId = "rbxassetid://361630114",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Pixel.Handle.Mesh",
	},

	{
		Name = "Pirate",
		Tool = "Pirate",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://78093206510643",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Pirate.Handle.Mesh",
	},

	{
		Name = "Pine_K_2019",
		Tool = "Pine_K_2019",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4534830880",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Pine_K_2019.Handle.Mesh",
	},

	{
		Name = "Pine_G_2019",
		Tool = "Pine_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534870630",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Pine_G_2019.Handle.Mesh",
	},

	{
		Name = "Phaser",
		Tool = "Phaser",
		MeshId = "rbxassetid://69486593",
		TextureId = "rbxassetid://69486519",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Phaser.Handle.Mesh",
	},

	{
		Name = "Phantom2022",
		Tool = "Phantom2022",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://95338306077286",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Phantom2022.Handle.Mesh",
	},

	{
		Name = "Phantom",
		Tool = "Phantom",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1132701173",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Phantom.Handle.Mesh",
	},

	{
		Name = "Peppermint_K_2025_xmas",
		Tool = "Peppermint_K_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://120181028268113",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Peppermint_K_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Peppermint_25_xmas",
		Tool = "Peppermint_25_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://107986046289088",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Peppermint_25_xmas.Handle.Mesh",
	},

	{
		Name = "Peppermint",
		Tool = "Peppermint",
		MeshId = "rbxassetid://6085025295",
		TextureId = "rbxassetid://6074789360",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Peppermint.Handle.Mesh",
	},

	{
		Name = "Pepper",
		Tool = "Pepper",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473620934",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Pepper.Handle.Mesh",
	},

	{
		Name = "Pearl_K",
		Tool = "Pearl_K",
		MeshId = "rbxassetid://18276861801",
		TextureId = "rbxassetid://74986100175804",
		Size = Vector3.new(0.06, 0.06, 0.06),
		Chroma = false,
		Source = "ServerStorage.Items.Pearl_K.Handle",
	},

	{
		Name = "Pearl_G",
		Tool = "Pearl_G",
		MeshId = "rbxassetid://18280804203",
		TextureId = "rbxassetid://136668364239627",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.Pearl_G.Handle",
	},

	{
		Name = "Pea",
		Tool = "Pea",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://162911948",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Pea.Handle.Mesh",
	},

	{
		Name = "Patrick",
		Tool = "Patrick",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7837986943",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.Patrick.Handle.Mesh",
	},

	{
		Name = "Passion",
		Tool = "Passion",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://363139004",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Passion.Handle.Mesh",
	},

	{
		Name = "Partyblade",
		Tool = "Partyblade",
		MeshId = "rbxassetid://18778548120",
		TextureId = "rbxassetid://120607677943671",
		Size = Vector3.new(0.6463953256607056, 3.2276642322540283, 2.748987913131714),
		Chroma = false,
		Source = "ServerStorage.Items.Partyblade.Handle",
	},

	{
		Name = "Paper",
		Tool = "Paper",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://179035664",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Paper.Handle.Mesh",
	},

	{
		Name = "Palms_K_2024",
		Tool = "Palms_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://18351264716",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Palms_K_2024.Handle.Mesh",
	},

	{
		Name = "Palms_G_2024",
		Tool = "Palms_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://18321971106",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Palms_G_2024.Handle.Mesh",
	},

	{
		Name = "Painted_K_2023",
		Tool = "Painted_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12935208652",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Painted_K_2023.Handle.Mesh",
	},

	{
		Name = "Painted_G_2023",
		Tool = "Painted_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://12937817240",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Painted_G_2023.Handle.Mesh",
	},

	{
		Name = "OverseerKnife",
		Tool = "OverseerKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://198299790",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.OverseerKnife.Handle.Mesh",
	},

	{
		Name = "Overseer",
		Tool = "Overseer",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://162262248",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.Overseer.Handle.Mesh",
	},

	{
		Name = "Ornaments_K_2025_xmas",
		Tool = "Ornaments_K_2025_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://128273296066714",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ornaments_K_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Ornaments_K_2020",
		Tool = "Ornaments_K_2020",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://6121852598",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ornaments_K_2020.Handle.Mesh",
	},

	{
		Name = "Ornaments_G_2020",
		Tool = "Ornaments_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://6121862915",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Ornaments_G_2020.Handle.Mesh",
	},

	{
		Name = "Ornament2Gun",
		Tool = "Ornament2Gun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://332496722",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Ornament2Gun.Handle.Mesh",
	},

	{
		Name = "Ornament2",
		Tool = "Ornament2",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://331744472",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ornament2.Handle.Mesh",
	},

	{
		Name = "Ornament1Gun",
		Tool = "Ornament1Gun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://332358313",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Ornament1Gun.Handle.Mesh",
	},

	{
		Name = "Ornament1",
		Tool = "Ornament1",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://331744475",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ornament1.Handle.Mesh",
	},

	{
		Name = "OrangeSeer",
		Tool = "OrangeSeer",
		MeshId = "rbxassetid://156092238",
		TextureId = "rbxassetid://7443788709",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.OrangeSeer.Handle.Mesh",
	},

	{
		Name = "OrangeMarble",
		Tool = "OrangeMarble",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531653125",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.OrangeMarble.Handle.Mesh",
	},

	{
		Name = "Ollie",
		Tool = "Ollie",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://240941633",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Ollie.Handle.Mesh",
	},

	{
		Name = "Oily",
		Tool = "Oily",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://314421009",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Oily.Handle.Mesh",
	},

	{
		Name = "Ocean_G",
		Tool = "Ocean_G",
		MeshId = "rbxassetid://13928587755",
		TextureId = "rbxassetid://90484783616182",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.Ocean_G.Handle.Mesh",
	},

	{
		Name = "Nutcracker",
		Tool = "Nutcracker",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5538506180",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Nutcracker.Handle.Mesh",
	},

	{
		Name = "Nuke_G_2023",
		Tool = "Nuke_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://12936824008",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Nuke_G_2023.Handle.Mesh",
	},

	{
		Name = "Nova",
		Tool = "Nova",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://198766824",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Nova.Handle.Mesh",
	},

	{
		Name = "Noodle_K_2023",
		Tool = "Noodle_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://13895318303",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Noodle_K_2023.Handle.Mesh",
	},

	{
		Name = "NikSC",
		Tool = "NikSC",
		MeshId = "rbxassetid://305826272",
		TextureId = "rbxassetid://2533345412",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.NikSC.Handle.Mesh",
	},

	{
		Name = "Nightfire",
		Tool = "Nightfire",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4659577665",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Nightfire.Handle.Mesh",
	},

	{
		Name = "Nightblade",
		Tool = "Nightblade",
		MeshId = "rbxassetid://103838505",
		TextureId = "rbxassetid://103838996",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Nightblade.Handle.Mesh",
	},

	{
		Name = "Night",
		Tool = "Night",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159882296",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Night.Handle.Mesh",
	},

	{
		Name = "News",
		Tool = "News",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://178238688",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.News.Handle.Mesh",
	},

	{
		Name = "Nether",
		Tool = "Nether",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://166089996",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Nether.Handle.Mesh",
	},

	{
		Name = "Neon_G_2023",
		Tool = "Neon_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15382654157",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Neon_G_2023.Handle.Mesh",
	},

	{
		Name = "Neon",
		Tool = "Neon",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://159653652",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Neon.Handle.Mesh",
	},

	{
		Name = "Nebula",
		Tool = "Nebula",
		MeshId = "rbxassetid://6596839942",
		TextureId = "rbxassetid://6256756879",
		Size = Vector3.new(1, 1, 1),
		Chroma = false,
		Source = "ServerStorage.Items.Nebula.Handle",
	},

	{
		Name = "Musical",
		Tool = "Musical",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566387",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Musical.Handle.Mesh",
	},

	{
		Name = "Mummy_K_2020",
		Tool = "Mummy_K_2020",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://5866365511",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Mummy_K_2020.Handle.Mesh",
	},

	{
		Name = "Mummy_G_2020",
		Tool = "Mummy_G_2020",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://5866372623",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Mummy_G_2020.Handle.Mesh",
	},

	{
		Name = "MummyK2018",
		Tool = "MummyK2018",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://2513648136",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.MummyK2018.Handle.Mesh",
	},

	{
		Name = "MummyK",
		Tool = "MummyK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://91472505507923",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.MummyK.Handle.Mesh",
	},

	{
		Name = "MummyG2018",
		Tool = "MummyG2018",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://2513708668",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.MummyG2018.Handle.Mesh",
	},

	{
		Name = "Mummy",
		Tool = "Mummy",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://315154445",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Mummy.Handle.Mesh",
	},

	{
		Name = "Mummified",
		Tool = "Mummified",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4210409851",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Mummified.Handle.Mesh",
	},

	{
		Name = "Moons_K_2024",
		Tool = "Moons_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://87244940102225",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Moons_K_2024.Handle.Mesh",
	},

	{
		Name = "Moons",
		Tool = "Moons",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://531835087",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Moons.Handle.Mesh",
	},

	{
		Name = "Moonlight_G_2022",
		Tool = "Moonlight_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11254380241",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Moonlight_G_2022.Handle.Mesh",
	},

	{
		Name = "Moon_K_2021",
		Tool = "Moon_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756612294",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Moon_K_2021.Handle.Mesh",
	},

	{
		Name = "Monster_K_2024",
		Tool = "Monster_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://136318121608837",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Monster_K_2024.Handle.Mesh",
	},

	{
		Name = "Monster",
		Tool = "Monster",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4210409812",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Monster.Handle.Mesh",
	},

	{
		Name = "MoltenKnife",
		Tool = "MoltenKnife",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://472483450",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.MoltenKnife.Handle.Mesh",
	},

	{
		Name = "Molten",
		Tool = "Molten",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://160570263",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Molten.Handle.Mesh",
	},

	{
		Name = "Mistletoe_K_2022",
		Tool = "Mistletoe_K_2022",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://11823994753",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Mistletoe_K_2022.Handle.Mesh",
	},

	{
		Name = "Mistletoe_G_2022",
		Tool = "Mistletoe_G_2022",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://11831277409",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Mistletoe_G_2022.Handle.Mesh",
	},

	{
		Name = "Missing",
		Tool = "Missing",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://163625649",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Missing.Handle.Mesh",
	},

	{
		Name = "MintySilver",
		Tool = "MintySilver",
		MeshId = "rbxassetid://5216810177",
		TextureId = "rbxassetid://4753313914",
		Size = Vector3.new(0.510000467300415, 1.330001950263977, 1.9999966621398926),
		Chroma = false,
		Source = "ServerStorage.Items.MintySilver.Handle.Mesh",
	},

	{
		Name = "MintyGold",
		Tool = "MintyGold",
		MeshId = "rbxassetid://5216810177",
		TextureId = "rbxassetid://5211061190",
		Size = Vector3.new(0.510000467300415, 1.330001950263977, 1.9999966621398926),
		Chroma = false,
		Source = "ServerStorage.Items.MintyGold.Handle.Mesh",
	},

	{
		Name = "MintyBronze",
		Tool = "MintyBronze",
		MeshId = "rbxassetid://5216810177",
		TextureId = "rbxassetid://5211061190",
		Size = Vector3.new(0.510000467300415, 1.330001950263977, 1.9999966621398926),
		Chroma = false,
		Source = "ServerStorage.Items.MintyBronze.Handle.Mesh",
	},

	{
		Name = "MintyBlue",
		Tool = "MintyBlue",
		MeshId = "rbxassetid://5216810177",
		TextureId = "rbxassetid://4753313914",
		Size = Vector3.new(0.510000467300415, 1.330001950263977, 1.9999966621398926),
		Chroma = false,
		Source = "ServerStorage.Items.MintyBlue.Handle.Mesh",
	},

	{
		Name = "Minty",
		Tool = "Minty",
		MeshId = "rbxassetid://4528424409",
		TextureId = "rbxassetid://4528424475",
		Size = Vector3.new(0.3334806561470032, 1.3504213094711304, 1.8800079822540283),
		Chroma = false,
		Source = "ServerStorage.Items.Minty.Handle",
	},

	{
		Name = "Midnight",
		Tool = "Midnight",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://161367322",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Midnight.Handle.Mesh",
	},

	{
		Name = "Meltdown_K_2023",
		Tool = "Meltdown_K_2023",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://15035536803",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Meltdown_K_2023.Handle.Mesh",
	},

	{
		Name = "Melon_G_2023",
		Tool = "Melon_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://13904908523",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Melon_G_2023.Handle.Mesh",
	},

	{
		Name = "Melon",
		Tool = "Melon",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://311701292",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Melon.Handle.Mesh",
	},

	{
		Name = "Meadow_G_2025",
		Tool = "Meadow_G_2025",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://107182071164823",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Meadow_G_2025.Handle.Mesh",
	},

	{
		Name = "Matrixscope",
		Tool = "Matrixscope",
		MeshId = "rbxassetid://133421169610184",
		TextureId = "rbxassetid://115264692533866",
		Size = Vector3.new(0.3685309886932373, 1.7129499912261963, 5.222186088562012),
		Chroma = false,
		Source = "ServerStorage.Items.Matrixscope.Handle",
	},

	{
		Name = "Marley",
		Tool = "Marley",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473620972",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Marley.Handle.Mesh",
	},

	{
		Name = "Marina",
		Tool = "Marina",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159899596",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Marina.Handle.Mesh",
	},

	{
		Name = "Marble_K_2023",
		Tool = "Marble_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://12926768989",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Marble_K_2023.Handle.Mesh",
	},

	{
		Name = "Makeshift",
		Tool = "Makeshift",
		MeshId = "rbxassetid://11158364935",
		TextureId = "rbxassetid://11274360089",
		Size = Vector3.new(0.5883191823959351, 1.25, 2.7314453125),
		Chroma = false,
		Source = "ServerStorage.Items.Makeshift.Handle",
	},

	{
		Name = "Magma_K_2021",
		Tool = "Magma_K_2021",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://7756613022",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Magma_K_2021.Handle.Mesh",
	},

	{
		Name = "Magma_G_2021",
		Tool = "Magma_G_2021",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://7758322982",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Magma_G_2021.Handle.Mesh",
	},

	{
		Name = "MagmaK",
		Tool = "MagmaK",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://1782168732",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.MagmaK.Handle.Mesh",
	},

	{
		Name = "MLG",
		Tool = "MLG",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473623765",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.MLG.Handle.Mesh",
	},

	{
		Name = "Lugercane",
		Tool = "Lugercane",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://4535479829",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Lugercane.Handle.Mesh",
	},

	{
		Name = "LugerChroma",
		Tool = "LugerChroma",
		MeshId = "rbxassetid://95356090",
		TextureId = "",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.LugerChroma.Handle.Mesh",
	},

	{
		Name = "LugerBlack",
		Tool = "LugerBlack",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://95387789",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.LugerBlack.Handle.Mesh",
	},

	{
		Name = "Luger",
		Tool = "Luger",
		MeshId = "rbxassetid://95356090",
		TextureId = "rbxassetid://126534866",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Luger.Handle.Mesh",
	},

	{
		Name = "Lucky",
		Tool = "Lucky",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566400",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Lucky.Handle.Mesh",
	},

	{
		Name = "Lovelyknife",
		Tool = "Lovelyknife",
		MeshId = "rbxassetid://6050886271",
		TextureId = "rbxassetid://6319523756",
		Size = Vector3.new(1.4335293769836426, 4.802567481994629, 0.14788436889648438),
		Chroma = false,
		Source = "ServerStorage.Items.Lovelyknife.Handle",
	},

	{
		Name = "Lovely",
		Tool = "Lovely",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659572197",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Lovely.Handle.Mesh",
	},

	{
		Name = "Love_K_2023",
		Tool = "Love_K_2023",
		MeshId = "rbxassetid://10855586895",
		TextureId = "rbxassetid://12248652835",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Love_K_2023.Handle.Mesh",
	},

	{
		Name = "LoveGun",
		Tool = "LoveGun",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://159686237",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.LoveGun.Handle.Mesh",
	},

	{
		Name = "Love",
		Tool = "Love",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://192527236",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Love.Handle.Mesh",
	},

	{
		Name = "Logcutter_K_2024",
		Tool = "Logcutter_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://73375064666195",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Logcutter_K_2024.Handle.Mesh",
	},

	{
		Name = "LogchopperSilver",
		Tool = "LogchopperSilver",
		MeshId = "rbxassetid://4535643726",
		TextureId = "rbxassetid://9346155546",
		Size = Vector3.new(0.4000000059604645, 3, 0.800000011920929),
		Chroma = false,
		Source = "ServerStorage.Items.LogchopperSilver.Handle.Mesh",
	},

	{
		Name = "LogchopperGold",
		Tool = "LogchopperGold",
		MeshId = "rbxassetid://4535643726",
		TextureId = "rbxassetid://108331174915822",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.LogchopperGold.Handle.Mesh",
	},

	{
		Name = "LogchopperBronze",
		Tool = "LogchopperBronze",
		MeshId = "rbxassetid://4535643726",
		TextureId = "rbxassetid://7572081485",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.LogchopperBronze.Handle.Mesh",
	},

	{
		Name = "LogchopperBlue",
		Tool = "LogchopperBlue",
		MeshId = "rbxassetid://4535643726",
		TextureId = "rbxassetid://4753303501",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.LogchopperBlue.Handle.Mesh",
	},

	{
		Name = "Logchopper",
		Tool = "Logchopper",
		MeshId = "rbxassetid://4535643726",
		TextureId = "rbxassetid://4535641077",
		Size = Vector3.new(0.4855003356933594, 3.3063900470733643, 1.5520000457763672),
		Chroma = false,
		Source = "ServerStorage.Items.Logchopper.Handle",
	},

	{
		Name = "Log",
		Tool = "Log",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://365566383",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Log.Handle.Mesh",
	},

	{
		Name = "Linked",
		Tool = "Linked",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://172762850",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Linked.Handle.Mesh",
	},

	{
		Name = "Lights_K_2019",
		Tool = "Lights_K_2019",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://4534825993",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Lights_K_2019.Handle.Mesh",
	},

	{
		Name = "Lights_G_2019",
		Tool = "Lights_G_2019",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://4534840659",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Lights_G_2019.Handle.Mesh",
	},

	{
		Name = "Lights_25_xmas",
		Tool = "Lights_25_xmas",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://71217678785248",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Lights_25_xmas.Handle.Mesh",
	},

	{
		Name = "Lights_2025_xmas",
		Tool = "Lights_2025_xmas",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://80557940854587",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Lights_2025_xmas.Handle.Mesh",
	},

	{
		Name = "Lightbringer",
		Tool = "Lightbringer",
		MeshId = "rbxassetid://4730813852",
		TextureId = "rbxassetid://4728487789",
		Size = Vector3.new(0.04, 0.04, 0.04),
		Chroma = false,
		Source = "ServerStorage.Items.Lightbringer.Handle.Mesh",
	},

	{
		Name = "Leaves_K_2023",
		Tool = "Leaves_K_2023",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://15081802321",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Leaves_K_2023.Handle.Mesh",
	},

	{
		Name = "Leaves_G_2024",
		Tool = "Leaves_G_2024",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://105437948088593",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Leaves_G_2024.Handle.Mesh",
	},

	{
		Name = "Leaf",
		Tool = "Leaf",
		MeshId = "rbxassetid://957726558",
		TextureId = "rbxassetid://4659588788",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Leaf.Handle.Mesh",
	},

	{
		Name = "Kraken_K_2024",
		Tool = "Kraken_K_2024",
		MeshId = "rbxassetid://6600901997",
		TextureId = "rbxassetid://127474140762204",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Kraken_K_2024.Handle.Mesh",
	},

	{
		Name = "Krypto",
		Tool = "Krypto",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://155572642",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Krypto.Handle.Mesh",
	},

	{
		Name = "LMFAO",
		Tool = "LMFAO",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://473621215",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.LMFAO.Handle.Mesh",
	},

	{
		Name = "Laser",
		Tool = "Laser",
		MeshId = "rbxassetid://130099641",
		TextureId = "rbxassetid://161254231",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Laser.Handle.Mesh",
	},

	{
		Name = "LaserChroma",
		Tool = "LaserChroma",
		MeshId = "rbxassetid://130099641",
		TextureId = "",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.LaserChroma.Handle.Mesh",
	},

	{
		Name = "Latte_G_2023",
		Tool = "Latte_G_2023",
		MeshId = "rbxassetid://79401392",
		TextureId = "rbxassetid://15320206276",
		Size = Vector3.new(0.20000000298023224, 1.8300001621246338, 1.0299999713897705),
		Chroma = false,
		Source = "ServerStorage.Items.Latte_G_2023.Handle.Mesh",
	},

	{
		Name = "Latte_K_2023",
		Tool = "Latte_K_2023",
		MeshId = "rbxassetid://121944778",
		TextureId = "rbxassetid://15319905553",
		Size = Vector3.new(0.4000000059604645, 3, 0.699999988079071),
		Chroma = false,
		Source = "ServerStorage.Items.Latte_K_2023.Handle.Mesh",
	},

}
-- ============================================================

local G2L = {}

G2L["1"] = Instance.new("ScreenGui")
G2L["1"].Name = "ChoppedYooEy"
G2L["1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G2L["1"].ResetOnSpawn = false
pcall(function()
	if syn and syn.protect_gui then syn.protect_gui(G2L["1"]) end
	if gethui then G2L["1"].Parent = gethui() else G2L["1"].Parent = CoreGui end
end)
if not G2L["1"].Parent then
	local ok = pcall(function() G2L["1"].Parent = CoreGui end)
	if not ok then G2L["1"].Parent = playerGui end
end

G2L["2"] = Instance.new("Frame", G2L["1"])
G2L["2"].BorderSizePixel = 0
G2L["2"].BackgroundColor3 = Color3.fromRGB(67, 67, 67)
G2L["2"].Size = UDim2.new(0, 609, 0, 464)
G2L["2"].Position = UDim2.new(0.33549, 0, 0.29835, 0)
G2L["2"].Name = "Main"
G2L["2"].Active = true

G2L["3"] = Instance.new("UICorner", G2L["2"])

G2L["4"] = Instance.new("UIStroke", G2L["2"])
G2L["4"].Thickness = 1.2

G2L["5"] = Instance.new("Frame", G2L["2"])
G2L["5"].BorderSizePixel = 0
G2L["5"].BackgroundColor3 = Color3.fromRGB(103, 103, 103)
G2L["5"].Size = UDim2.new(0, 596, 0, 379)
G2L["5"].Position = UDim2.new(0.00985, 0, 0.15086, 0)
G2L["5"].Name = "WeaponHolderFrame"

G2L["6"] = Instance.new("ScrollingFrame", G2L["5"])
G2L["6"].Active = true
G2L["6"].BorderSizePixel = 0
G2L["6"].Name = "WeaponScrollingFrame"
G2L["6"].BackgroundColor3 = Color3.fromRGB(103, 103, 103)
G2L["6"].Size = UDim2.new(0, 575, 0, 359)
G2L["6"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
G2L["6"].Position = UDim2.new(0.01871, 0, 0.0248, 0)
G2L["6"].CanvasSize = UDim2.new(0, 0, 0, 0)
G2L["6"].AutomaticCanvasSize = Enum.AutomaticSize.Y

G2L["7"] = Instance.new("UIGridLayout", G2L["6"])
G2L["7"].HorizontalAlignment = Enum.HorizontalAlignment.Center
G2L["7"].SortOrder = Enum.SortOrder.LayoutOrder
G2L["7"].CellSize = UDim2.new(0, 100, 0, 133)
G2L["7"].CellPadding = UDim2.new(0, 5, 0, 5)

G2L["8"] = Instance.new("Frame", G2L["6"])
G2L["8"].BorderSizePixel = 0
G2L["8"].BackgroundColor3 = Color3.fromRGB(164, 164, 164)
G2L["8"].Size = UDim2.new(0, 100, 0, 133)
G2L["8"].Name = "Template"
G2L["8"].Visible = false

G2L["9"] = Instance.new("UIStroke", G2L["8"])
G2L["9"].Thickness = 1.2

G2L["a"] = Instance.new("UICorner", G2L["8"])

G2L["b"] = Instance.new("TextLabel", G2L["8"])
G2L["b"].TextWrapped = true
G2L["b"].ZIndex = 20
G2L["b"].BorderSizePixel = 0
G2L["b"].TextSize = 14
G2L["b"].TextScaled = true
G2L["b"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["b"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["b"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["b"].BackgroundTransparency = 1
G2L["b"].Size = UDim2.new(0, 100, 0, 24)
G2L["b"].Text = "Null"
G2L["b"].Name = "WeaponName"
G2L["b"].Position = UDim2.new(0, 0, 0.68833, 0)

G2L["c"] = Instance.new("UIStroke", G2L["b"])

G2L["d"] = Instance.new("ImageLabel", G2L["8"])
G2L["d"].BorderSizePixel = 0
G2L["d"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["d"].Image = "rbxassetid://967902871"
G2L["d"].Size = UDim2.new(0, 100, 0, 100)
G2L["d"].BackgroundTransparency = 1
G2L["d"].Name = "Icon"

G2L["e"] = Instance.new("TextButton", G2L["8"])
G2L["e"].BorderSizePixel = 0
G2L["e"].TextTransparency = 1
G2L["e"].TextSize = 14
G2L["e"].TextColor3 = Color3.fromRGB(0, 0, 0)
G2L["e"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["e"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["e"].ZIndex = 50
G2L["e"].BackgroundTransparency = 1
G2L["e"].Size = UDim2.new(0, 100, 0, 100)
G2L["e"].Name = "Button"

G2L["f"] = Instance.new("UICorner", G2L["5"])
G2L["10"] = Instance.new("UIStroke", G2L["5"])
G2L["10"].Thickness = 1.2

G2L["11"] = Instance.new("Frame", G2L["2"])
G2L["11"].BorderSizePixel = 0
G2L["11"].BackgroundColor3 = Color3.fromRGB(113, 113, 113)
G2L["11"].Size = UDim2.new(0, 596, 0, 56)
G2L["11"].Position = UDim2.new(0.00985, 0, 0.01293, 0)
G2L["11"].Name = "TabHolder"

G2L["12"] = Instance.new("UIStroke", G2L["11"])
G2L["12"].Thickness = 1.2
G2L["13"] = Instance.new("UICorner", G2L["11"])

G2L["18"] = Instance.new("UIListLayout", G2L["11"])
G2L["18"].HorizontalAlignment = Enum.HorizontalAlignment.Center
G2L["18"].Padding = UDim.new(0, 5)
G2L["18"].VerticalAlignment = Enum.VerticalAlignment.Center
G2L["18"].SortOrder = Enum.SortOrder.LayoutOrder
G2L["18"].FillDirection = Enum.FillDirection.Horizontal

G2L["14"] = Instance.new("TextButton", G2L["11"])
G2L["14"].TextWrapped = true
G2L["14"].BorderSizePixel = 0
G2L["14"].TextSize = 14
G2L["14"].TextScaled = true
G2L["14"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["14"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["14"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["14"].Size = UDim2.new(0, 141, 0, 42)
G2L["14"].Text = "Spawner"
G2L["14"].Name = "Tab1"
Instance.new("UIStroke", G2L["14"]).Thickness = 1.2
Instance.new("UICorner", G2L["14"])

G2L["19"] = Instance.new("TextButton", G2L["11"])
G2L["19"].TextWrapped = true
G2L["19"].BorderSizePixel = 0
G2L["19"].TextSize = 14
G2L["19"].TextScaled = true
G2L["19"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["19"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["19"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["19"].Size = UDim2.new(0, 141, 0, 42)
G2L["19"].Text = "Methods"
G2L["19"].Name = "Tab2"
Instance.new("UIStroke", G2L["19"]).Thickness = 1.2
Instance.new("UICorner", G2L["19"])

G2L["1d"] = Instance.new("TextButton", G2L["11"])
G2L["1d"].TextWrapped = true
G2L["1d"].BorderSizePixel = 0
G2L["1d"].TextSize = 14
G2L["1d"].TextScaled = true
G2L["1d"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["1d"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["1d"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["1d"].Size = UDim2.new(0, 141, 0, 42)
G2L["1d"].Text = "Settings"
G2L["1d"].Name = "Tab3"
Instance.new("UIStroke", G2L["1d"]).Thickness = 1.2
Instance.new("UICorner", G2L["1d"])

G2L["21"] = Instance.new("Frame", G2L["2"])
G2L["21"].Visible = false
G2L["21"].BorderSizePixel = 0
G2L["21"].BackgroundColor3 = Color3.fromRGB(103, 103, 103)
G2L["21"].Size = UDim2.new(0, 596, 0, 379)
G2L["21"].Position = UDim2.new(0.00985, 0, 0.15086, 0)
G2L["21"].Name = "SettingsHolder"
Instance.new("UICorner", G2L["21"])
Instance.new("UIStroke", G2L["21"]).Thickness = 1.2

G2L["24"] = Instance.new("TextButton", G2L["21"])
G2L["24"].TextWrapped = true
G2L["24"].BorderSizePixel = 0
G2L["24"].TextSize = 14
G2L["24"].TextScaled = true
G2L["24"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["24"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["24"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["24"].Size = UDim2.new(0, 141, 0, 42)
G2L["24"].Text = "Q to give"
G2L["24"].Name = "qtogive"
G2L["24"].Position = UDim2.new(0.10235, 0, 0.2141, 0)
Instance.new("UIStroke", G2L["24"]).Thickness = 1.2
Instance.new("UICorner", G2L["24"])

G2L["28"] = Instance.new("TextLabel", G2L["21"])
G2L["28"].BorderSizePixel = 0
G2L["28"].TextSize = 14
G2L["28"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["28"].BackgroundTransparency = 1
G2L["28"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["28"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["28"].Size = UDim2.new(0, 300, 0, 40)
G2L["28"].Text = "Click a keybind button then press a key to rebind"
G2L["28"].Position = UDim2.new(0.24832, 0, 0.02375, 0)
G2L["28"].TextScaled = true

G2L["29"] = Instance.new("TextButton", G2L["21"])
G2L["29"].TextWrapped = true
G2L["29"].BorderSizePixel = 0
G2L["29"].TextSize = 14
G2L["29"].TextScaled = true
G2L["29"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["29"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["29"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["29"].Size = UDim2.new(0, 141, 0, 42)
G2L["29"].Text = "T to get"
G2L["29"].Name = "ttoget"
G2L["29"].Position = UDim2.new(0.36577, 0, 0.2141, 0)
Instance.new("UIStroke", G2L["29"]).Thickness = 1.2
Instance.new("UICorner", G2L["29"])

G2L["2d"] = Instance.new("TextButton", G2L["21"])
G2L["2d"].TextWrapped = true
G2L["2d"].BorderSizePixel = 0
G2L["2d"].TextSize = 14
G2L["2d"].TextScaled = true
G2L["2d"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["2d"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["2d"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["2d"].Size = UDim2.new(0, 141, 0, 42)
G2L["2d"].Text = "M toggle menu"
G2L["2d"].Name = "mtoggle"
G2L["2d"].Position = UDim2.new(0.65604, 0, 0.2141, 0)
Instance.new("UIStroke", G2L["2d"]).Thickness = 1.2
Instance.new("UICorner", G2L["2d"])

G2L["31"] = Instance.new("TextButton", G2L["21"])
G2L["31"].TextWrapped = true
G2L["31"].BorderSizePixel = 0
G2L["31"].TextSize = 14
G2L["31"].TextScaled = true
G2L["31"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["31"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["31"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["31"].Size = UDim2.new(0, 141, 0, 42)
G2L["31"].Text = "save data"
G2L["31"].Name = "SaveData"
G2L["31"].Position = UDim2.new(0.20134, 0, 0.64418, 0)
Instance.new("UIStroke", G2L["31"]).Thickness = 1.2
Instance.new("UICorner", G2L["31"])

G2L["35"] = Instance.new("TextButton", G2L["21"])
G2L["35"].TextWrapped = true
G2L["35"].BorderSizePixel = 0
G2L["35"].TextSize = 14
G2L["35"].TextScaled = true
G2L["35"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["35"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["35"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["35"].Size = UDim2.new(0, 141, 0, 42)
G2L["35"].Text = "wipe data"
G2L["35"].Name = "WipeData"
G2L["35"].Position = UDim2.new(0.53859, 0, 0.64418, 0)
Instance.new("UIStroke", G2L["35"]).Thickness = 1.2
Instance.new("UICorner", G2L["35"])

-- Equip Weapons toggle button
G2L["36"] = Instance.new("TextButton", G2L["21"])
G2L["36"].TextWrapped = true
G2L["36"].BorderSizePixel = 0
G2L["36"].TextSize = 14
G2L["36"].TextScaled = true
G2L["36"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["36"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["36"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["36"].Size = UDim2.new(0, 200, 0, 42)
G2L["36"].Text = "Equip Weapons: OFF"
G2L["36"].Name = "EquipToggle"
G2L["36"].Position = UDim2.new(0.335, 0, 0.42, 0)
Instance.new("UIStroke", G2L["36"]).Thickness = 1.2
Instance.new("UICorner", G2L["36"])

G2L["39"] = Instance.new("Frame", G2L["2"])
G2L["39"].Visible = false
G2L["39"].BorderSizePixel = 0
G2L["39"].BackgroundColor3 = Color3.fromRGB(103, 103, 103)
G2L["39"].Size = UDim2.new(0, 596, 0, 379)
G2L["39"].Position = UDim2.new(0.00985, 0, 0.15086, 0)
G2L["39"].Name = "MethodsHolder"
Instance.new("UICorner", G2L["39"])
Instance.new("UIStroke", G2L["39"]).Thickness = 1.2

G2L["3c"] = Instance.new("TextButton", G2L["39"])
G2L["3c"].TextWrapped = true
G2L["3c"].BorderSizePixel = 0
G2L["3c"].TextSize = 14
G2L["3c"].TextScaled = true
G2L["3c"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["3c"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["3c"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["3c"].Size = UDim2.new(0, 141, 0, 42)
G2L["3c"].Text = "Give all"
G2L["3c"].Name = "GiveAll"
G2L["3c"].Position = UDim2.new(0.38087, 0, 0.0637, 0)
Instance.new("UIStroke", G2L["3c"]).Thickness = 1.2
Instance.new("UICorner", G2L["3c"])

G2L["40"] = Instance.new("TextLabel", G2L["39"])
G2L["40"].BorderSizePixel = 0
G2L["40"].TextSize = 14
G2L["40"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["40"].BackgroundTransparency = 1
G2L["40"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["40"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["40"].Size = UDim2.new(0, 389, 0, 88)
G2L["40"].Text = "Give All = every item (50-299 each).\nBlock Menu = opens block panel.\nPress K for weapon debug (needs Equip ON)."
G2L["40"].Position = UDim2.new(0.18792, 0, 0.25066, 0)
G2L["40"].TextScaled = true

G2L["41"] = Instance.new("TextButton", G2L["39"])
G2L["41"].TextWrapped = true
G2L["41"].BorderSizePixel = 0
G2L["41"].TextSize = 14
G2L["41"].TextScaled = true
G2L["41"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["41"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
G2L["41"].FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
G2L["41"].Size = UDim2.new(0, 141, 0, 42)
G2L["41"].Text = "Block menu"
G2L["41"].Name = "BlockMenu"
G2L["41"].Position = UDim2.new(0.37248, 0, 0.74708, 0)
Instance.new("UIStroke", G2L["41"]).Thickness = 1.2
Instance.new("UICorner", G2L["41"])

G2L["45"] = Instance.new("TextLabel", G2L["2"])
G2L["45"].BorderSizePixel = 0
G2L["45"].TextSize = 14
G2L["45"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
G2L["45"].BackgroundTransparency = 1
G2L["45"].FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["45"].TextColor3 = Color3.fromRGB(255, 255, 255)
G2L["45"].Size = UDim2.new(0, 63, 0, 15)
G2L["45"].Text = "c: voidstars"
G2L["45"].Position = UDim2.new(0.8943, 0, 1, 0)

local function makeDraggable(frame)
	local dragToggle, dragStart, startPos
	local dragSpeed = 0.1

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragToggle then
			local delta = input.Position - dragStart
			local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			TweenService:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
		end
	end)
end

makeDraggable(G2L["2"])

local function showTab(tabName)
	G2L["5"].Visible = (tabName == "Spawner")
	G2L["39"].Visible = (tabName == "Methods")
	G2L["21"].Visible = (tabName == "Settings")
end

G2L["14"].MouseButton1Click:Connect(function() showTab("Spawner") end)
G2L["19"].MouseButton1Click:Connect(function() showTab("Methods") end)
G2L["1d"].MouseButton1Click:Connect(function() showTab("Settings") end)

showTab("Spawner")

local function spawnWeapon(name, quantity)
	quantity = quantity or 1
	if quantity < 1 then quantity = 1 end

	pcall(function()
		local DataBase = require(ReplicatedStorage.Database.Sync.Item)
		local PlayerData = require(ReplicatedStorage.Modules.ProfileData)
		local PlayerWeapons = PlayerData.Weapons

		PlayerWeapons.Owned[name] = (PlayerWeapons.Owned[name] or 0) + quantity

		RunService:BindToRenderStep("InventoryUpdate_" .. name .. "_" .. tick(), 0, function()
			PlayerData.Weapons = PlayerWeapons
		end)

		if localPlayer.Character then
			localPlayer.Character:BreakJoints()
		end
	end)
end

local itemDatabase = nil
local function loadDatabase()
	local ok, res = pcall(function()
		return require(ReplicatedStorage.Database.Sync.Item)
	end)
	if ok and type(res) == "table" then
		itemDatabase = res
		return true
	end
	return false
end

local rarityOrder = {
	Unique = 1,
	Ancient = 2,
	Godly = 3,
	Legendary = 4,
	Rare = 5,
	Uncommon = 6,
	Common = 7,
	Vintage = 8,
	Classic = 9,
	Christmas = 10,
	Halloween = 11,
}

local function populateSpawner()
	if not itemDatabase then
		if not loadDatabase() then return end
	end

	for _, ch in ipairs(G2L["6"]:GetChildren()) do
		if ch:IsA("Frame") and ch.Name ~= "Template" and ch.Name ~= "" then
			ch:Destroy()
		end
	end

	local template = G2L["8"]

	local sorted = {}
	pcall(function()
		for key, data in pairs(itemDatabase) do
			if type(data) == "table" and type(data.ItemName) == "string" and type(data.Image) == "string" then
				table.insert(sorted, {key = key, data = data})
			end
		end
	end)

	table.sort(sorted, function(a, b)
		local rA = rarityOrder[a.data.Rarity] or 99
		local rB = rarityOrder[b.data.Rarity] or 99
		if rA ~= rB then
			return rA < rB
		end
		return a.data.ItemName < b.data.ItemName
	end)

	for i, entry in ipairs(sorted) do
		local data = entry.data
		local key = entry.key

		local clone = template:Clone()
		clone.Name = tostring(key)
		clone.Visible = true
		clone.LayoutOrder = i
		clone.Parent = G2L["6"]

		local nameLbl = clone:FindFirstChild("WeaponName")
		local icon = clone:FindFirstChild("Icon")
		local btn = clone:FindFirstChild("Button")

		if nameLbl then nameLbl.Text = data.ItemName end
		if icon then icon.Image = data.Image or "" end

		if btn then
			btn.MouseButton1Click:Connect(function()
				spawnWeapon(key, 1)
			end)
		end
	end
end

local giveAllIgnored = {
	["???"] = true,
	["Red Raygun"] = true,
	["Bronze Raygun"] = true,
	["Silver Raygun"] = true,
	["Gold Raygun"] = true,
	["Nik's Scythe"] = true,
	["Icecrusher"] = true,
	["Synthwave"] = true,
	["Reaver"] = true,
	["Gingerscythe"] = true,
	["Default Knife"] = true,
	["Default Gun"] = true,
}

G2L["3c"].MouseButton1Click:Connect(function()
	if not itemDatabase then loadDatabase() end
	if not itemDatabase then return end

	pcall(function()
		local PlayerData = require(ReplicatedStorage.Modules.ProfileData)
		local PlayerWeapons = PlayerData.Weapons

		for key, data in pairs(itemDatabase) do
			if type(data) == "table" and type(data.ItemName) == "string" then
				local skip = false

				if giveAllIgnored[data.ItemName] then
					skip = true
				end

				if data.Rarity == "Unique" and data.ItemName ~= "Sorry" then
					skip = true
				end

				if not skip then
					local qty = math.random(50, 299)
					PlayerWeapons.Owned[key] = (PlayerWeapons.Owned[key] or 0) + qty
				end
			end
		end

		RunService:BindToRenderStep("InventoryUpdate_GiveAll_" .. tick(), 0, function()
			PlayerData.Weapons = PlayerWeapons
		end)

		if localPlayer.Character then
			localPlayer.Character:BreakJoints()
		end
	end)
end)

-- ============================================================
--  BLOCK MENU (single instance only)
-- ============================================================
local blockGuiRef = nil

local function openBlockPanel()
	-- If already open, do nothing
	if blockGuiRef and blockGuiRef.Parent then
		return
	end

	-- Clean up any leftover instances
	for _, v in pairs(CoreGui:GetChildren()) do
		if v.Name == "BlockPanel" then v:Destroy() end
	end
	for _, v in pairs(playerGui:GetChildren()) do
		if v.Name == "BlockPanel" then v:Destroy() end
	end

	local THEME = {
		MainBG = Color3.fromRGB(146, 146, 146),
		ButtonBG = Color3.fromRGB(119, 119, 119),
		BlockRed = Color3.fromRGB(180, 60, 60),
		BlockedGreen = Color3.fromRGB(90, 160, 90),
		TextWhite = Color3.fromRGB(255, 255, 255),
		StrokeBlack = Color3.fromRGB(0, 0, 0),
		PromptBG = Color3.fromRGB(0, 0, 0),
		Font = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	}

	local function makeBorderStroke(parent, thickness)
		local s = Instance.new("UIStroke", parent)
		s.Color = THEME.StrokeBlack
		s.Thickness = thickness or 2
		s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		s.LineJoinMode = Enum.LineJoinMode.Round
		return s
	end

	local function makeTextStroke(parent, thickness)
		local s = Instance.new("UIStroke", parent)
		s.Color = THEME.StrokeBlack
		s.Thickness = thickness or 2
		s.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
		s.LineJoinMode = Enum.LineJoinMode.Round
		return s
	end

	local function makeCorner(parent, radius)
		local c = Instance.new("UICorner", parent)
		c.CornerRadius = UDim.new(0, radius or 8)
		return c
	end

	local BlockGui = Instance.new("ScreenGui")
	BlockGui.Name = "BlockPanel"
	BlockGui.ResetOnSpawn = false
	BlockGui.DisplayOrder = 999
	BlockGui.IgnoreGuiInset = true
	BlockGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local okp = pcall(function() BlockGui.Parent = CoreGui end)
	if not okp then BlockGui.Parent = playerGui end
	pcall(function()
		if gethui then BlockGui.Parent = gethui() end
		if syn and syn.protect_gui then syn.protect_gui(BlockGui) end
	end)

	blockGuiRef = BlockGui
	BlockGui.AncestryChanged:Connect(function()
		if not BlockGui.Parent then
			blockGuiRef = nil
		end
	end)
	BlockGui.Destroying:Connect(function()
		blockGuiRef = nil
	end)

	local MainFrame = Instance.new("Frame")
	MainFrame.Name = "MainFrame"
	MainFrame.Size = UDim2.new(0, 480, 0, 540)
	MainFrame.Position = UDim2.new(0.5, -240, 0.5, -270)
	MainFrame.BackgroundColor3 = THEME.MainBG
	MainFrame.BorderSizePixel = 0
	MainFrame.Parent = BlockGui
	makeCorner(MainFrame, 10)
	makeBorderStroke(MainFrame, 3)

	local TitleBar = Instance.new("Frame")
	TitleBar.Size = UDim2.new(1, -20, 0, 55)
	TitleBar.Position = UDim2.new(0, 10, 0, 10)
	TitleBar.BackgroundColor3 = THEME.ButtonBG
	TitleBar.BorderSizePixel = 0
	TitleBar.Parent = MainFrame
	makeCorner(TitleBar, 8)
	makeBorderStroke(TitleBar, 2)

	local Title = Instance.new("TextLabel")
	Title.Size = UDim2.new(1, -70, 1, 0)
	Title.Position = UDim2.new(0, 10, 0, 0)
	Title.BackgroundTransparency = 1
	Title.Text = "fag block"
	Title.TextColor3 = THEME.TextWhite
	Title.TextScaled = true
	Title.FontFace = THEME.Font
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.Parent = TitleBar
	makeTextStroke(Title, 2)

	local CloseBtn = Instance.new("TextButton")
	CloseBtn.Size = UDim2.new(0, 45, 0, 45)
	CloseBtn.Position = UDim2.new(1, -50, 0.5, -22)
	CloseBtn.BackgroundColor3 = THEME.BlockRed
	CloseBtn.Text = "X"
	CloseBtn.TextColor3 = THEME.TextWhite
	CloseBtn.TextScaled = true
	CloseBtn.FontFace = THEME.Font
	CloseBtn.BorderSizePixel = 0
	CloseBtn.Parent = TitleBar
	makeCorner(CloseBtn, 6)
	makeBorderStroke(CloseBtn, 2)
	makeTextStroke(CloseBtn, 2)
	CloseBtn.MouseButton1Click:Connect(function()
		blockGuiRef = nil
		BlockGui:Destroy()
	end)

	local Scrolling = Instance.new("ScrollingFrame")
	Scrolling.Size = UDim2.new(1, -20, 1, -85)
	Scrolling.Position = UDim2.new(0, 10, 0, 75)
	Scrolling.BackgroundTransparency = 1
	Scrolling.BorderSizePixel = 0
	Scrolling.ScrollBarThickness = 8
	Scrolling.ScrollBarImageColor3 = THEME.StrokeBlack
	Scrolling.Parent = MainFrame

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Padding = UDim.new(0, 8)
	UIListLayout.Parent = Scrolling

	local UIPadding = Instance.new("UIPadding")
	UIPadding.PaddingTop = UDim.new(0, 5)
	UIPadding.PaddingBottom = UDim.new(0, 5)
	UIPadding.Parent = Scrolling

	local dragging, dragStart, startPos
	TitleBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = MainFrame.Position
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)

	local function setPromptMode(active)
		local targetBg = active and THEME.PromptBG or THEME.MainBG
		TweenService:Create(MainFrame, TweenInfo.new(0.2), {BackgroundColor3 = targetBg}):Play()
		TitleBar.Visible = not active
		Scrolling.Visible = not active
	end

	local activePromptGui = nil
	local activePromptBox = nil

	local function findPromptContent(gui)
		local textLabel = nil
		for _, desc in pairs(gui:GetDescendants()) do
			if desc:IsA("TextLabel") and desc.Text and 
				string.find(desc.Text, "Block") and string.find(desc.Text, "?") then
				textLabel = desc
				break
			end
		end
		if not textLabel then return nil end

		local candidate = textLabel.Parent
		local best = candidate
		while candidate and candidate ~= gui do
			if (candidate:IsA("Frame") or candidate:IsA("ImageLabel") or candidate:IsA("ImageButton")) then
				local sz = candidate.AbsoluteSize
				if sz.X >= 200 and sz.X <= 900 and sz.Y >= 150 and sz.Y <= 700 then
					best = candidate
				end
			end
			candidate = candidate.Parent
		end
		return best
	end

	local function nukeGui(gui)
		for _, desc in pairs(gui:GetDescendants()) do
			pcall(function()
				if desc:IsA("Frame") then
					desc.BackgroundTransparency = 1
				elseif desc:IsA("ImageLabel") then
					desc.BackgroundTransparency = 1
					desc.ImageTransparency = 1
				elseif desc:IsA("ImageButton") then
					desc.BackgroundTransparency = 1
					desc.ImageTransparency = 1
				elseif desc:IsA("TextButton") then
					desc.BackgroundTransparency = 0.3
					desc.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
				elseif desc:IsA("BlurEffect") then
					desc.Enabled = false
				elseif desc:IsA("UIStroke") then
					desc.Enabled = false
				end
			end)
		end
		pcall(function()
			for _, v in pairs(Lighting:GetChildren()) do
				if v:IsA("BlurEffect") then v.Enabled = false end
			end
		end)
	end

	local function attachPrompt(gui)
		activePromptGui = gui
		nukeGui(gui)
		activePromptBox = findPromptContent(gui)
		setPromptMode(true)

		for i = 1, 5 do
			task.delay(i * 0.1, function()
				if activePromptGui == gui and gui.Parent then
					nukeGui(gui)
					if not activePromptBox then
						activePromptBox = findPromptContent(gui)
					end
				end
			end)
		end

		task.spawn(function()
			while activePromptGui == gui do
				task.wait(0.1)
				if not gui.Parent or not gui.Enabled then break end
				local stillThere = false
				for _, child in pairs(gui:GetDescendants()) do
					if child:IsA("TextLabel") and child.Text and 
						string.find(child.Text, "Block") and string.find(child.Text, "?") then
						stillThere = true
						break
					end
				end
				if not stillThere then break end
			end
			if activePromptGui == gui then
				activePromptGui = nil
				activePromptBox = nil
				setPromptMode(false)
			end
		end)
	end

	RunService.RenderStepped:Connect(function()
		if activePromptBox and activePromptBox.Parent and MainFrame.Parent then
			pcall(function()
				local mfPos = MainFrame.AbsolutePosition
				local mfSize = MainFrame.AbsoluteSize
				local pSize = activePromptBox.AbsoluteSize
				local targetX = mfPos.X + (mfSize.X / 2) - (pSize.X / 2)
				local targetY = mfPos.Y + (mfSize.Y / 2) - (pSize.Y / 2)
				activePromptBox.AnchorPoint = Vector2.new(0, 0)
				activePromptBox.Position = UDim2.new(0, targetX, 0, targetY)
			end)
		end
	end)

	CoreGui.DescendantAdded:Connect(function(desc)
		if desc:IsA("ScreenGui") and BlockGui.Parent then
			task.spawn(function()
				for i = 1, 20 do
					task.wait(0.03)
					for _, child in pairs(desc:GetDescendants()) do
						if child:IsA("TextLabel") and child.Text and 
							string.find(child.Text, "Block") and string.find(child.Text, "?") then
							attachPrompt(desc)
							return
						end
					end
				end
			end)
		end
	end)

	local function promptBlock(plr)
		activePromptBox = nil
		activePromptGui = nil
		pcall(function()
			for _, v in pairs(Lighting:GetChildren()) do
				if v:IsA("BlurEffect") then v.Enabled = false end
			end
		end)
		pcall(function() StarterGui:SetCore("PromptBlockPlayer", plr) end)
		task.spawn(function()
			for i = 1, 50 do
				task.wait(0.03)
				if activePromptGui then return end
				for _, gui in pairs(CoreGui:GetChildren()) do
					if gui:IsA("ScreenGui") and gui.Enabled then
						for _, child in pairs(gui:GetDescendants()) do
							if child:IsA("TextLabel") and child.Text and 
								string.find(child.Text, "Block") and string.find(child.Text, "?") then
								attachPrompt(gui)
								return
							end
						end
					end
				end
			end
		end)
	end

	local blockedPlayers = {}

	local function createPlayerEntry(plr)
		if plr == localPlayer then return end

		local Entry = Instance.new("Frame")
		Entry.Size = UDim2.new(1, -10, 0, 90)
		Entry.BackgroundColor3 = THEME.MainBG
		Entry.BorderSizePixel = 0
		Entry.Parent = Scrolling
		makeCorner(Entry, 8)
		makeBorderStroke(Entry, 2)

		local Avatar = Instance.new("ImageLabel")
		Avatar.Size = UDim2.new(0, 70, 0, 70)
		Avatar.Position = UDim2.new(0, 10, 0.5, -35)
		Avatar.BackgroundColor3 = THEME.TextWhite
		Avatar.BorderSizePixel = 0
		Avatar.Parent = Entry
		makeCorner(Avatar, 6)
		makeBorderStroke(Avatar, 2)
		pcall(function()
			Avatar.Image = Players:GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
		end)

		local NameLabel = Instance.new("TextLabel")
		NameLabel.Size = UDim2.new(0.45, 0, 0.7, 0)
		NameLabel.Position = UDim2.new(0, 90, 0.15, 0)
		NameLabel.BackgroundTransparency = 1
		NameLabel.Text = plr.Name
		NameLabel.TextColor3 = THEME.TextWhite
		NameLabel.TextScaled = true
		NameLabel.FontFace = THEME.Font
		NameLabel.TextXAlignment = Enum.TextXAlignment.Left
		NameLabel.Parent = Entry
		makeTextStroke(NameLabel, 2)

		local BlockButton = Instance.new("TextButton")
		BlockButton.Size = UDim2.new(0, 140, 0, 55)
		BlockButton.Position = UDim2.new(1, -150, 0.5, -27)
		BlockButton.BackgroundColor3 = THEME.BlockRed
		BlockButton.Text = "BLOCK"
		BlockButton.TextColor3 = THEME.TextWhite
		BlockButton.TextScaled = true
		BlockButton.FontFace = THEME.Font
		BlockButton.BorderSizePixel = 0
		BlockButton.Parent = Entry
		makeCorner(BlockButton, 6)
		makeBorderStroke(BlockButton, 2)
		makeTextStroke(BlockButton, 2)

		local btnPad = Instance.new("UIPadding", BlockButton)
		btnPad.PaddingTop = UDim.new(0, 8)
		btnPad.PaddingBottom = UDim.new(0, 8)
		btnPad.PaddingLeft = UDim.new(0, 10)
		btnPad.PaddingRight = UDim.new(0, 10)

		if blockedPlayers[plr.UserId] then
			BlockButton.Text = "BLOCKED"
			BlockButton.BackgroundColor3 = THEME.BlockedGreen
		end

		BlockButton.MouseButton1Click:Connect(function()
			promptBlock(plr)
			BlockButton.Text = "BLOCKED"
			BlockButton.BackgroundColor3 = THEME.BlockedGreen
			blockedPlayers[plr.UserId] = true
		end)
	end

	local function refreshList()
		for _, v in pairs(Scrolling:GetChildren()) do
			if v:IsA("Frame") then v:Destroy() end
		end
		for _, plr in pairs(Players:GetPlayers()) do
			pcall(createPlayerEntry, plr)
		end
		Scrolling.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
	end

	Players.PlayerAdded:Connect(refreshList)
	Players.PlayerRemoving:Connect(refreshList)
	refreshList()
end

G2L["41"].MouseButton1Click:Connect(openBlockPanel)

G2L["31"].MouseButton1Click:Connect(function()
	pcall(function()
		local PlayerData = require(ReplicatedStorage.Modules.ProfileData)
		RunService:BindToRenderStep("SaveDataTick", 0, function()
			PlayerData.Weapons = PlayerData.Weapons
		end)
		task.wait(0.5)
		pcall(function() RunService:UnbindFromRenderStep("SaveDataTick") end)
	end)
end)

G2L["35"].MouseButton1Click:Connect(function()
	pcall(function()
		local PlayerData = require(ReplicatedStorage.Modules.ProfileData)
		PlayerData.Weapons.Owned = {}
		RunService:BindToRenderStep("WipeDataTick_" .. tick(), 0, function()
			PlayerData.Weapons = PlayerData.Weapons
		end)
		if localPlayer.Character then
			localPlayer.Character:BreakJoints()
		end
	end)
end)

-- ============================================================
--  EQUIP WEAPONS TOGGLE
-- ============================================================
local equipEnabled = false
local function updateEquipToggleUI()
	if equipEnabled then
		G2L["36"].Text = "Equip Weapons: ON"
		G2L["36"].BackgroundColor3 = Color3.fromRGB(90, 160, 90)
	else
		G2L["36"].Text = "Equip Weapons: OFF"
		G2L["36"].BackgroundColor3 = Color3.fromRGB(178, 178, 178)
	end
end
updateEquipToggleUI()

G2L["36"].MouseButton1Click:Connect(function()
	equipEnabled = not equipEnabled
	updateEquipToggleUI()
end)

local keybinds = {
	give = Enum.KeyCode.Q,
	get = Enum.KeyCode.T,
	toggle = Enum.KeyCode.M,
	debug = Enum.KeyCode.K,
}

local waitingForKey = nil

local function updateKeybindButton()
	G2L["24"].Text = keybinds.give.Name .. " to give"
	G2L["29"].Text = keybinds.get.Name .. " to get"
	G2L["2d"].Text = keybinds.toggle.Name .. " toggle menu"
end
updateKeybindButton()

G2L["24"].MouseButton1Click:Connect(function()
	waitingForKey = "give"
	G2L["24"].Text = "Press a key..."
end)

G2L["29"].MouseButton1Click:Connect(function()
	waitingForKey = "get"
	G2L["29"].Text = "Press a key..."
end)

G2L["2d"].MouseButton1Click:Connect(function()
	waitingForKey = "toggle"
	G2L["2d"].Text = "Press a key..."
end)

local function toggleUI()
	G2L["2"].Visible = not G2L["2"].Visible
end

task.spawn(function()
	task.wait(0.5)
	populateSpawner()
end)

-- ============================================================
--  WEAPON DISPLAY SYSTEM
-- ============================================================
local weaponMeshData = {}
local function buildWeaponMeshData()
	for _, entry in ipairs(WEAPON_MESH_DATABASE) do
		if type(entry) == "table" and entry.Name then
			weaponMeshData[entry.Name] = entry
			if entry.Tool and entry.Tool ~= entry.Name then
				weaponMeshData[entry.Tool] = entry
			end
		end
	end
end
buildWeaponMeshData()

local lastEquippedMesh = nil
local lastEquippedWeapon = nil
local currentDebugScale = Vector3.new(1, 1, 1)
local currentDebugOffset = Vector3.new(0, 0, 0)

local function getItemType(weaponName)
	if not itemDatabase then loadDatabase() end
	if not itemDatabase then return nil end
	local entry = itemDatabase[weaponName]
	if type(entry) == "table" and type(entry.ItemType) == "string" then
		return entry.ItemType
	end
	for _, data in pairs(itemDatabase) do
		if type(data) == "table" and data.ItemName == weaponName and type(data.ItemType) == "string" then
			return data.ItemType
		end
	end
	return nil
end

local function getClosestDisplay(displayName)
	local displaysFolder = Workspace:FindFirstChild("WeaponDisplays")
	if not displaysFolder then return nil end
	local char = localPlayer.Character
	if not char then return nil end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	if not hrp then return nil end
	local myPos = hrp.Position
	local closest, closestDist
	for _, part in ipairs(displaysFolder:GetChildren()) do
		if part.Name == displayName and part:IsA("BasePart") then
			local dist = (part.Position - myPos).Magnitude
			if not closestDist or dist < closestDist then
				closest = part
				closestDist = dist
			end
		end
	end
	return closest
end

local function applyMeshToDisplay(weaponName)
	if not equipEnabled then return end
	local meshInfo = weaponMeshData[weaponName]
	if not meshInfo then return end
	local itemType = getItemType(weaponName)
	if not itemType then return end
	local displayName
	if itemType == "Knife" then displayName = "KnifeDisplay"
	elseif itemType == "Gun" then displayName = "GunDisplay"
	else return end
	local displayPart = getClosestDisplay(displayName)
	if not displayPart then return end
	local mesh = displayPart:FindFirstChild("Mesh")
	if not mesh then
		for _, ch in ipairs(displayPart:GetChildren()) do
			if ch:IsA("SpecialMesh") then mesh = ch; break end
		end
	end
	if not mesh then return end

	-- Default the debug scale/offset from the weapon's Size in the database
	if meshInfo.Size and typeof(meshInfo.Size) == "Vector3" then
		currentDebugScale = meshInfo.Size
	else
		currentDebugScale = Vector3.new(1, 1, 1)
	end
	currentDebugOffset = Vector3.new(0, 0, 0)

	pcall(function()
		if meshInfo.MeshId then mesh.MeshId = meshInfo.MeshId end
		if meshInfo.TextureId then mesh.TextureId = meshInfo.TextureId end
		mesh.Scale = currentDebugScale
		mesh.Offset = currentDebugOffset
	end)
	lastEquippedMesh = mesh
	lastEquippedWeapon = weaponName
end

-- Hook Equip remote
task.spawn(function()
	local ok, equipRemote = pcall(function()
		return ReplicatedStorage:WaitForChild("Remotes", 10):WaitForChild("Inventory", 10):WaitForChild("Equip", 10)
	end)
	if not ok or not equipRemote then return end

	local mt = getrawmetatable and getrawmetatable(game)
	local hookfunc = hookfunction or hookfunc
	local isreadonly = isreadonly or is_readonly
	local setreadonly = setreadonly or set_readonly
	local newcclosure = newcclosure or function(f) return f end

	if mt and hookfunc then
		local wasReadonly = false
		if isreadonly and isreadonly(mt) then
			wasReadonly = true
			if setreadonly then setreadonly(mt, false) end
		end
		local oldNamecall
		oldNamecall = hookfunc(mt.__namecall, newcclosure(function(self, ...)
			local method = getnamecallmethod and getnamecallmethod() or ""
			if (method == "FireServer" or method == "fireServer") and self == equipRemote then
				local args = {...}
				local weaponName = args[1]
				local category = args[2]
				if equipEnabled and category == "Weapons" and type(weaponName) == "string" then
					task.spawn(function()
						task.wait(0.1)
						applyMeshToDisplay(weaponName)
					end)
				end
			end
			return oldNamecall(self, ...)
		end))
		if wasReadonly and setreadonly then setreadonly(mt, true) end
	end
end)

-- ============================================================
--  DEBUG GUI (press K, only works if equipEnabled)
-- ============================================================
local debugGuiOpen = false
local debugGui = nil
local debugScaleBoxes = {}
local debugOffsetBoxes = {}

local function makeDebugRow(parent, labelText, defaultValue, yPos)
	local row = Instance.new("Frame", parent)
	row.Size = UDim2.new(1, -20, 0, 40)
	row.Position = UDim2.new(0, 10, 0, yPos)
	row.BackgroundTransparency = 1

	local label = Instance.new("TextLabel", row)
	label.Size = UDim2.new(0, 100, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = labelText
	label.TextColor3 = Color3.fromRGB(255, 255, 255)
	label.TextScaled = true
	label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	label.TextXAlignment = Enum.TextXAlignment.Left

	local box = Instance.new("TextBox", row)
	box.Size = UDim2.new(1, -110, 0, 35)
	box.Position = UDim2.new(0, 105, 0, 2)
	box.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	box.BorderSizePixel = 0
	box.Text = tostring(defaultValue)
	box.TextColor3 = Color3.fromRGB(255, 255, 255)
	box.TextScaled = true
	box.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	box.ClearTextOnFocus = false
	Instance.new("UICorner", box).CornerRadius = UDim.new(0, 4)

	return box
end

local function openDebugGui()
	if debugGui and debugGui.Parent then
		debugGui.Enabled = true
		-- Refresh values with latest defaults
		if debugScaleBoxes[1] then
			debugScaleBoxes[1].Text = tostring(currentDebugScale.X)
			debugScaleBoxes[2].Text = tostring(currentDebugScale.Y)
			debugScaleBoxes[3].Text = tostring(currentDebugScale.Z)
			debugOffsetBoxes[1].Text = tostring(currentDebugOffset.X)
			debugOffsetBoxes[2].Text = tostring(currentDebugOffset.Y)
			debugOffsetBoxes[3].Text = tostring(currentDebugOffset.Z)
		end
		return
	end

	debugGui = Instance.new("ScreenGui")
	debugGui.Name = "WeaponDebug"
	debugGui.ResetOnSpawn = false
	debugGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local okp = pcall(function()
		if syn and syn.protect_gui then syn.protect_gui(debugGui) end
		if gethui then debugGui.Parent = gethui() else debugGui.Parent = CoreGui end
	end)
	if not debugGui.Parent then
		pcall(function() debugGui.Parent = CoreGui end)
		if not debugGui.Parent then debugGui.Parent = playerGui end
	end

	local main = Instance.new("Frame", debugGui)
	main.Size = UDim2.new(0, 380, 0, 400)
	main.Position = UDim2.new(0, 30, 0.3, 0)
	main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
	main.BorderSizePixel = 0
	main.Active = true
	Instance.new("UICorner", main).CornerRadius = UDim.new(0, 10)
	local stroke = Instance.new("UIStroke", main)
	stroke.Thickness = 2
	stroke.Color = Color3.fromRGB(0, 200, 100)

	local title = Instance.new("TextLabel", main)
	title.Size = UDim2.new(1, -50, 0, 40)
	title.Position = UDim2.new(0, 10, 0, 5)
	title.BackgroundTransparency = 1
	title.Text = "Weapon Display Debug"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextScaled = true
	title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	title.TextXAlignment = Enum.TextXAlignment.Left

	local closeBtn = Instance.new("TextButton", main)
	closeBtn.Size = UDim2.new(0, 35, 0, 35)
	closeBtn.Position = UDim2.new(1, -40, 0, 5)
	closeBtn.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
	closeBtn.Text = "X"
	closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	closeBtn.TextScaled = true
	closeBtn.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Instance.new("UICorner", closeBtn).CornerRadius = UDim.new(0, 6)
	closeBtn.MouseButton1Click:Connect(function()
		debugGui.Enabled = false
		debugGuiOpen = false
	end)

	local infoLabel = Instance.new("TextLabel", main)
	infoLabel.Size = UDim2.new(1, -20, 0, 30)
	infoLabel.Position = UDim2.new(0, 10, 0, 50)
	infoLabel.BackgroundTransparency = 1
	infoLabel.Text = "Last: none"
	infoLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
	infoLabel.TextScaled = true
	infoLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	infoLabel.TextXAlignment = Enum.TextXAlignment.Left

	local scaleXBox = makeDebugRow(main, "Scale X:", currentDebugScale.X, 90)
	local scaleYBox = makeDebugRow(main, "Scale Y:", currentDebugScale.Y, 135)
	local scaleZBox = makeDebugRow(main, "Scale Z:", currentDebugScale.Z, 180)
	local offX = makeDebugRow(main, "Offset X:", currentDebugOffset.X, 225)
	local offY = makeDebugRow(main, "Offset Y:", currentDebugOffset.Y, 270)
	local offZ = makeDebugRow(main, "Offset Z:", currentDebugOffset.Z, 315)

	debugScaleBoxes = {scaleXBox, scaleYBox, scaleZBox}
	debugOffsetBoxes = {offX, offY, offZ}

	local function applyDebugValues()
		local sx = tonumber(scaleXBox.Text) or 1
		local sy = tonumber(scaleYBox.Text) or 1
		local sz = tonumber(scaleZBox.Text) or 1
		local ox = tonumber(offX.Text) or 0
		local oy = tonumber(offY.Text) or 0
		local oz = tonumber(offZ.Text) or 0
		currentDebugScale = Vector3.new(sx, sy, sz)
		currentDebugOffset = Vector3.new(ox, oy, oz)
		if lastEquippedMesh and lastEquippedMesh.Parent then
			pcall(function()
				lastEquippedMesh.Scale = currentDebugScale
				lastEquippedMesh.Offset = currentDebugOffset
			end)
		end
		if lastEquippedWeapon then
			infoLabel.Text = "Last: " .. lastEquippedWeapon
		end
	end

	local applyBtn = Instance.new("TextButton", main)
	applyBtn.Size = UDim2.new(1, -20, 0, 35)
	applyBtn.Position = UDim2.new(0, 10, 1, -45)
	applyBtn.BackgroundColor3 = Color3.fromRGB(0, 180, 90)
	applyBtn.Text = "Apply to current weapon"
	applyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
	applyBtn.TextScaled = true
	applyBtn.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Instance.new("UICorner", applyBtn).CornerRadius = UDim.new(0, 6)
	applyBtn.MouseButton1Click:Connect(applyDebugValues)

	for _, box in ipairs({scaleXBox, scaleYBox, scaleZBox, offX, offY, offZ}) do
		box.FocusLost:Connect(applyDebugValues)
	end

	makeDraggable(main)

	-- Update info label live + reflect current values when new weapon equipped
	task.spawn(function()
		while debugGui and debugGui.Parent do
			task.wait(0.3)
			if lastEquippedWeapon then
				infoLabel.Text = "Last: " .. lastEquippedWeapon
			end
		end
	end)

	debugGuiOpen = true
end

local function toggleDebugGui()
	if not equipEnabled then return end
	if debugGui and debugGui.Parent then
		debugGui.Enabled = not debugGui.Enabled
	else
		openDebugGui()
	end
end

local tradeModeEnabled = false
local scriptAlive = true
local inTradeSession = false
local isIncomingTrade = false
local connections = {}
local offerConnections = {}
local propertyConnections = {}
local sourcePropConnections = {}
local confirmConnection = nil
local cancelConnection = nil
local declineConnection = nil
local claimConnection = nil
local guiAddedConnection = nil
local theirOfferThread = nil

local offerState = {NewItem1 = nil, NewItem2 = nil, NewItem3 = nil, NewItem4 = nil}
local theirOfferState = {NewItem1 = nil, NewItem2 = nil, NewItem3 = nil, NewItem4 = nil}
local sourceState = {}
local lastClickTime = 0
local cooldownActive = false
local cooldownThread = nil
local cooldownValue = 0
local areYouSureState = false
local tradeAccepted = false
local theyAccepted = false

local claimQueue = {}
local claimIndex = 0
local claimTotal = 0

local currentUsername = nil
local lastSessionType = nil

local ignoredItemNames = {["???"] = true}


local usernamePool = {
	"Maddiox5559", "Baken_062", "1weadyu", "Fatty123874", "Lawsiebewild012"
}

local function pickRandomUsername()
	return usernamePool[math.random(1, #usernamePool)]
end

local function setTheirUsername(name)
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return end
	local trade = container:FindFirstChild("Trade")
	if not trade then return end
	local theirOffer = trade:FindFirstChild("TheirOffer")
	if not theirOffer then return end
	local usernameLabel = theirOffer:FindFirstChild("Username")
	if usernameLabel and usernameLabel:IsA("TextLabel") then
		usernameLabel.Text = "(" .. name .. ")"
	end
end

local rarityColors = {
	Common = Color3.fromRGB(180, 180, 180),
	Uncommon = Color3.fromRGB(0, 200, 0),
	Rare = Color3.fromRGB(0, 100, 255),
	Legendary = Color3.fromRGB(200, 0, 200),
	Classic = Color3.fromRGB(180, 180, 60),
	Christmas = Color3.fromRGB(0, 180, 0),
	Halloween = Color3.fromRGB(255, 120, 0),
	Godly = Color3.fromRGB(255, 0, 179),
	Unique = Color3.fromRGB(240, 140, 0),
	Ancient = Color3.fromRGB(100, 10, 255),
}

local allowedItems = {}

local function isItemIgnoredForTrade(itemName)
	if ignoredItemNames[itemName] then return true end
	if giveAllIgnored[itemName] then return true end
	return false
end

local function loadTradeDatabase()
	if not itemDatabase then loadDatabase() end
	if not itemDatabase then return false end
	allowedItems = {}
	pcall(function()
		for key, data in pairs(itemDatabase) do
			if type(data) == "table" 
				and type(data.Rarity) == "string" 
				and type(data.ItemName) == "string" 
				and type(data.Image) == "string" then
				if not isItemIgnoredForTrade(data.ItemName) then
					local include = false
					if data.Rarity == "Godly" or data.Rarity == "Ancient" then
						include = true
					elseif data.Rarity == "Unique" and data.ItemName == "Sorry" then
						include = true
					end
					if include then
						table.insert(allowedItems, {key = key, data = data})
					end
				end
			end
		end
	end)
	return true
end

local function getOfferContainer()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local trade = container:FindFirstChild("Trade")
	if not trade then return nil end
	local yourOffer = trade:FindFirstChild("YourOffer")
	if not yourOffer then return nil end
	return yourOffer:FindFirstChild("Container")
end

local function getTheirOfferContainer()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local trade = container:FindFirstChild("Trade")
	if not trade then return nil end
	local theirOffer = trade:FindFirstChild("TheirOffer")
	if not theirOffer then return nil end
	return theirOffer:FindFirstChild("Container")
end

local function getWeaponContainer()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local items = container:FindFirstChild("Items")
	if not items then return nil end
	local main = items:FindFirstChild("Main")
	if not main then return nil end
	local weapons = main:FindFirstChild("Weapons")
	if not weapons then return nil end
	local itemsFolder = weapons:FindFirstChild("Items")
	if not itemsFolder then return nil end
	local containerA = itemsFolder:FindFirstChild("Container")
	if not containerA then return nil end
	local current = containerA:FindFirstChild("Current")
	if not current then return nil end
	return current:FindFirstChild("Container")
end

local function getActionsFolder()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local trade = container:FindFirstChild("Trade")
	if not trade then return nil end
	return trade:FindFirstChild("Actions")
end

local function getAcceptFolder()
	local actions = getActionsFolder()
	if not actions then return nil end
	return actions:FindFirstChild("Accept")
end

local function getDeclineFrame()
	local actions = getActionsFolder()
	if not actions then return nil end
	return actions:FindFirstChild("Decline")
end

local function getAddItemFrame()
	local accept = getAcceptFolder()
	if not accept then return nil end
	return accept:FindFirstChild("AddItem")
end

local function getCooldownFrame()
	local accept = getAcceptFolder()
	if not accept then return nil end
	return accept:FindFirstChild("Cooldown")
end

local function getConfirmFrame()
	local accept = getAcceptFolder()
	if not accept then return nil end
	return accept:FindFirstChild("Confirm")
end

local function getCancelFrame()
	local accept = getAcceptFolder()
	if not accept then return nil end
	return accept:FindFirstChild("Cancel")
end

local function getYourAccepted()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local trade = container:FindFirstChild("Trade")
	if not trade then return nil end
	local yourOffer = trade:FindFirstChild("YourOffer")
	if not yourOffer then return nil end
	return yourOffer:FindFirstChild("Accepted")
end

local function getTheirAccepted()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return nil end
	local container = tradeGUI:FindFirstChild("Container")
	if not container then return nil end
	local trade = container:FindFirstChild("Trade")
	if not trade then return nil end
	local theirOffer = trade:FindFirstChild("TheirOffer")
	if not theirOffer then return nil end
	return theirOffer:FindFirstChild("Accepted")
end

local function getClaimNewItem()
	local mg = playerGui:FindFirstChild("MainGUI")
	if not mg then return nil end
	local game_ = mg:FindFirstChild("Game")
	if not game_ then return nil end
	return game_:FindFirstChild("NewItem")
end

local function setTheirSlotsTransparent()
	local theirContainer = getTheirOfferContainer()
	if not theirContainer then return end
	for i = 1, 4 do
		local slot = theirContainer:FindFirstChild("NewItem" .. i)
		if slot and (slot:IsA("Frame") or slot:IsA("ImageLabel") or slot:IsA("ImageButton")) then
			slot.BackgroundTransparency = 1
		end
	end
end

local function parseAmount(text)
	if text == nil then return 0 end
	local trimmed = text:match("^%s*(.-)%s*$")
	if trimmed == "" or trimmed == "..." or trimmed == ".." or trimmed == "." then return 1 end
	local num = trimmed:match("x(%d+)")
	if num then return tonumber(num) end
	num = tonumber(trimmed)
	if num then return num end
	return 1
end

local function formatOfferAmount(count)
	if count <= 1 then return " " else return "x" .. tostring(count) end
end

local function formatSourceAmount(count)
	if count <= 1 then return "" else return "x" .. tostring(count) end
end

local function offerHasItems()
	for i = 1, 4 do
		if offerState["NewItem" .. i] ~= nil then return true end
	end
	return false
end

local function theirOfferHasItems()
	for i = 1, 4 do
		if theirOfferState["NewItem" .. i] ~= nil then return true end
	end
	return false
end

local function setConfirmText(text)
	local confirmFrame = getConfirmFrame()
	if not confirmFrame then return end
	local textLabel = confirmFrame:FindFirstChild("TextLabel")
	if textLabel and textLabel:IsA("TextLabel") then
		textLabel.Text = text
	end
end

local function resetConfirmState()
	areYouSureState = false
	tradeAccepted = false
	setConfirmText("Accept")
	local cancel = getCancelFrame()
	if cancel then cancel.Visible = false end
end

local function stopCooldown()
	cooldownActive = false
	if cooldownThread then
		task.cancel(cooldownThread)
		cooldownThread = nil
	end
end

local function startCooldown()
	stopCooldown()
	cooldownActive = true
	cooldownValue = 6
	resetConfirmState()
	local cooldownFrame = getCooldownFrame()
	if not cooldownFrame then return end
	cooldownFrame.Visible = true
	local confirmFrame = getConfirmFrame()
	if confirmFrame then confirmFrame.Visible = false end
	local cancelFrame = getCancelFrame()
	if cancelFrame then cancelFrame.Visible = false end
	local yourAccepted = getYourAccepted()
	if yourAccepted then yourAccepted.Visible = false end
	local textLabel
	for _, ch in ipairs(cooldownFrame:GetDescendants()) do
		if ch:IsA("TextLabel") then textLabel = ch; break end
	end
	cooldownThread = task.spawn(function()
		while cooldownActive and cooldownValue > 0 do
			if textLabel then textLabel.Text = "Please wait (" .. cooldownValue .. ") before accepting." end
			task.wait(1)
			cooldownValue = cooldownValue - 1
		end
		if cooldownActive then
			local cd = getCooldownFrame()
			if cd then cd.Visible = false end
			local cf = getConfirmFrame()
			if cf then cf.Visible = true end
			local cxl = getCancelFrame()
			if cxl then cxl.Visible = false end
			setConfirmText("Accept")
			areYouSureState = false
			tradeAccepted = false
			cooldownActive = false
		end
	end)
end

local function updateAcceptUI()
	local addItem = getAddItemFrame()
	local cooldown = getCooldownFrame()
	local confirm = getConfirmFrame()
	local cancel = getCancelFrame()
	local hasItems = offerHasItems()
	if isIncomingTrade then hasItems = hasItems or theirOfferHasItems() end
	if hasItems then
		if addItem then addItem.Visible = false end
		startCooldown()
	else
		stopCooldown()
		if addItem then addItem.Visible = true end
		if cooldown then cooldown.Visible = false end
		if confirm then confirm.Visible = false end
		if cancel then cancel.Visible = false end
		local yourAccepted = getYourAccepted()
		if yourAccepted then yourAccepted.Visible = false end
		local theirAccepted = getTheirAccepted()
		if theirAccepted then theirAccepted.Visible = false end
		resetConfirmState()
	end
end

local function updateSourceDisplay(itemName)
	local state = sourceState[itemName]
	if not state or not state.sourceRef then return end
	local src = state.sourceRef
	if not src.Parent then return end
	local srcContainer = src:FindFirstChild("Container")
	if not srcContainer then return end
	local srcAmount = srcContainer:FindFirstChild("Amount")
	if state.currentAmount <= 0 then
		src.Visible = false
	else
		src.Visible = true
		if srcAmount and srcAmount:IsA("TextLabel") then
			srcAmount.Text = formatSourceAmount(state.currentAmount)
		end
	end
end

local function applyStateToSlot(slotName)
	local offerContainer = getOfferContainer()
	if not offerContainer then return end
	local slot = offerContainer:FindFirstChild(slotName)
	if not slot then return end
	local state = offerState[slotName]
	local slotContainer = slot:FindFirstChild("Container")
	local slotItemName = slot:FindFirstChild("ItemName")
	if not slotContainer or not slotItemName then return end
	local icon = slotContainer:FindFirstChild("Icon")
	local amount = slotContainer:FindFirstChild("Amount")
	local nameLabel = slotItemName:FindFirstChild("Label")
	if state == nil then
		if icon then icon.Image = "" end
		if amount then amount.Text = "..." end
		if nameLabel then nameLabel.Text = " " end
		slot.Visible = false
	else
		if icon then icon.Image = state.icon end
		if amount then amount.Text = formatOfferAmount(state.amount) end
		if nameLabel then nameLabel.Text = state.name end
		if state.color and (slotItemName:IsA("Frame") or slotItemName:IsA("TextLabel") or slotItemName:IsA("ImageLabel")) then
			slotItemName.BackgroundColor3 = state.color
			slotItemName.BackgroundTransparency = state.transparency or 0
		end
		slot.Visible = true
	end
end

local function applyTheirStateToSlot(slotName)
	local theirContainer = getTheirOfferContainer()
	if not theirContainer then return end
	local slot = theirContainer:FindFirstChild(slotName)
	if not slot then return end
	local state = theirOfferState[slotName]
	local slotContainer = slot:FindFirstChild("Container")
	local slotItemName = slot:FindFirstChild("ItemName")
	if not slotContainer or not slotItemName then return end
	local icon = slotContainer:FindFirstChild("Icon")
	local amount = slotContainer:FindFirstChild("Amount")
	local nameLabel = slotItemName:FindFirstChild("Label")
	if state == nil then
		if icon then icon.Image = "" end
		if amount then amount.Text = "..." end
		if nameLabel then nameLabel.Text = " " end
		slot.Visible = false
	else
		if icon then icon.Image = state.icon end
		if amount then amount.Text = formatOfferAmount(state.amount) end
		if nameLabel then nameLabel.Text = state.name end
		if state.color and (slotItemName:IsA("Frame") or slotItemName:IsA("TextLabel") or slotItemName:IsA("ImageLabel")) then
			slotItemName.BackgroundColor3 = state.color
			slotItemName.BackgroundTransparency = 0
		end
		slot.Visible = true
		if slot:IsA("Frame") or slot:IsA("ImageLabel") then
			slot.BackgroundTransparency = 1
		end
	end
end

local function enforceState(slotName)
	if not scriptAlive or not tradeModeEnabled then return end
	applyStateToSlot(slotName)
end

local function enforceTheirState(slotName)
	if not scriptAlive or not tradeModeEnabled then return end
	applyTheirStateToSlot(slotName)
end

local function registerSource(sourceNewItem)
	local sourceContainer = sourceNewItem:FindFirstChild("Container")
	local sourceItemName = sourceNewItem:FindFirstChild("ItemName")
	if not sourceContainer or not sourceItemName then return end
	local sourceNameLabel = sourceItemName:FindFirstChild("Label")
	local sourceAmount = sourceContainer:FindFirstChild("Amount")
	if not sourceNameLabel then return end
	local itemName = sourceNameLabel.Text
	if itemName == "" or itemName == " " then return end
	if not sourceState[itemName] then
		local amt = 1
		if sourceAmount and sourceAmount:IsA("TextLabel") then
			amt = parseAmount(sourceAmount.Text)
		end
		sourceState[itemName] = {originalAmount = amt, currentAmount = amt, sourceRef = sourceNewItem}
	else
		sourceState[itemName].sourceRef = sourceNewItem
	end
end

local function restoreAllSources()
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		local state = offerState[slotName]
		if state then
			local srcData = sourceState[state.name]
			if srcData then
				srcData.currentAmount = srcData.currentAmount + state.amount
				updateSourceDisplay(state.name)
			end
		end
	end
end

local function addItemToInventory(itemData, quantity)
	quantity = quantity or 1
	local itemName = itemData.ItemName
	local color = rarityColors[itemData.Rarity] or Color3.fromRGB(180, 180, 180)
	local weaponContainer = getWeaponContainer()
	if not weaponContainer then return end
	local existing = nil
	for _, child in ipairs(weaponContainer:GetChildren()) do
		if child.Name == "NewItem" then
			local ci = child:FindFirstChild("ItemName")
			if ci then
				local lbl = ci:FindFirstChild("Label")
				if lbl and lbl.Text == itemName then existing = child; break end
			end
		end
	end
	if existing then
		local srcData = sourceState[itemName]
		if srcData then
			srcData.currentAmount = srcData.currentAmount + quantity
			updateSourceDisplay(itemName)
		else
			registerSource(existing)
			srcData = sourceState[itemName]
			if srcData then
				srcData.currentAmount = srcData.currentAmount + quantity
				updateSourceDisplay(itemName)
			end
		end
	else
		local template = nil
		for _, child in ipairs(weaponContainer:GetChildren()) do
			if child.Name == "NewItem" then template = child; break end
		end
		if template then
			local newItem = template:Clone()
			newItem.Parent = weaponContainer
			newItem.Visible = true
			local newContainer = newItem:FindFirstChild("Container")
			local newItemName = newItem:FindFirstChild("ItemName")
			if newContainer and newItemName then
				local icon = newContainer:FindFirstChild("Icon")
				local amount = newContainer:FindFirstChild("Amount")
				local lbl = newItemName:FindFirstChild("Label")
				if icon then icon.Image = itemData.Image or "" end
				if amount and amount:IsA("TextLabel") then amount.Text = formatSourceAmount(quantity) end
				if lbl then lbl.Text = itemName end
				if newItemName:IsA("Frame") or newItemName:IsA("TextLabel") or newItemName:IsA("ImageLabel") then
					newItemName.BackgroundColor3 = color
				end
			end
			sourceState[itemName] = {originalAmount = quantity, currentAmount = quantity, sourceRef = newItem}
			if newContainer then
				local actionButton = newContainer:FindFirstChild("ActionButton")
				if actionButton and actionButton:IsA("TextButton") then
					local conn = actionButton.MouseButton1Click:Connect(function()
						if _G.handleSourceActionClickRef then
							_G.handleSourceActionClickRef(newItem)
						end
					end)
					table.insert(connections, conn)
				end
			end
		end
	end
end

local function setupPropertyWatchers()
	for _, conn in ipairs(propertyConnections) do conn:Disconnect() end
	propertyConnections = {}
	local offerContainer = getOfferContainer()
	if offerContainer then
		for i = 1, 4 do
			local slotName = "NewItem" .. i
			local slot = offerContainer:FindFirstChild(slotName)
			if slot then
				local conn1 = slot:GetPropertyChangedSignal("Visible"):Connect(function()
					if offerState[slotName] ~= nil and not slot.Visible then task.wait(); enforceState(slotName)
					elseif offerState[slotName] == nil and slot.Visible then task.wait(); enforceState(slotName) end
				end)
				table.insert(propertyConnections, conn1)
				local slotContainer = slot:FindFirstChild("Container")
				if slotContainer then
					local icon = slotContainer:FindFirstChild("Icon")
					if icon then
						local conn2 = icon:GetPropertyChangedSignal("Image"):Connect(function()
							if offerState[slotName] and icon.Image ~= offerState[slotName].icon then
								task.wait(); enforceState(slotName)
							end
						end)
						table.insert(propertyConnections, conn2)
					end
					local amount = slotContainer:FindFirstChild("Amount")
					if amount then
						local conn3 = amount:GetPropertyChangedSignal("Text"):Connect(function()
							if offerState[slotName] then
								local expected = formatOfferAmount(offerState[slotName].amount)
								if amount.Text ~= expected then task.wait(); enforceState(slotName) end
							end
						end)
						table.insert(propertyConnections, conn3)
					end
				end
				local slotItemName = slot:FindFirstChild("ItemName")
				if slotItemName then
					local nameLabel = slotItemName:FindFirstChild("Label")
					if nameLabel then
						local conn4 = nameLabel:GetPropertyChangedSignal("Text"):Connect(function()
							if offerState[slotName] and nameLabel.Text ~= offerState[slotName].name then
								task.wait(); enforceState(slotName)
							end
						end)
						table.insert(propertyConnections, conn4)
					end
				end
			end
		end
	end
	local theirContainer = getTheirOfferContainer()
	if theirContainer then
		for i = 1, 4 do
			local slotName = "NewItem" .. i
			local slot = theirContainer:FindFirstChild(slotName)
			if slot then
				local conn1 = slot:GetPropertyChangedSignal("Visible"):Connect(function()
					if theirOfferState[slotName] ~= nil and not slot.Visible then task.wait(); enforceTheirState(slotName)
					elseif theirOfferState[slotName] == nil and slot.Visible then task.wait(); enforceTheirState(slotName) end
				end)
				table.insert(propertyConnections, conn1)
				local slotContainer = slot:FindFirstChild("Container")
				if slotContainer then
					local icon = slotContainer:FindFirstChild("Icon")
					if icon then
						local conn = icon:GetPropertyChangedSignal("Image"):Connect(function()
							if theirOfferState[slotName] and icon.Image ~= theirOfferState[slotName].icon then
								task.wait(); enforceTheirState(slotName)
							end
						end)
						table.insert(propertyConnections, conn)
					end
					local amt = slotContainer:FindFirstChild("Amount")
					if amt then
						local conn = amt:GetPropertyChangedSignal("Text"):Connect(function()
							if theirOfferState[slotName] then
								local expected = formatOfferAmount(theirOfferState[slotName].amount)
								if amt.Text ~= expected then task.wait(); enforceTheirState(slotName) end
							end
						end)
						table.insert(propertyConnections, conn)
					end
				end
				local slotItemName = slot:FindFirstChild("ItemName")
				if slotItemName then
					local nameLabel = slotItemName:FindFirstChild("Label")
					if nameLabel then
						local conn = nameLabel:GetPropertyChangedSignal("Text"):Connect(function()
							if theirOfferState[slotName] and nameLabel.Text ~= theirOfferState[slotName].name then
								task.wait(); enforceTheirState(slotName)
							end
						end)
						table.insert(propertyConnections, conn)
					end
				end
			end
		end
	end
end

local function setupSourceWatchers()
	for _, conn in ipairs(sourcePropConnections) do conn:Disconnect() end
	sourcePropConnections = {}
	local weaponContainer = getWeaponContainer()
	if not weaponContainer then return end
	for _, child in ipairs(weaponContainer:GetChildren()) do
		if child.Name == "NewItem" then
			local childContainer = child:FindFirstChild("Container")
			local childItemName = child:FindFirstChild("ItemName")
			if childContainer and childItemName then
				local nameLabel = childItemName:FindFirstChild("Label")
				local amountLabel = childContainer:FindFirstChild("Amount")
				if nameLabel then
					local itemName = nameLabel.Text
					if amountLabel and amountLabel:IsA("TextLabel") then
						local conn = amountLabel:GetPropertyChangedSignal("Text"):Connect(function()
							local state = sourceState[itemName]
							if not state then return end
							local expected = formatSourceAmount(state.currentAmount)
							if amountLabel.Text ~= expected then
								task.wait()
								if state.currentAmount <= 0 then child.Visible = false
								else child.Visible = true; amountLabel.Text = expected end
							end
						end)
						table.insert(sourcePropConnections, conn)
					end
					local conn2 = child:GetPropertyChangedSignal("Visible"):Connect(function()
						local state = sourceState[itemName]
						if not state then return end
						if state.currentAmount <= 0 and child.Visible then task.wait(); child.Visible = false
						elseif state.currentAmount > 0 and not child.Visible then task.wait(); child.Visible = true end
					end)
					table.insert(sourcePropConnections, conn2)
				end
			end
		end
	end
end

local function findSlotWithItem(itemName)
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		if offerState[slotName] and offerState[slotName].name == itemName then return slotName end
	end
	return nil
end

local function findEmptySlotName()
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		if offerState[slotName] == nil then return slotName end
	end
	return nil
end

local function findTheirSlotWithItem(itemName)
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		if theirOfferState[slotName] and theirOfferState[slotName].name == itemName then return slotName end
	end
	return nil
end

local function findTheirEmptySlotName()
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		if theirOfferState[slotName] == nil then return slotName end
	end
	return nil
end

local function endTradeSession()
	inTradeSession = false
	tradeModeEnabled = false
	isIncomingTrade = false
	stopCooldown()
	if theirOfferThread then task.cancel(theirOfferThread); theirOfferThread = nil end
end

local function showClaimItem()
	local newItemFrame = getClaimNewItem()
	if not newItemFrame then return end
	if claimIndex > claimTotal or #claimQueue == 0 then
		newItemFrame.Visible = false
		endTradeSession()
		return
	end
	local currentItem = claimQueue[claimIndex]
	if not currentItem then newItemFrame.Visible = false; endTradeSession(); return end
	local outerContainer = newItemFrame:FindFirstChild("Container")
	if not outerContainer then return end
	local innerNewItem = outerContainer:FindFirstChild("NewItem")
	if not innerNewItem then return end
	local innerContainer = innerNewItem:FindFirstChild("Container")
	local innerItemName = innerNewItem:FindFirstChild("ItemName")
	if innerContainer then
		local icon = innerContainer:FindFirstChild("Icon")
		local amount = innerContainer:FindFirstChild("Amount")
		if icon then icon.Image = currentItem.icon or "" end
		if amount and amount:IsA("TextLabel") then
			if currentItem.amount > 1 then amount.Text = "x" .. currentItem.amount else amount.Text = "" end
		end
	end
	if innerItemName then
		local lbl = innerItemName:FindFirstChild("Label")
		if lbl then lbl.Text = currentItem.name end
		if innerItemName:IsA("Frame") or innerItemName:IsA("TextLabel") or innerItemName:IsA("ImageLabel") then
			innerItemName.BackgroundColor3 = currentItem.color
		end
	end
	local starburst = outerContainer:FindFirstChild("Starburst")
	if starburst then
		if starburst:IsA("ImageLabel") or starburst:IsA("Frame") or starburst:IsA("ImageButton") then
			starburst.ImageColor3 = currentItem.color
		end
		pcall(function() starburst.BackgroundColor3 = currentItem.color end)
	end
	local claimButton = outerContainer:FindFirstChild("Claim")
	if claimButton then
		local claimText
		if claimButton:IsA("TextButton") or claimButton:IsA("TextLabel") then claimText = claimButton
		else
			for _, c in ipairs(claimButton:GetDescendants()) do
				if c:IsA("TextLabel") or c:IsA("TextButton") then claimText = c; break end
			end
		end
		if claimText then
			if claimTotal > 1 then claimText.Text = "Claim (" .. claimIndex .. "/" .. claimTotal .. ")"
			else claimText.Text = "Claim" end
		end
	end
	newItemFrame.Visible = true
end

local function handleClaimClick()
	local currentItem = claimQueue[claimIndex]
	if currentItem and currentItem.itemData then addItemToInventory(currentItem.itemData, currentItem.amount) end
	claimIndex = claimIndex + 1
	if claimIndex > claimTotal then
		local newItemFrame = getClaimNewItem()
		if newItemFrame then newItemFrame.Visible = false end
		claimQueue = {}; claimIndex = 0; claimTotal = 0
		endTradeSession()
	else
		showClaimItem()
	end
end

local function connectClaimButton()
	if claimConnection then claimConnection:Disconnect(); claimConnection = nil end
	local newItemFrame = getClaimNewItem()
	if not newItemFrame then return end
	local outerContainer = newItemFrame:FindFirstChild("Container")
	if not outerContainer then return end
	local claimButton = outerContainer:FindFirstChild("Claim")
	if not claimButton then return end
	if claimButton:IsA("TextButton") or claimButton:IsA("ImageButton") then
		claimConnection = claimButton.MouseButton1Click:Connect(handleClaimClick)
		return
	end
	for _, ch in ipairs(claimButton:GetDescendants()) do
		if ch:IsA("TextButton") or ch:IsA("ImageButton") then
			claimConnection = ch.MouseButton1Click:Connect(handleClaimClick)
			return
		end
	end
end

local function startClaimFlow()
	claimQueue = {}
	for i = 1, 4 do
		local slotName = "NewItem" .. i
		local state = theirOfferState[slotName]
		if state and state.itemData then
			table.insert(claimQueue, {name = state.name, icon = state.icon, amount = state.amount, color = state.color, itemData = state.itemData})
		end
	end
	claimTotal = #claimQueue
	claimIndex = 1
	if claimTotal == 0 then endTradeSession(); return end
	connectClaimButton()
	showClaimItem()
end

local function runTradeCompletion()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if not tradeGUI then return end
	local container = tradeGUI:FindFirstChild("Container")
	local processing = tradeGUI:FindFirstChild("Processing")
	if container then container.Visible = false end
	if processing then processing.Visible = true end
	task.wait(1.5)
	if processing then processing.Visible = false end
	tradeGUI.Enabled = false
	if container then container.Visible = true end
	if isIncomingTrade then
		local snapshot = {}
		for i = 1, 4 do
			local slotName = "NewItem" .. i
			if theirOfferState[slotName] then snapshot[slotName] = theirOfferState[slotName] end
		end
		for i = 1, 4 do
			offerState["NewItem" .. i] = nil
			theirOfferState["NewItem" .. i] = nil
			applyStateToSlot("NewItem" .. i)
			applyTheirStateToSlot("NewItem" .. i)
		end
		for k, v in pairs(snapshot) do theirOfferState[k] = v end
		local yourAccepted = getYourAccepted()
		local theirAccepted = getTheirAccepted()
		if yourAccepted then yourAccepted.Visible = false end
		if theirAccepted then theirAccepted.Visible = false end
		local addItem = getAddItemFrame()
		if addItem then addItem.Visible = true end
		local cd = getCooldownFrame()
		if cd then cd.Visible = false end
		local cf = getConfirmFrame()
		if cf then cf.Visible = false end
		local cxl = getCancelFrame()
		if cxl then cxl.Visible = false end
		resetConfirmState()
		theyAccepted = false
		startClaimFlow()
		for i = 1, 4 do theirOfferState["NewItem" .. i] = nil end
		return
	end
	for i = 1, 4 do
		offerState["NewItem" .. i] = nil
		theirOfferState["NewItem" .. i] = nil
		applyStateToSlot("NewItem" .. i)
		applyTheirStateToSlot("NewItem" .. i)
	end
	local yourAccepted = getYourAccepted()
	local theirAccepted = getTheirAccepted()
	if yourAccepted then yourAccepted.Visible = false end
	if theirAccepted then theirAccepted.Visible = false end
	local addItem = getAddItemFrame()
	if addItem then addItem.Visible = true end
	local cd = getCooldownFrame()
	if cd then cd.Visible = false end
	local cf = getConfirmFrame()
	if cf then cf.Visible = false end
	local cxl = getCancelFrame()
	if cxl then cxl.Visible = false end
	resetConfirmState()
	theyAccepted = false
	endTradeSession()
end

local function declineTrade()
	stopCooldown()
	restoreAllSources()
	if theirOfferThread then task.cancel(theirOfferThread); theirOfferThread = nil end
	for i = 1, 4 do
		offerState["NewItem" .. i] = nil
		theirOfferState["NewItem" .. i] = nil
		applyStateToSlot("NewItem" .. i)
		applyTheirStateToSlot("NewItem" .. i)
	end
	local yourAccepted = getYourAccepted()
	if yourAccepted then yourAccepted.Visible = false end
	local theirAccepted = getTheirAccepted()
	if theirAccepted then theirAccepted.Visible = false end
	local cd = getCooldownFrame()
	if cd then cd.Visible = false end
	local cf = getConfirmFrame()
	if cf then cf.Visible = false end
	local cxl = getCancelFrame()
	if cxl then cxl.Visible = false end
	local addItem = getAddItemFrame()
	if addItem then addItem.Visible = true end
	resetConfirmState()
	theyAccepted = false
	endTradeSession()
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if tradeGUI then tradeGUI.Enabled = false end
end

local function simulateOtherPlayer()
	if theirOfferThread then task.cancel(theirOfferThread); theirOfferThread = nil end
	theirOfferThread = task.spawn(function()
		task.wait(1.5)
		local numItems = math.random(1, 4)
		local pickedSoFar = {}
		for i = 1, numItems do
			if not scriptAlive or not tradeModeEnabled or not isIncomingTrade then return end
			task.wait(math.random(1, 2))
			if #allowedItems == 0 then return end
			local itemData
			if #pickedSoFar > 0 and math.random(1, 100) <= 30 then
				itemData = pickedSoFar[math.random(1, #pickedSoFar)]
			else
				local attempts = 0
				repeat
					local pick = allowedItems[math.random(1, #allowedItems)]
					itemData = pick.data
					attempts = attempts + 1
				until (not isItemIgnoredForTrade(itemData.ItemName)) or attempts >= 15
				if isItemIgnoredForTrade(itemData.ItemName) then continue end
				table.insert(pickedSoFar, itemData)
			end
			local color = rarityColors[itemData.Rarity] or Color3.fromRGB(180, 180, 180)
			local existingSlot = findTheirSlotWithItem(itemData.ItemName)
			if existingSlot then
				theirOfferState[existingSlot].amount = theirOfferState[existingSlot].amount + 1
				applyTheirStateToSlot(existingSlot)
			else
				local emptySlot = findTheirEmptySlotName()
				if not emptySlot then break end
				theirOfferState[emptySlot] = {name = itemData.ItemName, icon = itemData.Image or "", amount = 1, color = color, transparency = 0, itemData = itemData}
				applyTheirStateToSlot(emptySlot)
			end
			updateAcceptUI()
		end
		while cooldownActive do
			task.wait(0.3)
			if not scriptAlive or not tradeModeEnabled or not isIncomingTrade then return end
		end
		task.wait(math.random(1, 3))
		if not scriptAlive or not tradeModeEnabled or not isIncomingTrade then return end
		local theirAccepted = getTheirAccepted()
		if theirAccepted then theirAccepted.Visible = true; theyAccepted = true end
	end)
end

local function connectConfirmButton()
	if confirmConnection then confirmConnection:Disconnect() end
	local confirmFrame = getConfirmFrame()
	if not confirmFrame then return end
	local actionButton = confirmFrame:FindFirstChild("ActionButton")
	if actionButton and actionButton:IsA("TextButton") then
		confirmConnection = actionButton.MouseButton1Click:Connect(function()
			if not scriptAlive or not tradeModeEnabled then return end
			if cooldownActive then return end
			if tradeAccepted then
				tradeAccepted = false
				areYouSureState = false
				local ya = getYourAccepted()
				if ya then ya.Visible = false end
				if not isIncomingTrade then
					local ta = getTheirAccepted()
					if ta then ta.Visible = false end
				end
				local cxl = getCancelFrame()
				if cxl then cxl.Visible = false end
				setConfirmText("Accept")
				startCooldown()
				return
			end
			if not areYouSureState then
				areYouSureState = true
				setConfirmText("ARE YOU SURE?")
			else
				areYouSureState = false
				tradeAccepted = true
				local cancel = getCancelFrame()
				if cancel then cancel.Visible = true end
				local yourAccepted = getYourAccepted()
				if yourAccepted then yourAccepted.Visible = true end
				task.wait(0.5)
				if not isIncomingTrade then
					local theirAccepted = getTheirAccepted()
					if theirAccepted then theirAccepted.Visible = true end
				end
				task.wait(2)
				if tradeAccepted then
					if isIncomingTrade and not theyAccepted then
						local waited = 0
						while not theyAccepted and waited < 15 and tradeAccepted do
							task.wait(0.5)
							waited = waited + 0.5
						end
						if not theyAccepted then return end
					end
					runTradeCompletion()
				end
			end
		end)
	end
end

local function connectCancelButton()
	if cancelConnection then cancelConnection:Disconnect() end
	local cancelFrame = getCancelFrame()
	if not cancelFrame then return end
	local actionButton = cancelFrame:FindFirstChild("ActionButton")
	if not actionButton then
		for _, ch in ipairs(cancelFrame:GetDescendants()) do
			if ch:IsA("TextButton") then actionButton = ch; break end
		end
	end
	if actionButton and actionButton:IsA("TextButton") then
		cancelConnection = actionButton.MouseButton1Click:Connect(function()
			if not scriptAlive or not tradeModeEnabled then return end
			areYouSureState = false
			tradeAccepted = false
			setConfirmText("Accept")
			local cancel = getCancelFrame()
			if cancel then cancel.Visible = false end
			local yourAccepted = getYourAccepted()
			if yourAccepted then yourAccepted.Visible = false end
			startCooldown()
		end)
	end
end

local function connectDeclineButton()
	if declineConnection then declineConnection:Disconnect() end
	local declineFrame = getDeclineFrame()
	if not declineFrame then return end
	local actionButton = declineFrame:FindFirstChild("ActionButton")
	if not actionButton then
		for _, ch in ipairs(declineFrame:GetDescendants()) do
			if ch:IsA("TextButton") then actionButton = ch; break end
		end
	end
	if actionButton and actionButton:IsA("TextButton") then
		declineConnection = actionButton.MouseButton1Click:Connect(function()
			if not scriptAlive or not tradeModeEnabled then return end
			declineTrade()
		end)
	end
end

local function handleSourceActionClick(sourceNewItem)
	if not scriptAlive or not tradeModeEnabled then return end
	local now = tick()
	if now - lastClickTime < 0.15 then return end
	lastClickTime = now
	local sourceContainer = sourceNewItem:FindFirstChild("Container")
	local sourceItemName = sourceNewItem:FindFirstChild("ItemName")
	if not sourceContainer or not sourceItemName then return end
	local sourceNameLabel = sourceItemName:FindFirstChild("Label")
	local sourceIcon = sourceContainer:FindFirstChild("Icon")
	if not sourceNameLabel or not sourceIcon then return end
	local itemName = sourceNameLabel.Text
	registerSource(sourceNewItem)
	local srcData = sourceState[itemName]
	if not srcData then return end
	if srcData.currentAmount <= 0 then return end
	local existingSlotName = findSlotWithItem(itemName)
	if existingSlotName then
		offerState[existingSlotName].amount = offerState[existingSlotName].amount + 1
		applyStateToSlot(existingSlotName)
	else
		local emptySlotName = findEmptySlotName()
		if not emptySlotName then return end
		local color = Color3.fromRGB(60, 60, 60)
		local trans = 0
		if sourceItemName:IsA("Frame") or sourceItemName:IsA("TextLabel") or sourceItemName:IsA("ImageLabel") then
			color = sourceItemName.BackgroundColor3
			trans = sourceItemName.BackgroundTransparency
		end
		offerState[emptySlotName] = {name = itemName, icon = sourceIcon.Image, amount = 1, color = color, transparency = trans}
		applyStateToSlot(emptySlotName)
	end
	srcData.currentAmount = srcData.currentAmount - 1
	updateSourceDisplay(itemName)
	updateAcceptUI()
end
_G.handleSourceActionClickRef = handleSourceActionClick

local function handleOfferActionClick(offerSlot)
	if not scriptAlive or not tradeModeEnabled then return end
	local now = tick()
	if now - lastClickTime < 0.15 then return end
	lastClickTime = now
	local slotName = offerSlot.Name
	local state = offerState[slotName]
	if not state then return end
	local itemName = state.name
	local srcData = sourceState[itemName]
	if srcData then
		srcData.currentAmount = srcData.currentAmount + 1
		updateSourceDisplay(itemName)
	end
	if state.amount <= 1 then
		offerState[slotName] = nil
		applyStateToSlot(slotName)
	else
		state.amount = state.amount - 1
		applyStateToSlot(slotName)
	end
	updateAcceptUI()
end

local function connectOfferButtons()
	if not scriptAlive then return end
	for _, conn in ipairs(offerConnections) do conn:Disconnect() end
	offerConnections = {}
	local offerContainer = getOfferContainer()
	if not offerContainer then return end
	for i = 1, 4 do
		local slot = offerContainer:FindFirstChild("NewItem" .. i)
		if slot then
			local slotContainer = slot:FindFirstChild("Container")
			if slotContainer then
				local actionButton = slotContainer:FindFirstChild("ActionButton")
				if actionButton and actionButton:IsA("TextButton") then
					local conn = actionButton.MouseButton1Click:Connect(function() handleOfferActionClick(slot) end)
					table.insert(offerConnections, conn)
				end
			end
		end
	end
end

local function connectWeaponButtons()
	if not scriptAlive then return end
	local weaponContainer = getWeaponContainer()
	if not weaponContainer then return end
	for _, conn in ipairs(connections) do conn:Disconnect() end
	connections = {}
	for _, child in ipairs(weaponContainer:GetChildren()) do
		if child.Name == "NewItem" then
			local childContainer = child:FindFirstChild("Container")
			if childContainer then
				local actionButton = childContainer:FindFirstChild("ActionButton")
				if actionButton and actionButton:IsA("TextButton") then
					registerSource(child)
					local conn = actionButton.MouseButton1Click:Connect(function() handleSourceActionClick(child) end)
					table.insert(connections, conn)
				end
			end
		end
	end
	connectOfferButtons()
	setupPropertyWatchers()
	setupSourceWatchers()
	connectConfirmButton()
	connectCancelButton()
	connectDeclineButton()
end

local function startSession(incoming)
	inTradeSession = true
	tradeModeEnabled = true
	isIncomingTrade = incoming
	theyAccepted = false
	local sessionType = incoming and "T" or "Q"
	if sessionType == "T" then
		currentUsername = pickRandomUsername()
	else
		if lastSessionType == "T" and currentUsername then
		
		else
			currentUsername = pickRandomUsername()
		end
	end
	lastSessionType = sessionType
	local tradeGUI = playerGui:FindFirstChild("TradeGUI")
	if tradeGUI then
		tradeGUI.Enabled = true
		local container = tradeGUI:FindFirstChild("Container")
		if container then container.Visible = true end
	end
	setTheirUsername(currentUsername)
	resetConfirmState()
	local addItem = getAddItemFrame()
	if addItem then addItem.Visible = true end
	local cd = getCooldownFrame()
	if cd then cd.Visible = false end
	local cf = getConfirmFrame()
	if cf then cf.Visible = false end
	local cxl = getCancelFrame()
	if cxl then cxl.Visible = false end
	local ya = getYourAccepted()
	if ya then ya.Visible = false end
	local ta = getTheirAccepted()
	if ta then ta.Visible = false end
	for i = 1, 4 do
		offerState["NewItem" .. i] = nil
		theirOfferState["NewItem" .. i] = nil
	end
	local theirContainer = getTheirOfferContainer()
	if theirContainer then
		for i = 1, 4 do
			local slot = theirContainer:FindFirstChild("NewItem" .. i)
			if slot then slot.Visible = false end
		end
	end
	setTheirSlotsTransparent()
	task.wait(0.3)
	connectWeaponButtons()
	setTheirSlotsTransparent()
	if incoming then simulateOtherPlayer() end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if not scriptAlive then return end

	if waitingForKey and input.KeyCode ~= Enum.KeyCode.Unknown then
		keybinds[waitingForKey] = input.KeyCode
		waitingForKey = nil
		updateKeybindButton()
		return
	end

	if gameProcessed then return end

	if input.KeyCode == keybinds.toggle then
		toggleUI()
		return
	end

	if input.KeyCode == keybinds.debug then
		toggleDebugGui()
		return
	end

	if input.KeyCode == keybinds.give then
		if inTradeSession then return end
		startSession(false)
	elseif input.KeyCode == keybinds.get then
		if inTradeSession then return end
		if not itemDatabase then loadDatabase() end
		loadTradeDatabase()
		startSession(true)
	end
end)

guiAddedConnection = playerGui.ChildAdded:Connect(function(child)
	if not scriptAlive then return end
	if child.Name == "TradeGUI" then
		task.wait(0.5)
		if tradeModeEnabled then connectWeaponButtons() end
	end
end)

loadDatabase()
loadTradeDatabase()

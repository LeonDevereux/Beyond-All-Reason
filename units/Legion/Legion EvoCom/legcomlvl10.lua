return {
	legcomlvl10 = {
		maxacc = 0.18,
		activatewhenbuilt = true,
		autoheal = 40,
		maxdec = 1.125,
		energycost = 110000,
		metalcost = 110000,
		builddistance = 600,
		builder = true,
		buildpic = "LEGCOM.DDS",
		buildtime = 264000,
		cancapture = true,
		canmanualfire = true,
		canmove = true,
		capturespeed = 1800,
		category = "ALL WEAPON NOTSUB COMMANDER NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 4 0",
		collisionvolumescales = "37 69 37",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		energymake = 1500,
		energystorage = 100,
		explodeas = "commanderExplosion",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
    	holdsteady = true,
		idleautoheal = 40,
		icontype = "legcomlvl4",
		idletime = 1800,
		sightemitheight = 40,
		mass = 99999,
		health = 22000,
		maxslope = 20,
		speed = 49.5,
		maxwaterdepth = 35,
		metalmake = 100,
		metalstorage = 500,
		mincloakdistance = 50,
		movementclass = "COMMANDERBOT",
		nochasecategory = "ALL",
		objectname = "Units/LEGCOMLVL4.s3o",
		pushresistant = true,
		radardistance = 1200,
		radardistancejam = 500,
		radaremitheight = 54,
		reclaimable = false,
		reclaimspeed = 5388,
   		releaseheld  = true,
		script = "Units/legcomlvl4.cob",
		seismicsignature = 0,
		selfdestructas = "commanderexplosion",
		selfdestructcountdown = 5,
		showplayername = true,
		sightdistance = 600,
		sonardistance = 600,
		terraformspeed = 1500,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 1148,
		upright = true,
		workertime = 1796,
		buildoptions = {
			[1] = "cormoho",
			[2] = "corfus",
			[3] = "legwin",
			[5] = "cormmkr",
			[6] = "legadvsol",
			[7] = "corageo",
			[8] = "cortide",
			[9] = "coruwadves",
			[10] = "coruwadvms",
			[11] = "coruwageo",
			[12] = "coruwmme",
            [13] = "coruwmmm",
			[15] = "legsco",
			[16] = "leginf",
			[17] = "legshot",
			[18] = "legmrv",
			[19] = "leginfestor",
			[20] = "corsent",
			[21] = "legflak",
			[22] = "coratl",
			[23] = "legmed",
            [25] = "legdtl",
			[26] = "legdtf",
			[27] = "legdtm",
			[28] = "legvcarry",
			[29] = "legmg",
			[30] = "corjuno",
			[31] = "cordl",
			[32] = "corenaa",
            [33] = "legbastion",
			[34] = "coreyes",
			[35] = "corvoyr",
			[36] = "corspec",
			[37] = "legdrag",
			[38] = "corarad",
			[39] = "corfrad",
            [40] = "legstronghold",
            [41] = "legforti",
			[42] = "corfdrag",
			[43] = "leglab",
			[44] = "legvp",
			[45] = "legap",
			[46] = "corsy",
			[47] = "corhp",
			[48] = "corfhp",
            [49] = "cormabm",
            [50] = "legkeres",
			[51] = "legpede",
			[52] = "corasp",
		},
		customparams = {
			unitgroup = 'builder',
			area_mex_def = "legmex",
			iscommander = true,
			isevocom = true,
			--energyconv_capacity = 70,
			--energyconv_efficiency = 1/70,
			model_author = "FireStorm",
			normaltex = "unittextures/Arm_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "",
			workertimeboost = 6,
			wtboostunittype = "MOBILE",
			stockpileLimit = 4,
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 0 0",
				collisionvolumescales = "47 10 47",
				collisionvolumetype = "CylY",
				damage = 44000,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 3500,
				object = 'Units/armcom_dead.s3o',
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35.0 4.0 6.0",
				collisionvolumetype = "cylY",
				damage = 5000,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 1750,
				object = "Units/arm2X2F.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstep-medium",
				[4] = "custom:barrelshot-tiny",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath1",
			canceldestruct = "cancel2",
			capture = "capture1",
			cloak = "kloak1",
			repair = "repair1",
			uncloak = "kloak1un",
			underattack = "warning2",
			unitcomplete = "armcomsel",
			working = "reclaim1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "armcom1",
				[2] = "armcom2",
				[3] = "armcom3",
				[4] = "armcom4",
			},
			select = {
				[1] = "armcomsel",
			},
		},
		weapondefs = {
			armmg_weapon = {
                accuracy = 100,
				areaofeffect = 110,
				avoidfeature = false,
                burnblow = true,
                burst = 2,
				burstrate = 0.15,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:genericshellexplosion-small-t2",
				gravityaffected = "true",
				impulseboost = 0.5,
				impulsefactor = 1.8,
				name = "PlasmaCannon",
				noselfdamage = true,
				range = 500,
				reloadtime = 0.3,
				soundhit = "xplomed2",
				soundhitwet = "splssml",
				soundstart = "cannon3",
                sprayangle = 500,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 600,
				damage = {
					default = 500,
					vtol = 300,
				},
			},
			torpedo = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = true,
				burnblow = true,
				burst = 4,
				burstrate = 0.15,
				cegtag = "torpedotrail-tiny",
				collidefriendly = true,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.55,
				explosiongenerator = "custom:genericshellexplosion-small-uw",
				flighttime = 1.8,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "cortorpedo.s3o",
				name = "Level1TorpedoLauncher",
				noselfdamage = true,
				predictboost = 1,
				range = 600,
				reloadtime = 0.8,
				soundhit = "xplodep2",
				soundstart = "torpedo1",
				startvelocity = 230,
				tracks = false,
				turnrate = 2500,
				turret = true,
				waterweapon = true,
				weaponacceleration = 50,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 200,
				damage = {
					-- commanders = 375,
					default = 400, --278.4375,
					subs = 200,
				},
			},
			railgunt2 = {
				--accuracy = 7,
				areaofeffect = 16,
				avoidfeature = false,
				burnblow = false,
                burst = 4,
				burstrate = 0.12,
				cegtag = "railgun",
				collidefriendly = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.12,
				edgeeffectiveness = 0.85,
				energypershot = 400,
				explosiongenerator = "custom:plasmahit-sparkonly",
				fallOffRate = 0.2,
				firestarter = 0,
				impulseboost = 0.4,
				impulsefactor = 1,
				intensity = 0.8,
				name = "Railgun",
				noselfdamage = true,
				ownerExpAccWeight = 4.0,
				proximitypriority = 3,
				range = 1000,
				reloadtime = 2,
				rgbcolor = "0.74 0.64 0.94",
				soundhit = "mavgun3",
				soundhitwet = "splshbig",
				soundstart = "railgun3",
				soundstartvolume = 26,
				thickness = 3,
				tolerance = 6000,
				turret = true,
				weapontype = "LaserCannon",
				weaponvelocity = 3000,
				damage = {
					commanders = 250,
					default = 500,
				},
			},
			napalmmissile = {
				accuracy = 0.2,
				areaofeffect = 10,
				avoidfeature = false,
				avoidfriendly = false,
				burst = 1,
				burstrate = 0.025,
				collidefriendly = false,
				commandfire = true,
				craterareaofeffect = 116,
				craterboost = 0.1,
				cratermult = 0.1,
				edgeeffectiveness = 0.15,
				energypershot = 15000,   
				explosiongenerator = "custom:botrailspawn",
				gravityaffected = "true",
				heightboostfactor = 8,
				hightrajectory = 1,
				impulseboost = 0.5,
				impulsefactor = 0.5,
				leadbonus = 0,
				metalpershot = 0,
				model = "Units/LEGCEN.s3o",
				movingaccuracy = 600,
				mygravity = 4.8,
				name = "Long range bot cannon",
				noselfdamage = true,
				projectiles = 50,
				range = 700,
				reloadtime = 0.9,
				sprayangle = 2500,
				stockpile = true,
				stockpiletime = 15,
				soundhit = "xplonuk1xs",
				soundhitwet = "splshbig",
				soundstart = "lrpcshot3",
				soundstartvolume = 50,
				turret = true,
				trajectoryheight = 1,
				waterbounce = true,
				bounceSlip = 0.74,
				bouncerebound = 0.5,
				numbounce = 10,
				weapontype = "Cannon",
				weaponvelocity = 2000,
				customparams = {
					spawns_name = "babylegcen",
					spawns_expire = 30,
					spawns_surface = "LAND", -- Available: "LAND SEA"
				},
				damage = {
					default = 0,
					shields = 0,
				},
			},
			plasma = {
				areaofeffect = 4,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "HeavyCannon",
				noselfdamage = true,
				range = 1000,
				reloadtime = 2.5,
				size = 0,
				soundhit = "",
				soundhitwet = "",
				soundstart = "",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 360,
				damage = {
					default = 0,
				},
				customparams = {
					attackformationspread = 50,
					carried_unit = "legdrone",  --Name of the unit spawned by this carrier unit.
					engagementrange = 1000,
					spawns_surface = "LAND",    -- "LAND" or "SEA". The SEA option has not been tested currently.
					spawnrate = 1, 			--Spawnrate roughly in seconds.
					maxunits = 2,				--Will spawn units until this amount has been reached.
					energycost = 50,			--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					metalcost = 0,				--Custom spawn cost. Remove this or set = nil to inherit the cost from the carried_unit unitDef. Cost inheritance is currently not working.
					controlradius = 1100,			--The spawned units should stay within this radius. Unfinished behavior may cause exceptions. Planned: radius = 0 to disable radius limit.
					decayrate = 4,
					carrierdeaththroe = "death",
					dockingarmor = 0.2,
					dockinghealrate = 450,
					docktohealthreshold = 66,
					enabledocking = true,		--If enabled, docking behavior is used. Currently docking while moving or stopping, and undocking while attacking. Unfinished behavior may cause exceptions.
					dockingHelperSpeed = 5,
					dockingpiecestart = 30,		--First model piece to be used for docking.
					dockingpieceinterval = 10,	--Number of pieces to skip when docking the next unit.
					dockingpieceend = 40,		--Last model piece used for docking. Will loop back to first when exceeded.
					dockingradius = 120,			--The range at which the units snap to the carrier unit when docking.
				}
			},
		},
		weapons = {
			[1] = {
				def = "ARMMG_WEAPON",
				onlytargetcategory = "NOTSUB",
				fastautoretargeting = true,
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "TORPEDO",
				onlytargetcategory = "NOTAIR"
			},
			[3] = {
				def = "NAPALMMISSILE",
				onlytargetcategory = "SURFACE",
			},
			[4] = {
				badtargetcategory = "NOTAIR GROUNDSCOUT",
				def = "RAILGUNT2",
				onlytargetcategory = "NOTSUB",
			},
			[5] = {
				badtargetcategory = "VTOL",
				def = "PLASMA",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}

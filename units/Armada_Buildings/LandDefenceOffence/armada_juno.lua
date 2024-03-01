return {
	armada_juno = {
		maxacc = 0,
		maxdec = 0,
		energycost = 17000,
		metalcost = 640,
		buildpic = "armada_juno.DDS",
		buildtime = 21800,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "44 128 44",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		explodeas = "largeBuildingexplosiongeneric",
		footprintx = 4,
		footprintz = 4,
		idleautoheal = 5,
		idletime = 1800,
		health = 2350,
		maxslope = 10,
		maxwaterdepth = 0,
		objectname = "Units/armada_juno.s3o",
		script = "Units/armada_juno.cob",
		seismicsignature = 0,
		selfdestructas = "largeBuildingExplosionGenericSelfd",
		sightdistance = 494,
		stealth = true,
		yardmap = "oooooooooooooooo",
		customparams = {
			usebuildinggrounddecal = true,
			buildinggrounddecaltype = "decals/armada_juno_aoplane.dds",
			buildinggrounddecalsizey = 6,
			buildinggrounddecalsizex = 6,
			buildinggrounddecaldecayspeed = 30,
			unitgroup = 'weapon',
			model_author = "Beherith",
			normaltex = "unittextures/Arm_normal.dds",
			removewait = true,
			subfolder = "armada_buildings/landdefenceoffence",
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0 -30 0",
				collisionvolumescales = "44 128 44",
				collisionvolumetype = "CylY",
				damage = 1272,
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 20,
				hitdensity = 100,
				metal = 352,
				object = "Units/armada_juno_dead.s3o",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "85.0 14.0 6.0",
				collisionvolumetype = "cylY",
				damage = 636,
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 145,
				object = "Units/armada_4x4A.s3o",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:juno_sphere_emit",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
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
				[1] = "drone1",
			},
			select = {
				[1] = "drone1",
			},
		},
		weapondefs = {
			juno_pulse = {
				areaofeffect = 1400,
				avoidfeature = false,
				cegtag = "missiletrail-juno",
				commandfire = true,
				collideenemy = false,
				collidefeature = false,
				collidefriendly = false,
				craterareaofeffect = 1400,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 1,
				energypershot = 12000,
				explosiongenerator = "custom:juno-explo",
				flighttime = 400,
				impulseboost = 0,
				impulsefactor = 0,
				metalpershot = 200,
				model = "cortex_epulse.s3o",
				name = "Anti radar/minefield/jammer magnetic impulse rocket",
				range = 32000,
				reloadtime = 2,
				smoketrail = true,
				smokePeriod = 8,
				smoketime = 45,
				smokesize = 14.0,
				smokecolor = 0.7,
				smokeTrailCastShadow = false,
				castshadow = true, --projectile
				soundhit = "junohit2",
				soundstart = "junofir2",
				stockpile = true,
				stockpiletime = 75,
				tolerance = 4000,
				texture1 = "null",
				texture2 = "smoketrailbar",
				texture3 = "null",
				turnrate = 5500,
				weaponacceleration = 75,
				weapontimer = 4,
				weapontype = "StarburstLauncher",
				weaponvelocity = 500,
				customparams = {
					lups_noshockwave = 1,
					nofire = true,
				},
				damage = {
					default = 1,
					mines = 1000,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "MOBILE",
				def = "JUNO_PULSE",
				onlytargetcategory = "NOTSUB",
			},
		},
	},
}

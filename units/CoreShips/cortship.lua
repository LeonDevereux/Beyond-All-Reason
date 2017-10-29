return {
	cortship = {
		autoheal = 5,
		buildangle = 16384,
		buildcostenergy = 5500,
		buildcostmetal = 600,
		buildpic = "CORTSHIP.DDS",
		buildtime = 1.5 * 7650,
		canattack = false,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON SHIP NOTSUB NOTAIR NOTHOVER SURFACE",
		collisionvolumeoffsets = "0 -17 0",
		collisionvolumescales = "65 65 120",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Armored Transport Ship",
		explodeas = "hugeexplosiongeneric",
		floater = true,
		footprintx = 4,
		footprintz = 8,
		icontype = "sea",
		loadingradius = 250,
		maxdamage = 9150,
		minwaterdepth = 0,
		movementclass = "DBOAT64X8",
		name = "Envoy",
		nochasecategory = "ALL",
		objectname = "CORTSHIP",
		pushresistant = true,
		releaseheld = false,
		seismicsignature = 0,
		selfdestructas = "hugeexplosiongenericSelfd",
		sightdistance = 550,
		transportcapacity = 40,
		transportsize = 4,
		transportunloadmethod = 0,
		unloadspread = 1,
		waterline = 0,
		--move
		brakerate =  1.928/40,
		acceleration = 1.684/180,
		maxvelocity = 2.313,
		turninplace = true,
		turninplaceanglelimit = 110,
		turninplacespeedlimit = 0.64*1.928,
		turnrate = 175,	
		--end move
		customparams = {

		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.0 -3.80138675537 -0.0",
				collisionvolumescales = "66.6000061035 64.2990264893 117.277526855",
				collisionvolumetype = "Box",
				damage = 6852,
				description = "Envoy Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				footprintx = 5,
				footprintz = 5,
				height = 4,
				hitdensity = 100,
				metal = 0.8*577,
				object = "CORTSHIP_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Envoy Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*291,
				object = "5X5A",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			 pieceExplosionGenerators = { 
				"deathceg2",
 				"deathceg3",
 				"deathceg4",
 			}, 
			explosiongenerators = {
				[1] = "custom:shallow_water_dirt",
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
				[1] = "shcormov",
			},
			select = {
				[1] = "shcorsel",
			},
		},
	},
}

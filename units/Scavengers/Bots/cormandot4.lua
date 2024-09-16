return {
	cormandot4 = {
		maxacc = 0.4025,
		activatewhenbuilt = true,
		autoheal = 9,
		maxdec = 1.725,
		energycost = 90000,
		metalcost = 6700,
		builddistance = 200,
		builder = true,
		buildpic = "CORMANDO.DDS",
		buildtime = 17100,
        cancloak = true,
        cloakcost = 100,
        cloakcostmoving = 1000,
		canassist = true,
		canmove = true,
		canreclaim = true,
		canrepair = true,
		canrestore = false,
		category = "ALL MOBILE WEAPON NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE BOT CANBEUW EMPABLE",
		collisionvolumeoffsets = "0 0 0",
		collisionvolumescales = "38 50 22",
		collisionvolumetype = "box",
		energymake = 50,
		energystorage = 100,
		explodeas = "mediumexplosiongeneric",
		footprintx = 2,
		footprintz = 2,
		idleautoheal = 30,
		idletime = 900,
		health = 9600,
		maxslope = 20,
		speed = 60.0,
		mincloakdistance = 50,
		movementclass = "ABOT2",
		nochasecategory = "VTOL",
		objectname = "scavs/cormandot4.s3o",
		radardistance = 900,
		radardistancejam = 200,
		script = "Scavs/CORMANDOT4.cob",
		seismicsignature = 4,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 600,
		turninplace = true,
		turninplaceanglelimit = 90,
		turninplacespeedlimit = 1.65,
		turnrate = 1168.40002,
		upright = true,
		workertime = 600,
		buildoptions = {
			[2] = "corape",
			[3] = "cormine3",
			[4] = "cormwall",
			[5] = "corfort",
			[6] = "cortron",
		},
		customparams = {
			unitgroup = 'buildert2',
			model_author = "FireStorm",
			normaltex = "unittextures/cor_normal.dds",
			subfolder = "corbots/t2",
			techlevel = 2,
            paratrooper = true,
			fall_damage_multiplier = 0,
			nopvebuilder = true,
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
				[2] = "custom:radarpulse_t1",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg2",
				[2] = "deathceg3",
				[3] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			repair = "repair2",
			underattack = "warning1",
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
				[1] = "kbcormov",
			},
			select = {
				[1] = "kbcorsel",
			},
		},
		weapondefs = {
			commando_back_cannon = {
				areaofeffect = 36,
				avoidfeature = false,
				avoidfriendly = false,
				avoidground = false,
				bouncerebound = 0,
				cegtag = "dgunprojectile",
				craterboost = 0,
				cratermult = 0.15,
				edgeeffectiveness = 0.15,
				energypershot = 500,
				explosiongenerator = "custom:expldgun",
                explosionscar = false,
				firestarter = 100,
				firesubmersed = false,
				impulseboost = 0,
				impulsefactor = 0,
				name = "Disintegrator",
				noexplode = true,
				noselfdamage = true,
				range = 250,
				reloadtime = 0.9,
				soundhit = "xplomas2s",
				soundhitwet = "sizzlexs",
				soundstart = "disigun1",
				soundhitvolume = 36,
				soundstartvolume = 96,
				soundtrigger = true,
				tolerance = 10000,
				turret = true,
				waterweapon = true,
				weapontimer = 4.2,
				weapontype = "DGun",
				weaponvelocity = 300,
				damage = {
					commanders = 200,
					default = 2400,
				},
			},
			commando_stunner = {
				areaofeffect = 75,
				avoidfeature = false,
				beamdecay = 0.5,
				beamtime = 0.1,
				beamttl = 0.2,
                collideenemy = false,
				collidefriendly = false,
                collidefeature = false,
				corethickness = 0.5,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.01,
				edgeeffectiveness = 1,
				explosiongenerator = "custom:laserhit-emp",
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 8,
				name = "Close-quarters EMP Scattergun",
				noselfdamage = true,
				paralyzer = true,
				paralyzetime = 7,
                projectiles = 10,
				range = 250,
				reloadtime = 2.2,
				rgbcolor = "0.7 0.7 1",
                sprayangle = 8000,
				soundhitdry = "flashemgxlhit",
				soundhitwet = "sizzle",
				soundstart = "lasfirerb",
				soundtrigger = 1,
                targetborder = 1,
				targetmoveerror = 0,
				thickness = 10,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 1200,
				damage = {
					default = 2000,
				},
			},
        },
		weapons = {
            [1] = {
				badtargetcategory = "GROUNDSCOUT",
				def = "commando_stunner",
				onlytargetcategory = "WEAPON",
			},
            [2] = {
                badtargetcategory = "WEAPON",
				def = "commando_back_cannon",
			},
		},
	},
}

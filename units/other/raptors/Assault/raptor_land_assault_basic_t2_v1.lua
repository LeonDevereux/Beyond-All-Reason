return {
	raptor_land_assault_basic_t2_v1 = {
		maxacc = 0.414,
		airsightdistance = 650,
		maxdec = 0.46,
		energycost = 3520,
		metalcost = 152,
		builder = false,
		buildpic = "raptors/raptora1.DDS",
		buildtime = 9000,
		canattack = true,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		capturable = false,
		category = "BOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE RAPTOR EMPABLE",
		collisionvolumeoffsets = "0 -5 0",
		collisionvolumescales = "27 48 60",
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		explodeas = "BIGBUG_DEATH",
		footprintx = 3,
		footprintz = 3,
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 100000,
		health = 5600,
		maxslope = 18,
		speed = 39.0,
		maxwaterdepth = 0,
		movementclass = "RAPTORBIGHOVER",
		noautofire = false,
		nochasecategory = "VTOL SPACE",
		objectname = "Raptors/raptora.s3o",
		script = "Raptors/raptora1.cob",
		seismicsignature = 0,
		selfdestructas = "BIGBUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 300,
		smoothanim = true,
		trackoffset = 7,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "RaptorTrack",
		trackwidth = 34,
		turninplace = true,
		turninplaceanglelimit = 90,
		turnrate = 920,
		unitname = "raptor_land_assault_basic_t2_v1",
		upright = false,
		waterline = 24,
		workertime = 0,
		customparams = {
			maxrange = "200",
			subfolder = "other/raptors",
			model_author = "KDR_11k, Beherith",
			normalmaps = "yes",
			normaltex = "unittextures/chicken_l_normals.png",
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray", --cob 1024
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
				[4] = "custom:blob_fire",
				[5] = "custom:blood_explode",
				[6] = "custom:blood_spray",
				[7] = "custom:dirt",
			},
			pieceexplosiongenerators = {
				[1] = "blood_spray",
				[2] = "blood_spray",
				[3] = "blood_spray",
			},
		},
		weapondefs = {
			aaweapon = {
				areaofeffect = 256,
				avoidfriendly = false,
				burnblow = true,
				--cegtag = "sporetrail-large",
				collidefriendly = false,
				craterboost = 0,
				cratermult = 0,
				cameraShake = 700,
				dance = 20,
				edgeeffectiveness = 0.35,
				explosiongenerator = "custom:genericshellexplosion-huge-bomb",
				firestarter = 0,
				flighttime = 5,
				firesubmersed = true,
				impulseboost = 0,
				impulsefactor = 0.4,
				interceptedbyshieldtype = 4,
				metalpershot = 0,
				model = "armada_simpleflarexl.s3o",
				name = "Deadly Defensive Spores",
				noselfdamage = true,
				range = 750,
				reloadtime = 10,
				smoketrail = true,
				smokePeriod = 2,
				smoketime = 45,
				smokesize = 10.5,
				smokecolor = 1.0,
				soundhit = "spore_explo",
				soundstart = "spore_xl",
				soundstartvolume = 9,
				startvelocity = 1000,
				texture1 = "orangenovaexplo",
				texture2 = "sporetrail_xl",
				tolerance = 60000,
				tracks = true,
				trajectoryheight = 2,
				turnrate = 60000,
				turret = true,
				waterweapon = true,
				weaponacceleration = 40,
				weapontype = "MissileLauncher",
				weaponvelocity = 2000,
				wobble = 32000,
				damage = {
					default = 1,
					vtol = 1000,
				},
			},
			weapon = {
				areaofeffect = 42,
				collidefriendly = 0,
				collidefeature = 0,
				avoidfeature = 0,
				avoidfriendly = 0,
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.3,
				explosiongenerator = "custom:raptorspike-medium-sparks-burn",
				firesubmersed = true,
				impulseboost = 1,
				impulsefactor = 1,
				interceptedbyshieldtype = 0,
				model = "Raptors/spike.s3o",
				name = "Claws",
				noselfdamage = true,
				range = 200,
				reloadtime = 0.5,
				soundstart = "smallraptorattack",
				targetborder = 1,
				tolerance = 5000,
				turret = true,
				waterweapon = true,
				weapontype = "Cannon",
				weaponvelocity = 1500,
				damage = {
					default = 200,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL SPACE",
				def = "WEAPON",
				maindir = "0 0 1",
				maxangledif = 125,
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				onlytargetcategory = "VTOL",
				def = "AAWEAPON",
			},
		},
	},
}

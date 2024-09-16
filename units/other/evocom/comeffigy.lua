local lvlParams = {
	["1"] = {
		health = 4000,
        energycost = 4000,
        metalcost = 1000,
        heapmetal = 1000,
	},
	["2"] = {
		health = 6000,
        energycost = 6000,
        metalcost = 1500,
        heapmetal = 1500,
	},
	["3"] = {
		health = 8000,
        energycost = 9000,
        metalcost = 2250,
        heapmetal = 2250,
	},
    ["4"] = {
		health = 10000,
        energycost = 13500,
        metalcost = 3375,
        heapmetal = 3375,
	},
    ["5"] = {
		health = 12000,
        energycost = 20000,
        metalcost = 5000,
        heapmetal = 5000,
	},
}
local unitsTable = {}
for lvl, stats in pairs(lvlParams) do
	unitsTable["comeffigylvl" .. lvl] = {
        maxacc = 0.0,
		activatewhenbuilt = true,
		autoheal = math.ceil(stats.health/100),
		maxdec = 0,
		energycost = stats.energycost,
		metalcost = stats.metalcost,
		builddistance = 145,
		buildpic = "COMEFFIGY.DDS",
		buildtime = 6000,
		cancloak = true,
		canmove = false,
		canselfdestruct = false,
		capturable = false,
		category = "ALL WEAPON COMMANDER NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CANBEUW EMPABLE",
		cloakcost = 0,
		cloakcostmoving = 0,
		cloaktimeout = 0,
		collisionvolumeoffsets = "0 3 0",
		collisionvolumescales = "0 0 0",
		collisionvolumetype = "CylY",
		corpse = "HEAP",
		explodeas = "decoycommander",
		footprintx = 2,
		footprintz = 2,
		hidedamage = true,
    	holdsteady = true,
		idleautoheal = 5000,
		initcloaked = true,
		sightemitheight = 40,
		mass = 4900,
		health = stats.health,
		maxslope = 20,
		speed = 0,
		maxwaterdepth = 255,
		mincloakdistance = 50,
		movementclass = "COMMANDERBOT",
		movestate = 0,
		nochasecategory = "ALL",
		objectname = "Units/COMEFFIGY.s3o",
		reclaimable = false,
		releaseheld  = true,
		script = "Units/COMEFFIGY.cob",
		seismicsignature = 0,
		selfdestructas = "decoycommander",
		selfdestructcountdown = 3,
		sightdistance = 0,
		sonarstealth = true,
		stealth = true,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 0.825,
		turnrate = 0,
		upright = true,
		customparams = {
			unitgroup = 'util',
			iseffigy = true,
			model_author = "Mr Bob",
			normaltex = "unittextures/cor_normal.dds",
			paralyzemultiplier = 0.025,
			subfolder = "",
			i18nfromunit = "comeffigy",
		},
		featuredefs = {
			heap = {
				blocking = false,
				category = "heaps",
				collisionvolumescales = "35 12 54",
				collisionvolumetype = "cylY",
				damage = stats.health*2,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				metal = stats.heapmetal,
				object = "Units/cor2X2C.s3o",
				reclaimable = true,
				resurrectable = 0,
			},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:com_sea_laser_bubbles",
				[2] = "custom:barrelshot-medium",
				[3] = "custom:footstep-medium",
			},
			pieceexplosiongenerators = {
				[1] = "deathceg3",
				[2] = "deathceg4",
			},
		},
		sounds = {
			build = "nanlath2",
			canceldestruct = "cancel2",
			capture = "capture2",
			cloak = "kloak2",
			repair = "repair2",
			uncloak = "kloak2un",
			underattack = "warning2",
			unitcomplete = "corcomsel",
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
				[1] = "corcom1",
				[2] = "corcom2",
				[3] = "corcom3",
				[4] = "corcom4",
				[5] = "corcom5",
			},
			select = {
				[1] = "corcomsel",
			},
		},
		weapondefs = {
		},
		weapons = {

		},
	}
end
return unitsTable

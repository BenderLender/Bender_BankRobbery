config = {
	hacktimer = 20, -- The amount of time to complete the hack.
	enableBanks = true, -- Dont change this (Default: false)
	markertype = 27, -- style for marker at banks & shops
	distance = 1, -- how close to coords to start hacking and see the draw marker
	size = 2.0, -- how big is the draw marker
	SpriteId = 500, -- map blip picture (https://docs.fivem.net/docs/game-references/blips/)
	ShopSpriteId = 59,
	SpriteColour = 2, -- color of map blip (https://docs.fivem.net/docs/game-references/blips/)
	ShopSpriteColour = 2,
	FlashTime = 60, -- how long in seconds does the blip flash for on the map


	bankcoords = {
		-- Template {name = " (name of bank) ", alarm = " (your message) ",
		--  		x = 0, y = 0, z = 0},
		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:024 ^1For ^5Blaine County Savings Bank Paleto", 
		x = -105.49, y = 6470.44, z = 31.63},

		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:260 ^1For ^5Fleeca Bank Harmony.", 
		x = 1177.32, y = 2711.79, z = 38.1},

		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:437 ^1For ^5Fleeca Bank Great Ocean HWY.", 
		x = -2957.5, y = 480.97, z = 15.71},

		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:752 ^1For ^5Fleeca Bank Pillbox.", 
		x = 146.46, y = -1044.67, z = 29.38},

		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:596 ^1For ^5Pacific Bank Vinewood.", 
		x = 253.84, y = 228.19, z = 101.68},

		{name = "Bank", alarm = "^1*A silent alarm has been triggered at ^3postal:614 ^1For ^5Fleeca Bank Hawick Ave.", 
		x = 310.77, y = -283.38, z = 54.17},
	},

	shopcoords = {
		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:070 ^1For ^524/7 Senora FWY / MT Chilliad.", 
		x = 1734.54, y = 6420.27, z = 35.04},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:614 ^1For ^524/7 Senora FWY / Grand Canyon.", 
		x = 2673.21, y = 3286.36, z = 55.24},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:260 ^1For ^524/7 harmony.", 
		x = 546.35, y = 2663.35, z = 42.16},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:297 ^1For ^524/7 Sandy Shores.", 
		x = 1960.71, y = 3748.53, z = 32.36},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:443 ^1For ^524/7 Great Ocean HWY.", 
		x = -3249.52, y = 1004.41, z = 12.83},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:557 ^1For ^524/7 Polimino FWY.", 
		x = 2549.84, y = 384.93, z = 108.64},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:594 ^1For ^524/7 Vinewood.", 
		x = 377.99, y = 332.96, z = 103.57},

		{name = "24/7", alarm = "^1*A silent alarm has been triggered at ^3postal:849 ^1For ^524/7 Strawberry Ave.", 
		x = 28.71, y = -1339.51, z = 29.5},
	},
}
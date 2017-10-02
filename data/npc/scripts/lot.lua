	local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

-- Seller Objets
-- Helmets

shopModule:addSellableItem({'steel helmet'}, 2457, 200, 'steel helmet')
shopModule:addSellableItem({'devil helmet'}, 2462, 5000, 'devil helmet')
shopModule:addSellableItem({'warrior helmet'}, 2475, 5000, 'warrior helmet')
shopModule:addSellableItem({'dark helmet'}, 2490, 250, 'dark helmet')
shopModule:addSellableItem({'crown helmet'}, 2491, 3000, 'crown helmet')
shopModule:addSellableItem({'crusader helmet'}, 2497, 7000, 'crusader helmet')
shopModule:addSellableItem({'beholder helmet'}, 3972, 7500, 'beholder helmet')
shopModule:addSellableItem({'helmet of the ancients'}, 2342, 40000, 'helmet of the ancients')
shopModule:addSellableItem({'royal helmet'}, 2498, 33000, 'royal helmet')
shopModule:addSellableItem({'amazon helmet'}, 2499, 112500, 'amazon helmet')
shopModule:addSellableItem({'dragon scale helmet'}, 2506, 200000, 'dragon scale helmet')
shopModule:addSellableItem({'golden helmet'}, 2471, 300000, 'golden helmet')
shopModule:addSellableItem({'winged helmet'}, 2474, 300000, 'winged helmet')
shopModule:addSellableItem({'demon helmet'}, 2493, 80000, 'demon helmet')
shopModule:addSellableItem({'horned helmet'}, 2496, 250000, 'horned helmet')

-- Armors
shopModule:addSellableItem({'magic plate armor'}, 2472, 100000, 'magic plate armor')
shopModule:addSellableItem({'knight armor'}, 2476, 5000, 'knight armor')
shopModule:addSellableItem({'scale armor'}, 2483, 100, 'scale armor')
shopModule:addSellableItem({'noble armor'}, 2486, 1000, 'noble armor')
shopModule:addSellableItem({'leopard armor'}, 3968, 500, 'leopard armor')
shopModule:addSellableItem({'rangers cloak'}, 2660, 200, 'rangers cloak')
shopModule:addSellableItem({'dark armor'}, 2489, 500, 'dark armor')
shopModule:addSellableItem({'golden armor'}, 2466, 25000, 'golden armor')
shopModule:addSellableItem({'crown armor'}, 2487, 15000, 'crown armor')
shopModule:addSellableItem({'amazon armor'}, 2500, 60000, 'amazon armor')
shopModule:addSellableItem({'elven armor'}, 2505, 2000, 'elven armor')
shopModule:addSellableItem({'demon armor'}, 2494, 150000, 'demon armor')
shopModule:addSellableItem({'dragon scale mail'}, 2492, 40000, 'dragon scale mail')

-- Legs
shopModule:addSellableItem({'knight legs'}, 2477, 5000, 'knight legs')
shopModule:addSellableItem({'elven legs'}, 2507, 700, 'elven legs')
shopModule:addSellableItem({'plate legs'}, 2647, 1000, 'plate legs')
shopModule:addSellableItem({'crown legs'}, 2488, 16000, 'crown legs')
shopModule:addSellableItem({'golden legs'}, 2470, 60000, 'golden legs')
shopModule:addSellableItem({'demon legs'}, 2495, 200000, 'demon legs')

-- Boots
shopModule:addSellableItem({'steel boots'}, 2645, 30000, 'steel boots')
shopModule:addSellableItem({'golden boots'}, 2646, 200000, 'golden boots')
shopModule:addSellableItem({'boots of haste'}, 2195, 30000, 'boots of haste')

shopModule:addSellableItem({'ring of the sky'}, 2123, 40000, 'ring of the sky')
shopModule:addSellableItem({'tempest rod'}, 2183, 5000, 'tempest rod')
shopModule:addSellableItem({'wand of inferno'}, 2187, 5000, 'wand of inferno')
shopModule:addSellableItem({'fire sword'}, 2392, 4500, 'fire sword')
shopModule:addSellableItem({'fire axe'}, 2432, 9000, 'fire axe')
shopModule:addSellableItem({'knight axe'}, 2430, 4000, 'knight axe')
shopModule:addSellableItem({'giant smithhammer'}, 2321, 5400, 'giant smithhammer')
shopModule:addSellableItem({'two handed sword'}, 2377, 1050, 'two handed sword')
shopModule:addSellableItem({'battle axe'}, 2378, 1500, 'battle axe')
shopModule:addSellableItem({'halberd'}, 2381, 1500, 'halberd')
shopModule:addSellableItem({'spike sword'}, 2383, 1900, 'spike sword')
shopModule:addSellableItem({'double axe'}, 2387, 1500, 'double axe')
shopModule:addSellableItem({'morning star'}, 2394, 900, 'morning star')
shopModule:addSellableItem({'bright sword'}, 2407, 10000, 'bright sword')
shopModule:addSellableItem({'serpent sword'}, 2409, 1500, 'serpent sword')
shopModule:addSellableItem({'broad sword'}, 2413, 900, 'broad sword')
shopModule:addSellableItem({'battle hammer'}, 2417, 900, 'battle hammer')
shopModule:addSellableItem({'clerical mace'}, 2423, 900, 'clerical mace')
shopModule:addSellableItem({'obsidian lance'}, 2425, 7500, 'obsidian lance')
shopModule:addSellableItem({'naginata'}, 2426, 8500, 'naginata')
shopModule:addSellableItem({'barbarian axe'}, 2429, 8000, 'barbarian axe')
shopModule:addSellableItem({'dragon hammer'}, 2434, 4500, 'dragon hammer')
shopModule:addSellableItem({'dwarven axe'}, 2435, 3800, 'dwarven axe')
shopModule:addSellableItem({'skull staff'}, 2436, 9000, 'skull staff')
shopModule:addSellableItem({'epee'}, 2438, 9000, 'epee')
shopModule:addSellableItem({'daramanian waraxe'}, 2440, 2500, 'daramanian waraxe')
shopModule:addSellableItem({'crystal mace'}, 2445, 9000, 'crystal mace')
shopModule:addSellableItem({'pharaoh sword'}, 2446, 19000, 'pharaoh sword')
shopModule:addSellableItem({'djinn blade'}, 2451, 18000, 'djinn blade')
shopModule:addSellableItem({'lich staff'}, 3961, 18000, 'lich staff')
shopModule:addSellableItem({'beastslayer axe'}, 3962, 5000, 'beastslayer axe')
shopModule:addSellableItem({'platinum amulet'}, 2171, 4000, 'platinum amulet')

shopModule:addSellableItem({'war hammer'}, 2391, 1200, 'war hammer')
shopModule:addSellableItem({'giant sword'}, 2393, 22000, 'giant sword')
shopModule:addSellableItem({'dragon lance'}, 2414, 22200, 'dragon lance')
shopModule:addSellableItem({'silver mace'}, 2424, 21200, 'silver mace')
shopModule:addSellableItem({'guardian halberd'}, 2427, 32000, 'guardian halberd')
shopModule:addSellableItem({'light mace'}, 2437, 5500, 'light mace')
shopModule:addSellableItem({'ravagers axe'}, 2443, 5200, 'ravagers axe')
shopModule:addSellableItem({'hammer of wrath'}, 2444, 34000, 'hammer of wrath')
shopModule:addSellableItem({'tytan axe'}, 2447, 2800, 'tytan axe')
shopModule:addSellableItem({'heavy mace'}, 2452, 2200, 'heavy mace')
shopModule:addSellableItem({'war axe'}, 2454, 2900, 'war axe')
shopModule:addSellableItem({'hat of the mad'}, 2323, 23500, 'hat of the mad')
shopModule:addSellableItem({'ceremonial mask'}, 2501, 12500, 'ceremonial mask')
shopModule:addSellableItem({'blue robe'}, 2656, 10000, 'blue robe')
shopModule:addSellableItem({'magician hat'}, 2662, 7555, 'magician hat')
shopModule:addSellableItem({'ancient shield'}, 2532, 7500, 'ancient shield')
shopModule:addSellableItem({'beholder shield'}, 2518, 5000, 'beholder shield')
shopModule:addSellableItem({'crown shield'}, 2519, 8000, 'crown shield')
shopModule:addSellableItem({'demon shield'}, 2520, 35000, 'demon shield')
shopModule:addSellableItem({'dragon shield'}, 2516, 4500, 'dragon shield')
shopModule:addSellableItem({'mastermind shield'}, 2514, 60000, 'mastermind shield')
shopModule:addSellableItem({'medusa shield'}, 2536, 8000, 'medusa shield')
shopModule:addSellableItem({'scarab shield'}, 2540, 4000, 'scarab shield')
shopModule:addSellableItem({'tempest shield'}, 2542, 300000, 'tempest shield')
shopModule:addSellableItem({'tower shield'}, 2528, 8000, 'tower shield')
shopModule:addSellableItem({'vampire shield'}, 2534, 15000, 'vampire shield')
shopModule:addSellableItem({'blessed shield'}, 2662, 300000, 'blessed shield')
shopModule:addSellableItem({'quagmire rod'}, 2181, 3500, 'quagmire rod')
shopModule:addSellableItem({'volcanic rod'}, 2185, 2500, 'volcanic rod')
shopModule:addSellableItem({'wand of plague'}, 2188, 2500, 'wand of plague')
shopModule:addSellableItem({'wand of cosmic energy'}, 2189, 3500, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 1500, 'wand of dragonbreath')
shopModule:addSellableItem({'moonlight rod'}, 2186, 1500, 'moonlight rod')

shopModule:addSellableItem({'magic longsword'}, 2390, 440000, 'magic longsword')
shopModule:addSellableItem({'ice rapier'}, 2396, 4000, 'ice rapier')
shopModule:addSellableItem({'magic sword'}, 2400, 150000, 'magic sword')
shopModule:addSellableItem({'warlord sword'}, 2408, 200000, 'warlord sword')
shopModule:addSellableItem({'great axe'}, 2415, 200000, 'great axe')
shopModule:addSellableItem({'thunder hammer'}, 2421, 200000, 'thunder hammer')
shopModule:addSellableItem({'stonecutter axe'}, 2431, 150000, 'stonecutter axe')
shopModule:addSellableItem({'arcane staff'}, 2453, 150000, 'arcane staff')

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())


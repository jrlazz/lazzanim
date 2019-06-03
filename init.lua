local MOD_NAME=minetest.get_current_modname()
local MOD_PATH=minetest.get_modpath(MOD_NAME)
local WORLD_PATH=minetest.get_worldpath()
lazzanim = {};
local FORM_NAME="lazzanimform"
local meu=0
local conta=0
local img="__.png"
local para=0

local function showForm(player)
	local playerName=player:get_player_name()
	if not playerName or playerName=="" then return;end
	local fs="size[8,6]"
	fs=fs.."label[1,1;Images from www.flaticon.com/icon-packs/emoji]"
	fs=fs.."label[1,3;"..img.." ]"
	fs=fs.."image[3,2.3;2,2;"..img.."]"

function visual()
	conta=conta+1
	img="emoji_0"..conta..".png"
	if conta==9 then conta=1;end
	para=para+1
	showForm(player)
end

	if para<55 then minetest.after(.1,visual);end

	minetest.show_formspec(playerName, FORM_NAME, fs)
end
	
lazzanim_emoji={}
minetest.register_node("lazzanim:emoji",{
	description="emoji",tile_images={"emoji_01.png"},
	on_rightclick=function(pos,node,player,itemstack,pointedThing)
	para=0 local handle=0 showForm(player)
	end,}
)

-- local anorthite=table.deepcopy(data.raw["item"]["metallic-asteroid-chunk"])

local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")

-- anorthite.name="anorthite"
-- anorthite.order=anorthite.order .. "a"
-- anorthite.type="item"

data:extend{{
    type = "item",
    name = "anorthite-chunk",
    icon="__muluna-graphics__/graphics/icons/anorthite-chunk.png",
    subgroup = "space-material",
    order = "a[metallic]-f[chunk]",
    inventory_move_sound = space_age_item_sounds.rock_inventory_move,
    pick_sound = space_age_item_sounds.rock_inventory_pickup,
    drop_sound = space_age_item_sounds.rock_inventory_move,
    stack_size = 1,
    weight = 100 * kg,
    random_tint_color = item_tints.iron_rust
  }}

--data:extend{{anorthite}}
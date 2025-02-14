local flib_bounding_box = require("__flib__/bounding-box")
local cryolab=table.deepcopy(data.raw["lab"]["biolab"])

cryolab.name="cryolab"
cryolab.selection_box=flib_bounding_box.resize(cryolab.selection_box,1)
cryolab.collision_box=flib_bounding_box.resize(cryolab.collision_box,1)
if mods["fluid-nutrients"] then
  cryolab.energy_source = { --Copied and modified from fluid-nutrients to make this mod compatible with its changes to biolabs..
    type = "fluid",
    fluid_box = {
        volume = 20,
        filter = "nutrient-solution",
        minimum_temperature = 15,
        maximum_temperature = 100,
        pipe_picture = {
            north = table.deepcopy(data.raw["assembling-machine"]["electromagnetic-plant"].fluid_boxes[1].pipe_picture.north),
            east = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture.east,
            south = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture.south,
            west = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture.west
        },
        pipe_picture_frozen = {
            north = table.deepcopy(data.raw["assembling-machine"]["electromagnetic-plant"].fluid_boxes[1].pipe_picture_frozen.north),
            east = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture_frozen.east,
            south = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture_frozen.south,
            west = data.raw["assembling-machine"]["assembling-machine-2"].fluid_boxes[1].pipe_picture_frozen.west
        },
        pipe_covers = data.raw["assembling-machine"]["biochamber"].fluid_boxes[1].pipe_covers,
        pipe_connections = {
            {flow_direction = "input", direction = defines.direction.west, position = {-3, 0}},
            {flow_direction = "input", direction = defines.direction.east, position = {3, 0}},
            {flow_direction = "input", direction = defines.direction.south, position = {0, 3}},
            {flow_direction = "input", direction = defines.direction.north, position = {0, -3}}
        },
        secondary_draw_orders = { north = -1 },
    },
    burns_fluid = true,
    scale_fluid_usage = true,
    emissions_per_minute = cryolab.energy_source.emissions_per_minute,
}
end
cryolab.energy_usage="1.5MW"
cryolab.minable = {mining_time = 0.5, result = "cryolab"}
cryolab.researching_speed=cryolab.researching_speed*3
cryolab.science_pack_drain_rate_percent=50

cryolab.max_health=500
cryolab.module_slots=6
cryolab.energy_source.emissions_per_minute.pollution=cryolab.energy_source.emissions_per_minute.pollution*2
cryolab.on_animation = {
    layers = {
      util.sprite_load("__space-age__/graphics/entity/biolab/biolab-anim",{
        frame_count = 32,
        scale = 0.7,
        animation_speed = 0.2,
        tint = {r=0.7,g=0.7,b=1}
      }),
      util.sprite_load("__space-age__/graphics/entity/biolab/biolab-lights",{
        frame_count = 32,
        draw_as_glow = true,
        blend_mode = "additive",
        scale = 0.7,
        animation_speed = 0.2,
        --tint = {r=0,g=0,b=0.2}
      }),
      util.sprite_load("__space-age__/graphics/entity/biolab/biolab-shadow",{
        frame_count = 32,
        scale = 0.7,
        animation_speed = 0.2,
        draw_as_shadow = true,
        --tint = {r=0,g=0,b=0.2}
      })
    }
  }
cryolab.off_animation = {
    layers = {
      util.sprite_load("__space-age__/graphics/entity/biolab/biolab-anim",{
        frame_count = 32,
        scale = 0.7,
        animation_speed = 0.2,
        tint = {r=0.7,g=0.7,b=1}
      }),
      util.sprite_load("__space-age__/graphics/entity/biolab/biolab-shadow",{
        frame_count = 32,
        scale = 0.7,
        animation_speed = 0.2,
        draw_as_shadow = true,
        --tint = {r=0,g=0,b=0.05}
      })
    }
  }

data:extend{cryolab}
local dual_icon = require("lib.dual-item-icon").dual_icon
local dual_icon = require("lib.dual-item-icon").dual_icon
data:extend{
    {
        type = "recipe",
        name = "muluna-tree-growth-greenhouse",
        enabled = false,
        category = "chemistry",
        icons = dual_icon("wood","carbon-dioxide"),
        ingredients = {
            {type = "item",name = "tree-seed", amount=1}, --Reminder: 1 tree seed = 2 wood
            {type = "fluid",name = "carbon-dioxide", amount=1000},
            {type = "fluid",name = "water", amount=1000},
        },
        results = {
            {type = "item",name = "wood", amount=4},
            {type = "fluid",name = "maraxsis-oxygen", amount=1000}
        },
        energy_required=5*60,
        subgroup="muluna-products"

    },
    {
        type = "recipe",
        name = "muluna-electrolysis",
        enabled = false,
        icon = "__planet-muluna__/graphics/icons/maraxsis-water.png",
        icon_size = 64,
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "water", amount=300},
        },
        results = {
            {type = "fluid",name = "maraxsis-oxygen", amount=1000},
            {type = "fluid",name = "maraxsis-hydrogen", amount=2000}
        },
        energy_required=50,
        subgroup="muluna-products"
    },
    -- {
    --     type = "recipe",
    --     name = "muluna-atmosphere-separation",
    --     icon = data.raw["item"]["wood"].icon,
    --     category = "chemistry",
    --     ingredients = {
    --         {type = "item",name = "atmosphere", amount=100}
    --     },
    --     results = {
    --         {type = "item",name = "maraxsis-oxygen", amount=20},
    --         {type = "item",name = "nitrogen", amount=80}
    --     },
    --     energy_required=10*60,

    -- },
    { 
        type = "recipe",
        name = "controlled-combustion",
        enabled = false,
        icon = "__planet-muluna__/graphics/icons/molecule-carbon-dioxide.png",
        icon_size = 64,
        category = "chemistry",
        ingredients = {
            {type = "item",name = "carbon", amount=1},
            {type = "fluid",name = "maraxsis-oxygen", amount=1000}
        },
        results = {
            {type = "fluid",name = "carbon-dioxide", amount=1000}
        },
        energy_required=5,
        subgroup="muluna-products"

    },
    { 
        type = "recipe",
        name = "helium-separation",
        enabled = false,
        icons = {   
                {
                    icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                    icon_size = 64,
                    tint = {1,0.8,1},
                    scale = 0.5,
                    shift = {16,0}
                },
                {
                    icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                    icon_size = 64,
                    tint = {1,0.6,1},
                    scale = 0.5,
                    shift = {-16,0}
                },   
        },
        --icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
        --icon_size = 64,
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "helium", amount=1000}
        },
        results = {
            {type = "fluid",name = "helium-4", amount=993},
            {type = "fluid",name = "helium-3", amount=7}
        },
        energy_required=2,
        subgroup="muluna-products",
        allow_productivity = false,

    },
    { 
        type = "recipe",
        name = "kovarex-helium-enrichment",
        enabled = false,
        icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
        allow_productivity = true,
        --icon_size = 64,
        icons = {   
            {
                icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                icon_size = 64,
                tint = {1,0.6,1},
                scale = 0.5,
                shift = {16,0},
                draw_background = true,
            },
            {
                icon = "__planet-muluna__/graphics/icons/molecule-noble-gas.png",
                icon_size = 64,
                tint = {1,0.6,1},
                scale = 0.5,
                shift = {-16,0},
                draw_background = true,
            },
           
    },
        category = "chemistry",
        ingredients = {
            {type = "fluid",name = "helium-4", amount=60},
            {type = "fluid",name = "helium-3", amount=400}
        },
        results = {
            {type = "fluid",name = "helium-4", amount=10},
            {type = "fluid",name = "helium-3", amount=402, ignored_by_productivity=400}
        },
        energy_required=0.2,
        subgroup="muluna-products"

    },
    {
        type = "recipe",
        category = "chemistry",
        enabled = false,
        name = "cellulose",
        ingredients = {
            {type = "item",name = "wood-crushed", amount=20},
            {type = "fluid",name = "sulfuric-acid", amount=50}
        },
        energy_required = 8,
        results = {
            {type = "item",name = "cellulose", amount=20},
        },
        allow_productivity = true,
    },
    -- {
    --     type = "recipe",
    --     category = "chemistry",
    --     name = "heavy-oil-cellulose",
    --     ingredients = {
    --         {type = "item",name = "cellulose", amount=40},
    --         {type = "fluid",name = "steam", amount=100}
    --     },
    --     energy_required = 8,
    --     results = {
    --         {type = "fluid",name = "heavy-oil", amount=100},
    --     },
    --     allow_productivity = true,
    -- },


}
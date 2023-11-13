require("prototypes.lib.tech_costs")

data:extend({
  {
    type = "technology",
    name = "cube-refined-concrete",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/concrete.png",
    effects =
    {
      {type = "unlock-recipe", recipe = "cube-refined-concrete"},
      {type = "unlock-recipe", recipe = "cube-refined-hazard-concrete"},
    },
    prerequisites = {"cube-deep-introspection-card"},
    unit = tech_cost_unit("3", 180),
    order = "3-0-0",
  },
  {
    type = "technology",
    name = "cube-coal-liquefaction",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/coal-liquefaction.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-coal-liquefaction"},
    },
    prerequisites = {"cube-deep-introspection-card"},
    unit = tech_cost_unit("3", 240),
    order = "3-0-1"
  },
  {
    type = "technology",
    name = "cube-cerebral-substrate-phantom",
    icons = {
      {
        icon_size = 256, icon_mipmaps = 4,
        icon = "__Krastorio2Assets__/technologies/backgrounds/matter.png",
      },
      {
        icon_size = 256, icon_mipmaps = 4,
        icon = "__Ultracube__/graphics/phantom-cube-technology.png",
        tint = {r = 1, g = 1, b = 1, a = 0.25},
      },
    },
    effects = {
      {type = "unlock-recipe", recipe = "cube-cerebral-substrate-phantom"},
    },
    prerequisites = {"cube-synthetic-premonition-card"},
    unit = tech_cost_unit("4", 240),
    order = "3-0-2",
  },
  {
    type = "technology",
    name = "cube-energy-bulkframe",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Krastorio2Assets__/technologies/energy-storage.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-energy-bulkframe"},
    },
    prerequisites = {
      "cube-electric-energy-distribution-2",
      "cube-synthetic-premonition-card",
      "cube-resplendent-plate",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-0-3",
  },
  {
    type = "technology",
    name = "cube-v4-logistics",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Krastorio2Assets__/technologies/logistics-5.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-transport-belt-3"},
      {type = "unlock-recipe", recipe = "cube-underground-belt-3"},
      {type = "unlock-recipe", recipe = "cube-splitter-3"},
    },
    prerequisites = {
      "cube-deep-introspection-card",
      "cube-express-logistics",
      "cube-spectral-processor",
    },
    unit = tech_cost_unit("3", 300),
    order = "3-0-4",
  },
  {
    type = "technology",
    name = "cube-logistic-system",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/logistic-system.png",
    effects = {
      -- TODO: more complex recipes?
      {type = "unlock-recipe", recipe = "cube-logistic-chest-active-provider"},
      {type = "unlock-recipe", recipe = "cube-logistic-chest-requester"},
      {type = "unlock-recipe", recipe = "cube-logistic-chest-buffer"},
    },
    prerequisites = {
      -- TODO ???: "cube-roboport",
      "cube-logistic-robotics",
      "cube-synthetic-premonition-card",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-0-5",
  },
  {
    type = "technology",
    name = "cube-fusion-blender",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Ultracube__/graphics/fusion-blender-technology.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-fusion-blender"},
    },
    prerequisites = {
      "cube-refined-concrete",
      "cube-phantom-electronics",
    },
    unit = tech_cost_unit("3", 300),
    order = "3-0-5",
  },
  {
    type = "technology",
    name = "cube-quantum-decoder",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Krastorio2Assets__/technologies/quantum-computer.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-particle-phase-aligner"},
      {type = "unlock-recipe", recipe = "cube-quantum-decoder"},
      {type = "unlock-recipe", recipe = "cube-qubit"},
      {type = "unlock-recipe", recipe = "cube-qubit-init"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-0"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-1"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-2"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-3"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-4"},
      {type = "unlock-recipe", recipe = "cube-qubit-next-5"},
      {type = "unlock-recipe", recipe = "cube-qubits-failure-dummy"},
      {type = "unlock-recipe", recipe = "cube-qubits-success-dummy"},
    },
    prerequisites = {
      "cube-synthetic-premonition-card",
      "cube-deep-crystallization",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-0-5",
  },
  {
    type = "technology",
    name = "cube-kovarex-enrichment-process",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/kovarex-enrichment-process.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-kovarex-enrichment-process"},
      {type = "unlock-recipe", recipe = "cube-kovarex-redemption-process"},
    },
    prerequisites = {
      "cube-deep-introspection-card",
      "cube-uranium-processing",
    },
    unit = tech_cost_unit("3", 240),
    order = "3-0-6",
  },
  {
    type = "technology",
    name = "cube-nuclear-fuel-reprocessing",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/nuclear-fuel-reprocessing.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-nuclear-fuel-reprocessing"},
    },
    prerequisites = {
      "cube-deep-introspection-card",
      "cube-nuclear-power",
    },
    unit = tech_cost_unit("3", 240),
    order = "3-0-7",
  },
  {
    type = "technology",
    name = "cube-fusion-reactor-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/fusion-reactor-equipment.png"),
    effects = {
      {type = "unlock-recipe", recipe = "cube-fusion-reactor-equipment"},
    },
    prerequisites = {
      "cube-deep-introspection-card",
      "cube-power-armor",
      "cube-uranium-processing",
    },
    unit = tech_cost_unit("3", 240),
    order = "3-0-8",
  },
  {
    type = "technology",
    name = "cube-personal-roboport-mk2-equipment",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_equipment("__base__/graphics/technology/personal-roboport-mk2-equipment.png"),
    effects = {
      {type = "unlock-recipe", recipe = "cube-personal-roboport-mk2-equipment"},
    },
    prerequisites = {
      "cube-personal-roboport-equipment",
      "cube-synthetic-premonition-card",
    },
    unit = tech_cost_unit("4", 240),
    order = "3-0-9",
  },
  {
    type = "technology",
    name = "cube-speed-module-v2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/speed-module-2.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-speed-module-v2"},
      {type = "unlock-recipe", recipe = "cube-burnt-out-modular-casing"},
    },
    prerequisites = {
      "cube-deep-introspection-card",
      "cube-speed-module",
    },
    unit = tech_cost_unit("3", 300),
    order = "3-1-0",
  },
  {
    type = "technology",
    name = "cube-efficiency-module-v2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/effectivity-module-2.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-efficiency-module-v2"},
      {type = "unlock-recipe", recipe = "cube-burnt-out-modular-casing"},
    },
    prerequisites = {
      "cube-synthetic-premonition-card",
      "cube-efficiency-module",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-1-1",
  },
  {
    type = "technology",
    name = "cube-express-loader",
    icons = {
      {
        icon = "__aai-loaders__/graphics/technology/loader-tech-icon.png",
        icon_size = 256,
      },
      {
        icon = "__aai-loaders__/graphics/technology/loader-tech-icon_mask.png",
        icon_size = 256,
        tint = {90, 190, 255},
      },
    },
    effects = {
      {type = "unlock-recipe", recipe = "cube-v3-loader"},
    },
    prerequisites = {
      "cube-synthetic-premonition-card",
      "cube-express-logistics",
      "cube-loader",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-1-3",
  },
  {
    type = "technology",
    name = "cube-spidertron",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/spidertron.png",
    effects = {
      {type = "unlock-recipe", recipe = "cube-spidertron"},
      {type = "unlock-recipe", recipe = "cube-spidertron-remote"},
    },
    prerequisites = {
      "cube-exoskeleton-equipment",
      "cube-efficiency-module-v2",
      "cube-radar",
    },
    unit = tech_cost_unit("4", 300),
    order = "3-2-0",
  },
})

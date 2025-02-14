local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

circuit_connector_definitions["cube-big-container"] = circuit_connector_definitions.create(universal_connector_template, {
  {
    variation = 26,
    main_offset = util.by_pixel(0.5, -2.6),
    shadow_offset = util.by_pixel(3.5, 0),
    show_shadow = true,
  },
})

data:extend({
  {
    type = "container",
    name = "cube-medium-container",
    icon = "__Krastorio2Assets__/icons/entities/containers/medium-containers/medium-container.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 0.5, result = "cube-medium-container"},
    max_health = 500,
    corpse = "big-remnants",
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "container",
    inventory_size = 40,
    scale_info_icons = true,
    vehicle_impact_sound = sounds.generic_impact,
    opened_duration = logistic_chest_opened_duration,
    picture = {
      filename = "__Krastorio2Assets__/entities/containers/medium-containers/medium-container/medium-container.png",
      priority = "extra-high",
      width = 85,
      height = 85,
      hr_version = {
        filename = "__Krastorio2Assets__/entities/containers/medium-containers/medium-container/hr-medium-container.png",
        priority = "extra-high",
        width = 340,
        height = 340,
        scale = 0.25,
      },
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },
  {
    type = "container",
    name = "cube-big-container",
    icon = "__Krastorio2Assets__/icons/entities/containers/big-containers/big-container.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 1, result = "cube-big-container"},
    max_health = 1500,
    corpse = "cube-big-random-pipes-remnant",
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    damaged_trigger_effect = hit_effects.entity(),
    fast_replaceable_group = "container",
    inventory_size = 60,
    scale_info_icons = true,
    vehicle_impact_sound = sounds.generic_impact,
    opened_duration = logistic_chest_opened_duration,
    picture = {
      filename = "__Krastorio2Assets__/entities/containers/big-containers/big-container/big-container.png",
      priority = "extra-high",
      width = 213,
      height = 213,
      scale = 0.6,
      hr_version = {
        filename = "__Krastorio2Assets__/entities/containers/big-containers/big-container/hr-big-container.png",
        priority = "extra-high",
        width = 512,
        height = 512,
        scale = 0.25,
      },
    },

    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/containers/big-containers/big-container-reflection.png",
        priority = "extra-high",
        width = 60,
        height = 50,
        shift = util.by_pixel(0, 20),
        variation_count = 1,
        scale = 2.5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    circuit_wire_connection_point = circuit_connector_definitions["cube-big-container"].points,
    circuit_connector_sprites = circuit_connector_definitions["cube-big-container"].sprites,
    circuit_wire_max_distance = 20,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
  },

  {
    type = "storage-tank",
    name = "cube-fluid-storage-1",
    icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-1.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 0.5, result = "cube-fluid-storage-1"},
    max_health = 750,
    corpse = "big-remnants",
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fluid_box = {
      base_area = 500,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {position = {-2, 0}},
        {position = {0, -2}},
        {position = {2, 0}},
        {position = {0, 2}},
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-1/fluid-storage-1.png",
            priority = "extra-high",
            frames = 1,
            width = 128,
            height = 128,
            hr_version = {
              filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-1/hr-fluid-storage-1.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 256,
              height = 256,
            },
          },
          {
            filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-1/fluid-storage-1-sh.png",
            priority = "extra-high",
            frames = 1,
            width = 128,
            height = 128,
            shift = {0.152, 0},
            draw_as_shadow = true,
            hr_version = {
              filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-1/hr-fluid-storage-1-sh.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 256,
              height = 256,
              shift = {0.152, 0},
              draw_as_shadow = true,
            },
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version = {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1,
        },
      },
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.5,
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3,
    },

    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-1/fluid-storage-1-reflection.png",
        priority = "extra-high",
        width = 40,
        height = 35,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
  {
    type = "storage-tank",
    name = "cube-fluid-storage-2",
    icon = "__Krastorio2Assets__/icons/entities/fluid-storages/fluid-storage-2.png",
    icon_size = 64,
    icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "not-rotatable"},
    minable = {mining_time = 1, result = "cube-fluid-storage-2"},
    max_health = 2000,
    corpse = "cube-medium-random-pipes-remnant",
    collision_box = {{-2.35, -2.35}, {2.35, 2.35}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fluid_box = {
      base_area = 2000,
      pipe_covers = pipecoverspictures(),
      pipe_connections = {
        {position = {-3, -1}},
        {position = {-3, 0}},
        {position = {-3, 1}},
        {position = {-1, -3}},
        {position = {-0, -3}},
        {position = {1, -3}},
        {position = {3, -1}},
        {position = {3, 0}},
        {position = {3, 1}},
        {position = {-1, 3}},
        {position = {0, 3}},
        {position = {1, 3}},
      },
    },
    window_bounding_box = {{-0.125, 0.6875}, {0.1875, 1.1875}},
    pictures = {
      picture = {
        sheets = {
          {
            filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-2/fluid-storage-2.png",
            priority = "extra-high",
            frames = 1,
            width = 213,
            height = 213,
            hr_version = {
              filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-2/hr-fluid-storage-2.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 426,
              height = 426,
            },
          },
          {
            filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-2/fluid-storage-2-sh.png",
            priority = "extra-high",
            frames = 1,
            width = 213,
            height = 213,
            draw_as_shadow = true,
            hr_version = {
              filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-2/hr-fluid-storage-2-sh.png",
              priority = "extra-high",
              frames = 1,
              scale = 0.5,
              width = 426,
              height = 426,
              draw_as_shadow = true,
            },
          },
        },
      },
      fluid_background = {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
      },
      window_background = {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
      },
      flow_sprite = {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
      },
      gas_flow = {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
        hr_version = {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1,
        },
      },
    },
    flow_length_in_ticks = 360,
    vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
    working_sound = {
      sound = {
        filename = "__base__/sound/storage-tank.ogg",
        volume = 0.5,
      },
      apparent_volume = 1.5,
      max_sounds_per_type = 3,
    },

    water_reflection = {
      pictures = {
        filename = "__Krastorio2Assets__/entities/fluid-storages/fluid-storage-2/fluid-storage-2-reflection.png",
        priority = "extra-high",
        width = 52,
        height = 48,
        shift = util.by_pixel(0, 40),
        variation_count = 1,
        scale = 5,
      },
      rotate = false,
      orientation_to_variation = false,
    },

    circuit_wire_connection_points = circuit_connector_definitions["storage-tank"].points,
    circuit_connector_sprites = circuit_connector_definitions["storage-tank"].sprites,
    circuit_wire_max_distance = 20,
  },
})
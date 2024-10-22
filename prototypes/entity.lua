data:extend {
    {
        type = "simple-entity-with-force",
        name = "balancer-part",
        icon = "__belt-balancer-2__/graphics/icons/balancer.png",
        icon_size = 200,
        flags = { "placeable-neutral", "player-creation" },
        minable = { mining_time = 0.1, result = "balancer-part" },
        max_health = 170,
        corpse = "splitter-remnants",
        resistances = {
            {
                type = "fire",
                percent = 60
            }
        },
        collision_box = { { -0.35, -0.35 }, { 0.35, 0.35 } },
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        collision_mask = { layers = { ground_tile=true, water_tile=true, resource=true, floor=true, item=true, object=true, doodad=true } },
        animations = {
            {
                filename = "__belt-balancer-2__/graphics/entities/balancer.png",
                priority = "high",
                width = 200,
                height = 200,
                frame_count = 16,
                line_length = 8,
                scale = 0.25,
                animation_speed = 0.15,
                shift = util.by_pixel(0, -1)
            }
        },
    },
}

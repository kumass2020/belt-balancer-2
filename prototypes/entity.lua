local no_collision = settings.startup["belt-balancer-remove-collision"].value

local collision_box_dims

if no_collision then
    collision_box_dims = { { 0, 0 }, { 0, 0 } }
else
    collision_box_dims = { { -0.35, -0.35 }, { 0.35, 0.35 } }
end

data:extend {
    {
        type = "simple-entity-with-force",
        name = "balancer-part",
        icon = "__belt-balancer-performance__/graphics/icons/balancer.png",
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
        collision_box = collision_box_dims,
        selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
        render_layer = "object",
        animations = {
            {
                filename = "__belt-balancer-performance__/graphics/entities/balancer.png",
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

if settings.startup["belt-balancer-remove-collision"].value then
  data.raw["simple-entity-with-force"]["balancer-part"].collision_mask = {"item-layer", "object-layer", "water-tile"}
  data.raw["simple-entity-with-force"]["balancer-part"].render_layer = "lower-object"
end
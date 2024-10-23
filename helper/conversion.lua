---@param stack LuaItemStack
---@return SimpleItemStack
function stablize_item_stack(stack)
    local type = stack.prototype.type
    return {
        name = stack.name,
        count = stack.count,
        quality = stack.quality,
        health = stack.health,
        durability = type == "tool" and stack.durability,
        ammo = type == "ammo" and stack.ammo,
        tags = type == "item-with-tags" and stack.tags,
        custom_description = type == "item-with-tags" and stack.custom_description,
        spoil_percent = stack.spoil_percent
    }
end

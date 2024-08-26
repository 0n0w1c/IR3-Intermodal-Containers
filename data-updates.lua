IC = {}
IC.MOD_PREFIX    = "ic-"
IC.ENTITY_PREFIX = IC.MOD_PREFIX.."containerization-machine-"
IC.TECH_PREFIX   = IC.MOD_PREFIX.."containerization-"

if mods["IndustrialRevolution3"] and mods["IntermodalContainers"] then
    data.raw.recipe["ic-container"].ingredients = {
        {"steel-plate-heavy", 1},
        {"steel-rivet", 3},
        {"steel-plate", 4}
    }

    data.raw.technology[IC.TECH_PREFIX.."3"].unit.count = 1000

    if mods["IndustrialRevolution3LoadersStacking"] then
        data.raw.recipe[IC.ENTITY_PREFIX.."1"].ingredients = {
            {"iron-frame-large", 1},
            {"computer-mk1", 1},
            {"ir3-loader", 2},
            {"ir3-beltbox", 1}
        }
        data.raw.recipe[IC.ENTITY_PREFIX.."2"].ingredients = {
            {"steel-frame-large", 1},
            {"computer-mk2", 1},
            {"ir3-fast-loader", 2},
            {"ir3-fast-beltbox", 1}
        }
        data.raw.recipe[IC.ENTITY_PREFIX.."3"].ingredients = {
            {"chromium-frame-large", 1},
            {"computer-mk3", 1},
            {"ir3-express-loader", 2},
            {"ir3-express-beltbox", 1}
        }

        data.raw.technology[IC.TECH_PREFIX.."1"].prerequisites = {"ir3-beltbox"}
        data.raw.technology[IC.TECH_PREFIX.."2"].prerequisites = {"ir3-fast-beltbox", "ir-electronics-2", IC.TECH_PREFIX.."1"}
        data.raw.technology[IC.TECH_PREFIX.."3"].prerequisites = {"ir3-express-beltbox", "ir-electronics-3", IC.TECH_PREFIX.."2"}

    else
        data.raw.recipe[IC.ENTITY_PREFIX.."1"].ingredients = {
            {"iron-frame-large", 1},
            {"computer-mk1", 1},
            {"inserter", 3}
        }
        data.raw.recipe[IC.ENTITY_PREFIX.."2"].ingredients = {
            {"steel-frame-large", 1},
            {"computer-mk2", 1},
            {"fast-inserter", 3}
        }
        data.raw.recipe[IC.ENTITY_PREFIX.."3"].ingredients = {
            {"chromium-frame-large", 1},
            {"computer-mk3", 1},
            {"stack-inserter", 3}
        }

        data.raw.technology[IC.TECH_PREFIX.."1"].prerequisites = {"ir-normal-inserter-capacity-bonus-2", "ir-steel-milestone"}
        data.raw.technology[IC.TECH_PREFIX.."2"].prerequisites = {"ir-inserters-2", "ir-electronics-2", IC.TECH_PREFIX.."1"}
        data.raw.technology[IC.TECH_PREFIX.."3"].prerequisites = {"inserter-capacity-bonus-3", "ir-electronics-3", IC.TECH_PREFIX.."2"}
    end
end

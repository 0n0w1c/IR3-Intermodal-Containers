if mods["IndustrialRevolution3"]
    and mods["IndustrialRevolution3LoadersStacking"]
    and mods["IntermodalContainers"]
then
    data.raw.recipe["ic-container"].ingredients = {
        {"steel-plate-heavy", 1},
        {"steel-rivet", 3},
        {"steel-plate", 4}
    }
    data.raw.recipe["ic-containerization-machine-1"].ingredients = {
        {"iron-frame-large", 1},
        {"computer-mk1", 1},
        {"ir3-loader", 2},
        {"ir3-beltbox", 1}
    }
    data.raw.recipe["ic-containerization-machine-2"].ingredients = {
        {"steel-frame-large", 1},
        {"computer-mk2", 1},
        {"ir3-fast-loader", 2},
        {"ir3-fast-beltbox", 1}
    }
    data.raw.recipe["ic-containerization-machine-3"].ingredients = {
        {"chromium-frame-large", 1},
        {"computer-mk3", 1},
        {"ir3-express-loader", 2},
        {"ir3-express-beltbox", 1}
    }

    data.raw.technology["ic-containerization-1"].prerequisites = {"ir3-beltbox", "ir-electronics-1"}
    data.raw.technology["ic-containerization-2"].prerequisites = {"ir3-fast-beltbox", "ir-electronics-2"}
    data.raw.technology["ic-containerization-3"].prerequisites = {"ir3-express-beltbox", "ir-electronics-3"}
end

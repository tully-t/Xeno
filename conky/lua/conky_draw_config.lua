-- Define your visual elements here
-- For examples, and a complete list on the possible elements and their 
-- properties, go to https://github.com/fisadev/conky-draw/
-- (and be sure to use the latest version)

elements = {
{
    kind = 'ring_graph',
    conky_value = 'freq_g',
    max_value = 4.8,
    min_value = 4.2,
    center = {x = 2341, y = 33},
    radius = 13,

    background_color = 0xFFFFFF,
    background_alpha = 0.5,
    background_thickness = 2,

    bar_color = 0xdddddd,
    bar_alpha = 1,
    bar_thickness = 4,

    start_angle = 0,
    end_angle = -90,
},

{
    kind = 'ring_graph',
    conky_value = 'memperc',
    center = {x = 2341, y = 33},
    radius = 13,

    background_color = 0xFFFFFF,
    background_alpha = 0.5,
    background_thickness = 2,

    bar_color = 0xdddddd,
    bar_alpha = 1,
    bar_thickness = 4,

    start_angle = 180,
    end_angle = 90,
},
}

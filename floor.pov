#version 3.7;
global_settings { assumed_gamma 1.0 }
camera {
    location <0, 10, -10>
    look_at <0, 0, 0>
}
light_source { <0, 10, -10> color rgb <1, 1, 1> }

plane {
    y, 0
    texture {
        pigment {
            marble
            turbulence 0.8
            color_map {
                [0.0 rgb <0.9, 0.9, 0.9>]
                [0.5 rgb <0.2, 0.2, 0.2>]
            }
        }
        finish {
            phong 0.1
            reflection { 0.05 }
        }
    }
}

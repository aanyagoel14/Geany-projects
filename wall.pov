// wall_texture.pov
#version 3.7;
global_settings { assumed_gamma 1.0 }
camera {
    location <0, 0, -10>
    look_at <0, 0, 0>
}
light_source { <0, 10, -10> color rgb <1, 1, 1> }

plane {
    z, 0
    texture {
        pigment {
            bozo
            turbulence 1.0
            color_map {
                [0.0 rgb <0.8, 0.7, 0.6>]
                [1.0 rgb <1, 0.9, 0.8>]
            }
        }
        finish {
            phong 0.1
            reflection { 0.02 }
        }
    }
}

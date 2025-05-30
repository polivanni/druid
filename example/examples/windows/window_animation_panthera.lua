return {
    version = 1,
    format = "json",
    data = {
        nodes = {
        },
        metadata = {
            fps = 60,
            gizmo_steps = {
            },
            gui_path = "/example/examples/windows/window_language/window_language.gui",
            layers = {
                {
                    name = "druid",
                    color = "73E84C",
                },
                {
                    name = "text_bold",
                    color = "90D2F6",
                },
            },
            settings = {
                font_size = 40,
            },
        },
        animations = {
            {
                animation_id = "open",
                animation_keys = {
                    {
                        start_value = 1,
                        node_id = "content",
                        easing = "outsine",
                        property_id = "color_a",
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        node_id = "root",
                        easing = "outsine",
                        property_id = "color_a",
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        node_id = "root",
                        easing = "outsine",
                        property_id = "scale_x",
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        node_id = "root",
                        easing = "outsine",
                        property_id = "scale_y",
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        end_value = 1,
                        node_id = "button_close",
                        easing = "outsine",
                        property_id = "color_a",
                        key_type = "tween",
                    },
                    {
                        end_value = 5,
                        node_id = "root",
                        easing = "outsine",
                        property_id = "rotation_z",
                        key_type = "tween",
                    },
                    {
                        end_value = 1,
                        property_id = "color_a",
                        node_id = "root",
                        easing = "outsine",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        end_value = 1,
                        property_id = "scale_x",
                        node_id = "root",
                        easing = "outsine",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        end_value = 1,
                        property_id = "scale_y",
                        node_id = "root",
                        easing = "outsine",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        start_value = 5,
                        property_id = "rotation_z",
                        node_id = "root",
                        easing = "outback",
                        duration = 0.5,
                        key_type = "tween",
                    },
                    {
                        end_value = 1,
                        duration = 0.25,
                        property_id = "color_a",
                        node_id = "content",
                        easing = "outsine",
                        start_time = 0.15,
                        key_type = "tween",
                    },
                },
                duration = 1,
            },
            {
                animation_id = "close",
                animation_keys = {
                    {
                        start_value = 1,
                        property_id = "color_a",
                        node_id = "button_close",
                        easing = "outsine",
                        duration = 0.15,
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        property_id = "color_a",
                        node_id = "content",
                        easing = "outsine",
                        duration = 0.15,
                        key_type = "tween",
                    },
                    {
                        end_value = -5,
                        property_id = "rotation_z",
                        node_id = "root",
                        easing = "insine",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        property_id = "color_a",
                        node_id = "root",
                        easing = "insine",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        end_value = 0.1,
                        property_id = "scale_x",
                        node_id = "root",
                        easing = "inback",
                        duration = 0.3,
                        key_type = "tween",
                    },
                    {
                        start_value = 1,
                        end_value = 0.1,
                        property_id = "scale_y",
                        node_id = "root",
                        easing = "inback",
                        duration = 0.3,
                        key_type = "tween",
                    },
                },
                duration = 1,
            },
        },
    },
    type = "animation_editor",
}
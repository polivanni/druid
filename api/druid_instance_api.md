# druid.instance API

> at /druid/system/druid_instance.lua

The Druid Factory used to create components

## Functions

- [create_druid_instance](#create_druid_instance)

- [new](#new)
- [final](#final)
- [remove](#remove)
- [update](#update)
- [on_input](#on_input)
- [on_message](#on_message)
- [on_window_event](#on_window_event)
- [set_whitelist](#set_whitelist)
- [set_blacklist](#set_blacklist)
- [new_widget](#new_widget)
- [new_button](#new_button)
- [new_blocker](#new_blocker)
- [new_back_handler](#new_back_handler)
- [new_hover](#new_hover)
- [new_text](#new_text)
- [new_grid](#new_grid)
- [new_scroll](#new_scroll)
- [new_drag](#new_drag)
- [new_swipe](#new_swipe)
- [new_lang_text](#new_lang_text)
- [new_slider](#new_slider)
- [new_input](#new_input)
- [new_data_list](#new_data_list)
- [new_timer](#new_timer)
- [new_progress](#new_progress)
- [new_layout](#new_layout)
- [new_container](#new_container)
- [new_hotkey](#new_hotkey)
- [new_rich_text](#new_rich_text)
- [new_rich_input](#new_rich_input)



### create_druid_instance

---
```lua
instance.create_druid_instance(context, [style])
```

Druid class constructor which used to create a Druid's components

- **Parameters:**
	- `context` *(table)*: Druid context. Usually it is self of gui script
	- `[style]` *(table?)*: Druid style table

- **Returns:**
	- `instance` *(druid.instance)*: The new Druid instance

### new

---
```lua
instance:new(component, ...)
```

Create new Druid component instance

- **Parameters:**
	- `component` *(<T:druid.component>)*: The component class to create
	- `...` *(...)*: vararg

- **Returns:**
	- `instance` *(<T:druid.component>)*: The new ready to use component

### final

---
```lua
instance:final()
```

Call this in gui_script final function.

### remove

---
```lua
instance:remove(component)
```

Remove created component from Druid instance.
Component `on_remove` function will be invoked, if exist.

- **Parameters:**
	- `component` *(<T:druid.component>)*: Component instance

- **Returns:**
	- `is_removed` *(boolean)*: True if component was removed

### update

---
```lua
instance:update(dt)
```

Call this in gui_script update function.

- **Parameters:**
	- `dt` *(number)*: Delta time

### on_input

---
```lua
instance:on_input(action_id, action)
```

Call this in gui_script on_input function.

- **Parameters:**
	- `action_id` *(hash)*: Action_id from on_input
	- `action` *(table)*: Action from on_input

- **Returns:**
	- `is_input_consumed` *(boolean)*: The boolean value is input was consumed

### on_message

---
```lua
instance:on_message(message_id, message, sender)
```

Call this in gui_script on_message function.

- **Parameters:**
	- `message_id` *(hash)*: Message_id from on_message
	- `message` *(table)*: Message from on_message
	- `sender` *(url)*: Sender from on_message

### on_window_event

---
```lua
instance:on_window_event(window_event)
```

Called when the window event occurs

- **Parameters:**
	- `window_event` *(number)*: The window event

### set_whitelist

---
```lua
instance:set_whitelist(whitelist_components)
```

Set whitelist components for input processing.
If whitelist is not empty and component not contains in this list,
component will be not processed on input step

- **Parameters:**
	- `whitelist_components` *(table|druid.component[])*: The array of component to whitelist

- **Returns:**
	- `self` *(druid.instance)*: The Druid instance

### set_blacklist

---
```lua
instance:set_blacklist(blacklist_components)
```

Set blacklist components for input processing.
If blacklist is not empty and component contains in this list,
component will be not processed on input step DruidInstance

- **Parameters:**
	- `blacklist_components` *(table|druid.component[])*: The array of component to blacklist

- **Returns:**
	- `self` *(druid.instance)*: The Druid instance

### new_widget

---
```lua
instance:new_widget(widget, [template], [nodes], ...)
```

Create new Druid widget instance

- **Parameters:**
	- `widget` *(<T:druid.component>)*: The widget class to create
	- `[template]` *(string|nil)*: The template name used by widget
	- `[nodes]` *(string|node|table<hash, node>|nil)*: The nodes table from gui.clone_tree or prefab node to use for clone or node id to clone
	- `...` *(...)*: vararg

- **Returns:**
	- `widget` *(<T:druid.component>)*: The new ready to use widget

### new_button

---
```lua
instance:new_button(node, [callback], [params], [anim_node])
```

Create Button component

- **Parameters:**
	- `node` *(string|node)*: The node_id or gui.get_node(node_id)
	- `[callback]` *(function|event|nil)*: Button callback
	- `[params]` *(any)*: Button callback params
	- `[anim_node]` *(string|node|nil)*: Button anim node (node, if not provided)

- **Returns:**
	- `button` *(druid.button)*: The new button component

### new_blocker

---
```lua
instance:new_blocker(node)
```

Create Blocker component

- **Parameters:**
	- `node` *(string|node)*: The node_id or gui.get_node(node_id)

- **Returns:**
	- `blocker` *(druid.blocker)*: The new blocker component

### new_back_handler

---
```lua
instance:new_back_handler([callback], [params])
```

Create BackHandler component

- **Parameters:**
	- `[callback]` *(function|event|nil)*: The callback(self, custom_args) to call on back event
	- `[params]` *(any)*: Callback argument

- **Returns:**
	- `back_handler` *(druid.back_handler)*: The new back handler component

### new_hover

---
```lua
instance:new_hover(node, [on_hover_callback], [on_mouse_hover_callback])
```

Create Hover component

- **Parameters:**
	- `node` *(string|node)*: The node_id or gui.get_node(node_id)
	- `[on_hover_callback]` *(function|nil)*: Hover callback
	- `[on_mouse_hover_callback]` *(function|nil)*: Mouse hover callback

- **Returns:**
	- `hover` *(druid.hover)*: The new hover component

### new_text

---
```lua
instance:new_text(node, [value], [adjust_type])
```

Create Text component

- **Parameters:**
	- `node` *(string|druid.text|node)*: The node_id or gui.get_node(node_id)
	- `[value]` *(string|nil)*: Initial text. Default value is node text from GUI scene.
	- `[adjust_type]` *(string|nil)*: Adjust type for text. By default is DOWNSCALE. Look const.TEXT_ADJUST for reference

- **Returns:**
	- `text` *(druid.text)*: The new text component

### new_grid

---
```lua
instance:new_grid(parent_node, item, [in_row])
```

Create Grid component

- **Parameters:**
	- `parent_node` *(string|node)*: The node_id or gui.get_node(node_id). Parent of all Grid items.
	- `item` *(string|node)*: Item prefab. Required to get grid's item size. Can be adjusted separately.
	- `[in_row]` *(number|nil)*: How many nodes in row can be placed

- **Returns:**
	- `grid` *(druid.grid)*: The new grid component

### new_scroll

---
```lua
instance:new_scroll(view_node, content_node)
```

Create Scroll component

- **Parameters:**
	- `view_node` *(string|node)*: The node_id or gui.get_node(node_id). Will used as user input node.
	- `content_node` *(string|node)*: The node_id or gui.get_node(node_id). Will used as scrollable node inside view_node.

- **Returns:**
	- `scroll` *(druid.scroll)*: The new scroll component

### new_drag

---
```lua
instance:new_drag(node, [on_drag_callback])
```

Create Drag component

- **Parameters:**
	- `node` *(string|node)*: The node_id or gui.get_node(node_id). Will used as user input node.
	- `[on_drag_callback]` *(function|nil)*: Callback for on_drag_event(self, dx, dy)

- **Returns:**
	- `drag` *(druid.drag)*: The new drag component

### new_swipe

---
```lua
instance:new_swipe(node, [on_swipe_callback])
```

Create Swipe component

- **Parameters:**
	- `node` *(string|node)*: The node_id or gui.get_node(node_id). Will used as user input node.
	- `[on_swipe_callback]` *(function|nil)*: Swipe callback for on_swipe_end event

- **Returns:**
	- `swipe` *(druid.swipe)*: The new swipe component

### new_lang_text

---
```lua
instance:new_lang_text(node, [locale_id], [adjust_type])
```

Create LangText component

- **Parameters:**
	- `node` *(string|node)*: The_node id or gui.get_node(node_id)
	- `[locale_id]` *(string|nil)*: Default locale id or text from node as default
	- `[adjust_type]` *(string|nil)*: Adjust type for text node. Default: "downscale"

- **Returns:**
	- `lang_text` *(druid.lang_text)*: The new lang text component

### new_slider

---
```lua
instance:new_slider(pin_node, end_pos, [callback])
```

Create Slider component

- **Parameters:**
	- `pin_node` *(string|node)*: The_node id or gui.get_node(node_id).
	- `end_pos` *(vector3)*: The end position of slider
	- `[callback]` *(function|nil)*: On slider change callback

- **Returns:**
	- `slider` *(druid.slider)*: The new slider component

### new_input

---
```lua
instance:new_input(click_node, text_node, [keyboard_type])
```

Create Input component

- **Parameters:**
	- `click_node` *(string|node)*: Button node to enabled input component
	- `text_node` *(string|druid.text|node)*: Text node what will be changed on user input
	- `[keyboard_type]` *(number|nil)*: Gui keyboard type for input field

- **Returns:**
	- `input` *(druid.input)*: The new input component

### new_data_list

---
```lua
instance:new_data_list(druid_scroll, druid_grid, create_function)
```

Create DataList component

- **Parameters:**
	- `druid_scroll` *(druid.scroll)*: The Scroll instance for Data List component
	- `druid_grid` *(druid.grid)*: The Grid instance for Data List component
	- `create_function` *(function)*: The create function callback(self, data, index, data_list). Function should return (node, [component])

- **Returns:**
	- `data_list` *(druid.data_list)*: The new data list component

### new_timer

---
```lua
instance:new_timer(node, [seconds_from], [seconds_to], [callback])
```

Create Timer component

- **Parameters:**
	- `node` *(string|node)*: Gui text node
	- `[seconds_from]` *(number|nil)*: Start timer value in seconds
	- `[seconds_to]` *(number|nil)*: End timer value in seconds
	- `[callback]` *(function|nil)*: Function on timer end

- **Returns:**
	- `timer` *(druid.timer)*: The new timer component

### new_progress

---
```lua
instance:new_progress(node, key, [init_value])
```

Create Progress component

- **Parameters:**
	- `node` *(string|node)*: Progress bar fill node or node name
	- `key` *(string)*: Progress bar direction: "x" or "y"
	- `[init_value]` *(number|nil)*: Initial value of progress bar. Default: 1

- **Returns:**
	- `progress` *(druid.progress)*: The new progress component

### new_layout

---
```lua
instance:new_layout(node, [mode])
```

Create Layout component

- **Parameters:**
	- `node` *(string|node)*: The_node id or gui.get_node(node_id).
	- `[mode]` *(string|nil)*: vertical|horizontal|horizontal_wrap. Default: horizontal

- **Returns:**
	- `layout` *(druid.layout)*: The new layout component

### new_container

---
```lua
instance:new_container(node, [mode], [callback])
```

Create Container component

- **Parameters:**
	- `node` *(string|node)*: The_node id or gui.get_node(node_id).
	- `[mode]` *(string|nil)*: Layout mode
	- `[callback]` *(fun(self: druid.container, size: vector3)|nil)*: Callback on size changed

- **Returns:**
	- `container` *(druid.container)*: The new container component

### new_hotkey

---
```lua
instance:new_hotkey(keys_array, [callback], [callback_argument])
```

Create Hotkey component

- **Parameters:**
	- `keys_array` *(string|string[])*: Keys for trigger action. Should contains one action key and any amount of modificator keys
	- `[callback]` *(function|event|nil)*: The callback function
	- `[callback_argument]` *(any)*: The argument to pass into the callback function

- **Returns:**
	- `hotkey` *(druid.hotkey)*: The new hotkey component

### new_rich_text

---
```lua
instance:new_rich_text(text_node, [value])
```

Create RichText component.

- **Parameters:**
	- `text_node` *(string|node)*: The text node to make Rich Text
	- `[value]` *(string|nil)*: The initial text value. Default will be gui.get_text(text_node)

- **Returns:**
	- `rich_text` *(druid.rich_text)*: The new rich text component

### new_rich_input

---
```lua
instance:new_rich_input(template, [nodes])
```

Create RichInput component.
As a template please check rich_input.gui layout.

- **Parameters:**
	- `template` *(string)*: The template string name
	- `[nodes]` *(table|nil)*: Nodes table from gui.clone_tree

- **Returns:**
	- `rich_input` *(druid.rich_input)*: The new rich input component


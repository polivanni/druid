# druid.scroll API

> at /druid/base/scroll.lua

Basic Druid scroll component. Handles all scrolling behavior in Druid GUI.

### Setup
Create scroll component with druid: `druid:new_scroll(view_node, content_node)`

### Notes
- View_node is the static part that captures user input and recognizes scrolling touches
- Content_node is the dynamic part that will change position according to the scroll system
- Initial scroll size will be equal to content_node size
- The initial view box will be equal to view_node size
- Scroll by default style has inertia and extra size for stretching effect
- You can setup "points of interest" to make scroll always center on closest point
- Scroll events:
-   - on_scroll(self, position): On scroll move callback
-   - on_scroll_to(self, position, is_instant): On scroll_to function callback
-   - on_point_scroll(self, item_index, position): On scroll_to_index function callback
- Multitouch is required for scroll. Scroll correctly handles touch_id swap while dragging

## Functions

- [init](#init)
- [scroll_to](#scroll_to)
- [scroll_to_index](#scroll_to_index)
- [scroll_to_percent](#scroll_to_percent)
- [get_percent](#get_percent)
- [set_size](#set_size)
- [set_view_size](#set_view_size)
- [update_view_size](#update_view_size)
- [set_inert](#set_inert)
- [is_inert](#is_inert)
- [set_extra_stretch_size](#set_extra_stretch_size)
- [get_scroll_size](#get_scroll_size)
- [set_points](#set_points)
- [set_horizontal_scroll](#set_horizontal_scroll)
- [set_vertical_scroll](#set_vertical_scroll)
- [is_node_in_view](#is_node_in_view)
- [bind_grid](#bind_grid)
- [set_click_zone](#set_click_zone)

## Fields

- [node](#node)
- [click_zone](#click_zone)
- [on_scroll](#on_scroll)
- [on_scroll_to](#on_scroll_to)
- [on_point_scroll](#on_point_scroll)
- [view_node](#view_node)
- [view_border](#view_border)
- [content_node](#content_node)
- [view_size](#view_size)
- [position](#position)
- [target_position](#target_position)
- [available_pos](#available_pos)
- [available_size](#available_size)
- [drag](#drag)
- [selected](#selected)
- [is_animate](#is_animate)
- [style](#style)
- [druid](#druid)
- [hover](#hover)
- [points](#points)
- [available_pos_extra](#available_pos_extra)
- [available_size_extra](#available_size_extra)



### init

---
```lua
scroll:init(view_node, content_node)
```

The Scroll constructor

- **Parameters:**
	- `view_node` *(string|node)*: GUI view scroll node - the static part that captures user input
	- `content_node` *(string|node)*: GUI content scroll node - the dynamic part that will change position

### scroll_to

---
```lua
scroll:scroll_to(point, [is_instant])
```

Start scroll to target point.

- **Parameters:**
	- `point` *(vector3)*: Target point
	- `[is_instant]` *(boolean|nil)*: Instant scroll flag

### scroll_to_index

---
```lua
scroll:scroll_to_index(index, [skip_cb])
```

Scroll to item in scroll by point index.

- **Parameters:**
	- `index` *(number)*: Point index
	- `[skip_cb]` *(boolean|nil)*: If true, skip the point callback

### scroll_to_percent

---
```lua
scroll:scroll_to_percent(percent, [is_instant])
```

Start scroll to target scroll percent

- **Parameters:**
	- `percent` *(vector3)*: target percent
	- `[is_instant]` *(boolean|nil)*: instant scroll flag

### get_percent

---
```lua
scroll:get_percent()
```

Return current scroll progress status.
 Values will be in [0..1] interval

- **Returns:**
	- `New` *(vector3)*: vector with scroll progress values

### set_size

---
```lua
scroll:set_size(size, [offset])
```

Set scroll content size.
 It will change content gui node size

- **Parameters:**
	- `size` *(vector3)*: The new size for content node
	- `[offset]` *(vector3|nil)*: Offset value to set, where content is starts

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### set_view_size

---
```lua
scroll:set_view_size(size)
```

Set new scroll view size in case the node size was changed.

- **Parameters:**
	- `size` *(vector3)*: The new size for view node

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### update_view_size

---
```lua
scroll:update_view_size()
```

Refresh scroll view size, used when view node size is changed

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### set_inert

---
```lua
scroll:set_inert(state)
```

Enable or disable scroll inert
 If disabled, scroll through points (if exist)
 If no points, just simple drag without inertion

- **Parameters:**
	- `state` *(boolean)*: Inert scroll state

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### is_inert

---
```lua
scroll:is_inert()
```

Return if scroll have inertion

- **Returns:**
	- `is_inert` *(boolean)*: If scroll have inertion

### set_extra_stretch_size

---
```lua
scroll:set_extra_stretch_size([stretch_size])
```

Set extra size for scroll stretching
 Set 0 to disable stretching effect

- **Parameters:**
	- `[stretch_size]` *(number|nil)*: Size in pixels of additional scroll area

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### get_scroll_size

---
```lua
scroll:get_scroll_size()
```

Return vector of scroll size with width and height.

- **Returns:**
	- `Available` *(vector3)*: scroll size

### set_points

---
```lua
scroll:set_points(points)
```

Set points of interest.
 Scroll will always centered on closer points

- **Parameters:**
	- `points` *(table)*: Array of vector3 points

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### set_horizontal_scroll

---
```lua
scroll:set_horizontal_scroll(state)
```

Lock or unlock horizontal scroll

- **Parameters:**
	- `state` *(boolean)*: True, if horizontal scroll is enabled

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### set_vertical_scroll

---
```lua
scroll:set_vertical_scroll(state)
```

Lock or unlock vertical scroll

- **Parameters:**
	- `state` *(boolean)*: True, if vertical scroll is enabled

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### is_node_in_view

---
```lua
scroll:is_node_in_view(node)
```

Check node if it visible now on scroll.
 Extra border is not affected. Return true for elements in extra scroll zone

- **Parameters:**
	- `node` *(node)*: The node to check

- **Returns:**
	- `True` *(boolean)*: if node in visible scroll area

### bind_grid

---
```lua
scroll:bind_grid([grid])
```

Bind the grid component (Static or Dynamic) to recalculate
 scroll size on grid changes

- **Parameters:**
	- `[grid]` *(druid.grid|nil)*: Druid grid component

- **Returns:**
	- `self` *(druid.scroll)*: Current scroll instance

### set_click_zone

---
```lua
scroll:set_click_zone(node)
```

Strict drag scroll area. Useful for
 restrict events outside stencil node

- **Parameters:**
	- `node` *(string|node)*: Gui node


## Fields
<a name="node"></a>
- **node** (_node_): The root node

<a name="click_zone"></a>
- **click_zone** (_node_): Optional click zone to restrict scroll area

<a name="on_scroll"></a>
- **on_scroll** (_event_): fun(self: druid.scroll, position: vector3) Triggered on scroll move

<a name="on_scroll_to"></a>
- **on_scroll_to** (_event_): fun(self: druid.scroll, target: vector3, is_instant: boolean) Triggered on scroll_to

<a name="on_point_scroll"></a>
- **on_point_scroll** (_event_): fun(self: druid.scroll, index: number, point: vector3) Triggered on scroll_to_index

<a name="view_node"></a>
- **view_node** (_node_): The scroll view node (static part)

<a name="view_border"></a>
- **view_border** (_vector4_): The scroll view borders

<a name="content_node"></a>
- **content_node** (_node_): The scroll content node (moving part)

<a name="view_size"></a>
- **view_size** (_vector3_): Size of the view node

<a name="position"></a>
- **position** (_vector3_): Current scroll position

<a name="target_position"></a>
- **target_position** (_vector3_): Target scroll position for animations

<a name="available_pos"></a>
- **available_pos** (_vector4_): Available content position (min_x, max_y, max_x, min_y)

<a name="available_size"></a>
- **available_size** (_vector3_): Size of available positions (width, height, 0)

<a name="drag"></a>
- **drag** (_druid.drag_): The drag component instance

<a name="selected"></a>
- **selected** (_number_): Current selected point of interest index

<a name="is_animate"></a>
- **is_animate** (_boolean_): True if scroll is animating

<a name="style"></a>
- **style** (_druid.scroll.style_): Component style parameters

<a name="druid"></a>
- **druid** (_druid.instance_): The Druid Factory used to create components

<a name="hover"></a>
- **hover** (_druid.hover_): The component for handling hover events on a node

<a name="points"></a>
- **points** (_table_)

<a name="available_pos_extra"></a>
- **available_pos_extra** (_vector4_)

<a name="available_size_extra"></a>
- **available_size_extra** (_vector3_)


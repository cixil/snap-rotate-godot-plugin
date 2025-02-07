# Snap Rotate
#### A Godot plugin to make rotating to fixed values easy
Snap Rotate adds a panel of buttons below the Rotation slider and the scale vector in the inspector, making it easy to click and rotate to a specified degree. It applies to all 2D and Control nodes. 

![usage gif](./gifs/usage.gif)

## Customization
The degrees can also be customized, simply edit the array on line 6 of `addons/snap_rotate/rotate_panel.gd` after downloading.

```gdscript
## Edit this array and the new values will automatically be added
## to the inspector in the order they are arranged.
var rotation_values:Array[int] = [0, 90, 180, 270]
```

## Installation
Download directly from the [Asset Library](https://godotengine.org/asset-library/asset/3666) in your Godot Editor, or copy the `snap_rotate` folder from this repo into your project's `/addons` folder, then enable it in the project settings.

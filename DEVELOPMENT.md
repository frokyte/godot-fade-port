# FADE Port — Development Notes

## Project goal

This repository is an independent Godot-based recreation of selected visual and
workflow ideas from the FADE editor reference. It is not a copy of proprietary
engine code or assets. The current direction uses a restrained dark interface,
compact property rows, clear axis colors, subtle selection states, and low-noise
panel styling.

## Implemented

- Added a Godot editor plugin at `addons/fade_editor/`.
- Registered a custom `EditorInspectorPlugin` for `Node3D` objects.
- Added a compact three-column XYZ editor for the `position`,
  `rotation_degrees`, and `scale` properties.
- Used red, green, and blue axis labels to make vector components easier to scan.
- Added an initial Godot `Theme` resource at `themes/fade-dark.tres`.

## Not implemented yet

- A full editor-wide theme matching the reference.
- Custom dock layouts, viewport toolbars, scene tree, filesystem, and bottom panel.
- Custom icons, typography, spacing, focus, hover, pressed, and selection states.
- Additional inspector controls for colors, enums, resources, arrays, and nested
  properties.
- A settings UI for switching FADE styling on and off.
- Automated tests and validation inside the Godot editor.

## Next steps

1. Verify the plugin and custom property editor in the target Godot version.
2. Expand the theme resource with named colors, constants, and StyleBox resources.
3. Style the Inspector, Scene tree, FileSystem dock, tabs, menus, and bottom panel.
4. Add dedicated property editors only where they improve on Godot's native UX.
5. Add screenshots and a small demo project to make visual regressions easy to spot.
6. Document compatibility and installation steps after testing on a clean project.

## Installation (initial)

1. Copy the `addons/fade_editor` directory into a Godot project.
2. Open **Project → Project Settings → Plugins**.
3. Enable **FADE Editor**.

The theme resource is not automatically installed globally. Godot editor theme
selection is configured separately in the editor settings; the theme resource
needs further work before it should be considered a finished editor theme.

## Validation status

The files in this initial commit were authored against the Godot 4.x editor API,
but have not yet been opened or tested in a running Godot editor. Treat this as
an early implementation, not a release-ready addon.

# FADE Port — Development Notes

## Project identity

**godot-fade-port is the official Godot port of FADE by Frokyte Games, made by
the same creators at Frokyte Central.**

FADE Engine itself is proprietary. This repository is not a publication of the
engine's source code and does not attempt to reproduce or redistribute its
proprietary implementation. It is a Godot addon and editor theme that brings
selected FADE design language and workflows into the Godot editor.

The goal is to make Godot feel a little more like FADE while remaining a native
Godot project addon that users can install without replacing their engine.

## Implemented

- Added the Godot editor addon at `addons/fade_editor/`.
- Registered a custom `EditorInspectorPlugin` for `Node3D` objects.
- Added a compact three-column XYZ editor for `position`,
  `rotation_degrees`, and `scale`.
- Used red, green, and blue axis labels to make vector components easier to scan.
- Added the initial FADE dark Godot Theme resource inside the addon at
  `addons/fade_editor/themes/fade-dark.tres`.
- Added a GitHub Actions release workflow. When a version tag matching
  `v*` is pushed, it packages the addon folder and attaches the ZIP to a
  GitHub Release.

## Release package layout

The release archive is deliberately structured for direct installation:

```text
FADE-Godot-vX.Y.Z.zip
└── fade_editor/
    ├── plugin.cfg
    ├── plugin.gd
    ├── inspector/
    └── themes/
        └── fade-dark.tres
```

Users extract the archive and move the resulting `fade_editor` folder directly
into their Godot project's `res://addons/` directory. The final project path
must be `res://addons/fade_editor/plugin.cfg`.

The theme ships inside the same folder as the addon so the release is a single,
self-contained download. The repository's `addons/` folder is the source of
truth for the release package.

## Not implemented yet

- A complete editor-wide visual match to FADE.
- Custom dock layouts, viewport toolbars, scene tree, filesystem, and bottom panel.
- Full typography, icons, spacing, focus, hover, pressed, and selection states.
- Additional inspector controls for colors, enums, resources, arrays, and nested
  properties.
- A polished setup flow for selecting the custom editor theme.
- Automated tests and validation inside the Godot editor.
- A tagged GitHub Release and a tested downloadable ZIP.

## Next steps

1. Verify the addon and custom property editor in the target Godot version.
2. Expand the theme resource with the editor theme items required for a closer
   FADE appearance.
3. Confirm the theme loads through Godot's editor custom-theme setting.
4. Style the Inspector, Scene tree, FileSystem dock, tabs, menus, and bottom panel.
5. Add dedicated property editors only where they improve on Godot's native UX.
6. Add screenshots and a small demo project to make visual regressions easy to spot.
7. Test the release workflow by pushing a version tag and installing its ZIP into
   a clean Godot project.

## Installation from the repository

1. Copy the `addons/fade_editor` directory into your Godot project's
   `res://addons/` directory.
2. Open **Project → Project Settings → Plugins**.
3. Enable **FADE Editor**.

The theme resource is located at
`res://addons/fade_editor/themes/fade-dark.tres`. Godot's editor custom theme is
configured separately in **Editor → Editor Settings → Interface → Theme**. The
theme file is an early work in progress and is not yet a complete visual
replacement for every part of the editor.

## Validation status

The addon, theme, and release workflow have been authored but have not yet been
validated in a running Godot editor or through a real tagged GitHub Release.
Treat the current state as an early development build, not a release-ready
version.

# godot-fade-port

An independent port of selected FADE Engine editor design ideas to Godot.

The current prototype focuses on a compact, Unreal-inspired dark inspector.
It does not contain proprietary FADE source code or assets.

## Current status

- **Early prototype**
- Godot 4.x editor plugin
- Custom XYZ property editor for selected `Node3D` transform properties
- Initial dark theme resource with base panel, button, input, and tree styling

## Install the plugin

1. Copy `addons/fade_editor` into your Godot project.
2. Open **Project → Project Settings → Plugins**.
3. Enable **FADE Editor**.

## Theme

The starting theme resource is `themes/fade-dark.tres`. It is a work in
progress. It is not yet a complete editor-wide replacement and may need
additional theme item overrides for the exact Godot version and editor layout.

## Development

See [DEVELOPMENT.md](DEVELOPMENT.md) for implemented work, known gaps, validation
status, and the roadmap.

<h1 align="center">Sprett 1.0.0</h1>

<p align="center">Sprite drawing wrapper for GameMaker LTS 2026 by <a href="https://alub.dev/" target="_blank">Alun Jones</a>.</p>

<!---------------------------------[ Buttons ]---------------------------------->

<div align = center>

[![Badge License]][License]   [![Badge Download]][Download]

</div>

<!---------------------------------------------------------------------------->

[License]: LICENSE
[Download]: https://github.com/AlubJ/Sprett/releases/latest
[Documentation]: https://docs.alub.dev/InputTouch


<!---------------------------------[ Badges ]---------------------------------->

[Badge License]: https://img.shields.io/badge/License-MIT-blue
[Badge Download]: https://img.shields.io/badge/Download-.yymps-red
[Badge Documentation]: https://img.shields.io/badge/Read%20the-Docs-purple

<!---------------------------------[ Content ]---------------------------------->

---

Sprett is a library that provides wrapper functions for all sprite drawing to allow you to draw sprites using the image speed set by the sprite. The sprite editor allows you to set an image speed when drawing which works for instances but not when drawing a sprite with the sub image parameter set to `-1`, which will draw the sprite at whatever fps the game is running at. This library fixes this by using a negative sub image as a positive multiplier for the speed set in the sprite editor. If the sprite has a speed of 30fps, a sub image of `-1` will draw that sprite at 30fps and a sub image of `-0.5` will draw that sprite at 15fps and so on.

# Installing
To install this library, [download the latest .yymps](https://github.com/AlubJ/Sprett/releases/latest) and import into GameMaker using `Tools >> Import Local Package`. Just import all the scripts and you're set!

# Usage
The wrapper functions follow the convention of `SprettDraw*` and mimics the usage of their respective draw function. `SprettDraw` will mimic `draw_sprite`, `SprettDrawStretchedExt` will mimic `draw_sprite_stretched_ext` and so on. The only difference is that a negative sub image value will be treated as a positive speed relative to the sprite speed set in the sprite editor.

## Functions
| **Sprett** | **GameMaker** |
|---|---|
| `SprettDraw` | `draw_sprite` |
| `SprettDrawExt` | `draw_sprite_ext` |
| `SprettDrawGeneral` | `draw_sprite_general` |
| `SprettDrawPart` | `draw_sprite_part` |
| `SprettDrawPartExt` | `draw_sprite_part_ext` |
| `SprettDrawPos` | `draw_sprite_pos` |
| `SprettDrawStretched` | `draw_sprite_stretched` |
| `SprettDrawStretchedExt` | `draw_sprite_stretched_ext` |
| `SprettDrawTiled` | `draw_sprite_tiled` |
| `SprettDrawTiledExt` | `draw_sprite_tiled_ext` |

# Performance Considerations
During testing, I could draw about 5,000 individually animating sprites at a comfortable FPS. Any sprites that get drawn without animating will pass through to the normal `draw_sprite_*` functions and will skip the image index evaluation. If you don't need sprite animation, you should use the regular drawing functions to skip the small overhead that these functions incur.

# Credit
This library was inspired by [this helper function](https://discord.com/channels/724320164371497020/1528123129493455030/1528123129493455030) by [Endy](https://bsky.app/profile/did:plc:fne37sdslc33kstnydbfsnd2).
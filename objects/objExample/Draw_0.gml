// This sprite will be drawn at 2x the speed of what the sprite properties is set to. In
// the sprite properties, this is set to 2 fps, so this sprite will draw at 4 fps instead.
SprettDraw(sprTest, -2, 100, 100);
SprettDrawExt(sprTest, -1, 200, 100, 0.89, 1.2, 60, c_aqua, 0.8);
SprettDrawGeneral(sprTest, -0.5, 2, 2, 40, 40, 300, 100, 1, 1, 0, c_red, c_white, c_aqua, c_green, 1);
SprettDrawPart(sprTest, -0.8, 2, 2, 40, 40, 400, 100);
SprettDrawPartExt(sprTest, -0.8, 2, 2, 40, 40, 500, 100, 1.2, 1.2, c_aqua, 0.7);
SprettDrawPos(sprTest, -1, 100, 200, 150, 200, 120, 250, 140, 240, 1);
SprettDrawStretched(sprTest, -1.2, 200, 200, 96, 96);
SprettDrawStretchedExt(sprTest, -1.3, 300, 200, 96, 96, c_aqua, 1);

// These functions draw over the entire room so
if (keyboard_check(vk_space))
{
    SprettDrawTiled(sprTest, -0.5, 400, 200);
}

if (keyboard_check(vk_lshift))
{
    SprettDrawTiledExt(sprTest, -0.5, 400, 200, 1, 1, c_aqua, 1);
}
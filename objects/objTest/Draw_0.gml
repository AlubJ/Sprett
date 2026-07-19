random_set_seed(500491);

repeat (10000)
{
    SprettDraw(sprTest, random_range(-10, -0.5), irandom(room_width), irandom(room_height));
}
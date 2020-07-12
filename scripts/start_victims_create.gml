///start_victims_create()
start_victims_count = 4 * global.r_scale  + irandom(5 * global.r_scale/global.level_difficult);

for (i = 1; i < start_victims_count; i += 1)
{
    new_x = random(room_width) - 10; 
    new_y = random(room_height) - 10;

    pick = array_of_victims[irandom(array_length_1d(array_of_victims)-1)];
    instance_create(new_x, new_y, pick);
}

///Статы Героя
draw_set_colour(c_black);
draw_set_alpha(0.99);
//draw_rectangle(0, 0, room_width, room_height, 0);
//draw_text_ext(view_xview[0] + 48 + 5, view_yview[0] + 150, skill_caption + chr(13) + skill_description, 20, view_wview[0] - (48)*2);
draw_roundrect(view_xview[0] + 48 + 0, view_yview[0] + 32 + 32 * 3 + 16, view_xview[0] + view_wview[0] - 48 - 0,  view_yview[0] + view_hview[0] - 80 + 32 * 2, 0);
//draw_roundrect(view_xview[0] + 48 + 0, view_yview[0] + 32 + 32 * 0 + 0, view_hview[0] - 48, view_hview[0] - 80 + 32 * 2, 0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_text_ext(view_xview[0] + 48 + 5, view_yview[0] + 150, 
'Health: ' + string(health) + chr(13) + 
'hero_speed: ' + string(global.hero_base_speed) + chr(13) + 
'hero_eat_health_regen: ' + string(global.hero_eat_base_health_regen) + chr(13) +
'hero_attack_speed: ' + string(global.hero_attack_speed) + chr(13) +
'hero_damage: ' + string(global.hero_damage) + chr(13) +
'hero_eating_base_time: ' + string(global.hero_eating_base_time) + chr(13) +
'hero_health_lost: ' + string(global.hero_health_lost) + chr(13) + 
'global.game_time: ' + string(global.game_time) + chr(13) + 
'global.level_difficult: ' + string(global.level_difficult) + chr(13)
, 20, view_wview[0] - (48)*2);
/*
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 15, 'Health: ' + string(health));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 30, 'hero_speed: ' + string(global.hero_speed));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 45, 'hero_eat_health_regen: ' + string(global.hero_eat_health_regen));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 60, 'hero_attack_speed: ' + string(global.hero_attack_speed));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 75, 'hero_damage: ' + string(global.hero_damage));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 90, 'hero_eating_base_time: ' + string(global.hero_eating_base_time));
draw_text(view_xview[0] + 48 + 5, view_yview[0] + 32 + 32 * 4 + 105, 'hero_health_lost: ' + string(global.hero_health_lost));
*/

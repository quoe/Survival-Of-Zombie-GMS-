//argument0 - какой параметр улучшается
//argument1 - знак меньше "<" в стравнении
//argument2 - предел улучшения
if argument1 == true
    {
    if argument0 > argument2 
        {
        skill_enabled = false;
        exit;
        }
    }
else
if argument1 == false
    {
    if argument0 < argument2
        {
        skill_enabled = false;
        exit;
        }
    }
    
skill_mutation_bonus = sign(ability_for_click)*(random(global.skill_mutation * abs(ability_for_click)/1));
if abs(skill_mutation_bonus) >= 0.001
    {
    global.hero_skill_mutated = true;
    global.hero_skill_mutated_value = skill_mutation_bonus;
    }
else
    global.hero_skill_mutated = false;
    
argument0 += ability_for_click + skill_mutation_bonus;
global.game_skills_pause = false;
global.pause = false;
instance_activate_all();
global.hero_target_x = Hero.x;
global.hero_target_y = Hero.y;
global.skill_selected = true;   //Выбрана способность - true
instance_deactivate_object(SKILL_MENU);

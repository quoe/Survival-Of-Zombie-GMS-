//obj_Move_script
var motion_x, motion_y, motion_speed, motion_dir, deviation_max, deviation_max_step; 
motion_x       = 0;  /// Смещение героя по осям Ox и Oy 
motion_y       = 0; 
motion_speed   = 5;  // Скорость движениz (константа) 
motion_dir     = 0;  // Направление движения 
deviation_max  = 90; // Максимальное отклонение (константа) 
deviation_step = 5;  // Шаг изменения направление 

if argument0 <> -1
    motion_speed = argument0;
    
/// Задаём смещение героя, чтобы определить направление движения. 
if (keyboard_check(ord('W'))) 
      motion_y = -1; 
if (keyboard_check(ord('A'))) 
      motion_x = -1; 
if (keyboard_check(ord('S'))) 
      motion_y = 1; 
if (keyboard_check(ord('D'))) 
      motion_x = 1; 

/// Если это возможно, сдвигаем героя. 
if (motion_x != 0 || motion_y != 0) // Если игрок двигается, то... 
{ 
      var lx, ly; 
      movement_dir = point_direction(0, 0, motion_x, motion_y); // Определяем направление движения героя, от (0, 0), до точки смещения (к примеру, (-1, 0)). 
        
      for (i = 0; i < deviation_max; i += deviation_step) // Проверяем все позици в изначальном направлении с заданным отклонением. 
      { 
          lx = lengthdir_x(motion_speed, movement_dir + i); // Вычисляем позицию в текущем направлении (i - отклонение). 
          ly = lengthdir_y(motion_speed, movement_dir + i); 
          if place_free(x + lx, y + ly) // Если эта позиция свободна, то... 
          { 
              x += lx; /// Передвигаемся и завершаем цикл. 
              y += ly; 
              break; 
          } 
            
          lx = lengthdir_x(motion_speed, movement_dir - i); 
          ly = lengthdir_y(motion_speed, movement_dir - i); 
          if place_free(x + lx, y + ly) 
          { 
              x += lx; 
              y += ly; 
              break; 
          } 
      } 
}
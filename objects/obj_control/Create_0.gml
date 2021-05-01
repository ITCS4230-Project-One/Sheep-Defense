/// @description Insert description here
// You can write your code in this editor
global.killed = 0
global.wolfHits = 3
score = 0

//create a grid that will be used for A* pathfinding
global.grid = mp_grid_create(-10, -10, (room_width+50)/32, (room_height+50/32), 32, 32)
//adding obstacles inside the grid that enemies will try to avoid
mp_grid_add_instances(global.grid, obj_block, true)
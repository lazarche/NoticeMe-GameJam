/// @description Insert description here
// You can write your code in this editor

//load weapons
scr_weapons();

global.music = false;
global.music_gain = 1;

global.sound_effects = true;
global.sound_gain = 1;
global.level = 1;


global.weapon_id = "pistol";
global.highscore = 0;
global.hp = 5;


global.stage = 1;


controller_id = 0;

room_goto_next();

last_focused = btn_start;

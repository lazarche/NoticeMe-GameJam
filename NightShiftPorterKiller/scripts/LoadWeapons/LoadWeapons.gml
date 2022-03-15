
function scr_weapons(){
global.weapons = ds_map_create();

#region Tier 1
//Pistol
pistol = ds_map_create()
ds_map_add(pistol,"name" , "Pistol" );
ds_map_add(pistol,"sprite" , spr_gun_pistol );
ds_map_add(pistol,"ammo", spr_bullet_small);
ds_map_add(pistol,"firerate", 0.75); //Po sec
ds_map_add(pistol,"accuracy", 1); //U stepenima
ds_map_add(pistol,"damage", 12);
ds_map_add(pistol,"pipe", 8);
ds_map_add(pistol,"degre", 16);
ds_map_add(pistol,"bulletCount", 1);
ds_map_add(pistol,"particle", 0);
ds_map_add(pistol,"movespeed", 3);
ds_map_add(pistol,"pierce", 1);
//ds_map_add(pistol,"sound", snd_pistol);
ds_map_add(global.weapons,"pistol", pistol);


#endregion

#region Tier 2
pistol_speed = ds_map_create()
ds_map_add(pistol_speed,"name" , "Pistol(Speed Upgrade)" );
ds_map_add(pistol_speed,"sprite" , spr_gun_pistol );
ds_map_add(pistol_speed,"ammo", spr_bullet_small);
ds_map_add(pistol_speed,"firerate", 1); //Po sec
ds_map_add(pistol_speed,"accuracy", 1); //U stepenima
ds_map_add(pistol_speed,"damage", 12);
ds_map_add(pistol_speed,"pipe", 8);
ds_map_add(pistol_speed,"degre", 16);
ds_map_add(pistol_speed,"bulletCount", 1);
ds_map_add(pistol_speed,"particle", 0);
ds_map_add(pistol_speed,"movespeed", 3);
ds_map_add(pistol_speed,"pierce", 1);
//ds_map_add(pistol_speed,"sound", snd_pistol);
ds_map_add(global.weapons,"pistol_speed", pistol_speed);

pistol_damage = ds_map_create()
ds_map_add(pistol_damage,"name" , "Pistol(Damage Ugrade)" );
ds_map_add(pistol_damage,"sprite" , spr_gun_pistol );
ds_map_add(pistol_damage,"ammo", spr_bullet_small);
ds_map_add(pistol_damage,"firerate", 0.75); //Po sec
ds_map_add(pistol_damage,"accuracy", 1); //U stepenima
ds_map_add(pistol_damage,"damage", 16);
ds_map_add(pistol_damage,"pipe", 8);
ds_map_add(pistol_damage,"degre", 16);
ds_map_add(pistol_damage,"bulletCount", 1);
ds_map_add(pistol_damage,"particle", 0);
ds_map_add(pistol_damage,"movespeed", 3);
ds_map_add(pistol_damage,"pierce", 1);
//ds_map_add(pistol_damage,"sound", snd_pistol);
ds_map_add(global.weapons,"pistol_damage", pistol_damage);


#endregion

#region Tier 3
smg = ds_map_create()
ds_map_add(smg,"name" , "SMG" );
ds_map_add(smg,"sprite" , spr_gun_smg );
ds_map_add(smg,"ammo", spr_bullet_small);
ds_map_add(smg,"firerate", 2.66); //Po sec
ds_map_add(smg,"accuracy", 4); //U stepenima
ds_map_add(smg,"damage", 14);
ds_map_add(smg,"pipe", 8);
ds_map_add(smg,"degre", 16);
ds_map_add(smg,"bulletCount", 1);
ds_map_add(smg,"particle", 1);
ds_map_add(smg,"movespeed", 3.3);
ds_map_add(smg,"pierce", 1);
//ds_map_add(smg,"sound", snd_pistol);
ds_map_add(global.weapons,"smg", smg);

rifle = ds_map_create()
ds_map_add(rifle,"name" , "Rifle" );
ds_map_add(rifle,"sprite" , spr_gun_rifle );
ds_map_add(rifle,"ammo", spr_bullet_medium);
ds_map_add(rifle,"firerate", 1); //Po sec
ds_map_add(rifle,"accuracy", 2); //U stepenima
ds_map_add(rifle,"damage", 17);
ds_map_add(rifle,"pipe", 8);
ds_map_add(rifle,"degre", 16);
ds_map_add(rifle,"bulletCount", 1);
ds_map_add(rifle,"particle", 1);
ds_map_add(rifle,"movespeed", 3);
ds_map_add(rifle,"pierce", 1);
//ds_map_add(rifle,"sound", snd_pistol);
ds_map_add(global.weapons,"rifle", rifle);

shotgun_short = ds_map_create()
ds_map_add(shotgun_short,"name" , "Short Shotgun" );
ds_map_add(shotgun_short,"sprite" , spr_gun_shotgun_short);
ds_map_add(shotgun_short,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_short,"firerate", 0.67); //Po sec
ds_map_add(shotgun_short,"accuracy", 15); //U stepenima
ds_map_add(shotgun_short,"damage", 10);
ds_map_add(shotgun_short,"pipe", 8);
ds_map_add(shotgun_short,"degre", 16);
ds_map_add(shotgun_short,"bulletCount", 3);
ds_map_add(shotgun_short,"particle", 2);
ds_map_add(shotgun_short,"movespeed", 3.3);
ds_map_add(shotgun_short,"pierce", 1);
//ds_map_add(shotgun_short,"sound", snd_pistol);
ds_map_add(global.weapons,"shotgun_short", shotgun_short);

#endregion

#region Tier 4

smg_damage = ds_map_create()
ds_map_add(smg_damage,"name" , "SMG(Damage Upgrade)" );
ds_map_add(smg_damage,"sprite" , spr_gun_smg);
ds_map_add(smg_damage,"ammo", spr_bullet_small);
ds_map_add(smg_damage,"firerate", 2.67); //Po sec
ds_map_add(smg_damage,"accuracy", 4); //U stepenima
ds_map_add(smg_damage,"damage", 8.5);
ds_map_add(smg_damage,"pipe", 20);
ds_map_add(smg_damage,"degre", 9);
ds_map_add(smg_damage,"bulletCount", 1);
ds_map_add(smg_damage,"particle", 1);
ds_map_add(smg_damage,"movespeed", 3.3);
ds_map_add(smg_damage,"pierce", 1);
//ds_map_add(smg_damage,"sound", snd_smg_damage);
ds_map_add(global.weapons,"smg_damage", smg_damage);

smg_speed = ds_map_create()
ds_map_add(smg_speed,"name" , "SMG (Speed Upgrade)" ); 
ds_map_add(smg_speed,"sprite" , spr_gun_smg);
ds_map_add(smg_speed,"ammo", spr_bullet_small);
ds_map_add(smg_speed,"firerate", 3.33); //Po sec
ds_map_add(smg_speed,"accuracy", 4); //U stepenima
ds_map_add(smg_speed,"damage", 7);
ds_map_add(smg_speed,"pipe", 20);
ds_map_add(smg_speed,"degre", 9);
ds_map_add(smg_speed,"bulletCount", 1);
ds_map_add(smg_speed,"particle", 1);
ds_map_add(smg_speed,"movespeed", 3.5);
ds_map_add(smg_speed,"pierce", 1);
//ds_map_add(smg_speed,"sound", snd_smg_speed);
ds_map_add(global.weapons,"smg_speed", smg_speed);

rifle_speed = ds_map_create()
ds_map_add(rifle_speed,"name" , "Rifle(Speed Upgrade)" );
ds_map_add(rifle_speed,"sprite" , spr_gun_rifle);
ds_map_add(rifle_speed,"ammo", spr_bullet_medium);
ds_map_add(rifle_speed,"firerate", 1.33); //Po sec
ds_map_add(rifle_speed,"accuracy", 2); //U stepenima
ds_map_add(rifle_speed,"damage", 18);
ds_map_add(rifle_speed,"pipe", 20);
ds_map_add(rifle_speed,"degre", 9);
ds_map_add(rifle_speed,"bulletCount", 1);
ds_map_add(rifle_speed,"particle", 1);
ds_map_add(rifle_speed,"movespeed", 3);
ds_map_add(rifle_speed,"pierce", 1);
//ds_map_add(rifle_speed,"sound", snd_rifle_speed);
ds_map_add(global.weapons,"rifle_speed", rifle_speed);

rifle_pierce = ds_map_create()
ds_map_add(rifle_pierce,"name" , "Rifle (Pierce Upgrade)" );
ds_map_add(rifle_pierce,"sprite" , spr_gun_rifle);
ds_map_add(rifle_pierce,"ammo", spr_bullet_medium);
ds_map_add(rifle_pierce,"firerate", 1); //Po sec
ds_map_add(rifle_pierce,"accuracy", 1); //U stepenima
ds_map_add(rifle_pierce,"damage", 18);
ds_map_add(rifle_pierce,"pipe", 20);
ds_map_add(rifle_pierce,"degre", 9);
ds_map_add(rifle_pierce,"bulletCount", 1);
ds_map_add(rifle_pierce,"particle", 1);
ds_map_add(rifle_pierce,"movespeed", 3);
ds_map_add(rifle_pierce,"pierce", 2);
//ds_map_add(rifle_pierce,"sound", snd_rifle_pierce);
ds_map_add(global.weapons,"rifle_pierce", rifle_pierce);

shotgun_speed = ds_map_create()
ds_map_add(shotgun_speed,"name" , "Shotgun (Speed Upgrade)" );
ds_map_add(shotgun_speed,"sprite" , spr_gun_shotgun_short);
ds_map_add(shotgun_speed,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_speed,"firerate", 1); //Po sec
ds_map_add(shotgun_speed,"accuracy", 20); //U stepenima
ds_map_add(shotgun_speed,"damage", 10);
ds_map_add(shotgun_speed,"pipe", 20);
ds_map_add(shotgun_speed,"degre", 9);
ds_map_add(shotgun_speed,"bulletCount", 3);
ds_map_add(shotgun_speed,"particle", 2);
ds_map_add(shotgun_speed,"movespeed", 3.2);
ds_map_add(shotgun_speed,"pierce", 1);
//ds_map_add(shotgun_speed,"sound", snd_shotgun_speed);
ds_map_add(global.weapons,"shotgun_speed", shotgun_speed);

shotgun_spray = ds_map_create()
ds_map_add(shotgun_spray,"name" , "Shotgun (Spray Upgrade)" );
ds_map_add(shotgun_spray,"sprite" , spr_gun_shotgun_short);
ds_map_add(shotgun_spray,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_spray,"firerate", 0.67); //Po sec
ds_map_add(shotgun_spray,"accuracy", 30); //U stepenima
ds_map_add(shotgun_spray,"damage", 10);
ds_map_add(shotgun_spray,"pipe", 20);
ds_map_add(shotgun_spray,"degre", 9);
ds_map_add(shotgun_spray,"bulletCount", 5);
ds_map_add(shotgun_spray,"particle", 1);
ds_map_add(shotgun_spray,"movespeed", 3);
ds_map_add(shotgun_spray,"pierce", 1);
//ds_map_add(shotgun_spray,"sound", snd_shotgun_spray);
ds_map_add(global.weapons,"shotgun_spray", shotgun_spray);


#endregion

#region Tier 5 

lmg = ds_map_create()
ds_map_add(lmg,"name" , "LMG" );
ds_map_add(lmg,"sprite" , spr_gun_lmg);
ds_map_add(lmg,"ammo", spr_bullet_medium);
ds_map_add(lmg,"firerate", 4.33); //Po sec
ds_map_add(lmg,"accuracy", 5); //U stepenima
ds_map_add(lmg,"damage", 8.5);
ds_map_add(lmg,"pipe", 20);
ds_map_add(lmg,"degre", 9);
ds_map_add(lmg,"bulletCount", 1);
ds_map_add(lmg,"particle", 1);
ds_map_add(lmg,"movespeed", 3);
ds_map_add(lmg,"pierce", 1);
//ds_map_add(lmg,"sound", snd_lmg);
ds_map_add(global.weapons,"lmg", lmg);

smg_light = ds_map_create()
ds_map_add(smg_light,"name" , "Light SMG" );
ds_map_add(smg_light,"sprite" , spr_gun_smg_light);
ds_map_add(smg_light,"ammo", spr_bullet_small);
ds_map_add(smg_light,"firerate", 4.5); //Po sec
ds_map_add(smg_light,"accuracy", 4); //U stepenima
ds_map_add(smg_light,"damage", 8.5);
ds_map_add(smg_light,"pipe", 20);
ds_map_add(smg_light,"degre", 9);
ds_map_add(smg_light,"bulletCount", 1);
ds_map_add(smg_light,"particle", 1);
ds_map_add(smg_light,"movespeed", 3.5);
ds_map_add(smg_light,"pierce", 1);
//ds_map_add(smg_light,"sound", snd_smg_light);
ds_map_add(global.weapons,"smg_light", smg_light);

rifle_better = ds_map_create()
ds_map_add(rifle_better,"name" , "Better Rifle" );
ds_map_add(rifle_better,"sprite" , spr_gun_rifle);
ds_map_add(rifle_better,"ammo", spr_bullet_medium);
ds_map_add(rifle_better,"firerate", 1.67); //Po sec
ds_map_add(rifle_better,"accuracy", 2); //U stepenima
ds_map_add(rifle_better,"damage", 22.5);
ds_map_add(rifle_better,"pipe", 20);
ds_map_add(rifle_better,"degre", 9);
ds_map_add(rifle_better,"bulletCount", 1);
ds_map_add(rifle_better,"particle", 1);
ds_map_add(rifle_better,"movespeed", 3);
ds_map_add(rifle_better,"pierce", 1);
//ds_map_add(rifle_better,"sound", snd_rifle_better);
ds_map_add(global.weapons,"rifle_better", rifle_better);

rifle_semi = ds_map_create()
ds_map_add(rifle_semi,"name" , "Semi-Auto Rifle" );
ds_map_add(rifle_semi,"sprite" , spr_gun_rifle_semi);
ds_map_add(rifle_semi,"ammo", spr_bullet_medium);
ds_map_add(rifle_semi,"firerate", 0.83); //Po sec
ds_map_add(rifle_semi,"accuracy", 1); //U stepenima
ds_map_add(rifle_semi,"damage", 45);
ds_map_add(rifle_semi,"pipe", 20);
ds_map_add(rifle_semi,"degre", 9);
ds_map_add(rifle_semi,"bulletCount", 1);
ds_map_add(rifle_semi,"particle", 1);
ds_map_add(rifle_semi,"movespeed", 3);
ds_map_add(rifle_semi,"pierce", 2);
//ds_map_add(rifle_semi,"sound", snd_rifle_semi);
ds_map_add(global.weapons,"rifle_semi", rifle_semi);

shotgun_auto = ds_map_create()
ds_map_add(shotgun_auto,"name" , "Auto Shotgun" );
ds_map_add(shotgun_auto,"sprite" , spr_gun_shotgun_auto);
ds_map_add(shotgun_auto,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_auto,"firerate", 1.5); //Po sec
ds_map_add(shotgun_auto,"accuracy", 20); //U stepenima
ds_map_add(shotgun_auto,"damage", 11);
ds_map_add(shotgun_auto,"pipe", 20);
ds_map_add(shotgun_auto,"degre", 9);
ds_map_add(shotgun_auto,"bulletCount", 3);
ds_map_add(shotgun_auto,"particle", 2);
ds_map_add(shotgun_auto,"movespeed", 3.2);
ds_map_add(shotgun_auto,"pierce", 1);
//ds_map_add(shotgun_auto,"sound", snd_shotgun_auto);
ds_map_add(global.weapons,"shotgun_auto", shotgun_auto);

shotgun_longbarrel = ds_map_create()
ds_map_add(shotgun_longbarrel,"name" , "Longbarrel Shotgun" );
ds_map_add(shotgun_longbarrel,"sprite" , spr_gun_shotgun_doublebarrel);
ds_map_add(shotgun_longbarrel,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_longbarrel,"firerate", 0.67); //Po sec
ds_map_add(shotgun_longbarrel,"accuracy", 25); //U stepenima
ds_map_add(shotgun_longbarrel,"damage", 14);
ds_map_add(shotgun_longbarrel,"pipe", 20);
ds_map_add(shotgun_longbarrel,"degre", 9);
ds_map_add(shotgun_longbarrel,"bulletCount", 5);
ds_map_add(shotgun_longbarrel,"particle", 1);
ds_map_add(shotgun_longbarrel,"movespeed", 3);
ds_map_add(shotgun_longbarrel,"pierce", 1);
//ds_map_add(shotgun_longbarrel,"sound", snd_shotgun_longbarrel);
ds_map_add(global.weapons,"shotgun_longbarrel", shotgun_longbarrel);


#endregion

#region Tier 6
lmg_damage = ds_map_create()
ds_map_add(lmg_damage,"name" , "LMG (Damage Upgrade)" );
ds_map_add(lmg_damage,"sprite" , spr_gun_lmg);
ds_map_add(lmg_damage,"ammo", spr_bullet_medium);
ds_map_add(lmg_damage,"firerate", 4); //Po sec
ds_map_add(lmg_damage,"accuracy", 5); //U stepenima
ds_map_add(lmg_damage,"damage", 12.5);
ds_map_add(lmg_damage,"pipe", 20);
ds_map_add(lmg_damage,"degre", 9);
ds_map_add(lmg_damage,"bulletCount", 1);
ds_map_add(lmg_damage,"particle", 1);
ds_map_add(lmg_damage,"movespeed", 3);
ds_map_add(lmg_damage,"pierce", 1);
//ds_map_add(lmg_damage,"sound", snd_lmg_damage);
ds_map_add(global.weapons,"lmg_damage", lmg_damage);

lmg_speed = ds_map_create()
ds_map_add(lmg_speed,"name" , "LMG (Speed Upgrade)" );
ds_map_add(lmg_speed,"sprite" , spr_gun_lmg);
ds_map_add(lmg_speed,"ammo", spr_bullet_medium);
ds_map_add(lmg_speed,"firerate", 6); //Po sec
ds_map_add(lmg_speed,"accuracy", 5); //U stepenima
ds_map_add(lmg_speed,"damage", 8);
ds_map_add(lmg_speed,"pipe", 20);
ds_map_add(lmg_speed,"degre", 9);
ds_map_add(lmg_speed,"bulletCount", 1);
ds_map_add(lmg_speed,"particle", 1);
ds_map_add(lmg_speed,"movespeed", 3.2);
ds_map_add(lmg_speed,"pierce", 1);
//ds_map_add(lmg_speed,"sound", snd_lmg_speed);
ds_map_add(global.weapons,"lmg_speed", lmg_speed);

smg_light_damage = ds_map_create()
ds_map_add(smg_light_damage,"name" , "Light SMG (Damage Upgrade)" );
ds_map_add(smg_light_damage,"sprite" , spr_gun_smg_light);
ds_map_add(smg_light_damage,"ammo", spr_bullet_small);
ds_map_add(smg_light_damage,"firerate", 4.5); //Po sec
ds_map_add(smg_light_damage,"accuracy", 4); //U stepenima
ds_map_add(smg_light_damage,"damage", 11);
ds_map_add(smg_light_damage,"pipe", 20);
ds_map_add(smg_light_damage,"degre", 9);
ds_map_add(smg_light_damage,"bulletCount", 1);
ds_map_add(smg_light_damage,"particle", 1);
ds_map_add(smg_light_damage,"movespeed", 3.75);
ds_map_add(smg_light_damage,"pierce", 1);
//ds_map_add(smg_light_damage,"sound", snd_smg_light_damage);
ds_map_add(global.weapons,"smg_light_damage", smg_light_damage);

smg_light_speed = ds_map_create()
ds_map_add(smg_light_speed,"name" , "Light SMG (Attackspeed Upgrade)" );
ds_map_add(smg_light_speed,"sprite" , spr_gun_smg_light);
ds_map_add(smg_light_speed,"ammo", spr_bullet_small);
ds_map_add(smg_light_speed,"firerate", 5.33); //Po sec
ds_map_add(smg_light_speed,"accuracy", 4); //U stepenima
ds_map_add(smg_light_speed,"damage", 8.5);
ds_map_add(smg_light_speed,"pipe", 20);
ds_map_add(smg_light_speed,"degre", 9);
ds_map_add(smg_light_speed,"bulletCount", 1);
ds_map_add(smg_light_speed,"particle", 1);
ds_map_add(smg_light_speed,"movespeed", 3.7);
ds_map_add(smg_light_speed,"pierce", 1);
//ds_map_add(smg_light_speed,"sound", snd_smg_light_speed);
ds_map_add(global.weapons,"smg_light_speed", smg_light_speed);

rifle_better_damage = ds_map_create()
ds_map_add(rifle_better_damage,"name" , "Better Rifle (Damage Upgrade)" );
ds_map_add(rifle_better_damage,"sprite" , spr_gun_rifle);
ds_map_add(rifle_better_damage,"ammo", spr_bullet_medium);
ds_map_add(rifle_better_damage,"firerate", 1.75); //Po sec
ds_map_add(rifle_better_damage,"accuracy", 2); //U stepenima
ds_map_add(rifle_better_damage,"damage", 28.5);
ds_map_add(rifle_better_damage,"pipe", 20);
ds_map_add(rifle_better_damage,"degre", 9);
ds_map_add(rifle_better_damage,"bulletCount", 1);
ds_map_add(rifle_better_damage,"particle", 1);
ds_map_add(rifle_better_damage,"movespeed", 3);
ds_map_add(rifle_better_damage,"pierce", 1);
//ds_map_add(rifle_better_damage,"sound", snd_rifle_better_damage);
ds_map_add(global.weapons,"rifle_better_damage", rifle_better_damage);

rifle_better_speed = ds_map_create()
ds_map_add(rifle_better_speed,"name" , "Better Rifle (Speed Ugrade)" );
ds_map_add(rifle_better_speed,"sprite" , spr_gun_rifle);
ds_map_add(rifle_better_speed,"ammo", spr_bullet_medium);
ds_map_add(rifle_better_speed,"firerate", 7); //Po sec
ds_map_add(rifle_better_speed,"accuracy", 2); //U stepenima
ds_map_add(rifle_better_speed,"damage", 22);
ds_map_add(rifle_better_speed,"pipe", 20);
ds_map_add(rifle_better_speed,"degre", 9);
ds_map_add(rifle_better_speed,"bulletCount", 1);
ds_map_add(rifle_better_speed,"particle", 1);
ds_map_add(rifle_better_speed,"movespeed", 3.1);
ds_map_add(rifle_better_speed,"pierce", 1);
//ds_map_add(rifle_better_speed,"sound", snd_rifle_better_speed);
ds_map_add(global.weapons,"rifle_better_speed", rifle_better_speed);

rifle_semi_damage = ds_map_create()
ds_map_add(rifle_semi_damage,"name" , "Semi-Auto Rifle (Damage Upgrade)" );
ds_map_add(rifle_semi_damage,"sprite" , spr_gun_rifle_semi);
ds_map_add(rifle_semi_damage,"ammo", spr_bullet_big);
ds_map_add(rifle_semi_damage,"firerate", 0.83); //Po sec
ds_map_add(rifle_semi_damage,"accuracy", 1); //U stepenima
ds_map_add(rifle_semi_damage,"damage", 50);
ds_map_add(rifle_semi_damage,"pipe", 20);
ds_map_add(rifle_semi_damage,"degre", 9);
ds_map_add(rifle_semi_damage,"bulletCount", 1);
ds_map_add(rifle_semi_damage,"particle", 1);
ds_map_add(rifle_semi_damage,"movespeed", 3);
ds_map_add(rifle_semi_damage,"pierce", 2);
//ds_map_add(rifle_semi_damage,"sound", snd_rifle_semi_damage);
ds_map_add(global.weapons,"rifle_semi_damage", rifle_semi_damage);

rifle_semi_pierce = ds_map_create()
ds_map_add(rifle_semi_pierce,"name" , "Semi-Auto Rifle (Pierce Upgrade)" );
ds_map_add(rifle_semi_pierce,"sprite" , spr_gun_rifle_semi);
ds_map_add(rifle_semi_pierce,"ammo", spr_bullet_medium);
ds_map_add(rifle_semi_pierce,"firerate", 0.53); //Po sec
ds_map_add(rifle_semi_pierce,"accuracy", 1); //U stepenima
ds_map_add(rifle_semi_pierce,"damage", 75);
ds_map_add(rifle_semi_pierce,"pipe", 20);
ds_map_add(rifle_semi_pierce,"degre", 9);
ds_map_add(rifle_semi_pierce,"bulletCount", 1);
ds_map_add(rifle_semi_pierce,"particle", 1);
ds_map_add(rifle_semi_pierce,"movespeed", 3);
ds_map_add(rifle_semi_pierce,"pierce", 3);
//ds_map_add(rifle_semi_pierce,"sound", snd_rifle_semi_pierce);
ds_map_add(global.weapons,"rifle_semi_pierce", rifle_semi_pierce);

shotgun_auto_damage = ds_map_create()
ds_map_add(shotgun_auto_damage,"name" , "Auto-Shotgun (Damage Upgrade)" );
ds_map_add(shotgun_auto_damage,"sprite" , spr_gun_shotgun_auto);
ds_map_add(shotgun_auto_damage,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_auto_damage,"firerate", 1.5); //Po sec
ds_map_add(shotgun_auto_damage,"accuracy", 40); //U stepenima
ds_map_add(shotgun_auto_damage,"damage", 13);
ds_map_add(shotgun_auto_damage,"pipe", 20);
ds_map_add(shotgun_auto_damage,"degre", 9);
ds_map_add(shotgun_auto_damage,"bulletCount", 5);
ds_map_add(shotgun_auto_damage,"particle", 1);
ds_map_add(shotgun_auto_damage,"movespeed", 3.2);
ds_map_add(shotgun_auto_damage,"pierce", 1);
//ds_map_add(shotgun_auto_damage,"sound", snd_shotgun_auto_damage);
ds_map_add(global.weapons,"shotgun_auto_damage", shotgun_auto_damage);

shotgun_auto_speed = ds_map_create()
ds_map_add(shotgun_auto_speed,"name" , "Auto-Shotgun (Speed Upgrade)" );
ds_map_add(shotgun_auto_speed,"sprite" , spr_gun_shotgun_auto);
ds_map_add(shotgun_auto_speed,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_auto_speed,"firerate", 2); //Po sec
ds_map_add(shotgun_auto_speed,"accuracy", 20); //U stepenima
ds_map_add(shotgun_auto_speed,"damage", 12);
ds_map_add(shotgun_auto_speed,"pipe", 20);
ds_map_add(shotgun_auto_speed,"degre", 9);
ds_map_add(shotgun_auto_speed,"bulletCount", 3);
ds_map_add(shotgun_auto_speed,"particle", 1);
ds_map_add(shotgun_auto_speed,"movespeed", 3.3);
ds_map_add(shotgun_auto_speed,"pierce", 1);
//ds_map_add(shotgun_auto_speed,"sound", snd_shotgun_auto_speed);
ds_map_add(global.weapons,"shotgun_auto_speed", shotgun_auto_speed);

shotgun_longbarrel_accuracy = ds_map_create()
ds_map_add(shotgun_longbarrel_accuracy,"name" , "Longbarrel Shotgun (Accuracy Upgrade)" );
ds_map_add(shotgun_longbarrel_accuracy,"sprite" , spr_gun_shotgun_doublebarrel);
ds_map_add(shotgun_longbarrel_accuracy,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_longbarrel_accuracy,"firerate", 0.75); //Po sec
ds_map_add(shotgun_longbarrel_accuracy,"accuracy", 10); //U stepenima
ds_map_add(shotgun_longbarrel_accuracy,"damage", 13);
ds_map_add(shotgun_longbarrel_accuracy,"pipe", 20);
ds_map_add(shotgun_longbarrel_accuracy,"degre", 9);
ds_map_add(shotgun_longbarrel_accuracy,"bulletCount", 5);
ds_map_add(shotgun_longbarrel_accuracy,"particle", 1);
ds_map_add(shotgun_longbarrel_accuracy,"movespeed", 3);
ds_map_add(shotgun_longbarrel_accuracy,"pierce", 1);
//ds_map_add(shotgun_longbarrel_accuracy,"sound", snd_shotgun_longbarrel);
ds_map_add(global.weapons,"shotgun_longbarrel_accuracy", shotgun_longbarrel_accuracy);

shotgun_longbarrel_damage = ds_map_create()
ds_map_add(shotgun_longbarrel_damage,"name" , "Longbarrel Shotgun (Damage Upgrade)" );
ds_map_add(shotgun_longbarrel_damage,"sprite" , spr_gun_shotgun_doublebarrel);
ds_map_add(shotgun_longbarrel_damage,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_longbarrel_damage,"firerate", 0.67); //Po sec
ds_map_add(shotgun_longbarrel_damage,"accuracy", 20); //U stepenima
ds_map_add(shotgun_longbarrel_damage,"damage", 28);
ds_map_add(shotgun_longbarrel_damage,"pipe", 20);
ds_map_add(shotgun_longbarrel_damage,"degre", 9);
ds_map_add(shotgun_longbarrel_damage,"bulletCount", 5);
ds_map_add(shotgun_longbarrel_damage,"particle", 1);
ds_map_add(shotgun_longbarrel_damage,"movespeed", 3);
ds_map_add(shotgun_longbarrel_damage,"pierce", 1);
//ds_map_add(shotgun_longbarrel_damage,"sound", snd_shotgun_longbarrel);
ds_map_add(global.weapons,"shotgun_longbarrel_damage", shotgun_longbarrel_damage);


#endregion

#region Tier 7

hmg = ds_map_create()
ds_map_add(hmg,"name" , "HMG(Heavy Machine Gun)" );
ds_map_add(hmg,"sprite" , spr_gun_temp);
ds_map_add(hmg,"ammo", spr_bullet_medium);
ds_map_add(hmg,"firerate", 4); //Po sec
ds_map_add(hmg,"accuracy", 3); //U stepenima
ds_map_add(hmg,"damage", 20);
ds_map_add(hmg,"pipe", 20);
ds_map_add(hmg,"degre", 9);
ds_map_add(hmg,"bulletCount", 1);
ds_map_add(hmg,"particle", 1);
ds_map_add(hmg,"movespeed", 3);
ds_map_add(hmg,"pierce", 1);
//ds_map_add(hmg,"sound", snd_hmg);
ds_map_add(global.weapons,"hmg", hmg);

lmg_upgrade = ds_map_create()
ds_map_add(lmg_upgrade,"name" , "Next-Gen LMG" );
ds_map_add(lmg_upgrade,"sprite" , spr_gun_temp);
ds_map_add(lmg_upgrade,"ammo", spr_bullet_medium);
ds_map_add(lmg_upgrade,"firerate", 6); //Po sec
ds_map_add(lmg_upgrade,"accuracy", 4); //U stepenima
ds_map_add(lmg_upgrade,"damage", 13);
ds_map_add(lmg_upgrade,"pipe", 20);
ds_map_add(lmg_upgrade,"degre", 9);
ds_map_add(lmg_upgrade,"bulletCount", 1);
ds_map_add(lmg_upgrade,"particle", 1);
ds_map_add(lmg_upgrade,"movespeed", 3.1);
ds_map_add(lmg_upgrade,"pierce", 1);
//ds_map_add(lmg_upgrade,"sound", snd_lmg);
ds_map_add(global.weapons,"lmg_upgrade", lmg_upgrade);

smg_swat = ds_map_create()
ds_map_add(smg_swat,"name" , "SWAT SMG" );
ds_map_add(smg_swat,"sprite" , spr_gun_temp);
ds_map_add(smg_swat,"ammo", spr_bullet_small);
ds_map_add(smg_swat,"firerate", 5.67); //Po sec
ds_map_add(smg_swat,"accuracy", 3); //U stepenima
ds_map_add(smg_swat,"damage", 12);
ds_map_add(smg_swat,"pipe", 20);
ds_map_add(smg_swat,"degre", 9);
ds_map_add(smg_swat,"bulletCount", 1);
ds_map_add(smg_swat,"particle", 1);
ds_map_add(smg_swat,"movespeed", 3.75);
ds_map_add(smg_swat,"pierce", 1);
//ds_map_add(smg_swat,"sound", snd_smg);
ds_map_add(global.weapons,"smg_swat", smg_swat);

dual_pistols = ds_map_create()
ds_map_add(dual_pistols,"name" , "Dual Pistols" );
ds_map_add(dual_pistols,"sprite" , spr_gun_temp);
ds_map_add(dual_pistols,"ammo", spr_bullet_small);
ds_map_add(dual_pistols,"firerate", 6.67); //Po sec
ds_map_add(dual_pistols,"accuracy", 4); //U stepenima
ds_map_add(dual_pistols,"damage", 10);
ds_map_add(dual_pistols,"pipe", 20);
ds_map_add(dual_pistols,"degre", 9);
ds_map_add(dual_pistols,"bulletCount", 1);
ds_map_add(dual_pistols,"particle", 1);
ds_map_add(dual_pistols,"movespeed", 3.8);
ds_map_add(dual_pistols,"pierce", 1);
//ds_map_add(dual_pistols,"sound", snd_dual_pistols);
ds_map_add(global.weapons,"dual_pistols", dual_pistols);

rifle_military = ds_map_create()
ds_map_add(rifle_military,"name" , "Military Rifle" );
ds_map_add(rifle_military,"sprite" , spr_gun_temp);
ds_map_add(rifle_military,"ammo", spr_bullet_medium);
ds_map_add(rifle_military,"firerate", 1.83); //Po sec
ds_map_add(rifle_military,"accuracy", 1.5); //U stepenima
ds_map_add(rifle_military,"damage", 38);
ds_map_add(rifle_military,"pipe", 20);
ds_map_add(rifle_military,"degre", 9);
ds_map_add(rifle_military,"bulletCount", 1);
ds_map_add(rifle_military,"particle", 1);
ds_map_add(rifle_military,"movespeed", 3.2);
ds_map_add(rifle_military,"pierce", 1);
//ds_map_add(rifle_military,"sound", snd_rifle_military);
ds_map_add(global.weapons,"rifle_military", rifle_military);

rifle_swat = ds_map_create()
ds_map_add(rifle_swat,"name" , "SWAT Rifle" );
ds_map_add(rifle_swat,"sprite" , spr_gun_temp);
ds_map_add(rifle_swat,"ammo", spr_bullet_medium);
ds_map_add(rifle_swat,"firerate", 2.5); //Po sec
ds_map_add(rifle_swat,"accuracy", 1.5); //U stepenima
ds_map_add(rifle_swat,"damage", 28);
ds_map_add(rifle_swat,"pipe", 20);
ds_map_add(rifle_swat,"degre", 9);
ds_map_add(rifle_swat,"bulletCount", 1);
ds_map_add(rifle_swat,"particle", 1);
ds_map_add(rifle_swat,"movespeed", 3.2);
ds_map_add(rifle_swat,"pierce", 1);
//ds_map_add(rifle_swat,"sound", snd_rifle_swat);
ds_map_add(global.weapons,"rifle_swat", rifle_swat);

sniper_auto = ds_map_create()
ds_map_add(sniper_auto,"name" , "Auto-Sniper" );
ds_map_add(sniper_auto,"sprite" , spr_gun_temp);
ds_map_add(sniper_auto,"ammo", spr_bullet_big);
ds_map_add(sniper_auto,"firerate", 1.42); //Po sec
ds_map_add(sniper_auto,"accuracy", 0.5); //U stepenima
ds_map_add(sniper_auto,"damage", 48);
ds_map_add(sniper_auto,"pipe", 20);
ds_map_add(sniper_auto,"degre", 9);
ds_map_add(sniper_auto,"bulletCount", 1);
ds_map_add(sniper_auto,"particle", 1);
ds_map_add(sniper_auto,"movespeed", 3.1);
ds_map_add(sniper_auto,"pierce", 2);
//ds_map_add(sniper_auto,"sound", snd_sniper_auto);
ds_map_add(global.weapons,"sniper_auto", sniper_auto);

sniper_heavy = ds_map_create()
ds_map_add(sniper_heavy,"name" , "Heavy Sniper" );
ds_map_add(sniper_heavy,"sprite" , spr_gun_temp);
ds_map_add(sniper_heavy,"ammo", spr_bullet_big);
ds_map_add(sniper_heavy,"firerate", 0.55); //Po sec
ds_map_add(sniper_heavy,"accuracy", 0); //U stepenima
ds_map_add(sniper_heavy,"damage", 11);
ds_map_add(sniper_heavy,"pipe", 20);
ds_map_add(sniper_heavy,"degre", 9);
ds_map_add(sniper_heavy,"bulletCount", 1);
ds_map_add(sniper_heavy,"particle", 1);
ds_map_add(sniper_heavy,"movespeed", 3.1);
ds_map_add(sniper_heavy,"pierce", 3);
//ds_map_add(sniper_heavy,"sound", snd_sniper_heavy);
ds_map_add(global.weapons,"sniper_heavy", sniper_heavy);

shotgun_apocalypse = ds_map_create()
ds_map_add(shotgun_apocalypse,"name" , "Apocalypse Shotgun" );
ds_map_add(shotgun_apocalypse,"sprite" , spr_gun_temp);
ds_map_add(shotgun_apocalypse,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_apocalypse,"firerate", 0.75); //Po sec
ds_map_add(shotgun_apocalypse,"accuracy", 10); //U stepenima
ds_map_add(shotgun_apocalypse,"damage", 40);
ds_map_add(shotgun_apocalypse,"pipe", 20);
ds_map_add(shotgun_apocalypse,"degre", 9);
ds_map_add(shotgun_apocalypse,"bulletCount", 3);
ds_map_add(shotgun_apocalypse,"particle", 1);
ds_map_add(shotgun_apocalypse,"movespeed", 3.1);
ds_map_add(shotgun_apocalypse,"pierce", 1);
//ds_map_add(shotgun_apocalypse,"sound", snd_shotgun_apocalypse);
ds_map_add(global.weapons,"shotgun_apocalypse", shotgun_apocalypse);

shotgun_armagedon = ds_map_create()
ds_map_add(shotgun_armagedon,"name" , "Armagedon Shotgun" );
ds_map_add(shotgun_armagedon,"sprite" , spr_gun_temp);
ds_map_add(shotgun_armagedon,"ammo", spr_bullet_pellet);
ds_map_add(shotgun_armagedon,"firerate", 1.5); //Po sec
ds_map_add(shotgun_armagedon,"accuracy", 50); //U stepenima
ds_map_add(shotgun_armagedon,"damage", 11);
ds_map_add(shotgun_armagedon,"pipe", 20);
ds_map_add(shotgun_armagedon,"degre", 9);
ds_map_add(shotgun_armagedon,"bulletCount", 7);
ds_map_add(shotgun_armagedon,"particle", 1);
ds_map_add(shotgun_armagedon,"movespeed", 3.2);
ds_map_add(shotgun_armagedon,"pierce", 1);
//ds_map_add(shotgun_armagedon,"sound", snd_shotgun_armagedon);
ds_map_add(global.weapons,"shotgun_armagedon", shotgun_armagedon);

double_shotgun = ds_map_create()
ds_map_add(double_shotgun,"name" , "Double Shotgun" );
ds_map_add(double_shotgun,"sprite" , spr_gun_temp);
ds_map_add(double_shotgun,"ammo", spr_bullet_pellet);
ds_map_add(double_shotgun,"firerate", 2); //Po sec
ds_map_add(double_shotgun,"accuracy", 30); //U stepenima
ds_map_add(double_shotgun,"damage", 10);
ds_map_add(double_shotgun,"pipe", 20);
ds_map_add(double_shotgun,"degre", 9);
ds_map_add(double_shotgun,"bulletCount", 6);
ds_map_add(double_shotgun,"particle", 1);
ds_map_add(double_shotgun,"movespeed", 3.3);
ds_map_add(double_shotgun,"pierce", 1);
//ds_map_add(double_shotgun,"sound", snd_double_shotgun);
ds_map_add(global.weapons,"double_shotgun", double_shotgun);

mini_cannon = ds_map_create()
ds_map_add(mini_cannon,"name" , "Mini Cannon" );
ds_map_add(mini_cannon,"sprite" , spr_gun_temp);
ds_map_add(mini_cannon,"ammo", spr_bullet_pellet);
ds_map_add(mini_cannon,"firerate", 0.5); //Po sec
ds_map_add(mini_cannon,"accuracy", 5); //U stepenima
ds_map_add(mini_cannon,"damage", 200);
ds_map_add(mini_cannon,"pipe", 20);
ds_map_add(mini_cannon,"degre", 9);
ds_map_add(mini_cannon,"bulletCount", 1);
ds_map_add(mini_cannon,"particle", 1);
ds_map_add(mini_cannon,"movespeed", 3);
ds_map_add(mini_cannon,"pierce", 1);
//ds_map_add(mini_cannon,"sound", snd_mini_cannon);
ds_map_add(global.weapons,"mini_cannon", mini_cannon);

#endregion

}

function GetItemProperty(idd, propertyy){
	return ds_map_find_value(ds_map_find_value(global.weapons,idd),propertyy);
}


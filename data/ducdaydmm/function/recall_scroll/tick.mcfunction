# ===== Recall Scroll Countdown =====
# Runs every tick for each player with an active recall timer
# Context: executes as and at the player

# Decrease timer by 1
scoreboard players remove @s recall_timer 1

# Particle effects during countdown
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.05 10

# Actionbar countdown display
execute if score @s recall_timer matches 181..200 run title @s actionbar {"text":"✦ Recalling in 10...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 161..180 run title @s actionbar {"text":"✦ Recalling in 9...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 141..160 run title @s actionbar {"text":"✦ Recalling in 8...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 121..140 run title @s actionbar {"text":"✦ Recalling in 7...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 101..120 run title @s actionbar {"text":"✦ Recalling in 6...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 81..100 run title @s actionbar {"text":"✦ Recalling in 5...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 61..80 run title @s actionbar {"text":"✦ Recalling in 4...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 41..60 run title @s actionbar {"text":"✦ Recalling in 3...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 21..40 run title @s actionbar {"text":"✦ Recalling in 2...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 1..20 run title @s actionbar {"text":"✦ Recalling in 1...","color":"light_purple","bold":true}

# Beam effect: Start rising at 5 seconds and finish as the 10-second countdown ends
execute if score @s recall_timer matches 100 run scoreboard players operation #temp recall_id = @s recall_id
execute if score @s recall_timer matches 100 as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s as @e[type=block_display,tag=beam_part,distance=..6] run data merge entity @s {interpolation_duration:100,start_interpolation:0}
execute if score @s recall_timer matches 100 as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s as @e[type=block_display,tag=beam_part,distance=..6] run data modify entity @s transformation.scale[1] set value 250f
execute if score @s recall_timer matches 100 as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1.5

# Execute teleport when countdown reaches 0
execute if score @s recall_timer matches 0 run function ducdaydmm:recall_scroll/teleport

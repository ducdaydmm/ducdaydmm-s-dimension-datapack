# ===== Recall Scroll Countdown =====
# Runs every tick for each player with an active recall timer
# Context: executes as and at the player

# Decrease timer by 1
scoreboard players remove @s recall_timer 1

# Particle effects during countdown
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.05 10

# Actionbar countdown display
execute if score @s recall_timer matches 41..60 run title @s actionbar {"text":"✦ Recalling in 3...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 21..40 run title @s actionbar {"text":"✦ Recalling in 2...","color":"light_purple","bold":true}
execute if score @s recall_timer matches 1..20 run title @s actionbar {"text":"✦ Recalling in 1...","color":"light_purple","bold":true}

# Beam effect: At tick 30, stretch beam height up to 700 smoothly over remaining 30 ticks
execute if score @s recall_timer matches 30 at @s as @e[type=block_display,tag=beam_part,distance=..6] run data merge entity @s {interpolation_duration:30,start_interpolation:0}
execute if score @s recall_timer matches 30 at @s as @e[type=block_display,tag=beam_part,distance=..6] run data modify entity @s transformation.scale[1] set value 700f
execute if score @s recall_timer matches 30 run playsound minecraft:block.beacon.ambient master @s ~ ~ ~ 1 1.5

# Execute teleport when countdown reaches 0
execute if score @s recall_timer matches 0 run function ducdaydmm:recall_scroll/teleport

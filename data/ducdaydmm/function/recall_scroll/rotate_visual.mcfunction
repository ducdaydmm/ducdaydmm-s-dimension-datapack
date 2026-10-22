# rotate visual effect
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=recalltext] at @s run tp @s ~ ~ ~ ~5 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringoutside] at @s run tp @s ~ ~ ~ ~-3 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringinside] at @s run tp @s ~ ~ ~ ~2 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringmiddle] at @s run tp @s ~ ~ ~ ~-2 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=beam] at @s run tp @s ~ ~ ~ ~5 ~

# rotate particle controller
execute if entity @a[scores={recall_timer=1..}] as @e[type=minecraft:armor_stand,tag=ControlParticle] at @s run tp @s ~ ~ ~ ~-11 ~

# bottom particle effect
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^ ^0.09 ^2.5 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^ ^0.09 ^-2.5 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^-2.5 ^0.09 ^ 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^2.5 ^0.09 ^ 0 0 0 0 1 force

# top particle effect
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^ ^3 ^2.5 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^ ^3 ^-2.5 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^-2.5 ^3 ^ 0 0 0 0 1 force
execute at @e[tag=ControlParticle] run particle minecraft:electric_spark ^2.5 ^3 ^ 0 0 0 0 1 force
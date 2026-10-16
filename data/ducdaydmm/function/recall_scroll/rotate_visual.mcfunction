# rotate visual effect
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=recalltext] at @s run tp @s ~ ~ ~ ~5 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringoutside] at @s run tp @s ~ ~ ~ ~-3 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringinside] at @s run tp @s ~ ~ ~ ~2 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=ringmiddle] at @s run tp @s ~ ~ ~ ~-2 ~
execute if entity @a[scores={recall_timer=1..}] as @e[type=block_display,tag=beam] at @s run tp @s ~ ~ ~ ~5 ~
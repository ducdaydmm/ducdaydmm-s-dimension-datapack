# ===== Recall Scroll Teleport =====
# Teleports entities within range to World Origin after countdown completes

# Copy the player's ID to a global temp variable
scoreboard players operation #temp recall_id = @s recall_id

# Teleport entities within distance=..3 from the recall anchor (excluding cannot_recall tag)
execute as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s as @e[distance=..3,type=!#ducdaydmm:cannot_recall] at @s run tp @s 0 ~ 0

# Play teleport sound effect at player's new location
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# Display completion message
title @s actionbar {"text":"✦ Recalled!","color":"green","bold":true}

# 3. Execute cleanup as and at the matching armor stand
execute as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s run function ducdaydmm:recall_scroll/cleanup

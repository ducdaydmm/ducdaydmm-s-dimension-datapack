# ===== Recall Scroll Teleport =====
# Teleports the player to World Origin after countdown completes

# Teleport to x=0, y=~(keep current height), z=0
tp @s 0 ~ 0

# Play teleport sound effect
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# Display completion message
title @s actionbar {"text":"✦ Recalled!","color":"green","bold":true}

# Remove visual effect entities at the original activation location
# 1. Copy the player's ID to a global temp variable
scoreboard players operation #temp recall_id = @s recall_id
# 2. Execute cleanup as and at the matching armor stand
execute as @e[type=armor_stand,tag=recall_anchor] if score @s recall_id = #temp recall_id at @s run function ducdaydmm:recall_scroll/cleanup

# ===== Recall Scroll Teleport =====
# Teleports the player to World Origin after countdown completes

# Teleport to x=0, y=~(keep current height), z=0
tp @s 0 ~ 0

# Play teleport sound effect
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1

# Display completion message
title @s actionbar {"text":"✦ Recalled!","color":"green","bold":true}

# Remove visual effect entities
function ducdaydmm:recall_scroll/cleanup

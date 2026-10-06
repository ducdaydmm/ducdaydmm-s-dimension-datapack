# ===== Recall Scroll Cleanup =====
# Context: Executed as and at the recall_anchor armor stand
# Removes all recall scroll visual effect entities within 3 blocks

kill @e[type=block_display,tag=recall_scroll_effect,distance=..3]
kill @s

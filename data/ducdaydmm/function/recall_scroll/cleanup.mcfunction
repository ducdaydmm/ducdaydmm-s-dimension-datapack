# Context: Executed as and at the recall_anchor armor stand
# Removes all recall scroll visual effect entities within 3 blocks

kill @e[tag=recalltext,distance=..4]
kill @e[tag=ringoutside,distance=..4]
kill @e[tag=ringoutside_part,distance=..4]
kill @e[tag=ringinside,distance=..4]
kill @e[tag=ringinside_part,distance=..4]
kill @e[tag=ringmiddle,distance=..4]
kill @e[tag=ringmiddle_part,distance=..4]
kill @e[tag=beam,distance=..4]
kill @e[tag=beam_part,distance=..4]
kill @e[type=block_display,tag=recall_scroll_effect,distance=..4]
kill @s
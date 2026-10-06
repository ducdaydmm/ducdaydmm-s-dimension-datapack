# Tick function

# Recall Scroll - process countdown for players with active recall
execute as @a[scores={recall_timer=1..}] at @s run function ducdaydmm:recall_scroll/tick

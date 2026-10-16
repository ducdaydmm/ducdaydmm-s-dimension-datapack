# Tick function

# process countdown for players with active recall
execute as @a[scores={recall_timer=1..}] at @s run function ducdaydmm:recall_scroll/tick
# call rotate visual effects 
execute if entity @a[scores={recall_timer=1..}] run function ducdaydmm:recall_scroll/rotate_visual
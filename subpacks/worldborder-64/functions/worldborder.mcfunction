# Worldborder Addon - Floshox
# Function for World border within a 64x64 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=32, dx=999999] 31 ~ ~
execute @s ~ ~ ~ tp @p[x=-32, dx=-999999] -31 ~ ~
execute @s ~ ~ ~ tp @p[z=32, dz=999999] ~ ~ 31
execute @s ~ ~ ~ tp @p[z=-32, dz=-999999] ~ ~ -31

execute @s[z=-32, dz=48, scores={WorldBorder=20}] ~ ~ ~ fill -32 0 ~0 -32 127 ~16 barrier 
execute @s[z=32, dz=-48, scores={WorldBorder=20}] ~ ~ ~ fill -32 0 ~0 -32 127 ~-16 barrier
execute @s[z=-32, dz=48, scores={WorldBorder=20}] ~ ~ ~ fill 32 0 ~0 32 127 ~16 barrier
execute @s[z=32, dz=-48, scores={WorldBorder=20}] ~ ~ ~ fill 32 0 ~0 32 127 ~-16 barrier

execute @s[x=-32, dx=48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -32 ~16 127 -32 barrier
execute @s[x=32, dx=-48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -32 ~-16 127 -32 barrier
execute @s[x=-32, dx=48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 32 ~16 127 32 barrier
execute @s[x=32, dx=-48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 32 ~-16 127 32 barrier

execute @s[z=-33, dz=50, scores={WorldBorder=20}] ~ ~ ~ fill -33 0 ~0 -33 127 ~16 stained_glass 8
execute @s[z=33, dz=-50, scores={WorldBorder=20}] ~ ~ ~ fill -33 0 ~0 -33 127 ~-16 stained_glass 8
execute @s[z=-33, dz=50, scores={WorldBorder=20}] ~ ~ ~ fill 33 0 ~0 33 127 ~16 stained_glass 8
execute @s[z=33, dz=-50, scores={WorldBorder=20}] ~ ~ ~ fill 33 0 ~0 33 127 ~-16 stained_glass 8

execute @s[x=-33, dx=50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -33 ~16 127 -33 stained_glass 8
execute @s[x=33, dx=-50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -33 ~-16 127 -33 stained_glass 8
execute @s[x=-33, dx=50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 33 ~16 127 33 stained_glass 8
execute @s[x=33, dx=-50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 33 ~-16 127 33 stained_glass 8

execute @s[z=-32, dz=48, scores={WorldBorder=20}] ~ ~ ~ fill -32 128 ~0 -32 255 ~16 barrier 
execute @s[z=32, dz=-48, scores={WorldBorder=20}] ~ ~ ~ fill -32 128 ~0 -32 255 ~-16 barrier
execute @s[z=-32, dz=48, scores={WorldBorder=20}] ~ ~ ~ fill 32 128 ~0 32 255 ~16 barrier
execute @s[z=32, dz=-48, scores={WorldBorder=20}] ~ ~ ~ fill 32 128 ~0 32 255 ~-16 barrier

execute @s[x=-32, dx=48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -32 ~16 255 -32 barrier
execute @s[x=32, dx=-48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -32 ~-16 255 -32 barrier
execute @s[x=-32, dx=48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 32 ~16 255 32 barrier
execute @s[x=32, dx=-48, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 32 ~-16 255 32 barrier

execute @s[z=-33, dz=50, scores={WorldBorder=20}] ~ ~ ~ fill -33 128 ~0 -33 255 ~16 stained_glass 8
execute @s[z=33, dz=-50, scores={WorldBorder=20}] ~ ~ ~ fill -33 128 ~0 -33 255 ~-16 stained_glass 8
execute @s[z=-33, dz=50, scores={WorldBorder=20}] ~ ~ ~ fill 33 128 ~0 33 255 ~16 stained_glass 8
execute @s[z=33, dz=-50, scores={WorldBorder=20}] ~ ~ ~ fill 33 128 ~0 33 255 ~-16 stained_glass 8

execute @s[x=-33, dx=50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -33 ~16 255 -33 stained_glass 8
execute @s[x=33, dx=-50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -33 ~-16 255 -33 stained_glass 8
execute @s[x=-33, dx=50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 33 ~16 255 33 stained_glass 8
execute @s[x=33, dx=-50, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 33 ~-16 255 33 stained_glass 8
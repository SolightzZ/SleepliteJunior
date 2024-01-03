# Worldborder Addon - Floshox
# Function for World border within a 128x128 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=64, dx=999999] 63 ~ ~
execute @s ~ ~ ~ tp @p[x=-64, dx=-999999] -63 ~ ~
execute @s ~ ~ ~ tp @p[z=64, dz=999999] ~ ~ 63
execute @s ~ ~ ~ tp @p[z=-64, dz=-999999] ~ ~ -63

execute @s[z=-64, dz=112, scores={WorldBorder=20}] ~ ~ ~ fill -64 0 ~0 -64 127 ~16 barrier
execute @s[z=64, dz=-112, scores={WorldBorder=20}] ~ ~ ~ fill -64 0 ~0 -64 127 ~-16 barrier
execute @s[z=-64, dz=112, scores={WorldBorder=20}] ~ ~ ~ fill 64 0 ~0 64 127 ~16 barrier
execute @s[z=64, dz=-112, scores={WorldBorder=20}] ~ ~ ~ fill 64 0 ~0 64 127 ~-16 barrier

execute @s[x=-64, dx=112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -64 ~16 127 -64 barrier
execute @s[x=64, dx=-112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -64 ~-16 127 -64 barrier
execute @s[x=-64, dx=112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 64 ~16 127 64 barrier
execute @s[x=64, dx=-112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 64 ~-16 127 64 barrier

execute @s[z=-65, dz=114, scores={WorldBorder=20}] ~ ~ ~ fill -65 0 ~0 -65 127 ~16 stained_glass 8
execute @s[z=65, dz=-114, scores={WorldBorder=20}] ~ ~ ~ fill -65 0 ~0 -65 127 ~-16 stained_glass 8
execute @s[z=-65, dz=114, scores={WorldBorder=20}] ~ ~ ~ fill 65 0 ~0 65 127 ~16 stained_glass 8
execute @s[z=65, dz=-114, scores={WorldBorder=20}] ~ ~ ~ fill 65 0 ~0 65 127 ~-16 stained_glass 8

execute @s[x=-65, dx=114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -65 ~16 127 -65 stained_glass 8
execute @s[x=65, dx=-114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -65 ~-16 127 -65 stained_glass 8
execute @s[x=-65, dx=114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 65 ~16 127 65 stained_glass 8
execute @s[x=65, dx=-114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 65 ~-16 127 65 stained_glass 8

execute @s[z=-64, dz=112, scores={WorldBorder=20}] ~ ~ ~ fill -64 128 ~0 -64 255 ~16 barrier
execute @s[z=64, dz=-112, scores={WorldBorder=20}] ~ ~ ~ fill -64 128 ~0 -64 255 ~-16 barrier
execute @s[z=-64, dz=112, scores={WorldBorder=20}] ~ ~ ~ fill 64 128 ~0 64 255 ~16 barrier
execute @s[z=64, dz=-112, scores={WorldBorder=20}] ~ ~ ~ fill 64 128 ~0 64 255 ~-16 barrier

execute @s[x=-64, dx=112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -64 ~16 255 -64 barrier
execute @s[x=64, dx=-112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -64 ~-16 255 -64 barrier
execute @s[x=-64, dx=112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 64 ~16 255 64 barrier
execute @s[x=64, dx=-112, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 64 ~-16 255 64 barrier

execute @s[z=-65, dz=114, scores={WorldBorder=20}] ~ ~ ~ fill -65 128 ~0 -65 255 ~16 stained_glass 8
execute @s[z=65, dz=-114, scores={WorldBorder=20}] ~ ~ ~ fill -65 128 ~0 -65 255 ~-16 stained_glass 8
execute @s[z=-65, dz=114, scores={WorldBorder=20}] ~ ~ ~ fill 65 128 ~0 65 255 ~16 stained_glass 8
execute @s[z=65, dz=-114, scores={WorldBorder=20}] ~ ~ ~ fill 65 128 ~0 65 255 ~-16 stained_glass 8

execute @s[x=-65, dx=114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -65 ~16 255 -65 stained_glass 8
execute @s[x=65, dx=-114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -65 ~-16 255 -65 stained_glass 8
execute @s[x=-65, dx=114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 65 ~16 255 65 stained_glass 8
execute @s[x=65, dx=-114, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 65 ~-16 255 65 stained_glass 8
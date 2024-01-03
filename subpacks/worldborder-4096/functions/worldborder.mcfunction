# Worldborder Addon - Floshox
# Function for World border within a 4096x4096 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=2048, dx=999999] 2047 ~ ~
execute @s ~ ~ ~ tp @p[x=-2048, dx=-999999] -2047 ~ ~
execute @s ~ ~ ~ tp @p[z=2048, dz=999999] ~ ~ 2047
execute @s ~ ~ ~ tp @p[z=-2048, dz=-999999] ~ ~ -2047

execute @s[z=-2048, dz=4080, scores={WorldBorder=20}] ~ ~ ~ fill -2048 0 ~0 -2048 127 ~16 barrier
execute @s[z=2048, dz=-4080, scores={WorldBorder=20}] ~ ~ ~ fill -2048 0 ~0 -2048 127 ~-16 barrier
execute @s[z=-2048, dz=4080, scores={WorldBorder=20}] ~ ~ ~ fill 2048 0 ~0 2048 127 ~16 barrier
execute @s[z=2048, dz=-4080, scores={WorldBorder=20}] ~ ~ ~ fill 2048 0 ~0 2048 127 ~-16 barrier

execute @s[x=-2048, dx=4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -2048 ~16 127 -2048 barrier
execute @s[x=2048, dx=-4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -2048 ~-16 127 -2048 barrier
execute @s[x=-2048, dx=4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 2048 ~16 127 2048 barrier
execute @s[x=2048, dx=-4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 2048 ~-16 127 2048 barrier

execute @s[z=-2049, dz=4082, scores={WorldBorder=20}] ~ ~ ~ fill -2049 0 ~0 -2049 127 ~16 stained_glass 8
execute @s[z=2049, dz=-4082, scores={WorldBorder=20}] ~ ~ ~ fill -2049 0 ~0 -2049 127 ~-16 stained_glass 8
execute @s[z=-2049, dz=4082, scores={WorldBorder=20}] ~ ~ ~ fill 2049 0 ~0 2049 127 ~16 stained_glass 8
execute @s[z=2049, dz=-4082, scores={WorldBorder=20}] ~ ~ ~ fill 2049 0 ~0 2049 127 ~-16 stained_glass 8

execute @s[x=-2049, dx=4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -2049 ~16 127 -2049 stained_glass 8
execute @s[x=2049, dx=-4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -2049 ~-16 127 -2049 stained_glass 8
execute @s[x=-2049, dx=4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 2049 ~16 127 2049 stained_glass 8
execute @s[x=2049, dx=-4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 2049 ~-16 127 2049 stained_glass 8

execute @s[z=-2048, dz=4080, scores={WorldBorder=20}] ~ ~ ~ fill -2048 128 ~0 -2048 255 ~16 barrier
execute @s[z=2048, dz=-4080, scores={WorldBorder=20}] ~ ~ ~ fill -2048 128 ~0 -2048 255 ~-16 barrier
execute @s[z=-2048, dz=4080, scores={WorldBorder=20}] ~ ~ ~ fill 2048 128 ~0 2048 255 ~16 barrier
execute @s[z=2048, dz=-4080, scores={WorldBorder=20}] ~ ~ ~ fill 2048 128 ~0 2048 255 ~-16 barrier

execute @s[x=-2048, dx=4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -2048 ~16 255 -2048 barrier
execute @s[x=2048, dx=-4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -2048 ~-16 255 -2048 barrier
execute @s[x=-2048, dx=4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 2048 ~16 255 2048 barrier
execute @s[x=2048, dx=-4080, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 2048 ~-16 255 2048 barrier

execute @s[z=-2049, dz=4082, scores={WorldBorder=20}] ~ ~ ~ fill -2049 128 ~0 -2049 255 ~16 stained_glass 8
execute @s[z=2049, dz=-4082, scores={WorldBorder=20}] ~ ~ ~ fill -2049 128 ~0 -2049 255 ~-16 stained_glass 8
execute @s[z=-2049, dz=4082, scores={WorldBorder=20}] ~ ~ ~ fill 2049 128 ~0 2049 255 ~16 stained_glass 8
execute @s[z=2049, dz=-4082, scores={WorldBorder=20}] ~ ~ ~ fill 2049 128 ~0 2049 255 ~-16 stained_glass 8

execute @s[x=-2049, dx=4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -2049 ~16 255 -2049 stained_glass 8
execute @s[x=2049, dx=-4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -2049 ~-16 255 -2049 stained_glass 8
execute @s[x=-2049, dx=4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 2049 ~16 255 2049 stained_glass 8
execute @s[x=2049, dx=-4082, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 2049 ~-16 255 2049 stained_glass 8
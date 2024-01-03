# Worldborder Addon - Floshox
# Function for World border within a 2048x2048 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=1024, dx=999999] 1023 ~ ~
execute @s ~ ~ ~ tp @p[x=-1024, dx=-999999] -1023 ~ ~
execute @s ~ ~ ~ tp @p[z=1024, dz=999999] ~ ~ 1023
execute @s ~ ~ ~ tp @p[z=-1024, dz=-999999] ~ ~ -1023

execute @s[z=-1024, dz=2032, scores={WorldBorder=20}] ~ ~ ~ fill -1024 0 ~0 -1024 127 ~16 barrier
execute @s[z=1024, dz=-2032, scores={WorldBorder=20}] ~ ~ ~ fill -1024 0 ~0 -1024 127 ~-16 barrier
execute @s[z=-1024, dz=2032, scores={WorldBorder=20}] ~ ~ ~ fill 1024 0 ~0 1024 127 ~16 barrier
execute @s[z=1024, dz=-2032, scores={WorldBorder=20}] ~ ~ ~ fill 1024 0 ~0 1024 127 ~-16 barrier

execute @s[x=-1024, dx=2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -1024 ~16 127 -1024 barrier
execute @s[x=1024, dx=-2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -1024 ~-16 127 -1024 barrier
execute @s[x=-1024, dx=2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 1024 ~16 127 1024 barrier
execute @s[x=1024, dx=-2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 1024 ~-16 127 1024 barrier

execute @s[z=-1025, dz=2034, scores={WorldBorder=20}] ~ ~ ~ fill -1025 0 ~0 -1025 127 ~16 stained_glass 8
execute @s[z=1025, dz=-2034, scores={WorldBorder=20}] ~ ~ ~ fill -1025 0 ~0 -1025 127 ~-16 stained_glass 8
execute @s[z=-1025, dz=2034, scores={WorldBorder=20}] ~ ~ ~ fill 1025 0 ~0 1025 127 ~16 stained_glass 8
execute @s[z=1025, dz=-2034, scores={WorldBorder=20}] ~ ~ ~ fill 1025 0 ~0 1025 127 ~-16 stained_glass 8

execute @s[x=-1025, dx=2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -1025 ~16 127 -1025 stained_glass 8
execute @s[x=1025, dx=-2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -1025 ~-16 127 -1025 stained_glass 8
execute @s[x=-1025, dx=2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 1025 ~16 127 1025 stained_glass 8
execute @s[x=1025, dx=-2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 1025 ~-16 127 1025 stained_glass 8

execute @s[z=-1024, dz=2032, scores={WorldBorder=20}] ~ ~ ~ fill -1024 128 ~0 -1024 255 ~16 barrier
execute @s[z=1024, dz=-2032, scores={WorldBorder=20}] ~ ~ ~ fill -1024 128 ~0 -1024 255 ~-16 barrier
execute @s[z=-1024, dz=2032, scores={WorldBorder=20}] ~ ~ ~ fill 1024 128 ~0 1024 255 ~16 barrier
execute @s[z=1024, dz=-2032, scores={WorldBorder=20}] ~ ~ ~ fill 1024 128 ~0 1024 255 ~-16 barrier

execute @s[x=-1024, dx=2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -1024 ~16 255 -1024 barrier
execute @s[x=1024, dx=-2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -1024 ~-16 255 -1024 barrier
execute @s[x=-1024, dx=2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 1024 ~16 255 1024 barrier
execute @s[x=1024, dx=-2032, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 1024 ~-16 255 1024 barrier

execute @s[z=-1025, dz=2034, scores={WorldBorder=20}] ~ ~ ~ fill -1025 128 ~0 -1025 255 ~16 stained_glass 8
execute @s[z=1025, dz=-2034, scores={WorldBorder=20}] ~ ~ ~ fill -1025 128 ~0 -1025 255 ~-16 stained_glass 8
execute @s[z=-1025, dz=2034, scores={WorldBorder=20}] ~ ~ ~ fill 1025 128 ~0 1025 255 ~16 stained_glass 8
execute @s[z=1025, dz=-2034, scores={WorldBorder=20}] ~ ~ ~ fill 1025 128 ~0 1025 255 ~-16 stained_glass 8

execute @s[x=-1025, dx=2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -1025 ~16 255 -1025 stained_glass 8
execute @s[x=1025, dx=-2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -1025 ~-16 255 -1025 stained_glass 8
execute @s[x=-1025, dx=2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 1025 ~16 255 1025 stained_glass 8
execute @s[x=1025, dx=-2034, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 1025 ~-16 255 1025 stained_glass 8
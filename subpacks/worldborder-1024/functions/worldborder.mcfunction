# Worldborder Addon - Floshox
# Function for World border within a 1024x1024 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=512, dx=999999] 511 ~ ~
execute @s ~ ~ ~ tp @p[x=-512, dx=-999999] -511 ~ ~
execute @s ~ ~ ~ tp @p[z=512, dz=999999] ~ ~ 511
execute @s ~ ~ ~ tp @p[z=-512, dz=-999999] ~ ~ -511

execute @s[z=-512, dz=1008, scores={WorldBorder=20}] ~ ~ ~ fill -512 0 ~0 -512 127 ~16 barrier
execute @s[z=512, dz=-1008, scores={WorldBorder=20}] ~ ~ ~ fill -512 0 ~0 -512 127 ~-16 barrier
execute @s[z=-512, dz=1008, scores={WorldBorder=20}] ~ ~ ~ fill 512 0 ~0 512 127 ~16 barrier
execute @s[z=512, dz=-1008, scores={WorldBorder=20}] ~ ~ ~ fill 512 0 ~0 512 127 ~-16 barrier

execute @s[x=-512, dx=1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -512 ~16 127 -512 barrier
execute @s[x=512, dx=-1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -512 ~-16 127 -512 barrier
execute @s[x=-512, dx=1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 512 ~16 127 512 barrier
execute @s[x=512, dx=-1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 512 ~-16 127 512 barrier

execute @s[z=-513, dz=1010, scores={WorldBorder=20}] ~ ~ ~ fill -513 0 ~0 -513 127 ~16 stained_glass 8
execute @s[z=513, dz=-1010, scores={WorldBorder=20}] ~ ~ ~ fill -513 0 ~0 -513 127 ~-16 stained_glass 8
execute @s[z=-513, dz=1010, scores={WorldBorder=20}] ~ ~ ~ fill 513 0 ~0 513 127 ~16 stained_glass 8
execute @s[z=513, dz=-1010, scores={WorldBorder=20}] ~ ~ ~ fill 513 0 ~0 513 127 ~-16 stained_glass 8

execute @s[x=-513, dx=1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -513 ~16 127 -513 stained_glass 8
execute @s[x=513, dx=-1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -513 ~-16 127 -513 stained_glass 8
execute @s[x=-513, dx=1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 513 ~16 127 513 stained_glass 8
execute @s[x=513, dx=-1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 513 ~-16 127 513 stained_glass 8

execute @s[z=-512, dz=1008, scores={WorldBorder=20}] ~ ~ ~ fill -512 128 ~0 -512 255 ~16 barrier
execute @s[z=512, dz=-1008, scores={WorldBorder=20}] ~ ~ ~ fill -512 128 ~0 -512 255 ~-16 barrier
execute @s[z=-512, dz=1008, scores={WorldBorder=20}] ~ ~ ~ fill 512 128 ~0 512 255 ~16 barrier
execute @s[z=512, dz=-1008, scores={WorldBorder=20}] ~ ~ ~ fill 512 128 ~0 512 255 ~-16 barrier

execute @s[x=-512, dx=1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -512 ~16 255 -512 barrier
execute @s[x=512, dx=-1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -512 ~-16 255 -512 barrier
execute @s[x=-512, dx=1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 512 ~16 255 512 barrier
execute @s[x=512, dx=-1008, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 512 ~-16 255 512 barrier

execute @s[z=-513, dz=1010, scores={WorldBorder=20}] ~ ~ ~ fill -513 128 ~0 -513 255 ~16 stained_glass 8
execute @s[z=513, dz=-1010, scores={WorldBorder=20}] ~ ~ ~ fill -513 128 ~0 -513 255 ~-16 stained_glass 8
execute @s[z=-513, dz=1010, scores={WorldBorder=20}] ~ ~ ~ fill 513 128 ~0 513 255 ~16 stained_glass 8
execute @s[z=513, dz=-1010, scores={WorldBorder=20}] ~ ~ ~ fill 513 128 ~0 513 255 ~-16 stained_glass 8

execute @s[x=-513, dx=1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -513 ~16 255 -513 stained_glass 8
execute @s[x=513, dx=-1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -513 ~-16 255 -513 stained_glass 8
execute @s[x=-513, dx=1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 513 ~16 255 513 stained_glass 8
execute @s[x=513, dx=-1010, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 513 ~-16 255 513 stained_glass 8
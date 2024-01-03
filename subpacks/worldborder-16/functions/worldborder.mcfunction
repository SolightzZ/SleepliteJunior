# Worldborder Addon - Floshox
# Function for World border within a 16x16 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=8, dx=999999] 7 ~ ~
execute @s ~ ~ ~ tp @p[x=-8, dx=-999999] -7 ~ ~
execute @s ~ ~ ~ tp @p[z=8, dz=999999] ~ ~ 7
execute @s ~ ~ ~ tp @p[z=-8, dz=-999999] ~ ~ -7

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 0 -8 -8 127 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 8 0 -8 8 127 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 0 8 8 127 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 0 -8 8 127 -8 barrier

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 0 -9 -9 127 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 9 0 -9 9 127 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 0 9 9 127 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 0 -9 9 127 -9 stained_glass 8

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 128 -8 -8 255 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 8 128 -8 8 255 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 128 8 8 255 8 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -8 128 -8 8 255 -8 barrier

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 128 -9 -9 255 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 9 128 -9 9 255 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 128 9 9 255 9 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -9 128 -9 9 255 -9 stained_glass 8
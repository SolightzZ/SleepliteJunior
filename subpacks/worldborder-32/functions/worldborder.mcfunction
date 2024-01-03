# Worldborder Addon - Floshox
# Function for World border within a 32x32 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=16, dx=999999] 15 ~ ~
execute @s ~ ~ ~ tp @p[x=-16, dx=-999999] -15 ~ ~
execute @s ~ ~ ~ tp @p[z=16, dz=999999] ~ ~ 15
execute @s ~ ~ ~ tp @p[z=-16, dz=-999999] ~ ~ -15

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 0 -16 -16 127 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 16 0 -16 16 127 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 0 16 16 127 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 0 -16 16 127 -16 barrier

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 0 -17 -17 127 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 17 0 -17 17 127 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 0 17 17 127 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 0 -17 17 127 -17 stained_glass 8

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 128 -16 -16 255 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 16 128 -16 16 255 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 128 16 16 255 16 barrier
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -16 128 -16 16 255 -16 barrier

execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 128 -17 -17 255 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill 17 128 -17 17 255 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 128 17 17 255 17 stained_glass 8
execute @s[scores={WorldBorder=20}] ~ ~ ~ fill -17 128 -17 17 255 -17 stained_glass 8


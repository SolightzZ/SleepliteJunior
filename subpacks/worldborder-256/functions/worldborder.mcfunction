# Worldborder Addon - Floshox
# Function for World border within a 256x256 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=128, dx=999999] 127 ~ ~
execute @s ~ ~ ~ tp @p[x=-128, dx=-999999] -127 ~ ~
execute @s ~ ~ ~ tp @p[z=128, dz=999999] ~ ~ 127
execute @s ~ ~ ~ tp @p[z=-128, dz=-999999] ~ ~ -127

execute @s[z=-128, dz=240, scores={WorldBorder=20}] ~ ~ ~ fill -128 0 ~0 -128 127 ~16 barrier
execute @s[z=128, dz=-240, scores={WorldBorder=20}] ~ ~ ~ fill -128 0 ~0 -128 127 ~-16 barrier
execute @s[z=-128, dz=240, scores={WorldBorder=20}] ~ ~ ~ fill 128 0 ~0 128 127 ~16 barrier
execute @s[z=128, dz=-240, scores={WorldBorder=20}] ~ ~ ~ fill 128 0 ~0 128 127 ~-16 barrier

execute @s[x=-128, dx=240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -128 ~16 127 -128 barrier
execute @s[x=128, dx=-240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -128 ~-16 127 -128 barrier
execute @s[x=-128, dx=240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 128 ~16 127 128 barrier
execute @s[x=128, dx=-240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 128 ~-16 127 128 barrier

execute @s[z=-129, dz=242, scores={WorldBorder=20}] ~ ~ ~ fill -129 0 ~0 -129 127 ~16 stained_glass 8
execute @s[z=129, dz=-242, scores={WorldBorder=20}] ~ ~ ~ fill -129 0 ~0 -129 127 ~-16 stained_glass 8
execute @s[z=-129, dz=242, scores={WorldBorder=20}] ~ ~ ~ fill 129 0 ~0 129 127 ~16 stained_glass 8
execute @s[z=129, dz=-242, scores={WorldBorder=20}] ~ ~ ~ fill 129 0 ~0 129 127 ~-16 stained_glass 8

execute @s[x=-129, dx=242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -129 ~16 127 -129 stained_glass 8
execute @s[x=129, dx=-242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -129 ~-16 127 -129 stained_glass 8
execute @s[x=-129, dx=242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 129 ~16 127 129 stained_glass 8
execute @s[x=129, dx=-242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 129 ~-16 127 129 stained_glass 8

execute @s[z=-128, dz=240, scores={WorldBorder=20}] ~ ~ ~ fill -128 128 ~0 -128 255 ~16 barrier
execute @s[z=128, dz=-240, scores={WorldBorder=20}] ~ ~ ~ fill -128 128 ~0 -128 255 ~-16 barrier
execute @s[z=-128, dz=240, scores={WorldBorder=20}] ~ ~ ~ fill 128 128 ~0 128 255 ~16 barrier
execute @s[z=128, dz=-240, scores={WorldBorder=20}] ~ ~ ~ fill 128 128 ~0 128 255 ~-16 barrier

execute @s[x=-128, dx=240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -128 ~16 255 -128 barrier
execute @s[x=128, dx=-240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -128 ~-16 255 -128 barrier
execute @s[x=-128, dx=240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 128 ~16 255 128 barrier
execute @s[x=128, dx=-240, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 128 ~-16 255 128 barrier

execute @s[z=-129, dz=242, scores={WorldBorder=20}] ~ ~ ~ fill -129 128 ~0 -129 255 ~16 stained_glass 8
execute @s[z=129, dz=-242, scores={WorldBorder=20}] ~ ~ ~ fill -129 128 ~0 -129 255 ~-16 stained_glass 8
execute @s[z=-129, dz=242, scores={WorldBorder=20}] ~ ~ ~ fill 129 128 ~0 129 255 ~16 stained_glass 8
execute @s[z=129, dz=-242, scores={WorldBorder=20}] ~ ~ ~ fill 129 128 ~0 129 255 ~-16 stained_glass 8

execute @s[x=-129, dx=242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -129 ~16 255 -129 stained_glass 8
execute @s[x=129, dx=-242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -129 ~-16 255 -129 stained_glass 8
execute @s[x=-129, dx=242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 129 ~16 255 129 stained_glass 8
execute @s[x=129, dx=-242, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 129 ~-16 255 129 stained_glass 8
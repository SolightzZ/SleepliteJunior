# Worldborder Addon - Floshox
# Function for World border within a 20000x20000 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=10000, dx=999999] 9999 ~ ~
execute @s ~ ~ ~ tp @p[x=-10000, dx=-999999] -9999 ~ ~
execute @s ~ ~ ~ tp @p[z=10000, dz=999999] ~ ~ 9999
execute @s ~ ~ ~ tp @p[z=-10000, dz=-999999] ~ ~ -9999

execute @s[z=-10000, dz=19984, scores={WorldBorder=20}] ~ ~ ~ fill -10000 0 ~0 -10000 127 ~16 barrier
execute @s[z=10000, dz=-19984, scores={WorldBorder=20}] ~ ~ ~ fill -10000 0 ~0 -10000 127 ~-16 barrier
execute @s[z=-10000, dz=19984, scores={WorldBorder=20}] ~ ~ ~ fill 10000 0 ~0 10000 127 ~16 barrier
execute @s[z=10000, dz=-19984, scores={WorldBorder=20}] ~ ~ ~ fill 10000 0 ~0 10000 127 ~-16 barrier

execute @s[x=-10000, dx=19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -10000 ~16 127 -10000 barrier
execute @s[x=10000, dx=-19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -10000 ~-16 127 -10000 barrier
execute @s[x=-10000, dx=19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 10000 ~16 127 10000 barrier
execute @s[x=10000, dx=-19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 10000 ~-16 127 10000 barrier

execute @s[z=-10001, dz=19986, scores={WorldBorder=20}] ~ ~ ~ fill -10001 0 ~0 -10001 127 ~16 stained_glass 8
execute @s[z=10001, dz=-19986, scores={WorldBorder=20}] ~ ~ ~ fill -10001 0 ~0 -10001 127 ~-16 stained_glass 8
execute @s[z=-10001, dz=19986, scores={WorldBorder=20}] ~ ~ ~ fill 10001 0 ~0 10001 127 ~16 stained_glass 8
execute @s[z=10001, dz=-19986, scores={WorldBorder=20}] ~ ~ ~ fill 10001 0 ~0 10001 127 ~-16 stained_glass 8

execute @s[x=-10001, dx=19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -10001 ~16 127 -10001 stained_glass 8
execute @s[x=10001, dx=-19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -10001 ~-16 127 -10001 stained_glass 8
execute @s[x=-10001, dx=19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 10001 ~16 127 10001 stained_glass 8
execute @s[x=10001, dx=-19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 10001 ~-16 127 10001 stained_glass 8

execute @s[z=-10000, dz=19984, scores={WorldBorder=20}] ~ ~ ~ fill -10000 128 ~0 -10000 255 ~16 barrier
execute @s[z=10000, dz=-19984, scores={WorldBorder=20}] ~ ~ ~ fill -10000 128 ~0 -10000 255 ~-16 barrier
execute @s[z=-10000, dz=19984, scores={WorldBorder=20}] ~ ~ ~ fill 10000 128 ~0 10000 255 ~16 barrier
execute @s[z=10000, dz=-19984, scores={WorldBorder=20}] ~ ~ ~ fill 10000 128 ~0 10000 255 ~-16 barrier

execute @s[x=-10000, dx=19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -10000 ~16 255 -10000 barrier
execute @s[x=10000, dx=-19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -10000 ~-16 255 -10000 barrier
execute @s[x=-10000, dx=19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 10000 ~16 255 10000 barrier
execute @s[x=10000, dx=-19984, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 10000 ~-16 255 10000 barrier

execute @s[z=-10001, dz=19986, scores={WorldBorder=20}] ~ ~ ~ fill -10001 128 ~0 -10001 255 ~16 stained_glass 8
execute @s[z=10001, dz=-19986, scores={WorldBorder=20}] ~ ~ ~ fill -10001 128 ~0 -10001 255 ~-16 stained_glass 8
execute @s[z=-10001, dz=19986, scores={WorldBorder=20}] ~ ~ ~ fill 10001 128 ~0 10001 255 ~16 stained_glass 8
execute @s[z=10001, dz=-19986, scores={WorldBorder=20}] ~ ~ ~ fill 10001 128 ~0 10001 255 ~-16 stained_glass 8

execute @s[x=-10001, dx=19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -10001 ~16 255 -10001 stained_glass 8
execute @s[x=10001, dx=-19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -10001 ~-16 255 -10001 stained_glass 8
execute @s[x=-10001, dx=19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 10001 ~16 255 10001 stained_glass 8
execute @s[x=10001, dx=-19986, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 10001 ~-16 255 10001 stained_glass 8
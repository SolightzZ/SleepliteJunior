# Worldborder Addon - Floshox
# Function for World border within a 512x512 area

setworldspawn 0 80 0

scoreboard objectives add WorldBorder dummy
scoreboard players add @s WorldBorder 1
scoreboard players set @s[scores={WorldBorder=21..}] WorldBorder 1

execute @s ~ ~ ~ tp @p[y=256, dy=10] ~ 255 ~
execute @s ~ ~ ~ effect @s[y=256, dy=10] slow_falling 10 0 true

execute @s ~ ~ ~ tp @p[x=256, dx=999999] 255 ~ ~
execute @s ~ ~ ~ tp @p[x=-256, dx=-999999] -255 ~ ~
execute @s ~ ~ ~ tp @p[z=256, dz=999999] ~ ~ 255
execute @s ~ ~ ~ tp @p[z=-256, dz=-999999] ~ ~ -255

execute @s[z=-256, dz=496, scores={WorldBorder=20}] ~ ~ ~ fill -256 0 ~0 -256 127 ~16 barrier
execute @s[z=256, dz=-496, scores={WorldBorder=20}] ~ ~ ~ fill -256 0 ~0 -256 127 ~-16 barrier
execute @s[z=-256, dz=496, scores={WorldBorder=20}] ~ ~ ~ fill 256 0 ~0 256 127 ~16 barrier
execute @s[z=256, dz=-496, scores={WorldBorder=20}] ~ ~ ~ fill 256 0 ~0 256 127 ~-16 barrier

execute @s[x=-256, dx=496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -256 ~16 127 -256 barrier
execute @s[x=256, dx=-496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -256 ~-16 127 -256 barrier
execute @s[x=-256, dx=496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 256 ~16 127 256 barrier
execute @s[x=256, dx=-496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 256 ~-16 127 256 barrier

execute @s[z=-257, dz=498, scores={WorldBorder=20}] ~ ~ ~ fill -257 0 ~0 -257 127 ~16 stained_glass 8
execute @s[z=257, dz=-498, scores={WorldBorder=20}] ~ ~ ~ fill -257 0 ~0 -257 127 ~-16 stained_glass 8
execute @s[z=-257, dz=498, scores={WorldBorder=20}] ~ ~ ~ fill 257 0 ~0 257 127 ~16 stained_glass 8
execute @s[z=257, dz=-498, scores={WorldBorder=20}] ~ ~ ~ fill 257 0 ~0 257 127 ~-16 stained_glass 8

execute @s[x=-257, dx=498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -257 ~16 127 -257 stained_glass 8
execute @s[x=257, dx=-498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 -257 ~-16 127 -257 stained_glass 8
execute @s[x=-257, dx=498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 257 ~16 127 257 stained_glass 8
execute @s[x=257, dx=-498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 0 257 ~-16 127 257 stained_glass 8

execute @s[z=-256, dz=496, scores={WorldBorder=20}] ~ ~ ~ fill -256 128 ~0 -256 255 ~16 barrier
execute @s[z=256, dz=-496, scores={WorldBorder=20}] ~ ~ ~ fill -256 128 ~0 -256 255 ~-16 barrier
execute @s[z=-256, dz=496, scores={WorldBorder=20}] ~ ~ ~ fill 256 128 ~0 256 255 ~16 barrier
execute @s[z=256, dz=-496, scores={WorldBorder=20}] ~ ~ ~ fill 256 128 ~0 256 255 ~-16 barrier

execute @s[x=-256, dx=496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -256 ~16 255 -256 barrier
execute @s[x=256, dx=-496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -256 ~-16 255 -256 barrier
execute @s[x=-256, dx=496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 256 ~16 255 256 barrier
execute @s[x=256, dx=-496, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 256 ~-16 255 256 barrier

execute @s[z=-257, dz=498, scores={WorldBorder=20}] ~ ~ ~ fill -257 128 ~0 -257 255 ~16 stained_glass 8
execute @s[z=257, dz=-498, scores={WorldBorder=20}] ~ ~ ~ fill -257 128 ~0 -257 255 ~-16 stained_glass 8
execute @s[z=-257, dz=498, scores={WorldBorder=20}] ~ ~ ~ fill 257 128 ~0 257 255 ~16 stained_glass 8
execute @s[z=257, dz=-498, scores={WorldBorder=20}] ~ ~ ~ fill 257 128 ~0 257 255 ~-16 stained_glass 8

execute @s[x=-257, dx=498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -257 ~16 255 -257 stained_glass 8
execute @s[x=257, dx=-498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 -257 ~-16 255 -257 stained_glass 8
execute @s[x=-257, dx=498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 257 ~16 255 257 stained_glass 8
execute @s[x=257, dx=-498, scores={WorldBorder=20}] ~ ~ ~ fill ~0 128 257 ~-16 255 257 stained_glass 8
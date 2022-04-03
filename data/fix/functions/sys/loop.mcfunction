# Reset
scoreboard players set $SC2-CheckUUID Ryukkun.Check 0
scoreboard players set $SC2-loop Ryukkun.Check 0


# 比較
data modify storage ryukkun:uuids fix.my_uuid_c set from storage ryukkun:uuids fix.my_uuid
execute store success score $SC2-CheckUUID Ryukkun.Check run data modify storage ryukkun:uuids fix.my_uuid_c set from storage ryukkun:uuids fix.players[-1]
data modify storage ryukkun:uuids fix.output prepend from storage ryukkun:uuids fix.players[-1]
data remove storage ryukkun:uuids fix.players[-1]

# 比較結果から修正
execute if score $SC2-CheckUUID Ryukkun.Check matches 0 run scoreboard players add $FixUUID-Count Ryukkun.Check 1
execute if score $SC2-CheckUUID Ryukkun.Check matches 0 if score $FixUUID-Count Ryukkun.Check matches 2.. run data modify storage ryukkun:uuids fix.output[0] set value [I;]
#tellraw @a [{"nbt":"fix.players","storage":"ryukkun:uuids","color":"white"},{"text":"\n output","color": "aqua"},{"nbt":"fix.output","storage":"ryukkun:uuids","color":"white"},{"text":"\n-----------------------------------"}]

# 続行確認
execute store success score $SC2-loop Ryukkun.Check run data get storage ryukkun:uuids fix.players[-1]
execute if score $SC2-loop Ryukkun.Check matches 1 run function fix:sys/loop
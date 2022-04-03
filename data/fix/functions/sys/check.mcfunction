# Reset
data remove storage ryukkun:uuids fix
scoreboard players set $SC1-players Ryukkun.Check 0
scoreboard players set $SC1-UUID Ryukkun.Check 0

# data get
execute store success score $SC1-players Ryukkun.Check run data modify storage ryukkun:uuids fix.players set from storage kh:uuids players
execute store success score $SC1-UUID Ryukkun.Check run data modify storage ryukkun:uuids fix.my_uuid set from entity @s UUID

# 疑心暗鬼
execute if score $SC1-players Ryukkun.Check matches 1 if score $SC1-UUID Ryukkun.Check matches 1 run function fix:sys/run

# メッセージ こんなエラーメッセージ絶対出んと思うけどな
#execute if score $SC1-players Ryukkun.Check matches 0 run tellraw @a "[Error] Fix-UUIDs >> kh:uuidsが見つかりません"
#execute if score $SC1-UUID Ryukkun.Check matches 0 run tellraw @a "[Error] Fix-UUIDs >> 実行者のUUIDが見つかりません"
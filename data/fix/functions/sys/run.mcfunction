# Fix
scoreboard players set $FixUUID-Count Ryukkun.Check 0
function fix:sys/loop
execute if score $FixUUID-Count Ryukkun.Check matches 2.. run data modify storage kh:uuids players set from storage ryukkun:uuids fix.output

# メッセージ
execute if score $FixUUID-Count Ryukkun.Check matches 2.. run tellraw @a [{"text":" - ","color":"white"},{"selector":"@s","color":"aqua","bold":true},{"text":"の","color":"gray","bold":false},{"text":"MCIDの変更","color":"yellow","bold":true},{"text":"または","color":"gray","bold":false},{"text":"その履歴","color":"yellow","bold":true},{"text":"を検知したため、修復しました","color":"gray","bold":false}]

tag @s remove Ryukkun.Hatukakiko-Domo
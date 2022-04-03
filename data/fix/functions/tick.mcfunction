# 常時実行コマンドは3つだけ! 軽いね!
execute as @a[scores={gm_id=1..}] unless entity @s[scores={Ryukkun.Check=1}] run tag @s add Ryukkun.Hatukakiko-Domo
execute as @r[tag=Ryukkun.Hatukakiko-Domo] run function fix:sys/check
scoreboard players set @a Ryukkun.Check 1
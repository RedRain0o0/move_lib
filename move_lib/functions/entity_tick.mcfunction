scoreboard players set @s Stand 0
scoreboard players set @s Walk 0
scoreboard players set @s Jump 0
scoreboard players set @s Fall 0
scoreboard players operation @s X.1 >< @s X.2
scoreboard players operation @s Y.1 >< @s Y.2
scoreboard players operation @s Z.1 >< @s Z.2
execute store result score @s X.1 run data get entity @s Pos[0] 1000
execute store result score @s Y.1 run data get entity @s Pos[1] 1000
execute store result score @s Z.1 run data get entity @s Pos[2] 1000

execute if score @s X.1 = @s X.2 run scoreboard players set @s Stand 1
execute if score @s Z.1 = @s Z.2 run scoreboard players set @s Stand 1
execute unless score @s X.1 = @s X.2 run scoreboard players set @s Walk 1
execute unless score @s Z.1 = @s Z.2 run scoreboard players set @s Walk 1
execute unless score @s Y.1 <= @s Y.2 run scoreboard players set @s Jump 1
execute unless score @s Y.1 >= @s Y.2 run scoreboard players set @s Fall 1

execute if score @s Stand matches 1 run scoreboard players set @s Move 0
execute if score @s Walk matches 1 run scoreboard players set @s Move 1
execute if score @s Jump matches 1 run scoreboard players set @s Move 2
execute if score @s Fall matches 1 run scoreboard players set @s Move 3

execute if score @s Walk matches 1 run title @s actionbar {"text":"Walking"}
execute if score @s Stand matches 1 run title @s actionbar {"text":"Standing"}
execute if score @s Jump matches 1 run title @s actionbar {"text":"Jumping"}
execute if score @s Fall matches 1 run title @s actionbar {"text":"Falling"}
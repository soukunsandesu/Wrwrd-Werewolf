scoreboard players set @s Drunk 0
execute if score #Thief wrwrSettings matches 1 run loot give @s loot wmw:item/role_book
execute if score #Thief wrwrSettings matches 1 run loot give @s loot wmw:item/run_books
execute if score #Thief wrwrSettings matches 0 run loot give @s loot wmw:item/books
scoreboard players set @s Drunk 3

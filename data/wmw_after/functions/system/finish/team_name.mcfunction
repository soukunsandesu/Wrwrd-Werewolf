#酔っ払いチーム
execute if score #Drunk wrwrSettings matches 1 run team add Drunk
execute if score #Drunk wrwrSettings matches 1 run team modify Drunk suffix {"translate":"(%s)","color": "white","with":[{"text":"酔っ払い","color":"gold"}]}
execute if score #Drunk wrwrSettings matches 1 run team join Drunk @a[scores={Drunk=1..}]
#地縛霊チーム
execute if score #Haunting wrwrSettings matches 1 run team add Haunting
execute if score #Haunting wrwrSettings matches 1 run team modify Haunting suffix {"translate":"(%s)","color": "white","with":[{"text":"地縛霊","color":"light_purple"}]}
execute if score #Haunting wrwrSettings matches 1 run team join Haunting @a[scores={Haunting=1..}]
#酔っ払い&地縛霊チーム
execute if score #Drunk wrwrSettings matches 1 if score #Haunting wrwrSettings matches 1 if entity @a[scores={Drunk=1..,Haunting=1..}] run team add DoubleSubRole
execute if score #Drunk wrwrSettings matches 1 if score #Haunting wrwrSettings matches 1 if entity @a[scores={Drunk=1..,Haunting=1..}] run team modify DoubleSubRole suffix {"translate":"(%s&%s)","color": "white","with":[{"text":"酔っ払い","color":"gold"},{"text":"地縛霊","color":"light_purple"}]}
execute if score #Drunk wrwrSettings matches 1 if score #Haunting wrwrSettings matches 1 as @a[scores={Drunk=1..,Haunting=1..}] run team join DoubleSubRole @s
#兄チーム
execute if score #Brother wrwrSettings matches 1 run team add Brother
execute if score #Brother wrwrSettings matches 1 run team modify Brother suffix {"translate":"(%s)","color": "white","with":[{"text":"兄","color":"dark_green"}]}
execute if score #Brother wrwrSettings matches 1 run team join Brother @a[scores={PrevRole=8}]

tellraw @a[tag=!ed] {"rawtext":[{"text":"\n[True Crafter Mode §r] の導入に成功しました。\n[True Crafter Mode §r] has been installed.\n\n他ならぬ貴方の望みによって、この旅路は苦難に満ちたものだと約束された。\nAs you wish, your journey will be full of hardship.\n\nCreated by §gZexvideo"}]}

tag @a[tag=!ed] add ed

kill @e[type=item,name=Icewalk]


#execute @e[type=zex:fireball_d] ~~~ tp @s ~~~ facing @p
#execute @e[type=zex:fireball_d] ~~~ tp @s ^^^1

execute @e[tag=has.target] ~~~ function door

execute @e[type=zex:iceball] ~~~ particle zex:ice_particle ~~~
execute @e[type=zex:enderball] ~~~ particle minecraft:dragon_breath_trail ~~~
execute @e[type=zex:frost] ~~~ particle zex:ice_particle ~~1~
execute @e[type=zex:spider_b2] ~~~ particle zex:poison_wire_dust_particle ~~~
execute @e[type=zex:spider_b1] ~~~ particle minecraft:llama_spit_smoke ~~~

execute @e[family=monster] ~~~ detect ~~~ torch -1 fill ~~~ ~~~ air 0 destroy
execute @e[family=monster] ~~~ detect ~~1~ torch -1 fill ~~1~ ~~1~ air 0 destroy

execute @a[tag=knockup] ~~~ function knockup
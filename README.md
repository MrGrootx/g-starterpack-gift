
# ESX with [ox_inventory](https://github.com/overextended/ox_inventory/releases/tag/v2.40.2)
#### If using ESX, add the following lines to your `es_extended -> config.lua` Replace with `Config.StartingInventoryItems = false`

```lua
Config.StartingInventoryItems = {
	starter_pack = 1,
}
```
#### Add this item to your `ox_inventory -> data -> items.lua`
```lua
	["starter_pack"] = {
		label = "Starter Pack",
		weight = 3,
		stack = true,
		close = false,
		description = "Starter Pack",
		client = {
			image = "starter_pack.png",
		}
	},
```
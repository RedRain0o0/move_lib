## What is this?
Move Lib is a simple library to decipher if an entity is moving, jumping, or falling
##### THIS IS NOT A LIBRARY FOR MOVING ENTITIES
## How do I use this library?
 1. Add `move_lib` and its files to your packs data folder.
 2. Add `move_lib:load` and `move_lib:tick` to you `tick.json` and `load.json` files.
 3. Give any entity you want to track the tag `move_monitored`
You did it! The entity should now have a score under the Scoreboard `Move`.
If the score is `0`, the entity is standing.
If the score is `1`, the entity is walking.
If the score is `2`, the entity is jumping.
If the score is `3`, the entity is falling.

# Endless maze 2D - A boring but diversification Maze game

 [中文版戳这](README.md)

## Introduction

English is not my mother tongue, please forgive the wrong expression.

This is a maze game developed with godot. This game is still under development. This is just Version 1. This is currently a very boring game. But in the future, this game will move towards diversified goals.

I look forward to making "Endless maze 2D" into a comprehensive adventure game, there are many institutions, and even considering adding a plot.

## How to play

Use keyboard Up, down, left and right control, support Joystick also. Go to the position of the red flag to enter the next level.

## Future development

1. Various maps
2. Organs, triggers, etc. (Development towards adventure games)
3. Mobile support
4. Randomly generate levels
5. For more ideas please mention issue

## Create your own level

1. Create `Node2D` as root node.
2. Use the `TileMap` node to create floors and walls (` tileset` in res: //Cave/tile/tileset.res)
3. It is recommended to use land.jpg to add a route first, and then use stone.jpg to build a wall next to the road. (Only stone has collision, does land not affect operation)
4. Add the objects in res: // object. Usually you need at least `DestinationFlag` as the destination and` Player` as the player instance (the root node named `PlayerBody`, please do not modify)
5. `Camera2D` is optional, if added, it can make the screen follow the player and be used to make a big map.
6. If you use `key`, please set` Key Name` of `key` and `thing Name` of ` Door`. When the two match, the door will be opened and the player can pass through.
7. When the user reaches the end point, the address of `Next Level` will be loaded. For example, "res: //Cave/02.tscn", you need to set it to the next level

## Problems

- Maps and other nodes (Door, key, player) will jitter.
- You can only take one thing, if you take the second, it will overwrite the first
- Ugly
- Code mess
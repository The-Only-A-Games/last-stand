
# README: 3D Top-Down Arena Shooter - “Last Stand”

---

## Game Overview

**Title:** Last Stand  
**Genre:** 3D Top-Down Arena Shooter  
**Perspective:** Top-down camera  
**Platform:** PC/Desktop (Godot Engine)  
**Core Concept:** Survive endless waves of enemies in a simple arena by shooting and dodging.

---

## Core Gameplay Features

- **Player controls:**  
  - Move with WASD (or arrow keys)  
  - Aim with mouse pointer  
  - Shoot projectile toward mouse direction  
- **Enemies:**  
  - Spawn randomly around the arena edges  
  - Move towards the player  
  - Deal damage if they collide with the player  
- **Health system:**  
  - Player and enemies have health points  
  - Player dies if health reaches zero (game over)  
- **UI:**  
  - Display player health bar  
  - Show current score (enemies defeated)  
  - Show current wave number  

---

## Basic Dungeon (Arena) Layout

```
+------------------------------------+
|                                    |
|         [Enemy Spawn Zone]          |
|   +----------------------------+   |
|   |                            |   |
|   |                            |   |
|   |         [Arena Floor]       |   |
|   |                            |   |
|   |                            |   |
|   +----------------------------+   |
|         [Enemy Spawn Zone]          |
|                                    |
+------------------------------------+
```

- **Arena size:** A simple square or circular flat floor.  
- **Enemy Spawn Zones:** Areas around the edges or corners of the arena where enemies appear.  
- **Player Start Position:** Center of the arena.  

---

## Agile Iteration Plan

### Iteration 1: Core Player Movement & Shooting (1 week)  
- Player movement with WASD  
- Mouse aiming and shooting projectiles  
- Basic projectile behavior (move forward, detect collision)  
- Health system for player (damage, death)  

### Iteration 2: Enemy AI & Basic Combat (1 week)  
- Enemy spawn system at arena edges  
- Enemies move towards player  
- Enemies deal damage on collision  
- Enemy health and death  

### Iteration 3: UI & Score System (1 week)  
- Player health bar display  
- Score and wave number display  
- Game over screen  

### Iteration 4: Wave System & Difficulty Progression (1 week)  
- Enemies spawn in waves with increasing difficulty  
- Delay between waves  
- Player can survive multiple waves  

### Iteration 5: Polish Core Gameplay (2 week)  
- Smooth controls and animations (if any)  
- Sound effects (optional)  
- Bug fixes and balancing  

---

## Notes Before Asset Creation

- Focus on gameplay mechanics first (iterations 1-5).  
- Use simple placeholder shapes (cubes, spheres) for player and enemies.  
- Only move to Blender and asset creation after core gameplay feels solid and fun.  

---

## Optional Future Features (Post-Core Gameplay)

- Power-ups spawning randomly  
- Different enemy types  
- Multiple arena layouts or procedural arena generation  
- Leaderboard system  

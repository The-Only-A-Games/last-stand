# Last Stand - 3D Top-Down Arena Shooter

---

## Game Overview

**Title:** Last Stand  
**Genre:** 3D Top-Down Arena Shooter  
**Perspective:** Top-down camera  
**Platform:** PC/Desktop (Unity Engine)  
**Core Concept:** Survive endless waves of enemies in a simple arena by shooting and dodging.

---

## Core Gameplay Features

- **Player controls:**  
  - Move with WASD (or arrow keys)  
  - Aim with mouse pointer  
  - Shoot projectiles toward mouse direction  
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

## Project Timeline & Agile Iteration Plan (Aug - Dec)

### August: Foundation & Core Mechanics (6 weeks)
- Player movement & input handling (WASD + mouse aiming)  
- Basic shooting & projectile mechanics (direction, speed, collision)  
- Simple health & damage system for player and enemies  
- Basic enemy AI: spawning at arena edges, chasing player, collision damage  
- Placeholder graphics & simple arena setup  

### September: Game Systems & UI (4 weeks)
- Implement UI: health bars, score, wave number  
- Wave spawning system: timed waves with increasing difficulty  
- Enemy health & death with feedback (animations/effects)  
- Game over flow and restart logic  
- Polish controls and input responsiveness  

### October: Polish & Gameplay Depth (4 weeks)
- Add sound effects and basic music  
- Visual polish: simple animations, particle effects for shooting and damage  
- Introduce multiple enemy types with varied behavior  
- Add power-ups (health, damage boosts, speed, etc.)  
- Balance gameplay difficulty curves and wave pacing  

### November: Additional Features & Optimization (4 weeks)
- Multiple arena layouts or procedural generation basics  
- Leaderboard integration or local high scores  
- Save/load system for progress (optional)  
- Optimize performance, fix bugs, improve AI pathfinding  
- More art polish or simple asset replacement from Blender  

### December: Finalization & Release Prep (4 weeks)
- Final bug fixes and playtesting  
- Menu screens and polish UI/UX  
- Build & package for PC release  
- Marketing materials (screenshots, trailer, description)  
- Optional: Steam or itch.io release setup  

---

## Notes for Asset Creation & Development

- Focus on mechanics first using simple primitives in Unity (cubes, spheres).  
- After core gameplay feels solid, gradually replace placeholders with Blender models.  
- Keep project scope manageable for a solo or small team workflow.  
- Use Unity’s built-in tools and C# scripting for rapid iteration.  

---

## Optional Future Features (Post-Launch)

- Online multiplayer or co-op mode  
- Procedural arenas with randomized layouts and obstacles  
- More diverse enemy behaviors and boss encounters  
- Unlockable weapons and upgrades  
- Achievements and social leaderboard  

---
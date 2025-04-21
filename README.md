# Graves

[![Latest](https://img.shields.io/github/v/release/lullaby6/graves-data-pack?color=blueviolet&logo=github)](https://github.com/lullaby6/graves-data-pack/releases)
[![Discord](https://img.shields.io/discord/1327308441324097681?label=discord&color=blue&logo=discord)](https://discord.gg/5UdcDa5xNC) 
[![Modrinth](https://img.shields.io/modrinth/dt/graves?label=modrinth&logo=modrinth)](https://modrinth.com/datapack/lullaby-graves) 
[![License](https://img.shields.io/badge/license-mit-green)](https://github.com/lullaby6/graves-data-pack/blob/main/LICENSE) 
[![Issues](https://img.shields.io/github/issues/lullaby6/graves-data-pack?color=orange&logo=github)](https://github.com/lullaby6/graves-data-pack/issues)
[![Code Size](https://img.shields.io/github/languages/code-size/lullaby6/graves-data-pack?color=purple&logoColor=white)](https://github.com/lullaby6/graves-data-pack)
[![Repo Size](https://img.shields.io/github/repo-size/lullaby6/graves-data-pack?logo=dropbox&color=red)](https://github.com/lullaby6/graves-data-pack)
[![Stars](https://img.shields.io/github/stars/lullaby6/graves-data-pack?logo=github&color=yellow)](https://github.com/lullaby6/graves-data-pack/stargazers)

![bg](https://raw.githubusercontent.com/lullaby6/graves-data-pack/refs/heads/main/images/bg.png)

Graves to save items when players die!

Not compatible with the `keepInventory` and `doImmediateRespawn` gamerules in true.

If you are updating this Data-Pack please run the command `function graves:settings/reset`.

The graves in the end's void generate at Y = 1, and the graves that are under the lava will rise to the surface of the lava!

## ⌨️ Commands

### Player

Disable grave spawning on death:

```mcfunction
/trigger graves.player.disabled set 1
```

Enable grave spawning on death:

```mcfunction
/trigger graves.player.disabled set 0
```

### Admin

Settings:

```mcfunction
/function graves:settings
```

Set graves despawn delay (20 ticks = 1 second):

```mcfunction
/scoreboard players set despawn_delay graves.config <ticks>
```

Loot narest grave:

```mcfunction
/function graves:grave/loot/nearest
```

Loot all graves:

```mcfunction
/function graves:grave/loot/all
```

Clear nearest grave:

```mcfunction
/function graves:grave/clear/nearest
```

Clear all graves:

```mcfunction
/function graves:grave/clear/all
```

Disable graves for a player:

```mcfunction
/tag <player> add graves.player.disabled
```

Enable graves for a player:

```mcfunction
/tag <player> remove graves.player.disabled
```

Prevent item/experience orb stored in a grave:

```mcfunction
/tag @n[type=item] graves.bypass
```

## 🪪 License

[Limited Embed License v1.0](https://github.com/lullaby6/graves-data-pack/blob/main/LICENSE)
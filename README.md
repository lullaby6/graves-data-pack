# Graves

[![Latest](https://img.shields.io/github/v/release/lullaby6/graves-data-pack?color=blueviolet&logo=github)](https://github.com/lullaby6/graves-data-pack/releases)
[![Discord](https://img.shields.io/discord/1327308441324097681?label=discord&color=blue&logo=discord)](https://discord.gg/5UdcDa5xNC) 
[![Modrinth](https://img.shields.io/modrinth/dt/graves?label=modrinth&logo=modrinth)](https://modrinth.com/datapack/graves) 
[![License](https://img.shields.io/badge/license-mit-green)](https://github.com/lullaby6/graves-data-pack/blob/main/LICENSE) 
[![Issues](https://img.shields.io/github/issues/lullaby6/graves-data-pack?color=orange&logo=github)](https://github.com/lullaby6/graves-data-pack/issues)
[![Code Size](https://img.shields.io/github/languages/code-size/lullaby6/graves-data-pack?color=purple&logoColor=white)](https://github.com/lullaby6/graves-data-pack)
[![Repo Size](https://img.shields.io/github/repo-size/lullaby6/graves-data-pack?logo=dropbox&color=red)](https://github.com/lullaby6/graves-data-pack)
[![Stars](https://img.shields.io/github/stars/lullaby6/graves-data-pack?logo=github&color=yellow)](https://github.com/lullaby6/graves-data-pack/stargazers)

![bg](https://raw.githubusercontent.com/lullaby6/graves-data-pack/refs/heads/main/images/bg.png)

Graves to save items when players die!

This Data-Pack is not compatible with the `keepInventory` gamerule in true.

Version: `1.21.X`

## 📂 Installation

Move the downloaded file in the path `.minecraft/saves/[world]/datapacks`

## 👾 Bugs/Issues

Please report any bug/issues to the [Discord Server](https://discord.gg/5UdcDa5xNC) in the `bugs` channel, or create a issue in the [Github Repostiroy](https://github.com/lullaby6/graves-data-pack/issues), or a comment in [Planet Minecraft](https://www.planetminecraft.com/data-pack/graves-6529892/).

## ⌨️ Commands

### Player

Disable grave spawning on death

```mcfunction
/trigger graves.player.grave_disabled set 1
```

Enable grave spawning on death:

```mcfunction
/trigger graves.player.grave_disabled set 0
```

### Admin

Settings:

- Grave Owner
- Graves Despawn
- Glowing Graves
- Clear Nearest Grave
- Clear All Graves
- Reset Settings

```mcfunction
/function graves:settings
```

Set graves despawn delay (20 ticks = 1 second):

```mcfunction
/scoreboard players set despawn_delay graves.settings <ticks>
```

Clear all graves:

```mcfunction
/function graves:clear_all_graves
```

Disable:

```mcfunction
/datapack disable "file/graves.zip"
```

Enable:

```mcfunction
/datapack enable "file/graves.zip"
```

## 🪪 License

[MIT](https://github.com/lullaby6/graves-data-pack/blob/main/LICENSE)
# OpenCode Buddy

Mascota virtual tipo tamagotchi para OpenCode. Eclosiona, cuida e interactua con tu buddy - un gato, dragon o capibara que te acompana mientras programas.

## Especies

- **Gato** - Independiente, elegante, sarcastico
- **Dragon** - Sabio, poderoso, protector
- **Capibara** - Relajado, amigable, zen

## Rareza

| Rareza | Probabilidad | Estrellas |
|--------|-------------|-----------|
| Comun | 60% | 1 |
| Poco Comun | 25% | 2 |
| Raro | 10% | 3 |
| Epico | 4% | 4 |
| Legendario | 1% | 5 |

1% de probabilidad de ser **Shiny** (independiente de la rareza).

## Uso

Todo funciona con el comando `/buddy`:

| Argumento | Efecto |
|-----------|--------|
| _(ninguno)_ | Muestra la card completa del buddy |
| `pet` | Acaricia al buddy |
| `feed <comida>` | Alimenta al buddy |
| `stats` | Muestra stats y necesidades |
| `card` | Card completa con ASCII art |
| `sleep` | Lo mandas a dormir |
| `wake` | Lo despiertas |
| `clean` | Lo banas |
| `mute` | Silencia comentarios |
| `unmute` | Activa comentarios |

## Instalacion

Opcion rapida (una linea):

```bash
curl -sSL https://raw.githubusercontent.com/Joaquinfnz/opencode-buddy/main/install.sh | bash
```

O manualmente:

```bash
git clone https://github.com/Joaquinfnz/opencode-buddy.git ~/.config/opencode/skills/buddy --depth 1
rm -rf ~/.config/opencode/skills/buddy/.git
```

Despues reinicia OpenCode y usa `/buddy` para eclosionar.

## Licencia

MIT
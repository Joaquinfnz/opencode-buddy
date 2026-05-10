# 🐾 OpenCode Buddy

Mascota virtual tipo tamagotchi para OpenCode. Eclosiona, cuida e interactua con tu buddy — un gato, dragon o capibara que te acompana mientras programas.

## Instalacion

Una linea:

```bash
curl -sSL https://raw.githubusercontent.com/Joaquinfnz/opencode-buddy/main/install.sh | bash
```

O manualmente:

```bash
git clone https://github.com/Joaquinfnz/opencode-buddy.git ~/.config/opencode/skills/buddy --depth 1
rm -rf ~/.config/opencode/skills/buddy/.git
```

Despues **reinicia OpenCode**.

## Primer uso

Escribe `/buddy` en OpenCode. La primera vez se eclosiona un buddy aleatorio con:

- **Especie** aleatoria: gato, dragon o capibara
- **Rareza** aleatoria: Comun (60%), Poco Comun (25%), Raro (10%), Epico (4%), Legendario (1%)
- **Shiny**: 1% de probabilidad (independiente de la rareza)
- **Nombre** unico generado segun la especie
- **Stats** basados en la rareza
- **Personalidad** unica

Ejemplo de eclosionar:

```
🌟🌟🌟 ECLOSIONANDO... 🌟🌟🌟

      /\      /\
     /  \    /  \
    /    \  /    \
   / /\   \/   /\ \
  / /  \      /  \ \
 / /    \____/    \ \
  \|    /    \    |/
   \   /      \   /
    \_/   /\   \_/
      | /  \  |
      |/    \ |
      /      \

Llamavitae ★ | 🍖 100% ⚡ 100% 🧼 100% ❤️ 100% | 🤩

"¡HOLA, MORTAL! Soy Llamavitae, tu nuevo companero dracenico!"
```

## Comandos

Todo funciona con `/buddy`:

| Comando | Efecto |
|---------|--------|
| `/buddy` | Muestra la card completa del buddy |
| `/buddy pet` | Acaricia al buddy — sube felicidad, baja hambre un poco |
| `/buddy feed pizza` | Alimenta al buddy — sube hambre y felicidad |
| `/buddy stats` | Muestra stats y necesidades actuales |
| `/buddy card` | Card completa con ASCII art, stats, y necesidades |
| `/buddy sleep` | Lo mandas a dormir — recupera energia |
| `/buddy wake` | Lo despiertas |
| `/buddy clean` | Lo banas — sube limpieza |
| `/buddy mute` | Silencia los comentarios del buddy |
| `/buddy unmute` | Activa los comentarios del buddy |

## Comidas

Comidas disponibles para `/buddy feed <comida>`:

`pizza` · `sushi` · `galleta` · `manzana` · `hamburguesa` · `dona` · `ramen` · `taco` · `helado` · `ensalada` · `mandarina` · `pescado`

Cada comida afecta hambre y felicidad de forma distinta.

## Especies

### Gato

```
    /\_/\
   ( o.o )
    > ^ <
   /     \
  / |   | \
 /  |   |  \
    |___|
    |   |
   _|   |_
  (___)(___)
```

Independiente, elegante, sarcasmatico. Stats inclinados a CHAOS y SNARK.

### Dragon

```
      /\      /\
     /  \    /  \
    /    \  /    \
   / /\   \/   /\ \
  / /  \      /  \ \
 / /    \____/    \ \
  \|    /    \    |/
   \   /      \   /
    \_/   /\   \_/
      | /  \  |
      |/    \ |
      /      \
```

Sabio, poderoso, protector. Stats inclinados a WISDOM y DEBUGGING.

### Capibara

```
      _________
     /         \
    |  o     o  |
    |     ==    |
     \         /
      \_______/
      |       |
     _|       |_
    (___________)
```

Relajado, amigable, zen. Stats inclinados a PATIENCE, SNARK bajo.

## Stats

Cada buddy tiene 5 stats (0-100) que se generan al eclosionar segun la rareza:

| Stat | Descripcion |
|------|-------------|
| **DEBUGGING** | Habilidad para encontrar bugs |
| **PATIENCE** | Paciencia en sesiones largas |
| **CHAOS** | Nivel de travesura e imprevisibilidad |
| **WISDOM** | Sabiduria de codigo y arquitectura |
| **SNARK** | Nivel de sarcasmo y humor |

## Necesidades

Tu buddy tiene 4 necesidades (0-100%). Bajan con el tiempo y la actividad:

| Necesidad | Se recupera con |
|-----------|----------------|
| 🍖 **Hambre** | `/buddy feed <comida>` |
| ⚡ **Energia** | `/buddy sleep` |
| 🧼 **Limpieza** | `/buddy clean` |
| ❤️ **Felicidad** | `/buddy pet`, interactuar |

- Bajo 30%: el buddy muestra un warning
- Bajo 10%: necesita atencion urgente

## Rareza

| Rareza | Probabilidad | Estrellas | Stat minimo |
|--------|-------------|-----------|-------------|
| Comun | 60% | ★ | 5 |
| Poco Comun | 25% | ★★ | 15 |
| Raro | 10% | ★★★ | 25 |
| Epico | 4% | ★★★★ | 35 |
| Legendario | 1% | ★★★★★ | 50 |

1% de probabilidad de ser **Shiny** — efecto arcoiris y extremadamente raro.

## Licencia

MIT
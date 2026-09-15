# Quellenstein RPG Godot Codebasis v1.1

## DiceManager.gd
```gdscript
extends Node

func roll_pair(sides:int)->Dictionary:
    var d1 = randi_range(1,sides)
    var d2 = randi_range(1,sides)
    return {
        "d1": d1,
        "d2": d2,
        "sum": d1 + d2,
        "pasch": d1 == d2
    }
```

## PaschResolver.gd
```gdscript
extends RefCounted

func resolve(result:Dictionary) -> String:
    if not result.pasch:
        return "normal"

    if result.d1 == 12:
        return "legendary_pasch"

    if result.d1 == 1:
        return "disaster_pasch"

    return "pasch"
```

## GameManager.gd
```gdscript
extends Node
```

## DiceTier
```gdscript
enum DiceTier {
    D4,
    D6,
    D8,
    D10,
    D12
}
```

## Ability JSON Beispiel
```json
{
  "id":"knaufschlag",
  "name":"Knaufschlag",
  "cost_ap":2,
  "cost_aus":3
}
```

## Greta Fähigkeiten
- Knaufschlag
- Gezielter Schlag
- Presche
- Gegenschlag
- Seitenhieb

## Borin Fähigkeiten
- Gedankenblitz
- Geistesfessel
- Klarer Geist
- Erleuchtung
- Vere Acnosis

## Zoran Fähigkeiten
- Schwäche
- Beschleunigung
- Flammendolch
- Einfrieren

## Lyra Fähigkeiten
- Liederwoge
- Heilsamer Gesang
- Stärkende Woge
- Einschüchterndes Lied

## Theron Fähigkeiten
- Stoßgebet
- Heilsamer Segen
- Göttlicher Schild
- Umstoßen
- Gegenschlag

## Projektstruktur
```text
scripts/autoload/
scenes/combat/
resources/characters/
resources/abilities/
```

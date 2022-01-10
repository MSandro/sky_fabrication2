// Here is the groovy file for screen elements
info("Welcome to Sky FABRICation 2")

mainMenu {
    enabled = true

    splashText {
        enabled = true
        splashesEnabled = false
    }

    background {
        clearBackgrounds()
        backgroundStayLength = 50000 // 50 seconds
        backgroundFadeLength = 2000 // 2 seconds fade
        renderGradientShade = false
        image { texture = file("config/slightguimodifications/background.png") }
    }

    removeMinecraftLogo()
    removeEditionBadge()
    clearAllButtons()

    label {
        position {
            x = 2
            y {
                it - 20
            }
        }

        text = literal("Sky FABRICation 2 1.0.3")
        shadow = true
    }

    button {
        position {
            x { it / 2 + 3 }
            y = 203
        }
        width = 100
        height = 20

        text = literal("Mods")
        onClicked = modMenu()
    }
    button {
        position {
            x { it / 2 - 101 }
            y = 203
        }
        width = 100
        height = 20

        text = literal("Languages")
        onClicked = language()
    }
    button {
        position {
            x { it / 2 - 101 }
            y = 131
        }
        width = 204
        height = 20

        text = translatable("menu.singleplayer")
        onClicked = singleplayer()
    }
    button {
        position {
            x { it / 2 - 101 }
            y = 155
        }
        width = 204
        height = 20

        text = translatable("menu.multiplayer")
        onClicked = multiplayer()
    }
    button {
        position {
            x { it / 2 + 3 }
            y = 227
        }
        width = 100
        height = 20

        text = translatable("menu.quit")
        onClicked = exit()
    }
    button {
        position {
            x { it / 2 - 101 }
            y = 227
        }
        width = 100
        height = 20

        text = translatable("menu.options")
        onClicked = options()
    }
    button {
        position {
            x { it / 2 + 3 }
            y = 179
        }
        width = 100
        height = 20

        text = literal("Rent A Server")
        onClicked = url("https://www.akliz.net/manage/aff.php?aff=250")
    }
    button {
        position {
            x { it / 2 - 101 }
            y = 179
        }
        width = 100
        height = 20

        text = literal("Report a Issue")
        onClicked = url("https://github.com/MSandro/sky_fabrication2/issues")
    }
}
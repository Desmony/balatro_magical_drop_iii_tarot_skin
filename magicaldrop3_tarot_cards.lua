--- STEAMODDED HEADER
--- MOD_NAME: Magical Drop 3 Tarot Cards
--- MOD_ID: magicaldrop3_tarot_cards
--- PREFIX: magicaldrop3
--- MOD_AUTHOR: [Nyguita]
--- MOD_DESCRIPTION: Replace the ingame tarot cards with Magical Drop III's tarot cards 
--- VERSION: 1.0.0

----------------------------------------------
------------MOD CODE -------------------------

function SMODS.INIT.TarotMagicalDrop3()
  local tarots = {
    c_fool = { x = 0, y = 0 },
    c_magician = { x = 1, y = 0 },
    c_high_priestess = { x = 2, y = 0 },
    c_empress = { x = 3, y = 0 },
    c_emperor = { x = 4, y = 0 },
    c_heirophant = { x = 5, y = 0 },
    c_lovers = { x = 6, y = 0 },
    c_chariot = { x = 7, y = 0 },
    c_justice = { x = 8, y = 0 },
    c_hermit = { x = 9, y = 0 },
    c_wheel_of_fortune = { x = 0, y = 1 },
    c_strength = { x = 1, y = 1 },
    c_hanged_man = { x = 2, y = 1 },
    c_death = { x = 3, y = 1 },
    c_temperance = { x = 4, y = 1 },
    c_devil = { x = 5, y = 1 },
    c_tower = { x = 6, y = 1 },
    c_star = { x = 7, y = 1 },
    c_moon = { x = 8, y = 1 },
    c_sun = { x = 9, y = 1 },
    c_judgement = { x = 0, y = 2 },
    c_world = { x = 1, y = 2 }
  }

  SMODS.Atlas {
    key = "magicaldrop3_tarot",
    path = "Tarots.png",
    px = 71,
    py = 95
  }

  for tarot, data in pairs(tarots) do
    SMODS["Tarot"]:take_ownership(tarot, {
      atlas = "magicaldrop3_tarot",
      pos = { x = data.x, y = data.y },
      soul_pos = { x = data.x, y = data.y }
    }, true)
  end
end

----------------------------------------------
------------MOD CODE END----------------------

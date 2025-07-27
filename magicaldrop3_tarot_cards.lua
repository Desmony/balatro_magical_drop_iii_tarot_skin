--- STEAMODDED HEADER
--- MOD_NAME: Magical Drop 3 Tarot Cards
--- MOD_ID: magicaldrop3_tarot_cards
--- PREFIX: magicaldrop3
--- MOD_AUTHOR: [Nyguita]
--- MOD_DESCRIPTION: Replace the ingame tarot cards with Magical Drop III's tarot cards 
--- VERSION: 1.0.0

----------------------------------------------
------------MOD CODE -------------------------

local tarots = {
  "c_fool",
  "c_magician",
  "c_high_priestess",
  "c_empress",
  "c_emperor",
  "c_heirophant",
  "c_lovers",
  "c_chariot",
  "c_justice",
  "c_hermit",
  "c_wheel_of_fortune",
  "c_strength",
  "c_hanged_man",
  "c_death",
  "c_temperance",
  "c_devil",
  "c_tower",
  "c_star",
  "c_moon",
  "c_sun",
  "c_judgement",
  "c_world",
}

SMODS.Atlas {
  key = "magicaldrop3_tarot",
  path = "Tarots.png",
  px = 71,
  py = 95
}

for _, tarot in pairs(tarots) do
  SMODS["Tarot"]:take_ownership(tarot, { atlas = "magicaldrop3_tarot" })
end

----------------------------------------------
------------MOD CODE END----------------------

local pokemon = {
    pikachu = {
        name = "Pikachu",
        ped = "a_c_pig",
        hp = 100,
        attack = 10,
        defense = 10,
        speed = 10,
        type = "electric"
    },
}

local spawn = false

local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, -5.0)

print(plyCoords)
-- create if statement that if spawn not true then spawn pokemon
if spawn == false then
    modelhash = GetHashKey(pokemon.pikachu.ped)
    -- spawn pokemon
    CreatePed(CIVMALE, modelhash, plyCoords, 180, true, true)

    spawn = true
end

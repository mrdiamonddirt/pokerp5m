local pokemon = {
    pikachu = {
        name = "Pikachu",
        ped = "DPikachu",
        hp = 100,
        attack = 10,
        defense = 10,
        speed = 10,
        type = "electric"
    },
    charizard = {
        name = "Charizard",
        ped = "charizard1",
        hp = 100,
        attack = 10,
        defense = 10,
        speed = 10,
        type = "electric"
    },
    red = {
        name = "Pikachu",
        ped = "a_c_pig",
        hp = 100,
        attack = 10,
        defense = 10,
        speed = 10,
        type = "electric"
    },
}

local spawnarea = {
    ashspawn = {
        coords = "1326.82, -1344.23, 53.92, 243.17"
    },
}

local spawn = false

local plyCoords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(PlayerId()), 0.0, 0.0, 0.0)
RequestModel(GetHashKey(pokemon.pikachu.ped))

print("Requesting model")
print(GetHashKey(pokemon.pikachu.ped))
print(plyCoords)
-- create if statement that if spawn not true then spawn pokemon
if spawn == false then
    print("Spawning")
    
        while not HasModelLoaded(GetHashKey(pokemon.pikachu.ped)) do
            Wait(100)
        end
    modelhash = GetHashKey(pokemon.pikachu.ped)
    print(modelhash)
    HasModelLoaded(modelhash);
    -- spawn pokemon
    CreatePed(CIVMALE, modelhash, spawnarea.ashspawn.coords, true, true)

    spawn = true
end

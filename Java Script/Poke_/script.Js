document.addEventListener('DOMContentLoaded', function () {
    const pokemonInput = document.getElementById('pokemonInput');
    const fetchPokemonButton = document.getElementById('fetchPokemonButton');
    const pokemonDetails = document.getElementById('pokemonDetails');

    fetchPokemonButton.addEventListener('click', function () {
        const pokemonNameOrId = pokemonInput.value.trim().toLowerCase();
        if (pokemonNameOrId === '') {
            alert('Por favor, digite o nome ou ID do Pokémon.');
            return;
        }
        pokemonDetails.innerHTML = '';

        fetch(`https://pokeapi.co/api/v2/pokemon/${pokemonNameOrId}`)
        .then(response =>{
            if(!response.ok){
                throw new Error('Pokemon não encontrado')
            }
            return response.json()
        })
        .then(data =>{
            console.log(data)
            const {name, id, types, abilities, sprites} = data
            const pokemonname = name.charAt(0).toupperCase() + name.slice(1)
            const pokemonid = id
            const pokemontype = types.map (type => type.type.name)
            const pokemonimage = sprites.front_defalt
            const pokemonabilities = abilities.map(ability => ability.ability.name).join(', ')

            pokemonDetails.innerHTML = 
            `<h2>${pokemonname} (#${pokemonid})
            <p> tipo: ${pokemontype}</p>
            <p> Habilidades: ${poke}</p> 
    
            `
            //0-500
        })
    });
}); 
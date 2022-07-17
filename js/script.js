document.addEventListener('DOMContentLoaded', (event) => {
    const search = document.getElementById('search');
    const listeMatch = document.getElementById('corList');
    const liste2 = document.getElementById('corListe');

    const searchTeam = async searchText => {
        const res = await fetch('./traitement.php');
        const teams = await res.json();

        //regex pour avoir les correspondances
        let matches = teams.filter(team => {
            const regex = new RegExp(`^${searchText}`, 'gi');
            return team.nom.match(regex);
        });

        if(searchText.length === 0){
            matches = [];
            listeMatch.innerHTML = '';
        }
        outputHtml(matches);
    };

    //Affichage des résultats
    const outputHtml = matches => {
        if(matches.length > 0){
            const html = matches.map(match => `
                <div>
                    <a href="recherche.php?search=${match.nom}"><h4>${match.nom}</h4></a>
                <hr>
                </div>
            `)
            .join('');

            listeMatch.innerHTML = html;
        }
        else{
            listeMatch.innerHTML = 'Aucun résultat';
        }
    }

    //correspondance avec la même lettre
    const searchTeams = async searchText => {
        const res = await fetch('./traitement.php');
        const teams = await res.json();

        //regex pour avoir les correspondances
        let matches = teams.filter(team => {
            const regex = new RegExp(`${searchText}`, 'gi');
            return team.nom.match(regex);
        });

        if(searchText.length === 0){
            matches = [];
            liste2.innerHTML = '';
        }
        outputhtml(matches);
    };

    //Affichage des résultats
    const outputhtml = matches => {
        if(matches.length > 0){
            const html = matches.map(match => `
                <div>
                    <hr>
                    <a href="recherche.php?search=${match.nom}"><h4>${match.nom}</h4></a>
                </div>
            `)
            .join('');

            liste2.innerHTML = html;
        }
    }
    search.addEventListener('input', () => searchTeam(search.value));
    search.addEventListener('input', () => searchTeams(search.value));
})
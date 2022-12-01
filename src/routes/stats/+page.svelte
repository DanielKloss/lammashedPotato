<script lang="ts">
	import type { Stat } from '$lib/types/stat';
    import type { PageData } from './$types';

    export let data: PageData;

    let stats: Array<Stat> = []

    let mostAppearances = Math.max(...data.players.flatMap(p => p._count.apperances));
    let mostGoals = Math.max(...data.players.flatMap(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0)));
    let bestGoalsAppearenceRatio = Math.max(...data.players.flatMap(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / p._count.apperances));
    let mostGamesScoredIn = Math.max(...data.players.flatMap(p => p._count.goals));
    let mostGamesWon;
    let mostGamesLost;

    stats.push({statName: "Most Appearances", statValue: mostAppearances, playerName: data.players.filter(p => p._count.apperances == mostAppearances).flatMap(p => p.name)})
    stats.push({statName: "Most Goals", statValue: mostGoals, playerName: data.players.filter(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) == mostGoals).flatMap(p => p.name)})
    stats.push({statName: "Best Goals to Appearences Ratio", statValue: bestGoalsAppearenceRatio, playerName: data.players.filter(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / p._count.apperances == bestGoalsAppearenceRatio).flatMap(p => p.name)})
    stats.push({statName: "Most Games Scored In", statValue: mostGamesScoredIn, playerName: data.players.filter(p => p._count.goals == mostGamesScoredIn).flatMap(p => p.name)});
</script>

<main class="page">
    <h1>Stats</h1>
    <div class="statList">
        {#each stats as stat}
            <div class="stat">
                <p class="statName">{stat.statName}</p>
                <div class="statDetails">
                    <p class="statValue">{stat.statValue}</p>
                    {#each stat.playerName as name}
                        <p class="statPlayerName">{name}</p>
                    {/each}
                </div>
            </div>
        {/each}
    </div>
</main>

<style>
    .page{
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 0 auto;
        width: 80%;
        gap: 1rem;
        padding: 1rem;
        overflow: hidden;
    }

    .statList {
        display: flex;
        flex-direction: column;
        justify-content: center;
        gap: 1rem;
    }

    .stat {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 0.5rem;
        border-radius: 5%;
        padding: 1rem;
        background-color: white;
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
    }

    .statName {
        text-align: center;
        background-image: linear-gradient(grey, lightgrey);
        padding: 0.5rem 1rem;
        border-radius: 50px;
        text-transform: uppercase;
        outline: 2px solid white ;
        outline-offset: -4px;
        font-weight: bold;
    }

    .statDetails {
        display: flex;
        align-items: center;
    }

    .statValue {
        display: flex;
        justify-content: center;
        text-align: center;
        border-radius: 50%;
        background-image: linear-gradient(GoldenRod, Gold);
        padding: 0.75rem;
        outline: 2px solid white ;
        outline-offset: -4px ;
        min-width: 1rem;
        z-index: 1;
    }

    .statPlayerName {
        margin-left: -1rem;
        padding: 0.5rem 1rem 0.5rem 1.5rem;
        background-image: linear-gradient(GoldenRod, Gold);
        outline: 2px solid white ;
        outline-offset: -4px ;
        border-radius: 0 15px 15px 0;
    }
</style>
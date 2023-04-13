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
    let mostGoalsInAGame = Math.max(...data.players.flatMap(p => Math.max(...p.goals.flatMap(g => g.number_of_goals))));

    stats.push({statName: "Most Appearances", statValue: mostAppearances, playerName: data.players.filter(p => p._count.apperances == mostAppearances).flatMap(p => p.name)})
    stats.push({statName: "Most Goals", statValue: mostGoals, playerName: data.players.filter(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) == mostGoals).flatMap(p => p.name)})
    stats.push({statName: "Best Goals to Appearences Ratio", statValue: bestGoalsAppearenceRatio, playerName: data.players.filter(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / p._count.apperances == bestGoalsAppearenceRatio).flatMap(p => p.name)})
    stats.push({statName: "Most Games Scored In", statValue: mostGamesScoredIn, playerName: data.players.filter(p => p._count.goals == mostGamesScoredIn).flatMap(p => p.name)});
    stats.push({statName: "Most Goals Scored in One Game", statValue: mostGoalsInAGame, playerName: data.players.filter(p => Math.max(...p.goals.flatMap(g => g.number_of_goals)) == mostGoalsInAGame).flatMap(p => p.name)});
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
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
    }

    .statDetails {
        display: flex;
        align-items: center;
        gap: 1rem;
    }

    .statValue {
        font-size: xx-large;
    }

    .statPlayerName {
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
    }
</style>
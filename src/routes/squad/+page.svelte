<script lang="ts">
    import type { PageData } from './$types';

    export let data: PageData;
</script>

<main class="page">
    <h1>Squad</h1>
    <div class="squadList">
        {#each data.allPlayers as player}
            <div class="playerCard">
                <div class="playerMain">
                    <div class="playerName">
                        <p style="font-weight: bold;">{player.name}</p>
                        <p>{player.position}</p>
                    </div>
                    <img src="/images/{player.name}.jpg" alt="{player.name}"/>
                </div>
                <div class="playerDetails">
                    <div class="stat">
                        <p style="font-weight: bold;">Apps</p>
                    </div>
                    <div class="stat">
                        <p style="font-weight: bold;">Goals</p>
                    </div>
                    <div class="stat">
                        <p style="font-weight: bold;">Goals/App</p>
                    </div>
                    <div class="stat">
                        <p style="font-size: 1rem;">{player._count.apperances}</p>
                    </div>
                    <div class="stat">
                        <p style="font-size: 1rem;">{player.goals.reduce((t, g) => {return t + g.number_of_goals}, 0)}</p>
                    </div>
                    <div class="stat">
                        <p style="font-size: 1rem;">{Math.round(player.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / player._count.apperances* 100) / 100}</p>
                    </div>
                </div>
            </div>
        {/each}
    </div>
</main>

<style>
    .page {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin: 0 auto;
        width: 80%;
        gap: 1rem;
        padding: 1rem;
        overflow: hidden;
    }

    h1{
        font-size: 1.5rem;
        text-align: center;
    }

    .stat {
        display: flex;
        flex-direction: column;
        text-align: center;
        gap: 0.2rem;
    }

    img {
        width: 10rem;
        height: 10rem;
        object-fit: cover;
        object-position: 50% 0;
        border-radius: 50%;
        outline: 3px solid white ;
        outline-offset: -5px ;
    }

    .playerName {
        text-transform: uppercase;
        font-size: 1rem;
        letter-spacing: 0.15rem;
    }

    .squadList{
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 1rem;
    }

    .playerCard {
        display: flex;
        flex-direction: column;
        border-radius: 5%;
        padding: 1rem;
        background-color: white;
        box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
        gap: 1rem;
    }

    .playerMain {
        display: flex;
        flex-direction: column;
        text-align: center;
        align-items: center;
        gap: 1rem;
    }

    .playerDetails {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 0.2rem;
        text-transform: uppercase;
        font-size: 0.75rem;
        letter-spacing: 0.15rem;
    }
</style>
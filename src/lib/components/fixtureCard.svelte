<script lang="ts">
	import type { game, season } from "@prisma/client";
    import Icon from 'svelte-icons-pack/Icon.svelte';
    import IoCalendarOutline from "svelte-icons-pack/io/IoCalendarOutline";
    import IoLocation from "svelte-icons-pack/io/IoLocation";
    import IoFootball from "svelte-icons-pack/io/IoFootball";

    export let fixture: game;
    export let season: season;
</script>

<div class="card fixture">
    <div class="dateDetails">
        <Icon src={IoCalendarOutline}/>
        <p>{fixture.date.toLocaleDateString("en-GB", {weekday: "short", month: "short", day: "numeric", year: "numeric"})}</p>
        <p>-</p>
        <p>{fixture.date.toLocaleTimeString("en-GB", {hour: "numeric", minute: "numeric", timeZone:"GMT"})}</p>
    </div>
    <p class="location"><Icon src={IoLocation}/> {season.location.name}</p>
    <div class="result" 
            class:draw={fixture.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) == fixture.opponent_goals && !fixture.walk_over}
            class:loss={fixture.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) < fixture.opponent_goals}
            class:win={fixture.walk_over || fixture.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) > fixture.opponent_goals}>
        <p>Lammashed Potato</p>
        {#if fixture.walk_over}
            <p>5</p>
        {:else}
            <p>{fixture.goals.reduce((t, g) => {return t + g.number_of_goals}, 0)}</p>
        {/if}
        <p>{fixture.opponent_goals}</p>
        <p>{fixture.opponent.name}</p>
    </div>
    <div class="players">
        {#each fixture.appearances as appearance}
            <div class="player">
                <p>{appearance.player.name}</p>
                {#each fixture.goals as goal}
                    {#if goal.player.name == appearance.player.name}
                        <div class="goals">
                            <Icon src={IoFootball}></Icon>
                            {#if goal.number_of_goals > 1}
                                <p>{goal.number_of_goals}</p>
                            {/if}
                        </div>
                    {/if}
                {/each}
            </div>
        {/each}
    </div>
</div>

<style>
    .fixture {
        display: flex;
        flex-direction: column;
    }

    .dateDetails {
        display: flex;
        gap: 0.5rem;
        padding: 1rem 1rem 0.25rem 1rem;
        border-radius: 5px 5px 0 0;
    }

    .location {
        font-style: italic;
        font-size: 0.75rem;
        padding: 0.25rem 1rem 0.5rem 1rem;
    }

    .result {
        display: grid;
        grid-template-columns: 3fr 1fr 1fr 3fr;
        align-items: center;
        padding: 1rem;
        font-weight: bold;
    }

    .players {
        display: flex;
        flex-direction: column;
        gap: 0.2rem;
        font-size: 0.75rem;
        padding: 0 1rem 1rem 1rem;
    }

    .player {
        display: flex;
        gap: 0.5rem;
    }

    .goals {
        display: flex;
        gap: 0.2rem;
    }

    .win {
        border: #AAD3BA solid 3px;
        border-radius: 10px;
        margin: 0.5rem;
    }

    .draw {
        border: #FFB38F solid 3px;
        border-radius: 10px;
        margin: 0.5rem;
    }

    .loss {
        border: #ff8399 solid 3px;
        border-radius: 10px;
        margin: 0.5rem;
    }
</style>
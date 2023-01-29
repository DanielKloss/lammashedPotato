<script lang="ts">
    import type { PageData } from './$types';
	import StatCard from '$lib/components/statCard.svelte';
	import FixtureCard from '$lib/components/fixtureCard.svelte';
	import { calculateStats } from './stats';

    export let data: PageData;
    let selectedSeason = data.seasons[0].name;
    let stats = calculateStats(data.seasons, selectedSeason);
</script>

<main class="page">
    <p class="seasonTitle">Pick a Season</p>
    <select class="select" bind:value={selectedSeason} on:change={() => stats = calculateStats(data.seasons, selectedSeason)}>
        {#each data.seasons as season}
            <option value={season.name}>
                {season.name}
            </option>
        {/each}
    </select>
    {#each data.seasons as season}
        {#if season.name == selectedSeason}
            {#if season.final_position > -1}
            <div class="card">
                Final League Position: {season.final_position}
            </div>
            {/if}
            <div class="stats">
                {#each stats as stat}
                    <StatCard {stat}/>
                {/each}
            </div>
            <p class="seasonTitle">Results</p>
            <div class="season">
                {#each season.games as fixture}
                    <FixtureCard {fixture} {season}/>
                {/each}
            </div>
        {/if}
    {/each}
</main>

<style>
    .page {
        display: flex;
        flex-direction: column;
        gap: 1rem;
        padding: 1rem;
    }

    .select {
        padding: 0.5rem;
        border-radius: 5px;
    }

    .stats {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 1rem;
    }

    .season {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .seasonTitle {
        font-weight: bold;
        font-size: 1.3rem;
    }
</style>
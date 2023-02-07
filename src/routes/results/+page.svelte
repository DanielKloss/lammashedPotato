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
        padding: 0.25rem;
    }

    .select {
        padding: 0.5rem;
        border-radius: 5px;
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
        border: none;
        text-align: center;
        padding: 1rem;
        background: linear-gradient(120deg, #155e75 0%, #0e7490 75%);
        border-radius: 5px;
    }

    .stats {
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 0.1rem;
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
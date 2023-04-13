<script lang="ts">
	import type { Stat } from "$lib/types/stat";

    export let stat: Stat;
</script>

<div class="stat card">
    <p class="statName">{stat.statName}</p>
    <div class="valueRow">
        <p class="statValue">{stat.statValue}</p>
        <div class="players">
            {#each stat.playerName as name}
                <p class="statPlayerName">{name}</p>
            {/each}
        </div>
    </div>
</div>

<style>
    .stat {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
        text-align: center;
    }

    .statName {
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
    }

    .valueRow {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 0.3rem;
    }

    .statValue {
        font-size: xx-large;
    }

    .players {
        text-align: left;
    }

    .statPlayerName {
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
    }
</style>
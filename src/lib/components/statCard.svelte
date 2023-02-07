<script lang="ts">
	import type { Stat } from "$lib/types/stat";

    export let stat: Stat;
</script>

<div class="stat">
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
        padding: 1rem;
        background: linear-gradient(120deg, #164e63 0%, #155e75 75%);
        border-radius: 5px;
    }

    .statName {
        text-transform: uppercase;
        font-size: 0.65rem;
        letter-spacing: 0.15rem;
        color: #cbd5e1;
    }

    .valueRow {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 0.3rem;
        color: #f1f5f9;
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
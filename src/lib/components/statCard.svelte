<script lang="ts">
	import type { Stat } from "$lib/types/stat";

    export let stat: Stat;
</script>

<div class="card stat">
    <p class="statName">{stat.statName}</p>
    <p class="statValue">{stat.statValue}</p>
    <div class="players">
        {#each stat.playerName as name}
            <p class="statPlayerName">{name}</p>
        {/each}
    </div>
</div>

<style>
    .stat {
        display: flex;
        flex-direction: column;
        gap: 0.75rem;
        align-items: center;
        text-align: center;
    }

    .statName {

    }

    .statValue {
        font-weight: bold;
        font-size: xx-large;
    }

    .statPlayerName {

    }
</style>
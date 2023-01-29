import type { Stat } from "$lib/types/stat";
import type { season } from ".prisma/client";

export function calculateStats(seasons: Array<season>, selectedSeason: string): Array<Stat> {
    let stats: Array<Stat> = [];

    let currentSeason = seasons.find((s) => s.name == selectedSeason)

    if (currentSeason) {
        let wins: Stat = {statName: "Wins", statValue: 0, playerName: []}
		let losses: Stat = { statName: 'Losses', statValue: 0, playerName: [] };
        let draws: Stat = { statName: 'Draws', statValue: 0, playerName: [] };
        
        for (const game of currentSeason.games) {
            let ourGoals = game.goals.reduce((t, g) => { return t + g.number_of_goals; }, 0);
            console.log(ourGoals + " vs " + game.opponent_goals + " walkover: " + game.walk_over)
            if (game.walk_over || (ourGoals > game.opponent_goals)) {
                wins.statValue++;
            } else if (ourGoals == game.opponent_goals && !game.walk_over) {
                draws.statValue++;
            } else {
                losses.statValue++;
            }
        }

        stats.push(wins);
        stats.push(losses);
        stats.push(draws);

        let appearances = currentSeason.games.flatMap(g => g.appearances.flatMap(a => a.player.name));
        let appearancesCount: { [name: string]: number; } = {}
        let mostAppearancesCount = 0;
        let mostAppearances: Stat = { statName: selectedSeason + " Most apperances", statValue: 0, playerName: ["player"] }
        for (const player of appearances) {
            if (appearancesCount[player] == undefined) {
                appearancesCount[player] = 1;
            } else {
                appearancesCount[player] += 1;
            }

            if (appearancesCount[player] == mostAppearancesCount) {
                mostAppearances.playerName.push(player);
            } else if (appearancesCount[player] > mostAppearancesCount) {
                mostAppearances.statValue = appearancesCount[player];
                mostAppearances.playerName = [player]
                mostAppearancesCount = appearancesCount[player]
            }
        }

        let goals = currentSeason.games.flatMap(g => g.goals);
        let goalsCount: { [name: string]: number; } = {}
        let mostGoalsCount = 0;
        let mostGoals: Stat = { statName: selectedSeason + " Most goals", statValue: 0, playerName: ["player"] }
        for (const goal of goals) {
            if (goalsCount[goal.player.name] == undefined) {
                goalsCount[goal.player.name] = goal.number_of_goals;
            } else {
                goalsCount[goal.player.name] += goal.number_of_goals;
            }

            if (goalsCount[goal.player.name] == mostGoalsCount) {
                mostGoals.playerName.push(goal.player.name);
            } else if (goalsCount[goal.player.name] > mostGoalsCount) {
                mostGoals.statValue = goalsCount[goal.player.name];
                mostGoals.playerName = [goal.player.name]
                mostGoalsCount = goalsCount[goal.player.name]
            }
        }

        //let bestGoalsAppearenceRatio = Math.max(...data.players.flatMap(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / p._count.apperances));
        //let mostGamesScoredIn = Math.max(...data.players.flatMap(p => p._count.goals));
        //let mostGoalsInAGame = Math.max(...data.players.flatMap(p => Math.max(...p.goals.flatMap(g => g.number_of_goals))));

        stats.push(mostAppearances)
        stats.push(mostGoals)
        //stats.push({statName: "Best Goals to Appearences Ratio", statValue: bestGoalsAppearenceRatio, playerName: data.players.filter(p => p.goals.reduce((t, g) => {return t + g.number_of_goals}, 0) / p._count.apperances == bestGoalsAppearenceRatio).flatMap(p => p.name)})
        //stats.push({statName: "Most Games Scored In", statValue: mostGamesScoredIn, playerName: data.players.filter(p => p._count.goals == mostGamesScoredIn).flatMap(p => p.name)});
        //stats.push({statName: "Most Goals Scored in One Game", statValue: mostGoalsInAGame, playerName: data.players.filter(p => Math.max(...p.goals.flatMap(g => g.number_of_goals)) == mostGoalsInAGame).flatMap(p => p.name)});
    }

    return stats;
}
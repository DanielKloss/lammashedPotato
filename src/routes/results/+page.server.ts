import { PrismaClient } from '@prisma/client';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
	const prisma = new PrismaClient();

	let seasons = await prisma.season.findMany({
        include: {
            location: {
                select: {
                    name: true
                }
            },
			games: {
                select: {
                    date: true,
                    opponent_goals: true,
                    walk_over: true,
					opponent: {
						select: {
							name: true
						}
					},
					appearances: {
						select: {
							player: {
								select: {
									name: true
								}
							}
						}
					},
					goals: {
						select: {
							player: {
								select: {
									name: true
								}
							},
							number_of_goals: true
						}
					}
				},
				orderBy: [
					{
						date: 'desc'
					}
				]
			}
        },
        orderBy: [
            {
                id: 'desc'
            }
        ]
	});

	await prisma.$disconnect();

	return { seasons };
}

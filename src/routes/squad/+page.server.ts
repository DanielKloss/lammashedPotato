import { PrismaClient } from "@prisma/client";

/** @type {import('./$types').PageServerLoad} */
export async function load() {
    const prisma = new PrismaClient();

    let allPlayers = await prisma.player.findMany({
        include: {
            goals: true,
            _count: {
                select: {
                    apperances: true
                }
            }
        },
        orderBy: [{
                apperances: {
                    _count: 'desc'
                }   
        },
        { name: 'asc' }
        ]
    });

    await prisma.$disconnect();

    return { allPlayers }
}
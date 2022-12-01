import type { Stat } from '$lib/types/stat';
import { PrismaClient } from '@prisma/client';

/** @type {import('./$types').PageServerLoad} */
export async function load() {
	const prisma = new PrismaClient();

    let players = await prisma.player.findMany({
        include: {
            _count: {
                select: {
                    apperances: true,
                    goals: true
                }
            },
            goals: true
        }
    })
        
	await prisma.$disconnect();

	return { players };
}

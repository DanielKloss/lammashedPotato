/*
  Warnings:

  - You are about to drop the column `opponent` on the `game` table. All the data in the column will be lost.
  - Added the required column `opponent_id` to the `game` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "game" DROP COLUMN "opponent",
ADD COLUMN     "opponent_id" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "opponent" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "opponent_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "game" ADD CONSTRAINT "game_opponent_id_fkey" FOREIGN KEY ("opponent_id") REFERENCES "opponent"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

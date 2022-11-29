/*
  Warnings:

  - Made the column `position` on table `player` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "player" ALTER COLUMN "position" SET NOT NULL;

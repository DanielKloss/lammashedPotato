/*
  Warnings:

  - You are about to drop the column `location` on the `season` table. All the data in the column will be lost.
  - Added the required column `location_id` to the `season` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "season" DROP COLUMN "location",
ADD COLUMN     "location_id" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "location" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "location_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "season" ADD CONSTRAINT "season_location_id_fkey" FOREIGN KEY ("location_id") REFERENCES "location"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

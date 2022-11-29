-- CreateTable
CREATE TABLE "player" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "season" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "start_date" TIMESTAMP(3) NOT NULL,
    "end_date" TIMESTAMP(3) NOT NULL,
    "location" TEXT NOT NULL,
    "final_position" INTEGER NOT NULL,

    CONSTRAINT "season_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "game" (
    "date" TIMESTAMP(3) NOT NULL,
    "opponent" TEXT NOT NULL,
    "opponent_goals" INTEGER NOT NULL,
    "walk_over" BOOLEAN NOT NULL,
    "season_id" INTEGER NOT NULL,

    CONSTRAINT "game_pkey" PRIMARY KEY ("date")
);

-- CreateTable
CREATE TABLE "goalscorer" (
    "game_date" TIMESTAMP(3) NOT NULL,
    "player_id" INTEGER NOT NULL,
    "number_of_goals" INTEGER NOT NULL,

    CONSTRAINT "goalscorer_pkey" PRIMARY KEY ("game_date","player_id")
);

-- CreateTable
CREATE TABLE "appearance" (
    "game_date" TIMESTAMP(3) NOT NULL,
    "player_id" INTEGER NOT NULL,

    CONSTRAINT "appearance_pkey" PRIMARY KEY ("game_date","player_id")
);

-- AddForeignKey
ALTER TABLE "game" ADD CONSTRAINT "game_season_id_fkey" FOREIGN KEY ("season_id") REFERENCES "season"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goalscorer" ADD CONSTRAINT "goalscorer_game_date_fkey" FOREIGN KEY ("game_date") REFERENCES "game"("date") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "goalscorer" ADD CONSTRAINT "goalscorer_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appearance" ADD CONSTRAINT "appearance_game_date_fkey" FOREIGN KEY ("game_date") REFERENCES "game"("date") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appearance" ADD CONSTRAINT "appearance_player_id_fkey" FOREIGN KEY ("player_id") REFERENCES "player"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

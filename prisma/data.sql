INSERT INTO player (id, name, position) VALUES (1, 'Dan Kloss', 'Defender'); /*1*/
INSERT INTO player (id, name, position) VALUES (2, 'Thomas Hacker', 'Number 10'); /*2*/
INSERT INTO player (id, name, position) VALUES (3, 'Alex Hau', 'Finisher'); /*3*/
INSERT INTO player (id, name, position) VALUES (4, 'Jo Bonni', 'Libero'); /*4*/
INSERT INTO player (id, name, position) VALUES (5, 'Matt Kaye', 'Playmaker'); /*5*/
INSERT INTO player (id, name, position) VALUES (6, 'Nick Pitt', 'Midfielder'); /*6*/
INSERT INTO player (id, name, position) VALUES (7, 'Ivan Tang', 'Goalkeeper'); /*7*/
INSERT INTO player (id, name, position) VALUES (8, 'Keyan Salarkia', 'Winger'); /*8*/
INSERT INTO player (id, name, position) VALUES (9, 'Paul Hardy', 'Pressing Forward'); /*9*/
INSERT INTO player (id, name, position) VALUES (10, 'Mark Bridger', 'Wide Forward'); /*10*/
INSERT INTO player (id, name, position) VALUES (11, 'Connor', 'Box to Box'); /*11*/
INSERT INTO player (id, name, position) VALUES (12, 'Jon', 'Midfielder'); /*12*/
INSERT INTO player (id, name, position) VALUES (13, 'Luke', 'Defender'); /*13*/
INSERT INTO player (id, name, position) VALUES (14, 'Nick E', 'Midfielder'); /*14*/
INSERT INTO player (id, name, position) VALUES (15, 'Josh', 'Striker'); /*15*/

INSERT INTO location (id, name) VALUES (1, 'Lammas Park');

INSERT INTO season (id, name, start_date, end_date, location_id, final_position) VALUES (1, 'Season 1', '30/8/22', '8/11/22', 1, 2);
INSERT INTO season (id, name, start_date, end_date, location_id, final_position) VALUES (2, 'Season 2', '15/11/22', '14/02/22', 1, 2);
INSERT INTO season (id, name, start_date, end_date, location_id, final_position) VALUES (3, 'Season 3', '7/3/23', '30/05/23', 1, 0);

INSERT INTO opponent (id, name) VALUES (1, 'Frogs'); /*1*/
INSERT INTO opponent (id, name) VALUES (2, 'Ealing Finest'); /*2*/
INSERT INTO opponent (id, name) VALUES (3, 'Fanad United'); /*3*/
INSERT INTO opponent (id, name) VALUES (4, 'Ringers FC'); /*4*/
INSERT INTO opponent (id, name) VALUES (5, 'London West FC'); /*5*/
INSERT INTO opponent (id, name) VALUES (6, 'ISA FC'); /*6*/
INSERT INTO opponent (id, name) VALUES (7, 'West Ealing Warlocks'); /*7*/
INSERT INTO opponent (id, name) VALUES (8, 'The Rowan Raiders'); /*7*/

INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('30/08/22 19:40', 1, 5, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('06/09/22 19:00', 2, 0, True, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('13/09/22 19:00', 3, 10, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('20/09/22 19:40', 4, 4, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('27/09/22 20:20', 5, 2, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('04/10/22 20:20', 1, 6, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('11/10/22 20:20', 2, 0, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('18/10/22 19:00', 3, 3, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('25/10/22 19:40', 4, 6, False, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('08/11/22 19:40', 5, 0, True, 1);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('15/11/22 19:40', 4, 9, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('22/11/22 20:20', 7, 3, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('06/12/22 19:00', 1, 4, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('10/01/23 20:20', 7, 9, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('24/01/23 19:00', 1, 6, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('31/01/23 19:00', 6, 7, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('07/02/23 20:20', 5, 7, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('14/02/23 19:00', 4, 0, True, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('21/02/23 19:00', 6, 9, False, 2);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('07/03/23 19:00', 7, 10, False, 3);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('14/03/23 19:40', 5, 0, True, 3);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('21/03/23 20:20', 1, 11, False, 3);
INSERT INTO game(date, opponent_id, opponent_goals, walk_over, season_id) VALUES ('28/03/23 19:00', 8, 7, False, 3);

INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('30/08/22 19:40', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('13/09/22 19:00', 8);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('20/09/22 19:40', 8);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('27/09/22 20:20', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('04/10/22 20:20', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('11/10/22 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('11/10/22 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('11/10/22 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('11/10/22 20:20', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('11/10/22 20:20', 9);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('18/10/22 19:00', 9);
INSERT INTO appearance (game_date, player_id) VALUES ('25/10/22 19:40', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('25/10/22 19:40', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('25/10/22 19:40', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('25/10/22 19:40', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('25/10/22 19:40', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('15/11/22 19:40', 10);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('22/11/22 20:20', 9);
INSERT INTO appearance (game_date, player_id) VALUES ('06/12/22 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('06/12/22 19:00', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('06/12/22 19:00', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('06/12/22 19:00', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('06/12/22 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('10/01/23 20:20', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('24/01/23 19:00', 11);
INSERT INTO appearance (game_date, player_id) VALUES ('31/01/23 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('31/01/23 19:00', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('31/01/23 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('31/01/23 19:00', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('31/01/23 19:00', 9);
INSERT INTO appearance (game_date, player_id) VALUES ('07/02/23 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('07/02/23 20:20', 2);
INSERT INTO appearance (game_date, player_id) VALUES ('07/02/23 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('07/02/23 20:20', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('07/02/23 20:20', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('21/02/23 19:00', 10);
INSERT INTO appearance (game_date, player_id) VALUES ('07/03/23 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('07/03/23 19:00', 5);
INSERT INTO appearance (game_date, player_id) VALUES ('07/03/23 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('07/03/23 19:00', 12);
INSERT INTO appearance (game_date, player_id) VALUES ('07/03/23 19:00', 13);
INSERT INTO appearance (game_date, player_id) VALUES ('21/03/23 20:20', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('21/03/23 20:20', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('21/03/23 20:20', 7);
INSERT INTO appearance (game_date, player_id) VALUES ('21/03/23 20:20', 8);
INSERT INTO appearance (game_date, player_id) VALUES ('21/03/23 20:20', 14);
INSERT INTO appearance (game_date, player_id) VALUES ('28/03/23 19:00', 1);
INSERT INTO appearance (game_date, player_id) VALUES ('28/03/23 19:00', 3);
INSERT INTO appearance (game_date, player_id) VALUES ('28/03/23 19:00', 4);
INSERT INTO appearance (game_date, player_id) VALUES ('28/03/23 19:00', 6);
INSERT INTO appearance (game_date, player_id) VALUES ('28/03/23 19:00', 15);

INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('30/08/22 19:40', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('30/08/22 19:40', 2, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('30/08/22 19:40', 3, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('30/08/22 19:40', 4, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('13/09/22 19:00', 2, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('13/09/22 19:00', 3, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('13/09/22 19:00', 4, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('20/09/22 19:40', 1, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('20/09/22 19:40', 2, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('20/09/22 19:40', 3, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('20/09/22 19:40', 8, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('27/09/22 20:20', 2, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('27/09/22 20:20', 3, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('27/09/22 20:20', 5, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('27/09/22 20:20', 4, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('27/09/22 20:20', 6, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('04/10/22 20:20', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('04/10/22 20:20', 2, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('04/10/22 20:20', 5, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('11/10/22 20:20', 2, 6);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('11/10/22 20:20', 3, 7);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('11/10/22 20:20', 4, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('11/10/22 20:20', 9, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('18/10/22 19:00', 3, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('18/10/22 19:00', 4, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('18/10/22 19:00', 9, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('25/10/22 19:40', 1, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('25/10/22 19:40', 2, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('25/10/22 19:40', 3, 8);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('25/10/22 19:40', 4, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('15/11/22 19:40', 3, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('15/11/22 19:40', 5, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('15/11/22 19:40', 10, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('22/11/22 20:20', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('22/11/22 20:20', 2, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('22/11/22 20:20', 3, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('22/11/22 20:20', 4, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('22/11/22 20:20', 9, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('06/12/22 19:00', 2, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('06/12/22 19:00', 3, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('06/12/22 19:00', 4, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('10/01/23 20:20', 1, 5);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('10/01/23 20:20', 2, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('10/01/23 20:20', 3, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('10/01/23 20:20', 4, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('10/01/23 20:20', 5, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('24/01/23 19:00', 11, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('24/01/23 19:00', 5, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('24/01/23 19:00', 4, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('31/01/23 19:00', 2, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('31/01/23 19:00', 9, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/02/23 20:20', 2, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/02/23 20:20', 3, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/02/23 20:20', 5, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('21/02/23 19:00', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('21/02/23 19:00', 5, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('21/02/23 19:00', 10, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/03/23 19:00', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/03/23 19:00', 5, 6);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('07/03/23 19:00', 12, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('21/03/23 20:20', 1, 2);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('21/03/23 20:20', 8, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('28/03/23 19:00', 1, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('28/03/23 19:00', 6, 1);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('28/03/23 19:00', 3, 4);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('28/03/23 19:00', 4, 3);
INSERT INTO goalscorer (game_date, player_id, number_of_goals) VALUES ('28/03/23 19:00', 15, 4);
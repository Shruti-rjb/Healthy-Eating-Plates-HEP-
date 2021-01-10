-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 10:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthy_eating_plates`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `bmi` float NOT NULL,
  `disease_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facts`
--

CREATE TABLE `facts` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_facts`
--

CREATE TABLE `food_facts` (
  `fact_id` bigint(20) NOT NULL,
  `fact_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_items`
--

CREATE TABLE `food_items` (
  `item_id` bigint(20) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_reciepe`
--

CREATE TABLE `food_reciepe` (
  `id` int(11) DEFAULT NULL,
  `recipe_name` varchar(53) CHARACTER SET utf8 DEFAULT NULL,
  `ingredients` varchar(149) DEFAULT NULL,
  `recipe` varchar(1105) DEFAULT NULL,
  `review` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_reciepe`
--

INSERT INTO `food_reciepe` (`id`, `recipe_name`, `ingredients`, `recipe`, `review`) VALUES
(1, 'french_toast_recipe', 'bread;egg;milk;cinnamon;nutmeg;ghee;vanilla;salt', 'beat together egg, milk, salt  desired spices and vanilla;heat a lightly oiled griddle or skillet over medium-high heat; dunk each slice of bread in egg mixture soaking both sides; place in pan         and cook on both sides until golden; serve hot                                        ', 1000),
(2, 'indian_naan_recipe', 'water;yeast;white_sugar;flour;salt;ghee;yogurt;onion', 'whisk the warm water with the yeast and sugar until the yeast is dissolved; cover and let stand in a warm place for 10 minutes; shift flour and salt three times into a large bowl add the yeast mixture half of the ghee and all the yogurt; mix into a soft dough then knead on a floured surface for about 5 minutes or until dough is smooth and elastic; place the dough in a large greased bowl cover and let stand in a warm place for 1 1/2 hours or until the dough is doubled in size; punch down dough then knead for 5 minutes; divide dough into 6 pieces; roll each piece out into 8 inch round naans; cover an oven tray with foil and grease the foil; brush the naan with a little of the remaining ghee and sprinkle with some of the kalonji; cook naan one at a time under the broiler for about 2 minutes on each side or until puffed and just browned', 107),
(3, 'honey_oatmeal_bread_recipe', 'bread;whole_wheat;oats;wheat_germ;honey;milk;water;salt;butter;yeast', 'place ingredients in the bread machine pan in the order suggested by the manufacturer; select the multigrain setting and press start', 37),
(4, 'european_black_bread_recipe', 'water;venigar;bread;flour;bran;margarine;white_sugar;salt;caraway;onion;cocoa_powder;yeast', 'place the ingredients in the pan of the bread machine in the order suggested by the manufacturer; select Normal setting and then press Start', 15),
(5, 'chili_bread_recipe_recipe', 'beer;beef;pepper;chilli;olive_oil;bread;cumin;onion;garlic;salt;yeast', 'place the ingredients in the pan of the bread machine in the order suggested by the manufacturer; select the French Bread or White Bread setting and then press Start', 20),
(6, 'strawberry_shortcake_recipe', 'strawberry;white_sugar;flour;baking_powder;salt;shortening;egg;milk;cream', 'slice the strawberries and toss them with 1/2 cup of white sugar; set aside; preheat oven to 425 degrees F (220 degrees C); grease and flour one 8 inch round cake pan; in a medium bowl combine the flour, baking powder,  2 tablespoons white sugar and the salt; with a pastry blender cut in the shortening until the mixture resembles coarse crumbs; make a well in the center and add the beaten egg and milk; stir until just combined; spread the batter into the prepared pan; bake at 425 degrees F (220 degrees C) for 15 to 20 minutes or until golden brown; let cool partially in pan on wire rack; slice partially cooled cake in half making two layers; place half of the strawberries on one layer and top with the other layer; top with remaining strawberries and cover with the whipped cream', 387),
(7, 'banana_cake_recipe', 'butter;white_sugar;egg;milk;vanilla;banana;flour;baking_powder;baking_soda;salt;spice', 'preheat oven to 350 degrees F (175 degrees C); shift flour,  baking powder, soda, salt and allspice together and set aside; in a large bowl, cream the butter and sugar until light and fluffy; add egg and egg white and beat well; add the mashed banana, vanilla and milk; add the flour mixture and mix until well blended; divide batter into two 9 inch pans; bake at 350 degrees F (175 degrees C) for 25 to 30 minutes  or until a toothpick inserted into the center of the cake comes out clean; cool completely and frost with Cream Cheese Frosting', 86),
(8, 'chicken_with_shiitake_mushroom_recipe', 'shiitake_mushroom;chicken;egg;bread;butter;mozzarella;chicken_broth', 'preheat oven to 350 degrees F (175 degrees C); place half of the shiitake mushrooms in a 9x13 inch pan; dip chicken into beaten egg then roll in bread crumbs; in skillet, melt butter over medium heat; brown both sides of chicken in skillet; place chicken on top of shiitake mushrooms, arrange remaining shiitake mushrooms on chicken and top with mozzarella cheese; add chicken broth to pan; bake in preheated oven for 30 to 35 minutes or until chicken is no longer pink and juices run clear                                        ', 1000),
(9, 'jamaican_jerked_chicken_recipe', 'green_onion;orange_juice;ginger;pepper;lime_juice;soy_sauce;garlic;spice;cinnamon;clove;chicken', 'combine green onion, orange juice, ginger, hot pepper, lemon or lime juice, soy sauce, garlic, all spice, cinnamon and cloves; add chicken and marinate for 8 hours; prepare barbecue medium heat; cook chicken and drizzle with left over marinade that has been boiled for 2 to 3 minutes', 55),
(10, 'chicken_cordon_bleu_recipe', 'chicken;salt;black_pepper;swiss_cheese;ham;bread', 'Preheat oven to 350 degrees F (175 degrees C); coat a 7x11 inch baking dish with nonstick cooking spray; pound chicken breasts to 1/4 inch thickness; sprinkle each piece of chicken on both sides with salt and pepper; place 1 cheese slice and 1 ham slice on top of each breast; roll up each breast and secure with a toothpick; place in baking dish and sprinkle chicken evenly with bread crumbs; bake for 30 to 35 minutes or until chicken is no longer pink; remove from oven and place 1/2 cheese slice on top of each breast; return to oven for 3 to 5 minutesor until cheese has melted; remove toothpicks and serve immediately', 1000),
(11, 'deviled_chicken_breasts_recipe', 'bread; chicken;olive_oil;white_wine;tea;salt;shiitake_mushroom;lemon;mustard', 'place breadcrumbs in a large resealable plastic bag; add chicken seal bag and shake to coat chicken with breadcrumbs; heat oil in a large nonstick skillet over medium heat; add chicken; cook 3 minutes on each side or until browned; add wine, savory, salt and shiitake mushrooms to the chicken; cover and reduce heat; simmer for 15 minutes or until chicken is done; remove chicken and shiitake mushrooms with slotted spoon and place on serving plate; add lemon and mustard to skillet and stir well; heat through; serve sauce with chicken', 46),
(12, 'chicken_noodle_soup_recipe', 'chicken;celery;carrot;onion;butter;noodle;water;marjoram;black_pepper;bay_leaf;parsley', 'in a large stock pot, saute celery and onion in butter or margarine; add chicken, carrot, water,  bouillon cubes, marjoram, black pepper, bay leaf and parsley; simmer for 30 minutes; add noodles and simmer for 10 more minutes', 678),
(13, 'grilled_chicken_soup_with_salsa_barbecue_sauce_recipe', 'lime_juice;worcestershire_sauce;orange;vinegar;brown_sugar;corn_syrup;oregano;vegetable_oil;cilantro;chicken;salsa', 'in a medium saucepan, combine salsa, lime juice,  worcestershire sauce, orange juice, vinegar, brown sugar, corn syrup, oregano and oil; simmer over low heat for 45 to 60 minutes; remove sauce from heat and add cilantro; use sauce to baste chicken during the last 20 minutes of grilling reserving about 1/2 cup of the sauce to baste the cooked pieces just before serving', 6),
(14, 'olive_oil_chicken_recipe', 'chicken; vegetable_oil;onion;salt;black_pepper;ginger;paprika;olive_oil;lemon;water', 'heat oil in a large saute pan; add onion and sprinkle with ginger and paprika; saute until onion are golden; place chicken on top of onion; add about 1 to 2 cups of water, lemon, salt, pepper and olive oil; cook about 1 hour or until the chicken is tender', 13),
(15, 'melt_in_your_mouth_chicken_pie_recipe', 'chicken;chicken_broth;flour;buttermilk;butter', 'preheat oven to 375 degrees F (190 degrees C); place prepared chicken in the bottom of a 9x13 inch casserole dish; cover the chicken with sliced egg; bring soup and broth to a boil and pour over the chicken and egg; in a bowl, combine the flour,  buttermilk and melted butter; mix and pour over the chicken; bake in the preheated oven for 45 minutes', 42),
(16, 'chicken_curry_recipe', 'chicken;garam_masala;garlic;olive_oil;onion;chicken_broth;potato;curry;pepper;raisin', 'rub the chicken with garam masala and garlic powder; in a large saute pan over medium heat brown chicken in olive oil oil in a large pot; remove chicken and saute onion in the same oil until golden; return the chicken to the pan and cover with the broth; simmer until the meat is tender and can be easily picked off of the bone; remove the chicken to cool; mix the soup into the broth in the pan then add the potatoes and the curry; simmer until tender; as soon as the chicken is cool enough to handle remove the meat from the skin and bones and if necessary, cut into bite size pieces; when the potatoes are done add the meat to the potato mixture and heat through; you may add golden raisins at this point if desired adjust seasonings and serve', 36),
(17, 'chicken_continental_recipe', 'chicken;shiitake_mushroom;butter;chicken;water;parsley;salt;black_pepper;rice', 'in a large skillet, brown the chicken and shiitake_mushrooms in butter or margarine; stir in the soup, water, parsley,  salt and a dash of ground black pepper; cover and simmer for 20 minutes; stir in uncooked rice and simmer for an additional 10 minutes or until liquid has been absorbed', 43),
(18, 'cheddar_chicken_recipe', 'cereal;parmesan;cheddar;butter;chicken', 'preheat oven to 350 degrees F (175 degrees C); in a medium bowl, mix the cornflake crumbs, parmesan cheese and cheddar cheese; dip the chicken breasts in the melted butter and roll them in the cornflake crumb mixture; place chicken in a lightly greased 9x13 inch baking dish; bake in the preheated oven for 30 to 40 minutes until chicken is no longer pink and juices run clear', 243),
(19, 'chicken_potato_salad_recipe', 'chicken;egg;potato;cucumber;salt;oilve_oil;mayonnaise', 'chop the chicken, egg, potatoes and pickled cucumbers into very small pieces; mix all together; add the salt and mayonnaise then the olive oil oil; toss to coat; refrigerate for 2 to 3 hours before serving', 16),
(20, 'quick_chicken_marsala_recipe', 'butter;chicken;shiitake_mushroom;marsala', 'in a large skillet, saute the chicken breasts in butter; once chicken is lightly browned on all sides, add the soup (undiluted) and marsala wine; cover and simmer until chicken is no longer pink inside about 20 minutes; ready to serve', 158),
(21, 'german_chicken_recipe', 'barbecue_sauce;sauerkraut;chicken', 'preheat oven to 350 degrees F (175 degrees C); **In a 9x13 inch baking dish place the sauerkraut in a single layer; place the chicken breasts on top of the sauerkraut; pour the barbecue sauce over the chicken; cover and bake in the preheated oven for 30 minutes or until the chicken is cooked and the juices run clear', 38),
(22, 'chicken_lollipops_recipe', 'chicken; salt; soy_sauce; chili; food_coloring; vinegar; garlic; pepper; cornstarch; red_chili_powder; red_food_coloring; green_chiles;bread', ' mix garlic and green chiles on each chicken wing;  push the meat down to one end: marinate the wings for at least 1/2 hour; remove the wings from the marinade and add the cornstarch to the marinade to make a batter; dip the wings in the batter and deep fry; ready to serve', 7),
(23, 'apple_and_onion_dressing_recipe', 'raisin;onion;celery;garlic;apple;parsley;salt; paprika;bread', 'preheat oven to 350 degrees F (175 degrees C); lightly butter a 2 quart casserole dish; cover raisins with boiling water and let sit for 5 minutes;drain well then toss them with the bread cubes;in a skillet melt the butter and saute the onion, garlic  and celery for about 4 to 5 minutes;stir the sauteed onion into the bread cube mixture; add the diced apple, parsley, salt and paprika and stir carefully; place stuffing mix in  the prepared dish or you can alternately place it in a large roaster with your favorite uncooked meat (pork chops turkey chicken etc);bake the dressing for 30 to 40 minutes; if you are baking the dressing with meat cook it until the meat is completely done all the way through', 38),
(24, 'awesome_broccoli', 'mayonnaise;egg; onion;broccoli;cheddar;pepper;paprika;shiitake_mushroom', 'preheat oven to 350 degrees F (175 degrees C);butter a 9x13 inch baking dish;in a medium mixing bowl  whisk together condensed soup, mayonnaise, egg and onion;place frozen broccoli into a very large mixing bowl (I like to use my large stainless steel bowl to mix this recipe thoroughly); break up the frozen broccoli; using a rubber spatula  scrape soup-mayonnaise mixture on top of broccoli and mix well; sprinkle on cheese and mix well; Spread mixture into prepared baking dish  and smooth top of casserole; season with salt pepper and paprika;bake for 45 minutes to 1 hour', 817),
(25, 'baked_sweet_potato_wedges_recipe', 'paprika;potato;olive_oil', 'preheat oven to 400 degrees F (200 degrees C);spray a baking sheet with cooking spay or vegetable oil;in a large bowl  mix oil and paprika;add potato sticks  and stir by hand to coat;place on the prepared baking sheet;bake 40 minutes in the preheated oven;best eaten at room temperature', 114),
(26, 'baked_sweet_potatoes_with_ginger_and_honey ', 'honey;ginger;walnut;cardamom;pepper;potato', 'preheat oven to 400 degrees F (200 degrees C);in a large bowl  toss together the sweet potatoes, ginger, walnut oil, honey,cardamom and pepper;transfer to a large cast iron frying pan;bake for 20 minutes in the preheated oven;stir the potatoes to expose the pieces from the bottom of the pan;bake for another 20 minutes or until the sweet potatoes are tender and caramelized on the outside', 142),
(27, 'baked_whole_pumpkin', 'egg;whipping_cream;brown_sugar;molasses;nutmeg;cinnamon;ginger;butter;pumpkin', 'preheat the oven to 350 degrees F (175 degrees C);cut the lid off the pumpkin and remove the seeds;combine the egg whipping cream brown sugar molasses nutmeg cinnamon and ginger;pour mixture into the pumpkin shell and top the butter; replace lid on pumpkin and place in a baking pan;bake at 350 degrees F (175 degrees C) for 1 to 1-1/2 hours or until mixture has set like a custard;serve right from the pumpkin at the table scraping some of the meat from the pumpkin wall with each serving', 25),
(28, 'broccoli_salad ', 'broccoli;onion;raisin;roast;yogurt;orange;orange_juice;mayonnaise;sunflower_seeds', 'combine the broccoli onion raisins and sunflower_seeds;in a small bowl whisk the yogurt orange_juice and mayonnaise until blended;pour over the broccoli mixture and toss to coat', 52),
(29, 'cranberry_cherry_pie', 'cherry;cranberry;caranberry_sause;raisin;corn;cornstarch;ginger;pastry;orange;orange_juice;milk;white sugar', 'in a large bowl stir together cherry pie filling cranberry sauce raisins cornstarch and ginger;make piecrust dough substituting orange juice for water;dvide dough 55 % / 45 %; roll larger piece to 1 1/2 inches larger than 9 inch pie pan;place crust in pie plate leaving one inch overhang and brush with egg white;spoon cherry filling into pie crust;roll second crust to 12 inch round. Cut into 14 strips to make a lattice top;moisten edge of bottom crust with water;place 7 strips across pie;do not seal ends;fold every other strip back halfway from center;place center cross strip on pie and replace folded part of strips;now fold back alternate strips;place second cross strip in place;repeat to weave cross strips into lattice;seal ends;turn bottom crust edge up over ends of strips;pinch to seal;make high fluted edge;brush pastry with milk and sprinkle lightly with sugar;bake at 400 degrees C (205 degrees C) for 50 minutes or until fruit begins to bubble and crust is golden brown;cool pie slightly on wire rack', 24),
(30, NULL, NULL, NULL, NULL),
(31, NULL, NULL, NULL, NULL),
(32, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL),
(43, 'shrimp_and_crab_casserole_recipe', 'water;rice;crab;shrimp;mayonnaise;onion;milk;hot pepper;almond;butter', 'preheat oven to 350 degrees F (175 degrees C);lightly grease a 3 quart casserole dish;in a saucepan; bring water to a boil;add rice and stir;reduce heat;cover and simmer for 20 minutes;combine crab meat;shrimp;rice;mayonnaise; onion;milk         hot sauce and almonds in casserole dish;mix well;cover top of casserole with crumbled crackers;bake,uncovered in preheated oven for 30 to 40 minutes or until casserole is bubbling            ', 59),
(44, 'chili_tuna_roll', 'tuna;chil;onion; water;tortillas;cheese', 'in a small bowl  mix tuna;chili sauce and green onion.;blend in enough water to allow easy spreading;lay tortillas one by one on a flat surface;spread a thin layer of cheese onto each tortilla covering the entire surface;spread tuna mixture over cheese to within an inch of tortilla edge;starting at the top roll up the tortilla into a snug cylindrical shape ensuring the cream cheese seals the bottom;enclose roll-ups in aluminum foil and refrigerate or freeze until serving;when ready to serve cut the roll-ups into 2 inch slice;if frozen slice the roll-ups about 15 minutes before serving time to allow them to defrost completely', 12),
(45, 'tempura_shrimp_recipe', 'egg;water;apricot;corn;sugar;red wine;ketchup;vegetable oil;shrimp;vanilla', 'in a small bowl mix vanilla wafers  egg and water until well blended;refrigerate 1 to 2 hours;to make dipping sauce;in a small sauce pan blend nectar into cornstarch;stir in brown sugar vinegar and catsup. Heat mixture over a medium heat stirring constantly until mixture thickens and comes to a boil;set aside;in a stockpot or deep fryer heat 2 cups oil to 375 degrees F (175 degrees C);dip shrimp in vanilla wafer batter and fry 4 to 6 shrimp at a time until golden brown;drain well;serve hot with dipping sauce', 10),
(46, 'salmon_patties_recipe', 'onion;egg;salt;pepper;celerycorn;canola oil;salmon', 'in a medium size mixing bowl combine salmon  onion egg         crackers salt pepper and celery;mix wel;make patties out of salmon mixture and roll in cornmeal;in a large frying pan over medium high heat oil for frying;place salmon patties in oil and fry on both sides until golden brown;drain wel;serve warm                                                                                                                                                       ', 101),
(47, 'corn_and_potato_chowder_recipe', 'celery; potato;corn;water;cream;onion;chicken; flour; water;pepper', 'render bacon in a skillet and set aside;in a stockpot add the water         onion celery and potatoes;if desired add 2 chopped carrot;boil until tender;add the non-dairy creamer stirring constantl;add the corn         onion powder chicken soup base salt pepper and cooked bacon;bring mixture to a boil;whisk together the flour and the 1 cup water and slowly add this mixture stirring constantly;cook over medium heat until slightly thickened;ladle into bowls and serve                                                               ', 13),
(48, 'smoky_potato_cheese_soup_recipe', 'margarine;chicken;potato;sausage;cheese;milk;black pepper;corn', 'saute the onion in butter or margarine in a large pan;add the chicken broth and the cubed potatoes;slice the smoked sausage into bite size pieces and add to the soup;simmer over medium heat until the potatoes are soft;using a potato masher lightly mash the potato mixture to break up the cubes a little bit but not mashing as completely as you would for mashed potatoes;add the cubed cheese and stir until melted.  stir in the evaporated milk;season with black pepper;the soup should be pretty thick but you can thicken it further with a paste of cornstarch and water;use about 1 tablespoon of cornstarch at a time and add it to the soup until you have reached the desired thickness                                              ', 61),
(49, ' banana_blueberry_quick_bread_recipe', 'flour;oat;pecan;baking soda;salt;sugar;egg;banana;blueberry', 'preheat oven to 350 degrees F (175 degrees C);grease and flour a 9x5-inch loaf pan;in a medium bowl  toss blueberries in 2 tablespoons flour;gently stir blueberries together with oats nuts	 1 1/2 cups flour	 baking soda and salt;in a large bowl cream shortening;gradually add sugar beating until light and fluffy;add eggs one at a time beating well after each addition;stir in mashed banana;add blueberry mixture to creamed mixture and stir just until moistened;spoon batter into the prepared pan;bake in preheated oven until a wooden toothpick comes out clean when inserted in the center of the loaf 50 to 55 minutes.;cool in pan for 10 minutes;remove from pan and cool completely on a wire rack	', 286),
(50, 'cheese_and_broccoli_chicken_soup_recipe', 'flour;water;chicken;broccoli;salt; black pepper;cream', 'in a 5-quart pot melt butter over medium heat;mix in flour stirring constantly until a thick paste forms;remove from pot  and set aside;in same pot combine water bouillon cubes chicken broccoli salt and pepper;bring to boil over high heat;reduce heat to medium low         and simmer for 45 minutes;stir in the flour mixture a little bit at a time until soup thickens;simmer 5 minutes;reduce heat and stir in cream.;mix in cheese 1 cup at a time and stir until melted      ', 388),
(51, 'drunken_winter_stew_recipe', 'onion;cabbage;bean;water;beer;mustard;garlic;black pepper;salt', 'bring potatoes  onion and water to a boil lower heat to simmer;add cabbage and mustard;slowly add about 1/2 the beer (it will foam up a bit);cover loosely;let simmer 15 minutes stirring occasionally;add the beans spices and more/all of the beer to taste;remove lid let simmer another 10 minutes or until potatoes are tender;add water if necessary;re-spice if needed before serving                                                                             ', 18),
(52, 'coconut_muffins_recipe', 'margarine;honey;almond; water;coconut;flour', 'in a large bowl beat egg yolks;add the butter honey almond extract         boiling water coconut and flour;stir until just blended;in a separate bowl         beat egg whites until stiff with an electric mixer;fold egg whites into muffin batter;pour batter two-thirds of the way full into greased muffin tin;bake in a preheated 350 degree F (175 degrees C) oven for 20 to 25 minutes                                                                                                                                                                    ', 16),
(53, 'beef_and_barley_soup_recipe', 'beef;kosher;celery;onion;black pepper;spice;carrot;parsley;garlic;barley', 'place beef bones in a large size slow cooker;add salt celery stalks         onion bouquets garnis pepper carrot parsley and garlic;fill slow cooker within 2 inches of  the top with hot water and cook for 6 hours         covered on high heat stirring occasionally;add barley and cook for 2 more hours stirring occasionally or until meat can easily be removed from bones;remove and discard onion bouquets garnis  celery  and parsley;transfer bones to a dish and remove meat from bones         being careful not to take off cartilage or gristle;place meat back into soup stir and serve', 17),
(54, 'chicken_soup_tete_style_recipe', 'celery;carrot;onion;garlic; clove;cinnamon;cilantro;black pepper;bay leaf;rice', 'place chicken celery carrot onion garlic cloves cinnamon cilantro peppercorns and bay leave in a large stock pot and fill with cold water         (it is not necessary to peel the garlic or onion just wash the outside.) ;using low heat cook for 4 hours after boiling begins or until water line is an inch or two from the top;using a colander drain broth into another pot;reserve chicken meat and discard the rest;in a bowl put rice and 1 cup of water to soak;while it is soaking skim fat off the top of broth and remove usable meat from chicken;add rice to chicken broth and salt and pepper to taste;boil at least 20 minutes and then add shredded chicken;remove from heat and let sit until soup thickens;once soup has reached desired thickness heat through and serve                                                                                ', 5),
(55, 'stuffed_celery_recipe', 'sour cream; walnut;pimento;celery;cheese', 'in a medium bowl mix together the cream cheese and sour cream;stir in the walnuts and chopped olive_oils;spread filling onto the celery pieces;it\'\'s also good on crackers                                                                                                            ', 90),
(56, 'cranberry_relish_recipe', 'cranberry;orange juice;sugar; orange', 'combine all ingredients in a 3 quart sauce pan and cook over medium heat until cranberries pop;serve warm or cold;as it the relish sits it thickens up                                                                                                               ', 27),
(57, 'sweet_potato_casserole_recipe', 'white sugar;egg;butter;milk;vanilla;brown sugar;pecan;flour', 'preheat oven to 350 degrees F (175 degrees C);butter a 2 quart baking dish;place the sweet potatoes and their liquid in a medium saucepan and bring to a boil;cook 15 minutes         or until tender;remove from heat drain and mash;in a medium bowl mix the mashed sweet potatoes white sugar egg 1/3 cup butter milk and vanilla extract;spread evenly into the prepared baking dish;in a separate bowl mix the brown sugar chopped pecans flour         and 1/3 cup melted butter;sprinkle over the sweet potato mixture;bake 35 minutes in the preheated oven  or until a knife inserted near the center comes out clean                               ', 413),
(58, 'cranberry_sauce_recipe', 'orange juice;cranberry', 'in a medium saucepan over medium heat  dissolve the sugar in the orange juice;stir in the cranberries and cook until they start to pop (about 10 minutes);remove from heat and transfer to a bowl;cranberry sauce will thicken as it cools                                        ', 853),
(59, 'broccoli_casserole_recipe', 'shiitake_mushroom;rice;onion;butter;cheese;salt;black pepper', 'cook rice as directed on box;saute onion in margarine until done;cook broccoli as directed on package and drain;mix together broccoli         soup rice onion butter or margarine and cheese;season with salt and pepper to taste;place in a 9 by 13 inch oven proof dish;bake for 30 to 40 minutes at 350 degrees F (175 degrees C)                                                                                                            ', 121),
(60, 'sweet_potato_fluff_recipe', 'white sugar; egg;butter;vanilla;coconut; brown sugar;flour;pecan;potato', 'preheat oven to 350 degrees F (175 degrees C);mix the mashed sweet potatoes white sugar egg1/2 cup of the butter or margarine vanilla and flaked coconut;place in heat proof 2 quart sized casserole dish;with a fork mix the brown sugar flour pecans and the remaining 1/3 cup of butter or margarine;sprinkle over the top of the potato mixture;bake at 350 degrees F (175 degrees C) for 30 minutes                                                                                                               ', 56),
(61, 'pumpkin_pie_recipe', 'flour;white sugar;salt;pumpkin;milk;cinnamon;ginger;nutmeg;corn', 'preheat oven to 450 degrees F (230 degrees C);add the sugar gradually to the pumpkin puree;beat well an stir in the flour salt and spices;stir in the corn syrup and beat well;stir in the slightly beaten egg         then slowly add the evaporated milk mixing until well blended;pour the batter into the unbaked pie shell;bake at 450 degrees F (230 degrees C) for 10 minutes then reduce the oven temperature to 325 degrees F (165 degrees F) and continue baking pie for an additional 30 minutes or until a knife inserted into the mixture comes out clean                                                                                                                                                       ', 74),
(62, 'awesome_carrot_cake_with_cream_cheese_frosting_recipe', 'flour;sugar;baking soda;baking powder; salt;cinnamon;egg; applesauce;vanilla;       pineapple;pecan;sugar;cheese;butter;carrot', 'preheat oven to 350 degrees F (175 degrees C);grease and flour a 9x13 inch pan;in a large bowl combine grated carrot flour white sugar         baking soda baking powder salt and cinnamon;stir in eggs         applesauce oil 1 1/4 teaspoon vanilla pineapple and 3/4 cup chopped pecans;spoon batter into prepared pan;bake in the preheated oven for 30 to 40 minutes or until a toothpick inserted into the center of the cake comes out clean;allow to cool;;in a medium bowl combine confectioners\'\' sugar  Neufchatel cheese1/2 cup butter or margarine and 1 1/4 teaspoons vanilla;beat until smooth then stir in 1 cup chopped pecans;spread on cooled cake                                      ', 927),
(63, 'cream_cheese_corn_recipe', 'butter;cream;cheese;corn', 'combine the corn butter or margarine and the cream cheese in a medium sized saucepan;cook over medium heat for about 20 minutes.;serve hot                                                                                              ', 122),
(64, 'tofu_fudge_mocha_bars_recipe', 'salt;sugar ;cocoa powder;coffee;vanilla;whole wheat;tofu', 'preheat oven to 325 degrees F (165 degrees C);using an electric mixer         blend tofu until creamy;add oil salt sugar cocoa coffee and vanilla and blend well;when sugar is dissolved into the tofu mixture remove the bowl from the electric mixer and whisk in flour;pour batter into a greased 9x13 inch baking pan;bake 25 to 30 minutes or until the cake pulls away from the side of the pan;the bars will appear glossy         almost underdone;cool in the pan and when cool cut into bars using a clean wet knife', 48),
(65, 'apricot_muffin_recipe', 'apricot;water;flour;white_sugar;baking_soda;salt;butter;vegetable_oil;buttermilk;egg', 'preheat the oven to 400 degrees F (200 degrees C); grease a 12 cup muffin pan or line with paper muffin cups;place apricots into a small bowl and pour the boiling water over them;let stand for 5 minutes;in a medium bowl stir together the flour,sugar, baking soda and salt;in a separate bowl ,whisk together the melted butter,oil, buttermilk and egg; pour the wet ingredients into the dry ingredients and stir until just blended; it is okay for the batter to have some lumps.;drain water from apricots  and mix them into the batter;spoon into the prepared muffin cups;bake for 15 minutes in the preheated oven or until the top springs back when lightly pressed;cool in the pan over a wire rack', 91),
(66, 'avocado_quick_bread_recipe', 'flour;baking_soda;salt;cinnamon;spice;butter;white_sugar;egg;avocado;buttermilk;pecan;raisin;orange', 'preheat the oven to 350 degrees F (175 degrees C);grease and flour two 9x5 inch loaf pans; sift together the flour, baking_soda,baking_powder,salt ,cinnamon and allspice; set aside;in a medium bowl ,cream together the sugar and butter until light and fluffy;beat in the egg one at a time then mix in the mashed avocado;stir in the dry ingredients alternately with the buttermilk until just mixed; fold in the chopped pecans, raisins and orange zest; divide the batter evenly between the two loaf pans;bake for 1 hour in the preheated oven or until a toothpick inserted into the center of the loaf comes out clean; allow loaves to cool in pan for at least 20 minutes before removing', 114),
(67, 'classic_pizza _margharita_recipe', 'bread;basil;tomato;mozzarella;red_pepper', 'preheat oven to 450 degrees F;place pizza crust on baking sheet;spread pesto over pizza crust;arrange tomatoes over pesto;sprinkle with cheese and crushed red pepper;bakefor 10 to 12 minutes or until cheese is melted and crust is golden brown;cut into wedges', 13),
(68, 'pineapple_tarts_recipe', 'flour;butter;egg;water;salt;pineapple;white_sugar;clove', 'in a large bowl, combine all-purpose self-rising flour and salt;cut in butter until mixture resembles coarse crumbs; make a well in the center of the mixture;pour in 1 beaten egg and water; bind the ingredients together gently; do not knead too much; wrap in plastic and refrigerate for 4 hours or overnight;in a saucepan over medium heat combine pineapple and sugar;bring to a boil;reduce heat and simmer stirring frequently  for 30 minutes or until mixture thickens; remove from heat and allow to cool;preheat the oven to 400 degrees F (200 degrees C);on a lightly floured surface ,roll the dough out to 1/4 inch in thickness; cut 24 rounds ,roll the dough out to 1/4 inch in thickness;cut 24 rounds  extending slightly onto pastry shell;cut 24 more 2 inch rounds then using a smaller cutter ,cut out the centers creating a ring shape ;moisten the edges of each pastry  and place the rings on top of each pastry shell;brush the top of the pastry with beaten egg;bake for 20 to 25 minutes in the preheated oven;allow to cool on baking sheet for 5 minutes before removing to a wire rack to cool completely', 9),
(69, 'pumpkin_cheesecake_ii_recipe', 'cream_cheese;sour_cream;white_sugar;vanilla;pumpkin;egg;ham', 'preheat oven to 375 degrees F (190 degrees C);in a large bowl  beat cream_ cheese and sugar until smooth; blend in sour_cream , vanilla and spice; beat in egg  one at a time;blend in pumpkin puree until no streaks remain; pour filling into 2 crusts;bake in the preheated oven for 45 minutes  or until filling is set. allow to cool  then refrigerate at least 4 hours before serving', 18),
(70, 'restaurant_style egg_custard_pie_recipe', 'white_sugar;salt;vanilla;milk;butter;pie', 'preheat oven to 425 degrees F (220 degrees C.);in a large bowl combine egg,sugar,salt and vanilla. Mix just enough to incorporate all the ingredients;set aside; in a medium saucepan over medium-high heat combine milk and butter; use a wire whisk and stir constantly until the milk begins to rise in the saucepan at a rapid boil - 5 to 8 minutes.;never stop stirring, or the milk will burn;pour the hot mixture into the egg mixture stirring as you pour;line a 9 inch pan with dough; pour custard mixture into crust;protect the edges of crust with a ring of aluminum foil;bake in the preheated oven for 20 minutes; remove foil and bake for 8 to 10 minutes; filling will appear slightly jiggly;allow to cool', 37),
(71, 'cornbread_dressing_ii_recipe', 'cornmeal;white_sugar;baking_powder;salt;egg;milk;vegetable_oil;shiitake_mushroom;celery;green_onion;butter;chicken_broth;chicken;black_pepper;parsley', 'preheat oven to 350 degrees F (175 degrees C);lightly grease a 9x13 inch baking dish;In a 9 inch iron skillet  mix cornmeal, white_sugar,baking_powder,salt ,2 egg  evaporated milk and vegetable oil;bake cornmeal mixture in the preheated oven 35 to 40 minutes or until lightly browned;allow to cool;crumble the cooled cornbread into a large bowl;mix in remaining egg, shiitake_mushrooms ,celery, green onion, butter, chicken broth,condensed cream of chicken soup, ground black_pepper and dried parsley;transfer the mixture to the prepared 9x13 inch baking dish;bake 45 minutes in the preheated oven                ', 23),
(72, 'cranberry_crumb_pie_recipe', 'bake;cream_cheese;milk;lemon;brown_sugar;cornstarch;cranberry_sauce;butter;flour;walnut', 'preheat oven to 425 degrees F (220 degrees C);bake unbaked pie crust in the preheated oven 8 minutes; remove from heat.;reduce oven temperature to 375 degrees F (190 degrees C);in a large bowl beat cream cheese until fluff; mix in sweetened condensed milk until the mixture is smooth; stir in lemon; transfer to the pie crust.;in a small bowl  mix 1 tablespoon light brown sugar and cornstarch;mix in whole berry cranberry sauce;spoon the mixture evenly over the cream cheese mixture;in a medium bowl  mix butter all-purpose flour and remaining light brown sugar until crumbly;stir in the walnuts;sprinkle evenly over the cranberry mixture;bake 45 minutes in the 375 degrees F (190 degrees C) oven or until bubbly and lightly browned; cool on a metal rack; serve at room temperature  or chill in the refrigerator', 58),
(73, 'cranberry_parfait_pie_recipe', 'cranberry;cranberry_sauce;ice_cream;ham_cream;white_sugar;vanilla', 'heat the cranberry juice in a medium saucepan over low heat;stir in strawberry flavored gelatin until dissolved;cook stirring occasionally  until thickened  15 to 20 minutes.;remove from heat.;transfer to a medium bowl  and beat with an electric mixer until fluffy.;in a blender or food processor finely chop the whole cranberry sauce. Mix in the gelatin mixture and vanilla ice cream until well blended;transfer blended mixture to the prepared graham cracker crust;chill in the refrigerator 2 to 3 hours;in a medium bowl  whip together the heavy cream  white sugar and vanilla extract.;pour over the chilled pie before serving', 2),
(74, 'green_beans_with_herb_dressing_recipe', 'green_onion;garlic;olive_oil;lemon;salt;white_sugar;mustard;basil;oregano;marjoram;black_pepper;green_bean', 'in a medium bowl, mix green onion, garlic,olive_oil, oil,lemon,salt	,white_sugar,mustard,basil,oregano,marjoram and pepper;place green beans in a steaming basket steam in a medium saucepan over boiling water 5 minutes or to desired tenderness;place green beans in a medium serving dish;pour dressing mixture over the beans										', 38),
(75, 'sweet_ potato_and_apple_casserole_recipe ', 'potato;brown_sugar;cinnamon;nutmeg;apple;flour;brown_sugar;butter;pecan', 'place sweet potatoes in a large saucepan with enough water to cover;bring to a boil and cook 25 minutes or until tender but firm;drain cool and cut into 1/4 inch slices.preheat oven to 350 degrees F (175 degrees C);lightly grease a 7x11 inch baking dish;in a small bowl mix brown_sugar,cinnamon and nutmeg;layer sweet potatoes , brown_sugar mixture and apples in the prepared baking dish;in a medium bowl mix flour brown_sugar, butter and pecans; sprinkle over the sweet potatoes;bake in the preheated oven 30 minutes or until lightly browned        ', 129),
(76, 'minnesota_golf_ course_ chili_recipe', 'ground_beef;celery;bell_pepper;onion;garlic;tomato;tomato;white_sugar;water;bean;chili;pepper', 'in a large pot over medium heat cook beef until brown; stir in celery,bell pepper,onion,garlic,tomatoes,tomato_ paste,sugar,water and beans;season with chili powder,salt and pepper; reduce heat and simmer 1 hour					', 67),
(77, 'mom\'s_chili_recipe', 'ground_beef;onion;bean;chile_pepper;chili_pepper;chili;water', 'in a large saucepan over medium-high heat cook beef and onion until meat is brown;Stir in beans, diced tomatoes,chili seasoning,	salt,pepper,chili_powder and water;reduce heat and simmer 2 hours		', 62),
(78, 'mom\'s_italian_ beef_ barley_soup_recipe', 'roast;water;beef_onion;tomato_sauce;barley;pepper', 'in a slow cooker combine beef,water, bouillon,onion, tomato_sauce,barley, salt and pepper;cover and cook on Low for 5 hours	', 203),
(79, 'quick_and_easy_20', 'olive_oil;onion;garlic;oregano;cumin;chicken_broth1(15 ounce)can_ white_hominy;chile_pepper;olive_oil;chicken', 'in a large pot over medium heat combine oil,onion,garlic,oregano and cumin; Cook covered  5 minutes until onion are tende;stir in broth,hominy,chile_peppers and olive_oils;bring to a boil then reduce heat to medium ;stir chicken into pot; cover and cook until chicken is no longer pink 5 to 10 minutes        ', 88),
(80, 'quick_and_easy_chicken_noodle_soup_recipe ', 'butter;onion;celery;chicken_broth;vegetable;chicken;noodle;carrot;basil;oregano;pepper', 'in a large pot over medium heat,melt butter;cook onion and celery in butter until just tender 5 minutes pour in chicken and vegetable broths and stir in chicken	 noodles,carrot,basil,oregano, salt and pepper; bring to a boil then reduce heat and simmer 20 minutes before serving					', 2000),
(81, 'quick_chili_ii_recipe', 'ground_beef;onion;tomato_sauce;water;bean;chile_pepper;chili;garlic;cumin;cajun_seasoning', 'in a large pot cook beef over medium heat until brown;stir in onion and cook until onion is translucent;stir in tomato_sauce, water,ranch-style_beans,kidney_beans         chiles,chili_powder,garlic_powder,cumin and cajun_seasoning;bring to a boil then reduce heat and simmer 20 minutes                        ', 47),
(82, 'russian_chili_recipe ', 'ground beef;olive_oil;onion;bell_pepper;celery;beer;water;chili;pepper;parsley;cumin;tomato;bean;sour_cream', 'in a large skillet over medium heat cook beef until brown; drain and let cool; rinse with water;drain;in a large pot over medium heat cook onion ,bell pepper and celery in oil until just tender;stir in ground beef ,beer,water, chili_powder, salt,pepper,parsley and cumin;reduce heat cover and simmer 30 minutes;stir in tomato paste and cook 10 minutes more;stir in kidney beans and heat through;  remove from heat and stir in sour cream                                                                       ', 6),
(83, 'salmon_chowder_recipe', 'butter;onion;celery;garlic;potato;carrot;chicken_broth;salt;black_pepper;dill;salmon;milk;cream;cheddar', 'melt butter in a large pot over medium heat; saute onion,celery and garlic powder until onion are tender;stir in potatoes, carrot ,broth ,salt ,pepper and dill;bring to a boil and reduce heat;cover and simmer 20 minute;stir in salmon, evaporated milk,corn and cheese;cook until heated through                                ', 579),
(84, 'spicy_chunks_of_stewed_beef_soup_recipe', 'bean;beef;red_wine;tomato;carrot;celery;potato;garlic;green_onion;salt;black_ pepper;pepper;red_pepper;oregano;mustard;sauce', 'rinse and pick through beans and place in a medium saucepan with water to cover by 2 inches;bring to a boil for 10 minutes then remove from heat ;cover and let soak 2 hours;drain and rinse;in a 5 quart slow cooker combine beans, stew meat ,broth ,wine, tomatoes, carrot, celery , potatoes,garlic and onion;season with salt ,        pepper,cayenne,red_pepper flakes ,oregano ,mustard and hot sauce;cover and cook on low 10 to 12 hours', 5),
(85, 'spicy_turkey_chili_recipe', 'turkey;bean;tomato;chili;chile_pepper;tomato_sauce;onion;water', 'in a slow cooke combine turkey,beans,tomatoes,chili_seasoning,chile_peppers,tomato_sauce,onion and water;cook on low 3 to 4 hours;serve hot		', 51),
(86, 'grandma\'s_ slow_cooker_vegetarian_chili_recipe', 'bean;tomato;corn;onion;bell_pepper;celery;garlic;chili;parsley;oregano;basil', 'in a slow cooker combine black bean soup,kidney_beans,garbanzo_beans,baked_beans,tomatoes,corn,onion,bell_ pepper and celery;season with garlic,chili powder,parsley,oregano and basil;cook for at least two hours on high', 630),
(87, 'spinash_dip_recipe', 'spinash;onion;garlic;bell_pepper;sour_cream;mayonnaise;cumin;salt', 'squeeze the water out of the spinash and place the spinash into a mixing bowl;stir in the onion,garlic ,vegetables ,sour_cream,mayonnaise and cumin;season with salt and pepper;let the dip stand at room temp for 1/2 hour for the flavors to mix  and stir again before serving;this dip keeps well in the fridge covered for up to 1 week', 45),
(88, 'fresh_tomato_pasta_recipe', 'pasta;garlic;tomato;basil;olive_oil;salt', 'fill a large pot with lightly salted water and bring to a rolling boil over high heat;coarsely chop the tomato and transfer to a small bowl;sprinkle the tomato chunks with basil,olive_oil, oil,and salt;set aside;once the water is boiling stir in the rigatoni and return to a boil;cook the pasta uncovered stirring occasionally until the pasta has cooked through but is still firm to the bite about 12 minutes;drain well in a colander and then return the pasta to the pot;pour the tomato mixture over the pasta and toss to mix                                        ', 35);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items_display`
--

CREATE TABLE `items_display` (
  `id` varchar(3) DEFAULT NULL,
  `disease` varchar(19) DEFAULT NULL,
  `food` varchar(19) DEFAULT NULL,
  `nutrient` varchar(13) DEFAULT NULL,
  `wt_condition` varchar(13) DEFAULT NULL,
  `edible` varchar(6) DEFAULT NULL,
  `nutrition` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items_display`
--

INSERT INTO `items_display` (`id`, `disease`, `food`, `nutrient`, `wt_condition`, `edible`, `nutrition`) VALUES
('1', 'diabetes', 'squash', 'carbohydrate', 'over_weight', '1', NULL),
('2', 'diabetes', 'squash', 'carbohydrate', 'under_weight', '1', NULL),
('3', 'diabetes', 'squash', 'carbohydrate', 'normal_weight', '1', NULL),
('4', 'diabetes', 'egg', 'protein', 'over_weight', '1', NULL),
('5', 'diabetes', 'egg', 'protein', 'under_weight', '1', NULL),
('6', 'diabetes', 'egg', 'protein', 'normal_weight', '1', NULL),
('7', 'diabetes', 'chia_seed', 'carbohydrate', 'over_weight', '1', NULL),
('8', 'diabetes', 'chia_seed', 'carbohydrate', 'under_weight', '1', NULL),
('9', 'diabetes', 'chia_seed', 'carbohydrate', 'normal_weight', '1', NULL),
('10', 'diabetes', 'yogurt', 'protein', 'over_weight', '0', NULL),
('11', 'diabetes', 'yogurt', 'protein', 'under_weight', '1', NULL),
('12', 'diabetes', 'yogurt', 'protein', 'normal_weight', '1', NULL),
('13', 'diabetes', 'brocoli', 'carbohydrate', 'over_weight', '1', NULL),
('14', 'diabetes', 'brocoli', 'carbohydrate', 'under_weight', '0', NULL),
('15', 'diabetes', 'brocoli', 'carbohydrate', 'normal_weight', '1', NULL),
('16', 'diabetes', 'apple_cider_veniger', 'carbohydrate', 'over_weight', '1', NULL),
('17', 'diabetes', 'apple_cider_veniger', 'carbohydrate', 'under_weight', '0', NULL),
('18', 'diabetes', 'apple_cider_veniger', 'carbohydrate', 'normal_weight', '1', NULL),
('19', 'diabetes', 'strawberry', 'carbohydrate', 'over_weight', '1', NULL),
('20', 'diabetes', 'strawberry', 'carbohydrate', 'under_weight', '0', NULL),
('21', 'diabetes', 'strawberry', 'carbohydrate', 'normal_weight', '1', NULL),
('22', 'diabetes', 'garlic', 'carbohydrate', 'over_weight', '1', NULL),
('23', 'diabetes', 'garlic', 'carbohydrate', 'under_weight', '0', NULL),
('24', 'diabetes', 'garlic', 'carbohydrate', 'normal_weight', '1', NULL),
('25', 'diabetes', 'flax_seed', 'fat', 'over_weight', '1', NULL),
('26', 'diabetes', 'flax_seed', 'fat', 'under_weight', '1', NULL),
('27', 'diabetes', 'flax_seed', 'fat', 'normal_weight', '1', NULL),
('28', 'diabetes', 'oats', 'carbohydrate', 'over_weight', '1', NULL),
('29', 'diabetes', 'oats', 'carbohydrate', 'under_weight', '1', NULL),
('30', 'diabetes', 'oats', 'carbohydrate', 'normal_weight', '1', NULL),
('31', 'diabetes', 'barely', 'carbohydrate', 'over_weight', '1', NULL),
('32', 'diabetes', 'barely', 'carbohydrate', 'under_weight', '1', NULL),
('33', 'diabetes', 'barely', 'carbohydrate', 'normal_weight', '1', NULL),
('34', 'diabetes', 'beans', 'carbohydrate', 'over_weight', '1', NULL),
('35', 'diabetes', 'beans', 'carbohydrate', 'under_weight', '1', NULL),
('36', 'diabetes', 'beans', 'carbohydrate', 'normal_weight', '1', NULL),
('37', 'diabetes', 'nuts', 'fat', 'over_weight', '1', NULL),
('38', 'diabetes', 'nuts', 'fat', 'under_weight', '1', NULL),
('39', 'diabetes', 'nuts', 'fat', 'normal_weight', '1', NULL),
('40', 'diabetes', 'apple', 'carbohydrate', 'over_weight', '1', NULL),
('41', 'diabetes', 'apple', 'carbohydrate', 'under_weight', '0', NULL),
('42', 'diabetes', 'apple', 'carbohydrate', 'normal_weight', '1', NULL),
('43', 'diabetes', 'milk', 'carbohydrate', 'over_weight', '0', NULL),
('44', 'diabetes', 'milk', 'carbohydrate', 'under_weight', '1', NULL),
('45', 'diabetes', 'milk', 'carbohydrate', 'normal_weight', '1', NULL),
('46', 'diabetes', 'chicken', 'protein', 'over_weight', '1', NULL),
('47', 'diabetes', 'chicken', 'protein', 'under_weight', '1', NULL),
('48', 'diabetes', 'chicken', 'protein', 'normal_weight', '1', NULL),
('49', 'diabetes', 'lemon', 'carbohydrate', 'over_weight', '1', NULL),
('50', 'diabetes', 'lemon', 'carbohydrate', 'under_weight', '1', NULL),
('51', 'diabetes', 'lemon', 'carbohydrate', 'normal_weight', '1', NULL),
('52', 'diabetes', 'capsicum', 'carbohyadrate', 'over_weight', '1', NULL),
('53', 'diabetes', 'capsicum', 'carbohydrate', 'under_weight', '1', NULL),
('54', 'diabetes', 'capsicum', 'carbohydrate', 'normal_weight', '1', NULL),
('55', 'diabetes', 'figs', 'carbohydrate', 'over_weight', '1', NULL),
('56', 'diabetes', 'figs', 'carbohydrate', 'under_weight', '0', NULL),
('57', 'diabetes', 'figs', 'carbohydrate', 'normal_weight', '1', NULL),
('58', 'diabetes', 'beef', 'protein', 'over_weight', '0', NULL),
('59', 'diabetes', 'beef', 'protein', 'under_weight', '0', NULL),
('60', 'diabetes', 'beef', 'protein', 'normal_weight', '0', NULL),
('61', 'diabetes', 'sea_weed', 'protein', 'over_weight', '1', NULL),
('62', 'diabetes', 'sea_weed', 'protein', 'under_weight', '0', NULL),
('63', 'diabetes', 'sea_weed', 'protein', 'normal_weight', '1', NULL),
('64', 'diabetes', 'almonds', 'fat', 'over_weight', '1', NULL),
('65', 'diabetes', 'almonds', 'fat', 'under_weight', '1', NULL),
('66', 'diabetes', 'almonds', 'fat', 'normal_weight', '1', NULL),
('67', 'diabetes', 'kiwi', 'carbohydrate', 'over_weight', '1', NULL),
('68', 'diabetes', 'kiwi', 'carbohydrate', 'under_weight', '1', NULL),
('69', 'diabetes', 'kiwi', 'carbohydrate', 'normal_weight', '1', NULL),
('70', 'diabetes', 'ginger', 'carbohydrate', 'over_weight', '1', NULL),
('71', 'diabetes', 'ginger', 'carbohydrate', 'under_weight', '0', NULL),
('72', 'diabetes', 'ginger', 'carbohydrate', 'normal_weight', '1', NULL),
('73', 'diabetes', 'celery', 'carbohydrate', 'over_weight', '0', NULL),
('74', 'diabetes', 'celery', 'carbohydrate', 'under_weight', '1', NULL),
('75', 'diabetes', 'celery', 'carbohydrate', 'normal_weight', '1', NULL),
('76', 'diabetes', 'sweet_potato', 'carbohydrate', 'over_weight', '1', NULL),
('77', 'diabetes', 'sweet_potato', 'carbohydrate', 'under_weight', '1', NULL),
('78', 'diabetes', 'sweet_potato', 'carbohydrate', 'normal_weight', '1', NULL),
('79', 'diabetes', 'seasame_seeds', 'fat', 'over_weight', '1', NULL),
('80', 'diabetes', 'seasame_seeds', 'fat', 'under_weight', '0', NULL),
('81', 'diabetes', 'seasame_seeds', 'fat', 'normal_weight', '1', NULL),
('82', 'diabetes', 'qunioa', 'carbohydrate', 'over_weight', '1', NULL),
('83', 'diabetes', 'qunioa', 'carbohydrate', 'under_weight', '1', NULL),
('84', 'diabetes', 'qunioa', 'carbohydrate', 'normal_weight', '1', NULL),
('85', 'diabetes', 'potato', 'carbohydrate', 'over_weight', '0', NULL),
('86', 'diabetes', 'potato', 'carbohydrate', 'under_weight', '0', NULL),
('87', 'diabetes', 'potato', 'carbohydrate', 'normal_weight', '0', NULL),
('88', 'diabetes', 'avocado', 'fat', 'over_weight', '1', NULL),
('89', 'diabetes', 'avocado', 'fat', 'under_weight', '1', NULL),
('90', 'diabetes', 'avocado', 'fat', 'normal_weight', '1', NULL),
('91', 'diabetes', 'dark_chocolate', 'fat', 'over_weight', '0', NULL),
('92', 'diabetes', 'dark_chocolate', 'fat', 'under_weight', '1', NULL),
('93', 'diabetes', 'dark_chocolate', 'fat', 'normal_weight', '1', NULL),
('94', 'diabetes', 'berries', 'carbohydrate', 'over_weight', '1', NULL),
('95', 'diabetes', 'berries', 'carbohydrate', 'under_weight', '1', NULL),
('96', 'diabetes', 'berries', 'carbohydrate', 'normal_weight', '1', NULL),
('97', 'diabetes', 'red_beets', 'carbohydrate', 'over_weight', '1', NULL),
('98', 'diabetes', 'red_beets', 'carbohydrate', 'under_weight', '1', NULL),
('99', 'diabetes', 'red_beets', 'carbohydrate', 'normal_weight', '1', NULL),
('100', 'diabetes', 'banana', 'carbohydrate', 'over_weight', '0', NULL),
('101', 'diabetes', 'banana', 'carbohydrate', 'under_weight', '0', NULL),
('102', 'diabetes', 'banana', 'carbohydrate', 'normal_weight', '0', NULL),
('103', 'diabetes', 'olive_oil', 'fats', 'over_weight', '1', NULL),
('104', 'diabetes', 'olive_oil', 'fats', 'under_weight', '1', NULL),
('105', 'diabetes', 'olive_oil', 'fats', 'normal_weight', '1', NULL),
('106', 'diabetes', 'pomegranet', 'carbohydrate', 'over_weight', '1', NULL),
('107', 'diabetes', 'pomegranet', 'carbohydrate', 'under_weight', '0', NULL),
('108', 'diabetes', 'pomegranet', 'carbohydrate', 'normal_weight', '1', NULL),
('109', 'diabetes', 'sunflower_seed', 'fats', 'over_weight', '1', NULL),
('110', 'diabetes', 'sunflower_seed', 'fats', 'under_weight', '1', NULL),
('111', 'diabetes', 'sunflower_seed', 'fats', 'normal_weight', '1', NULL),
('112', 'diabetes', 'fish', 'protein', 'over_weight', '1', NULL),
('113', 'diabetes', 'fish', 'protein', 'under_weight', '1', NULL),
('114', 'diabetes', 'fish', 'protein', 'normal_weight', '1', NULL),
('115', 'diabetes', 'carrot', 'carbohydrate', 'over_weight', '1', NULL),
('116', 'diabetes', 'carrot', 'carbohydrate', 'under_weight', '0', NULL),
('117', 'diabetes', 'carrot', 'carbohydrate', 'normal_weight', '1', NULL),
('118', 'diabetes', 'tomato', 'carbohydrate', 'over_weight', '1', NULL),
('119', 'diabetes', 'tomato', 'carbohydrate', 'under_weight', '0', NULL),
('120', 'diabetes', 'tomato', 'carbohydrate', 'normal_weight', '1', NULL),
('121', 'diabetes', 'whole_grains', 'carbohydrate', 'over_weight', '1', NULL),
('122', 'diabetes', 'whole_grains', 'carbohydrate', 'under_weight', '1', NULL),
('123', 'diabetes', 'whole_grains', 'carbohydrate', 'normal_weight', '1', NULL),
('124', 'diabetes', 'spinash', 'carbohydrate', 'over_weight', '1', NULL),
('125', 'diabetes', 'spinash', 'carbohydrate', 'under_weight', '0', NULL),
('126', 'diabetes', 'spinash', 'carbohydrate', 'normal_weight', '1', NULL),
('127', 'diabetes', 'cabbage', 'carbohydrate', 'over_weight', '1', NULL),
('128', 'diabetes', 'cabbage', 'carbohydrate', 'under_weight', '1', NULL),
('129', 'diabetes', 'cabbage', 'carbohydrate', 'normal_weight', '1', NULL),
('130', 'diabetes', 'raspberry', 'carbohydrate', 'over_weight', '1', NULL),
('131', 'diabetes', 'raspberry', 'carbohydrate', 'under_weight', '1', NULL),
('132', 'diabetes', 'raspberry', 'carbohydrate', 'normal_weight', '1', NULL),
('133', 'diabetes', 'blueberry', 'carbohydrate', 'over_weight', '1', NULL),
('134', 'diabetes', 'blueberry', 'carbohydrate', 'under_weight', '1', NULL),
('135', 'diabetes', 'blueberry', 'carbohydrate', 'normal_weight', '1', NULL),
('136', 'diabetes', 'buckwheat', 'carbohydrate', 'over_weight', '1', NULL),
('137', 'diabetes', 'buckwheat', 'carbohydrate', 'under_weight', '0', NULL),
('138', 'diabetes', 'buckwheat', 'carbohydrate', 'normal_weight', '1', NULL),
('139', 'diabetes', 'orange', 'carbohydrate', 'over_weight', '1', NULL),
('140', 'diabetes', 'orange', 'carbohydrate', 'under_weight', '1', NULL),
('141', 'diabetes', 'orange', 'carbohydrate', 'normal_weight', '1', NULL),
('142', 'diabetes', 'pineapple', 'carbohydrate', 'over_weight', '0', NULL),
('143', 'diabetes', 'pineapple', 'carbohydrate', 'under_weight', '0', NULL),
('144', 'diabetes', 'pineapple', 'carbohydrate', 'normal_weight', '0', NULL),
('145', 'diabetes', 'barley', 'carbohydrate', 'over_weight', '1', NULL),
('146', 'diabetes', 'barley', 'carbohydrate', 'under_weight', '1', NULL),
('147', 'diabetes', 'barley', 'carbohydrate', 'normal_weight', '1', NULL),
('148', 'diabetes', 'papaya', 'carbohydrate', 'over_weight', '1', NULL),
('149', 'diabetes', 'papaya', 'carbohydrate', 'under_weight', '1', NULL),
('150', 'diabetes', 'papaya', 'carbohydrate', 'normal_weight', '1', NULL),
('151', 'cholesterol', 'squash', 'carbohydrate', 'over_weight', '1', NULL),
('152', 'cholesterol', 'squash', 'carbohydrate', 'under_weight', '1', NULL),
('153', 'cholesterol', 'squash', 'carbohydrate', 'normal_weight', '1', NULL),
('154', 'cholesterol', 'egg', 'protein', 'over_weight', '0', NULL),
('155', 'cholesterol', 'egg', 'protein', 'under_weight', '0', NULL),
('156', 'cholesterol', 'egg', 'protein', 'normal_weight', '0', NULL),
('157', 'cholesterol', 'chia_seed', 'carbohydrate', 'over_weight', '1', NULL),
('158', 'cholesterol', 'chia_seed', 'carbohydrate', 'under_weight', '1', NULL),
('159', 'cholesterol', 'chia_seed', 'carbohydrate', 'normal_weight', '1', NULL),
('160', 'cholesterol', 'yogurt', 'protein', 'over_weight', '0', NULL),
('161', 'cholesterol', 'yogurt', 'protein', 'under_weight', '1', NULL),
('162', 'cholesterol', 'yogurt', 'protein', 'normal_weight', '1', NULL),
('163', 'cholesterol', 'brocoli', 'carbohydrate', 'over_weight', '1', NULL),
('164', 'cholesterol', 'brocoli', 'carbohydrate', 'under_weight', '0', NULL),
('165', 'cholesterol', 'brocoli', 'carbohydrate', 'normal_weight', '1', NULL),
('166', 'cholesterol', 'apple_cider_veniger', 'carbohydrate', 'over_weight', '1', NULL),
('167', 'cholesterol', 'apple_cider_veniger', 'carbohydrate', 'under_weight', '0', NULL),
('168', 'cholesterol', 'apple_cider_veniger', 'carbohydrate', 'normal_weight', '1', NULL),
('169', 'cholesterol', 'strawberry', 'carbohydrate', 'over_weight', '1', NULL),
('170', 'cholesterol', 'strawberry', 'carbohydrate', 'under_weight', '0', NULL),
('171', 'cholesterol', 'strawberry', 'carbohydrate', 'normal_weight', '1', NULL),
('172', 'cholesterol', 'garlic', 'carbohydrate', 'over_weight', '1', NULL),
('173', 'cholesterol', 'garlic', 'carbohydrate', 'under_weight', '0', NULL),
('174', 'cholesterol', 'garlic', 'carbohydrate', 'normal_weight', '1', NULL),
('175', 'cholesterol', 'flax_seed', 'fat', 'over_weight', '1', NULL),
('176', 'cholesterol', 'flax_seed', 'fat', 'under_weight', '1', NULL),
('177', 'cholesterol', 'flax_seed', 'fat', 'normal_weight', '1', NULL),
('178', 'cholesterol', 'oats', 'carbohydrate', 'over_weight', '1', NULL),
('179', 'cholesterol', 'oats', 'carbohydrate', 'under_weight', '1', NULL),
('180', 'cholesterol', 'oats', 'carbohydrate', 'normal_weight', '1', NULL),
('181', 'cholesterol', 'barely', 'carbohydrate', 'over_weight', '1', NULL),
('182', 'cholesterol', 'barely', 'carbohydrate', 'under_weight', '1', NULL),
('183', 'cholesterol', 'barely', 'carbohydrate', 'normal_weight', '1', NULL),
('184', 'cholesterol', 'beans', 'carbohydrate', 'over_weight', '1', NULL),
('185', 'cholesterol', 'beans', 'carbohydrate', 'under_weight', '1', NULL),
('186', 'cholesterol', 'beans', 'carbohydrate', 'normal_weight', '1', NULL),
('187', 'cholesterol', 'nuts', 'fat', 'over_weight', '1', NULL),
('188', 'cholesterol', 'nuts', 'fat', 'under_weight', '1', NULL),
('189', 'cholesterol', 'nuts', 'fat', 'normal_weight', '1', NULL),
('190', 'cholesterol', 'apple', 'carbohydrate', 'over_weight', '1', NULL),
('191', 'cholesterol', 'apple', 'carbohydrate', 'under_weight', '0', NULL),
('192', 'cholesterol', 'apple', 'carbohydrate', 'normal_weight', '1', NULL),
('193', 'cholesterol', 'milk', 'carbohydrate', 'over_weight', '0', NULL),
('194', 'cholesterol', 'milk', 'carbohydrate', 'under_weight', '0', NULL),
('195', 'cholesterol', 'milk', 'carbohydrate', 'normal_weight', '0', NULL),
('196', 'cholesterol', 'chicken', 'protein', 'over_weight', '0', NULL),
('197', 'cholesterol', 'chicken', 'protein', 'under_weight', '0', NULL),
('198', 'cholesterol', 'chicken', 'protein', 'normal_weight', '0', NULL),
('199', 'cholesterol', 'lemon', 'carbohydrate', 'over_weight', '1', NULL),
('200', 'cholesterol', 'lemon', 'carbohydrate', 'under_weight', '1', NULL),
('201', 'cholesterol', 'lemon', 'carbohydrate', 'normal_weight', '1', NULL),
('202', 'cholesterol', 'capsicum', 'carbohyadrate', 'over_weight', '1', NULL),
('203', 'cholesterol', 'capsicum', 'carbohydrate', 'under_weight', '1', NULL),
('204', 'cholesterol', 'capsicum', 'carbohydrate', 'normal_weight', '1', NULL),
('205', 'cholesterol', 'figs', 'carbohydrate', 'over_weight', '1', NULL),
('206', 'cholesterol', 'figs', 'carbohydrate', 'under_weight', '0', NULL),
('207', 'cholesterol', 'figs', 'carbohydrate', 'normal_weight', '1', NULL),
('208', 'cholesterol', 'beef', 'protein', 'over_weight', '0', NULL),
('209', 'cholesterol', 'beef', 'protein', 'under_weight', '0', NULL),
('210', 'cholesterol', 'beef', 'protein', 'normal_weight', '0', NULL),
('211', 'cholesterol', 'sea_weed', 'protein', 'over_weight', '1', NULL),
('212', 'cholesterol', 'sea_weed', 'protein', 'under_weight', '0', NULL),
('213', 'cholesterol', 'sea_weed', 'protein', 'normal_weight', '1', NULL),
('214', 'cholesterol', 'almonds', 'fat', 'over_weight', '1', NULL),
('215', 'cholesterol', 'almonds', 'fat', 'under_weight', '1', NULL),
('216', 'cholesterol', 'almonds', 'fat', 'normal_weight', '1', NULL),
('217', 'cholesterol', 'kiwi', 'carbohydrate', 'over_weight', '1', NULL),
('218', 'cholesterol', 'kiwi', 'carbohydrate', 'under_weight', '1', NULL),
('219', 'cholesterol', 'kiwi', 'carbohydrate', 'normal_weight', '1', NULL),
('220', 'cholesterol', 'ginger', 'carbohydrate', 'over_weight', '1', NULL),
('221', 'cholesterol', 'ginger', 'carbohydrate', 'under_weight', '0', NULL),
('222', 'cholesterol', 'ginger', 'carbohydrate', 'normal_weight', '1', NULL),
('223', 'cholesterol', 'celery', 'carbohydrate', 'over_weight', '0', NULL),
('224', 'cholesterol', 'celery', 'carbohydrate', 'under_weight', '1', NULL),
('225', 'cholesterol', 'celery', 'carbohydrate', 'normal_weight', '1', NULL),
('226', 'cholesterol', 'sweet_potato', 'carbohydrate', 'over_weight', '1', NULL),
('227', 'cholesterol', 'sweet_potato', 'carbohydrate', 'under_weight', '1', NULL),
('228', 'cholesterol', 'sweet_potato', 'carbohydrate', 'normal_weight', '1', NULL),
('229', 'cholesterol', 'seasame_seeds', 'fat', 'over_weight', '1', NULL),
('230', 'cholesterol', 'seasame_seeds', 'fat', 'under_weight', '0', NULL),
('231', 'cholesterol', 'seasame_seeds', 'fat', 'normal_weight', '1', NULL),
('232', 'cholesterol', 'qunioa', 'carbohydrate', 'over_weight', '1', NULL),
('233', 'cholesterol', 'qunioa', 'carbohydrate', 'under_weight', '1', NULL),
('234', 'cholesterol', 'qunioa', 'carbohydrate', 'normal_weight', '1', NULL),
('235', 'cholesterol', 'potato', 'carbohydrate', 'over_weight', '0', NULL),
('236', 'cholesterol', 'potato', 'carbohydrate', 'under_weight', '1', NULL),
('237', 'cholesterol', 'potato', 'carbohydrate', 'normal_weight', '1', NULL),
('238', 'cholesterol', 'avocado', 'fat', 'over_weight', '1', NULL),
('239', 'cholesterol', 'avocado', 'fat', 'under_weight', '1', NULL),
('240', 'cholesterol', 'avocado', 'fat', 'normal_weight', '1', NULL),
('241', 'cholesterol', 'dark_chocolate', 'fat', 'over_weight', '0', NULL),
('242', 'cholesterol', 'dark_chocolate', 'fat', 'under_weight', '1', NULL),
('243', 'cholesterol', 'dark_chocolate', 'fat', 'normal_weight', '1', NULL),
('244', 'cholesterol', 'berries', 'carbohydrate', 'over_weight', '1', NULL),
('245', 'cholesterol', 'berries', 'carbohydrate', 'under_weight', '1', NULL),
('246', 'cholesterol', 'berries', 'carbohydrate', 'normal_weight', '1', NULL),
('247', 'cholesterol', 'red_beets', 'carbohydrate', 'over_weight', '1', NULL),
('248', 'cholesterol', 'red_beets', 'carbohydrate', 'under_weight', '1', NULL),
('249', 'cholesterol', 'red_beets', 'carbohydrate', 'normal_weight', '1', NULL),
('250', 'cholesterol', 'banana', 'carbohydrate', 'over_weight', '1', NULL),
('251', 'cholesterol', 'banana', 'carbohydrate', 'under_weight', '1', NULL),
('252', 'cholesterol', 'banana', 'carbohydrate', 'normal_weight', '1', NULL),
('253', 'cholesterol', 'olive_oil', 'fats', 'over_weight', '1', NULL),
('254', 'cholesterol', 'olive_oil', 'fats', 'under_weight', '1', NULL),
('255', 'cholesterol', 'olive_oil', 'fats', 'normal_weight', '1', NULL),
('256', 'cholesterol', 'pomegranet', 'carbohydrate', 'over_weight', '1', NULL),
('257', 'cholesterol', 'pomegranet', 'carbohydrate', 'under_weight', '0', NULL),
('258', 'cholesterol', 'pomegranet', 'carbohydrate', 'normal_weight', '1', NULL),
('259', 'cholesterol', 'sunflower_seed', 'fats', 'over_weight', '1', NULL),
('260', 'cholesterol', 'sunflower_seed', 'fats', 'under_weight', '1', NULL),
('261', 'cholesterol', 'sunflower_seed', 'fats', 'normal_weight', '1', NULL),
('262', 'cholesterol', 'fish', 'protein', 'over_weight', '1', NULL),
('263', 'cholesterol', 'fish', 'protein', 'under_weight', '1', NULL),
('264', 'cholesterol', 'fish', 'protein', 'normal_weight', '1', NULL),
('265', 'cholesterol', 'carrot', 'carbohydrate', 'over_weight', '1', NULL),
('266', 'cholesterol', 'carrot', 'carbohydrate', 'under_weight', '0', NULL),
('267', 'cholesterol', 'carrot', 'carbohydrate', 'normal_weight', '1', NULL),
('268', 'cholesterol', 'tomato', 'carbohydrate', 'over_weight', '1', NULL),
('269', 'cholesterol', 'tomato', 'carbohydrate', 'under_weight', '0', NULL),
('270', 'cholesterol', 'tomato', 'carbohydrate', 'normal_weight', '1', NULL),
('271', 'cholesterol', 'whole_grains', 'carbohydrate', 'over_weight', '1', NULL),
('272', 'cholesterol', 'whole_grains', 'carbohydrate', 'under_weight', '1', NULL),
('273', 'cholesterol', 'whole_grains', 'carbohydrate', 'normal_weight', '1', NULL),
('274', 'cholesterol', 'spinash', 'carbohydrate', 'over_weight', '1', NULL),
('275', 'cholesterol', 'spinash', 'carbohydrate', 'under_weight', '0', NULL),
('276', 'cholesterol', 'spinash', 'carbohydrate', 'normal_weight', '1', NULL),
('277', 'cholesterol', 'cabbage', 'carbohydrate', 'over_weight', '1', NULL),
('278', 'cholesterol', 'cabbage', 'carbohydrate', 'under_weight', '1', NULL),
('279', 'cholesterol', 'cabbage', 'carbohydrate', 'normal_weight', '1', NULL),
('280', 'cholesterol', 'raspberry', 'carbohydrate', 'over_weight', '1', NULL),
('281', 'cholesterol', 'raspberry', 'carbohydrate', 'under_weight', '1', NULL),
('282', 'cholesterol', 'raspberry', 'carbohydrate', 'normal_weight', '1', NULL),
('283', 'cholesterol', 'blueberry', 'carbohydrate', 'over_weight', '1', NULL),
('284', 'cholesterol', 'blueberry', 'carbohydrate', 'under_weight', '1', NULL),
('285', 'cholesterol', 'blueberry', 'carbohydrate', 'normal_weight', '1', NULL),
('286', 'cholesterol', 'buckwheat', 'carbohydrate', 'over_weight', '1', NULL),
('287', 'cholesterol', 'buckwheat', 'carbohydrate', 'under_weight', '0', NULL),
('288', 'cholesterol', 'buckwheat', 'carbohydrate', 'normal_weight', '1', NULL),
('289', 'cholesterol', 'orange', 'carbohydrate', 'over_weight', '1', NULL),
('290', 'cholesterol', 'orange', 'carbohydrate', 'under_weight', '1', NULL),
('291', 'cholesterol', 'orange', 'carbohydrate', 'normal_weight', '1', NULL),
('292', 'cholesterol', 'pineapple', 'carbohydrate', 'over_weight', '1', NULL),
('293', 'cholesterol', 'pineapple', 'carbohydrate', 'under_weight', '1', NULL),
('294', 'cholesterol', 'pineapple', 'carbohydrate', 'normal_weight', '1', NULL),
('295', 'cholesterol', 'barley', 'carbohydrate', 'over_weight', '1', NULL),
('296', 'cholesterol', 'barley', 'carbohydrate', 'under_weight', '1', NULL),
('297', 'cholesterol', 'barley', 'carbohydrate', 'normal_weight', '1', NULL),
('298', 'cholesterol', 'papaya', 'carbohydrate', 'over_weight', '1', NULL),
('299', 'cholesterol', 'papaya', 'carbohydrate', 'under_weight', '1', NULL),
('300', 'cholesterol', 'papaya', 'carbohydrate', 'normal_weight', '1', NULL),
('301', 'high_blood_pressure', 'squash', 'carbohydrate', 'over_weight', '1', NULL),
('302', 'high_blood_pressure', 'squash', 'carbohydrate', 'under_weight', '1', NULL),
('303', 'high_blood_pressure', 'squash', 'carbohydrate', 'normal_weight', '1', NULL),
('304', 'high_blood_pressure', 'egg', 'protein', 'over_weight', '1', NULL),
('305', 'high_blood_pressure', 'egg', 'protein', 'under_weight', '1', NULL),
('306', 'high_blood_pressure', 'egg', 'protein', 'normal_weight', '1', NULL),
('307', 'high_blood_pressure', 'chia_seed', 'carbohydrate', 'over_weight', '1', NULL),
('308', 'high_blood_pressure', 'chia_seed', 'carbohydrate', 'under_weight', '1', NULL),
('309', 'high_blood_pressure', 'chia_seed', 'carbohydrate', 'normal_weight', '1', NULL),
('310', 'high_blood_pressure', 'yogurt', 'protein', 'over_weight', '0', NULL),
('311', 'high_blood_pressure', 'yogurt', 'protein', 'under_weight', '1', NULL),
('312', 'high_blood_pressure', 'yogurt', 'protein', 'normal_weight', '1', NULL),
('313', 'high_blood_pressure', 'brocoli', 'carbohydrate', 'over_weight', '1', NULL),
('314', 'high_blood_pressure', 'brocoli', 'carbohydrate', 'under_weight', '0', NULL),
('315', 'high_blood_pressure', 'brocoli', 'carbohydrate', 'normal_weight', '1', NULL),
('316', 'high_blood_pressure', 'apple_cider_veniger', 'carbohydrate', 'over_weight', '1', NULL),
('317', 'high_blood_pressure', 'apple_cider_veniger', 'carbohydrate', 'under_weight', '0', NULL),
('318', 'high_blood_pressure', 'apple_cider_veniger', 'carbohydrate', 'normal_weight', '1', NULL),
('319', 'high_blood_pressure', 'strawberry', 'carbohydrate', 'over_weight', '1', NULL),
('320', 'high_blood_pressure', 'strawberry', 'carbohydrate', 'under_weight', '0', NULL),
('321', 'high_blood_pressure', 'strawberry', 'carbohydrate', 'normal_weight', '1', NULL),
('322', 'high_blood_pressure', 'garlic', 'carbohydrate', 'over_weight', '1', NULL),
('323', 'high_blood_pressure', 'garlic', 'carbohydrate', 'under_weight', '0', NULL),
('324', 'high_blood_pressure', 'garlic', 'carbohydrate', 'normal_weight', '1', NULL),
('325', 'high_blood_pressure', 'flax_seed', 'fat', 'over_weight', '1', NULL),
('326', 'high_blood_pressure', 'flax_seed', 'fat', 'under_weight', '1', NULL),
('327', 'high_blood_pressure', 'flax_seed', 'fat', 'normal_weight', '1', NULL),
('328', 'high_blood_pressure', 'oats', 'carbohydrate', 'over_weight', '1', NULL),
('329', 'high_blood_pressure', 'oats', 'carbohydrate', 'under_weight', '1', NULL),
('330', 'high_blood_pressure', 'oats', 'carbohydrate', 'normal_weight', '1', NULL),
('331', 'high_blood_pressure', 'barely', 'carbohydrate', 'over_weight', '1', NULL),
('332', 'high_blood_pressure', 'barely', 'carbohydrate', 'under_weight', '1', NULL),
('333', 'high_blood_pressure', 'barely', 'carbohydrate', 'normal_weight', '1', NULL),
('334', 'high_blood_pressure', 'beans', 'carbohydrate', 'over_weight', '1', NULL),
('335', 'high_blood_pressure', 'beans', 'carbohydrate', 'under_weight', '1', NULL),
('336', 'high_blood_pressure', 'beans', 'carbohydrate', 'normal_weight', '1', NULL),
('337', 'high_blood_pressure', 'nuts', 'fat', 'over_weight', '1', NULL),
('338', 'high_blood_pressure', 'nuts', 'fat', 'under_weight', '1', NULL),
('339', 'high_blood_pressure', 'nuts', 'fat', 'normal_weight', '1', NULL),
('340', 'high_blood_pressure', 'apple', 'carbohydrate', 'over_weight', '1', NULL),
('341', 'high_blood_pressure', 'apple', 'carbohydrate', 'under_weight', '0', NULL),
('342', 'high_blood_pressure', 'apple', 'carbohydrate', 'normal_weight', '1', NULL),
('343', 'high_blood_pressure', 'milk', 'carbohydrate', 'over_weight', '0', NULL),
('344', 'high_blood_pressure', 'milk', 'carbohydrate', 'under_weight', '1', NULL),
('345', 'high_blood_pressure', 'milk', 'carbohydrate', 'normal_weight', '1', NULL),
('346', 'high_blood_pressure', 'chicken', 'protein', 'over_weight', '1', NULL),
('347', 'high_blood_pressure', 'chicken', 'protein', 'under_weight', '1', NULL),
('348', 'high_blood_pressure', 'chicken', 'protein', 'normal_weight', '1', NULL),
('349', 'high_blood_pressure', 'lemon', 'carbohydrate', 'over_weight', '1', NULL),
('350', 'high_blood_pressure', 'lemon', 'carbohydrate', 'under_weight', '1', NULL),
('351', 'high_blood_pressure', 'lemon', 'carbohydrate', 'normal_weight', '1', NULL),
('352', 'high_blood_pressure', 'capsicum', 'carbohyadrate', 'over_weight', '1', NULL),
('353', 'high_blood_pressure', 'capsicum', 'carbohydrate', 'under_weight', '1', NULL),
('354', 'high_blood_pressure', 'capsicum', 'carbohydrate', 'normal_weight', '1', NULL),
('355', 'high_blood_pressure', 'figs', 'carbohydrate', 'over_weight', '1', NULL),
('356', 'high_blood_pressure', 'figs', 'carbohydrate', 'under_weight', '0', NULL),
('357', 'high_blood_pressure', 'figs', 'carbohydrate', 'normal_weight', '1', NULL),
('358', 'high_blood_pressure', 'beef', 'protein', 'over_weight', '0', NULL),
('359', 'high_blood_pressure', 'beef', 'protein', 'under_weight', '0', NULL),
('360', 'high_blood_pressure', 'beef', 'protein', 'normal_weight', '0', NULL),
('361', 'high_blood_pressure', 'sea_weed', 'protein', 'over_weight', '1', NULL),
('362', 'high_blood_pressure', 'sea_weed', 'protein', 'under_weight', '0', NULL),
('363', 'high_blood_pressure', 'sea_weed', 'protein', 'normal_weight', '1', NULL),
('364', 'high_blood_pressure', 'almonds', 'fat', 'over_weight', '1', NULL),
('365', 'high_blood_pressure', 'almonds', 'fat', 'under_weight', '1', NULL),
('366', 'high_blood_pressure', 'almonds', 'fat', 'normal_weight', '1', NULL),
('367', 'high_blood_pressure', 'kiwi', 'carbohydrate', 'over_weight', '1', NULL),
('368', 'high_blood_pressure', 'kiwi', 'carbohydrate', 'under_weight', '1', NULL),
('369', 'high_blood_pressure', 'kiwi', 'carbohydrate', 'normal_weight', '1', NULL),
('370', 'high_blood_pressure', 'ginger', 'carbohydrate', 'over_weight', '1', NULL),
('371', 'high_blood_pressure', 'ginger', 'carbohydrate', 'under_weight', '0', NULL),
('372', 'high_blood_pressure', 'ginger', 'carbohydrate', 'normal_weight', '1', NULL),
('373', 'high_blood_pressure', 'celery', 'carbohydrate', 'over_weight', '0', NULL),
('374', 'high_blood_pressure', 'celery', 'carbohydrate', 'under_weight', '1', NULL),
('375', 'high_blood_pressure', 'celery', 'carbohydrate', 'normal_weight', '1', NULL),
('376', 'high_blood_pressure', 'sweet_potato', 'carbohydrate', 'over_weight', '1', NULL),
('377', 'high_blood_pressure', 'sweet_potato', 'carbohydrate', 'under_weight', '1', NULL),
('378', 'high_blood_pressure', 'sweet_potato', 'carbohydrate', 'normal_weight', '1', NULL),
('379', 'high_blood_pressure', 'seasame_seeds', 'fat', 'over_weight', '1', NULL),
('380', 'high_blood_pressure', 'seasame_seeds', 'fat', 'under_weight', '0', NULL),
('381', 'high_blood_pressure', 'seasame_seeds', 'fat', 'normal_weight', '1', NULL),
('382', 'high_blood_pressure', 'qunioa', 'carbohydrate', 'over_weight', '1', NULL),
('383', 'high_blood_pressure', 'qunioa', 'carbohydrate', 'under_weight', '1', NULL),
('384', 'high_blood_pressure', 'qunioa', 'carbohydrate', 'normal_weight', '1', NULL),
('385', 'high_blood_pressure', 'potato', 'carbohydrate', 'over_weight', '0', NULL),
('386', 'high_blood_pressure', 'potato', 'carbohydrate', 'under_weight', '1', NULL),
('387', 'high_blood_pressure', 'potato', 'carbohydrate', 'normal_weight', '1', NULL),
('388', 'high_blood_pressure', 'avocado', 'fat', 'over_weight', '1', NULL),
('389', 'high_blood_pressure', 'avocado', 'fat', 'under_weight', '1', NULL),
('390', 'high_blood_pressure', 'avocado', 'fat', 'normal_weight', '1', NULL),
('391', 'high_blood_pressure', 'dark_chocolate', 'fat', 'over_weight', '0', NULL),
('392', 'high_blood_pressure', 'dark_chocolate', 'fat', 'under_weight', '1', NULL),
('393', 'high_blood_pressure', 'dark_chocolate', 'fat', 'normal_weight', '1', NULL),
('394', 'high_blood_pressure', 'berries', 'carbohydrate', 'over_weight', '1', NULL),
('395', 'high_blood_pressure', 'berries', 'carbohydrate', 'under_weight', '1', NULL),
('396', 'high_blood_pressure', 'berries', 'carbohydrate', 'normal_weight', '1', NULL),
('397', 'high_blood_pressure', 'red_beets', 'carbohydrate', 'over_weight', '1', NULL),
('398', 'high_blood_pressure', 'red_beets', 'carbohydrate', 'under_weight', '1', NULL),
('399', 'high_blood_pressure', 'red_beets', 'carbohydrate', 'normal_weight', '1', NULL),
('400', 'high_blood_pressure', 'banana', 'carbohydrate', 'over_weight', '1', NULL),
('401', 'high_blood_pressure', 'banana', 'carbohydrate', 'under_weight', '1', NULL),
('402', 'high_blood_pressure', 'banana', 'carbohydrate', 'normal_weight', '1', NULL),
('403', 'high_blood_pressure', 'olive_oil', 'fats', 'over_weight', '1', NULL),
('404', 'high_blood_pressure', 'olive_oil', 'fats', 'under_weight', '1', NULL),
('405', 'high_blood_pressure', 'olive_oil', 'fats', 'normal_weight', '1', NULL),
('406', 'high_blood_pressure', 'pomegranet', 'carbohydrate', 'over_weight', '1', NULL),
('407', 'high_blood_pressure', 'pomegranet', 'carbohydrate', 'under_weight', '0', NULL),
('408', 'high_blood_pressure', 'pomegranet', 'carbohydrate', 'normal_weight', '1', NULL),
('409', 'high_blood_pressure', 'sunflower_seed', 'fats', 'over_weight', '1', NULL),
('410', 'high_blood_pressure', 'sunflower_seed', 'fats', 'under_weight', '1', NULL),
('411', 'high_blood_pressure', 'sunflower_seed', 'fats', 'normal_weight', '1', NULL),
('412', 'high_blood_pressure', 'fish', 'protein', 'over_weight', '1', NULL),
('413', 'high_blood_pressure', 'fish', 'protein', 'under_weight', '1', NULL),
('414', 'high_blood_pressure', 'fish', 'protein', 'normal_weight', '1', NULL),
('415', 'high_blood_pressure', 'carrot', 'carbohydrate', 'over_weight', '1', NULL),
('416', 'high_blood_pressure', 'carrot', 'carbohydrate', 'under_weight', '0', NULL),
('417', 'high_blood_pressure', 'carrot', 'carbohydrate', 'normal_weight', '1', NULL),
('418', 'high_blood_pressure', 'tomato', 'carbohydrate', 'over_weight', '1', NULL),
('419', 'high_blood_pressure', 'tomato', 'carbohydrate', 'under_weight', '0', NULL),
('420', 'high_blood_pressure', 'tomato', 'carbohydrate', 'normal_weight', '1', NULL),
('421', 'high_blood_pressure', 'whole_grains', 'carbohydrate', 'over_weight', '1', NULL),
('422', 'high_blood_pressure', 'whole_grains', 'carbohydrate', 'under_weight', '1', NULL),
('423', 'high_blood_pressure', 'whole_grains', 'carbohydrate', 'normal_weight', '1', NULL),
('424', 'high_blood_pressure', 'spinash', 'carbohydrate', 'over_weight', '1', NULL),
('425', 'high_blood_pressure', 'spinash', 'carbohydrate', 'under_weight', '0', NULL),
('426', 'high_blood_pressure', 'spinash', 'carbohydrate', 'normal_weight', '1', NULL),
('427', 'high_blood_pressure', 'cabbage', 'carbohydrate', 'over_weight', '1', NULL),
('428', 'high_blood_pressure', 'cabbage', 'carbohydrate', 'under_weight', '1', NULL),
('429', 'high_blood_pressure', 'cabbage', 'carbohydrate', 'normal_weight', '1', NULL),
('430', 'high_blood_pressure', 'raspberry', 'carbohydrate', 'over_weight', '1', NULL),
('431', 'high_blood_pressure', 'raspberry', 'carbohydrate', 'under_weight', '1', NULL),
('432', 'high_blood_pressure', 'raspberry', 'carbohydrate', 'normal_weight', '1', NULL),
('433', 'high_blood_pressure', 'blueberry', 'carbohydrate', 'over_weight', '1', NULL),
('434', 'high_blood_pressure', 'blueberry', 'carbohydrate', 'under_weight', '1', NULL),
('435', 'high_blood_pressure', 'blueberry', 'carbohydrate', 'normal_weight', '1', NULL),
('436', 'high_blood_pressure', 'buckwheat', 'carbohydrate', 'over_weight', '1', NULL),
('437', 'high_blood_pressure', 'buckwheat', 'carbohydrate', 'under_weight', '0', NULL),
('438', 'high_blood_pressure', 'buckwheat', 'carbohydrate', 'normal_weight', '1', NULL),
('439', 'high_blood_pressure', 'orange', 'carbohydrate', 'over_weight', '1', NULL),
('440', 'high_blood_pressure', 'orange', 'carbohydrate', 'under_weight', '1', NULL),
('441', 'high_blood_pressure', 'orange', 'carbohydrate', 'normal_weight', '1', NULL),
('442', 'high_blood_pressure', 'pineapple', 'carbohydrate', 'over_weight', '1', NULL),
('443', 'high_blood_pressure', 'pineapple', 'carbohydrate', 'under_weight', '1', NULL),
('444', 'high_blood_pressure', 'pineapple', 'carbohydrate', 'normal_weight', '1', NULL),
('445', 'high_blood_pressure', 'barley', 'carbohydrate', 'over_weight', '1', NULL),
('446', 'high_blood_pressure', 'barley', 'carbohydrate', 'under_weight', '1', NULL),
('447', 'high_blood_pressure', 'barley', 'carbohydrate', 'normal_weight', '1', NULL),
('448', 'high_blood_pressure', 'papaya', 'carbohydrate', 'over_weight', '1', NULL),
('449', 'high_blood_pressure', 'papaya', 'carbohydrate', 'under_weight', '1', NULL),
('450', 'high_blood_pressure', 'papaya', 'carbohydrate', 'normal_weight', '1', NULL),
('451', 'thyroid', 'squash', 'carbohydrate', 'over_weight', '1', NULL),
('452', 'thyroid', 'squash', 'carbohydrate', 'under_weight', '1', NULL),
('453', 'thyroid', 'squash', 'carbohydrate', 'normal_weight', '1', NULL),
('454', 'thyroid', 'egg', 'protein', 'over_weight', '1', NULL),
('455', 'thyroid', 'egg', 'protein', 'under_weight', '1', NULL),
('456', 'thyroid', 'egg', 'protein', 'normal_weight', '1', NULL),
('457', 'thyroid', 'chia_seed', 'carbohydrate', 'over_weight', '1', NULL),
('458', 'thyroid', 'chia_seed', 'carbohydrate', 'under_weight', '1', NULL),
('459', 'thyroid', 'chia_seed', 'carbohydrate', 'normal_weight', '1', NULL),
('460', 'thyroid', 'yogurt', 'protein', 'over_weight', '0', NULL),
('461', 'thyroid', 'yogurt', 'protein', 'under_weight', '1', NULL),
('462', 'thyroid', 'yogurt', 'protein', 'normal_weight', '1', NULL),
('463', 'thyroid', 'brocoli', 'carbohydrate', 'over_weight', '0', NULL),
('464', 'thyroid', 'brocoli', 'carbohydrate', 'under_weight', '0', NULL),
('465', 'thyroid', 'brocoli', 'carbohydrate', 'normal_weight', '0', NULL),
('466', 'thyroid', 'apple_cider_veniger', 'carbohydrate', 'over_weight', '1', NULL),
('467', 'thyroid', 'apple_cider_veniger', 'carbohydrate', 'under_weight', '0', NULL),
('468', 'thyroid', 'apple_cider_veniger', 'carbohydrate', 'normal_weight', '1', NULL),
('469', 'thyroid', 'strawberry', 'carbohydrate', 'over_weight', '0', NULL),
('470', 'thyroid', 'strawberry', 'carbohydrate', 'under_weight', '0', NULL),
('471', 'thyroid', 'strawberry', 'carbohydrate', 'normal_weight', '0', NULL),
('472', 'thyroid', 'garlic', 'carbohydrate', 'over_weight', '1', NULL),
('473', 'thyroid', 'garlic', 'carbohydrate', 'under_weight', '0', NULL),
('474', 'thyroid', 'garlic', 'carbohydrate', 'normal_weight', '1', NULL),
('475', 'thyroid', 'flax_seed', 'fat', 'over_weight', '1', NULL),
('476', 'thyroid', 'flax_seed', 'fat', 'under_weight', '1', NULL),
('477', 'thyroid', 'flax_seed', 'fat', 'normal_weight', '1', NULL),
('478', 'thyroid', 'oats', 'carbohydrate', 'over_weight', '1', NULL),
('479', 'thyroid', 'oats', 'carbohydrate', 'under_weight', '1', NULL),
('480', 'thyroid', 'oats', 'carbohydrate', 'normal_weight', '1', NULL),
('481', 'thyroid', 'barely', 'carbohydrate', 'over_weight', '0', NULL),
('482', 'thyroid', 'barely', 'carbohydrate', 'under_weight', '0', NULL),
('483', 'thyroid', 'barely', 'carbohydrate', 'normal_weight', '0', NULL),
('484', 'thyroid', 'beans', 'carbohydrate', 'over_weight', '1', NULL),
('485', 'thyroid', 'beans', 'carbohydrate', 'under_weight', '1', NULL),
('486', 'thyroid', 'beans', 'carbohydrate', 'normal_weight', '1', NULL),
('487', 'thyroid', 'nuts', 'fat', 'over_weight', '0', NULL),
('488', 'thyroid', 'nuts', 'fat', 'under_weight', '0', NULL),
('489', 'thyroid', 'nuts', 'fat', 'normal_weight', '0', NULL),
('490', 'thyroid', 'apple', 'carbohydrate', 'over_weight', '1', NULL),
('491', 'thyroid', 'apple', 'carbohydrate', 'under_weight', '0', NULL),
('492', 'thyroid', 'apple', 'carbohydrate', 'normal_weight', '1', NULL),
('493', 'thyroid', 'milk', 'carbohydrate', 'over_weight', '0', NULL),
('494', 'thyroid', 'milk', 'carbohydrate', 'under_weight', '1', NULL),
('495', 'thyroid', 'milk', 'carbohydrate', 'normal_weight', '1', NULL),
('496', 'thyroid', 'chicken', 'protein', 'over_weight', '1', NULL),
('497', 'thyroid', 'chicken', 'protein', 'under_weight', '1', NULL),
('498', 'thyroid', 'chicken', 'protein', 'normal_weight', '1', NULL),
('499', 'thyroid', 'lemon', 'carbohydrate', 'over_weight', '1', NULL),
('500', 'thyroid', 'lemon', 'carbohydrate', 'under_weight', '1', NULL),
('501', 'thyroid', 'lemon', 'carbohydrate', 'normal_weight', '1', NULL),
('502', 'thyroid', 'capsicum', 'carbohyadrate', 'over_weight', '1', NULL),
('503', 'thyroid', 'capsicum', 'carbohydrate', 'under_weight', '1', NULL),
('504', 'thyroid', 'capsicum', 'carbohydrate', 'normal_weight', '1', NULL),
('505', 'thyroid', 'figs', 'carbohydrate', 'over_weight', '1', NULL),
('506', 'thyroid', 'figs', 'carbohydrate', 'under_weight', '0', NULL),
('507', 'thyroid', 'figs', 'carbohydrate', 'normal_weight', '1', NULL),
('508', 'thyroid', 'beef', 'protein', 'over_weight', '0', NULL),
('509', 'thyroid', 'beef', 'protein', 'under_weight', '1', NULL),
('510', 'thyroid', 'beef', 'protein', 'normal_weight', '1', NULL),
('511', 'thyroid', 'sea_weed', 'protein', 'over_weight', '1', NULL),
('512', 'thyroid', 'sea_weed', 'protein', 'under_weight', '0', NULL),
('513', 'thyroid', 'sea_weed', 'protein', 'normal_weight', '1', NULL),
('514', 'thyroid', 'almonds', 'fat', 'over_weight', '1', NULL),
('515', 'thyroid', 'almonds', 'fat', 'under_weight', '1', NULL),
('516', 'thyroid', 'almonds', 'fat', 'normal_weight', '1', NULL),
('517', 'thyroid', 'kiwi', 'carbohydrate', 'over_weight', '1', NULL),
('518', 'thyroid', 'kiwi', 'carbohydrate', 'under_weight', '1', NULL),
('519', 'thyroid', 'kiwi', 'carbohydrate', 'normal_weight', '1', NULL),
('520', 'thyroid', 'ginger', 'carbohydrate', 'over_weight', '1', NULL),
('521', 'thyroid', 'ginger', 'carbohydrate', 'under_weight', '0', NULL),
('522', 'thyroid', 'ginger', 'carbohydrate', 'normal_weight', '1', NULL),
('523', 'thyroid', 'celery', 'carbohydrate', 'over_weight', '0', NULL),
('524', 'thyroid', 'celery', 'carbohydrate', 'under_weight', '1', NULL),
('525', 'thyroid', 'celery', 'carbohydrate', 'normal_weight', '1', NULL),
('526', 'thyroid', 'sweet_potato', 'carbohydrate', 'over_weight', '1', NULL),
('527', 'thyroid', 'sweet_potato', 'carbohydrate', 'under_weight', '1', NULL),
('528', 'thyroid', 'sweet_potato', 'carbohydrate', 'normal_weight', '1', NULL),
('529', 'thyroid', 'seasame_seeds', 'fat', 'over_weight', '1', NULL),
('530', 'thyroid', 'seasame_seeds', 'fat', 'under_weight', '0', NULL),
('531', 'thyroid', 'seasame_seeds', 'fat', 'normal_weight', '1', NULL),
('532', 'thyroid', 'qunioa', 'carbohydrate', 'over_weight', '1', NULL),
('533', 'thyroid', 'qunioa', 'carbohydrate', 'under_weight', '1', NULL),
('534', 'thyroid', 'qunioa', 'carbohydrate', 'normal_weight', '1', NULL),
('535', 'thyroid', 'potato', 'carbohydrate', 'over_weight', '0', NULL),
('536', 'thyroid', 'potato', 'carbohydrate', 'under_weight', '1', NULL),
('537', 'thyroid', 'potato', 'carbohydrate', 'normal_weight', '1', NULL),
('538', 'thyroid', 'avocado', 'fat', 'over_weight', '1', NULL),
('539', 'thyroid', 'avocado', 'fat', 'under_weight', '1', NULL),
('540', 'thyroid', 'avocado', 'fat', 'normal_weight', '1', NULL),
('541', 'thyroid', 'dark_chocolate', 'fat', 'over_weight', '0', NULL),
('542', 'thyroid', 'dark_chocolate', 'fat', 'under_weight', '1', NULL),
('543', 'thyroid', 'dark_chocolate', 'fat', 'normal_weight', '1', NULL),
('544', 'thyroid', 'berries', 'carbohydrate', 'over_weight', '1', NULL),
('545', 'thyroid', 'berries', 'carbohydrate', 'under_weight', '1', NULL),
('546', 'thyroid', 'berries', 'carbohydrate', 'normal_weight', '1', NULL),
('547', 'thyroid', 'red_beets', 'carbohydrate', 'over_weight', '1', NULL),
('548', 'thyroid', 'red_beets', 'carbohydrate', 'under_weight', '1', NULL),
('549', 'thyroid', 'red_beets', 'carbohydrate', 'normal_weight', '1', NULL),
('550', 'thyroid', 'banana', 'carbohydrate', 'over_weight', '1', NULL),
('551', 'thyroid', 'banana', 'carbohydrate', 'under_weight', '1', NULL),
('552', 'thyroid', 'banana', 'carbohydrate', 'normal_weight', '1', NULL),
('553', 'thyroid', 'olive_oil', 'fats', 'over_weight', '1', NULL),
('554', 'thyroid', 'olive_oil', 'fats', 'under_weight', '1', NULL),
('555', 'thyroid', 'olive_oil', 'fats', 'normal_weight', '1', NULL),
('556', 'thyroid', 'pomegranet', 'carbohydrate', 'over_weight', '1', NULL),
('557', 'thyroid', 'pomegranet', 'carbohydrate', 'under_weight', '0', NULL),
('558', 'thyroid', 'pomegranet', 'carbohydrate', 'normal_weight', '1', NULL),
('559', 'thyroid', 'sunflower_seed', 'fats', 'over_weight', '1', NULL),
('560', 'thyroid', 'sunflower_seed', 'fats', 'under_weight', '1', NULL),
('561', 'thyroid', 'sunflower_seed', 'fats', 'normal_weight', '1', NULL),
('562', 'thyroid', 'fish', 'protein', 'over_weight', '1', NULL),
('563', 'thyroid', 'fish', 'protein', 'under_weight', '1', NULL),
('564', 'thyroid', 'fish', 'protein', 'normal_weight', '1', NULL),
('565', 'thyroid', 'carrot', 'carbohydrate', 'over_weight', '1', NULL),
('566', 'thyroid', 'carrot', 'carbohydrate', 'under_weight', '0', NULL),
('567', 'thyroid', 'carrot', 'carbohydrate', 'normal_weight', '1', NULL),
('568', 'thyroid', 'tomato', 'carbohydrate', 'over_weight', '1', NULL),
('569', 'thyroid', 'tomato', 'carbohydrate', 'under_weight', '0', NULL),
('570', 'thyroid', 'tomato', 'carbohydrate', 'normal_weight', '1', NULL),
('571', 'thyroid', 'whole_grains', 'carbohydrate', 'over_weight', '1', NULL),
('572', 'thyroid', 'whole_grains', 'carbohydrate', 'under_weight', '1', NULL),
('573', 'thyroid', 'whole_grains', 'carbohydrate', 'normal_weight', '1', NULL),
('574', 'thyroid', 'spinash', 'carbohydrate', 'over_weight', '0', NULL),
('575', 'thyroid', 'spinash', 'carbohydrate', 'under_weight', '0', NULL),
('576', 'thyroid', 'spinash', 'carbohydrate', 'normal_weight', '0', NULL),
('577', 'thyroid', 'cabbage', 'carbohydrate', 'over_weight', '0', NULL),
('578', 'thyroid', 'cabbage', 'carbohydrate', 'under_weight', '0', NULL),
('579', 'thyroid', 'cabbage', 'carbohydrate', 'normal_weight', '0', NULL),
('580', 'thyroid', 'raspberry', 'carbohydrate', 'over_weight', '0', NULL),
('581', 'thyroid', 'raspberry', 'carbohydrate', 'under_weight', '0', NULL),
('582', 'thyroid', 'raspberry', 'carbohydrate', 'normal_weight', '0', NULL),
('583', 'thyroid', 'blueberry', 'carbohydrate', 'over_weight', '0', NULL),
('584', 'thyroid', 'blueberry', 'carbohydrate', 'under_weight', '0', NULL),
('585', 'thyroid', 'blueberry', 'carbohydrate', 'normal_weight', '0', NULL),
('586', 'thyroid', 'buckwheat', 'carbohydrate', 'over_weight', '1', NULL),
('587', 'thyroid', 'buckwheat', 'carbohydrate', 'under_weight', '0', NULL),
('588', 'thyroid', 'buckwheat', 'carbohydrate', 'normal_weight', '1', NULL),
('589', 'thyroid', 'orange', 'carbohydrate', 'over_weight', '1', NULL),
('590', 'thyroid', 'orange', 'carbohydrate', 'under_weight', '1', NULL),
('591', 'thyroid', 'orange', 'carbohydrate', 'normal_weight', '1', NULL),
('592', 'thyroid', 'pineapple', 'carbohydrate', 'over_weight', '1', NULL),
('593', 'thyroid', 'pineapple', 'carbohydrate', 'under_weight', '1', NULL),
('594', 'thyroid', 'pineapple', 'carbohydrate', 'normal_weight', '1', NULL),
('595', 'thyroid', 'barley', 'carbohydrate', 'over_weight', '0', NULL),
('596', 'thyroid', 'barley', 'carbohydrate', 'under_weight', '0', NULL),
('597', 'thyroid', 'barley', 'carbohydrate', 'normal_weight', '0', NULL),
('598', 'thyroid', 'papaya', 'carbohydrate', 'over_weight', '1', NULL),
('599', 'thyroid', 'papaya', 'carbohydrate', 'under_weight', '1', NULL),
('600', 'thyroid', 'papaya', 'carbohydrate', 'normal_weight', '1', NULL),
('601', 'asthama', 'squash', 'carbohydrate', 'over_weight', '1', NULL),
('602', 'asthama', 'squash', 'carbohydrate', 'under_weight', '1', NULL),
('603', 'asthama', 'squash', 'carbohydrate', 'normal_weight', '1', NULL),
('604', 'asthama', 'egg', 'protein', 'over_weight', '1', NULL),
('605', 'asthama', 'egg', 'protein', 'under_weight', '1', NULL),
('606', 'asthama', 'egg', 'protein', 'normal_weight', '1', NULL),
('607', 'asthama', 'chia_seed', 'carbohydrate', 'over_weight', '1', NULL),
('608', 'asthama', 'chia_seed', 'carbohydrate', 'under_weight', '1', NULL),
('609', 'asthama', 'chia_seed', 'carbohydrate', 'normal_weight', '1', NULL),
('610', 'asthama', 'yogurt', 'protein', 'over_weight', '0', NULL),
('611', 'asthama', 'yogurt', 'protein', 'under_weight', '0', NULL),
('612', 'asthama', 'yogurt', 'protein', 'normal_weight', '0', NULL),
('613', 'asthama', 'brocoli', 'carbohydrate', 'over_weight', '1', NULL),
('614', 'asthama', 'brocoli', 'carbohydrate', 'under_weight', '0', NULL),
('615', 'asthama', 'brocoli', 'carbohydrate', 'normal_weight', '1', NULL),
('616', 'asthama', 'apple_cider_veniger', 'carbohydrate', 'over_weight', '1', NULL),
('617', 'asthama', 'apple_cider_veniger', 'carbohydrate', 'under_weight', '0', NULL),
('618', 'asthama', 'apple_cider_veniger', 'carbohydrate', 'normal_weight', '1', NULL),
('619', 'asthama', 'strawberry', 'carbohydrate', 'over_weight', '1', NULL),
('620', 'asthama', 'strawberry', 'carbohydrate', 'under_weight', '0', NULL),
('621', 'asthama', 'strawberry', 'carbohydrate', 'normal_weight', '1', NULL),
('622', 'asthama', 'garlic', 'carbohydrate', 'over_weight', '1', NULL),
('623', 'asthama', 'garlic', 'carbohydrate', 'under_weight', '0', NULL),
('624', 'asthama', 'garlic', 'carbohydrate', 'normal_weight', '1', NULL),
('625', 'asthama', 'flax_seed', 'fat', 'over_weight', '1', NULL),
('626', 'asthama', 'flax_seed', 'fat', 'under_weight', '1', NULL),
('627', 'asthama', 'flax_seed', 'fat', 'normal_weight', '1', NULL),
('628', 'asthama', 'oats', 'carbohydrate', 'over_weight', '1', NULL),
('629', 'asthama', 'oats', 'carbohydrate', 'under_weight', '1', NULL),
('630', 'asthama', 'oats', 'carbohydrate', 'normal_weight', '1', NULL),
('631', 'asthama', 'barely', 'carbohydrate', 'over_weight', '1', NULL),
('632', 'asthama', 'barely', 'carbohydrate', 'under_weight', '1', NULL),
('633', 'asthama', 'barely', 'carbohydrate', 'normal_weight', '1', NULL),
('634', 'asthama', 'beans', 'carbohydrate', 'over_weight', '0', NULL),
('635', 'asthama', 'beans', 'carbohydrate', 'under_weight', '0', NULL),
('636', 'asthama', 'beans', 'carbohydrate', 'normal_weight', '0', NULL),
('637', 'asthama', 'nuts', 'fat', 'over_weight', '0', NULL),
('638', 'asthama', 'nuts', 'fat', 'under_weight', '0', NULL),
('639', 'asthama', 'nuts', 'fat', 'normal_weight', '0', NULL),
('640', 'asthama', 'apple', 'carbohydrate', 'over_weight', '1', NULL),
('641', 'asthama', 'apple', 'carbohydrate', 'under_weight', '0', NULL),
('642', 'asthama', 'apple', 'carbohydrate', 'normal_weight', '1', NULL),
('643', 'asthama', 'milk', 'carbohydrate', 'over_weight', '0', NULL),
('644', 'asthama', 'milk', 'carbohydrate', 'under_weight', '0', NULL),
('645', 'asthama', 'milk', 'carbohydrate', 'normal_weight', '0', NULL),
('646', 'asthama', 'chicken', 'protein', 'over_weight', '1', NULL),
('647', 'asthama', 'chicken', 'protein', 'under_weight', '1', NULL),
('648', 'asthama', 'chicken', 'protein', 'normal_weight', '1', NULL),
('649', 'asthama', 'lemon', 'carbohydrate', 'over_weight', '0', NULL),
('650', 'asthama', 'lemon', 'carbohydrate', 'under_weight', '0', NULL),
('651', 'asthama', 'lemon', 'carbohydrate', 'normal_weight', '0', NULL),
('652', 'asthama', 'capsicum', 'carbohyadrate', 'over_weight', '1', NULL),
('653', 'asthama', 'capsicum', 'carbohydrate', 'under_weight', '1', NULL),
('654', 'asthama', 'capsicum', 'carbohydrate', 'normal_weight', '1', NULL),
('655', 'asthama', 'figs', 'carbohydrate', 'over_weight', '1', NULL),
('656', 'asthama', 'figs', 'carbohydrate', 'under_weight', '0', NULL),
('657', 'asthama', 'figs', 'carbohydrate', 'normal_weight', '1', NULL),
('658', 'asthama', 'beef', 'protein', 'over_weight', '0', NULL),
('659', 'asthama', 'beef', 'protein', 'under_weight', '0', NULL),
('660', 'asthama', 'beef', 'protein', 'normal_weight', '0', NULL),
('661', 'asthama', 'sea_weed', 'protein', 'over_weight', '1', NULL),
('662', 'asthama', 'sea_weed', 'protein', 'under_weight', '0', NULL),
('663', 'asthama', 'sea_weed', 'protein', 'normal_weight', '1', NULL),
('664', 'asthama', 'almonds', 'fat', 'over_weight', '1', NULL),
('665', 'asthama', 'almonds', 'fat', 'under_weight', '1', NULL),
('666', 'asthama', 'almonds', 'fat', 'normal_weight', '1', NULL),
('667', 'asthama', 'kiwi', 'carbohydrate', 'over_weight', '1', NULL),
('668', 'asthama', 'kiwi', 'carbohydrate', 'under_weight', '1', NULL),
('669', 'asthama', 'kiwi', 'carbohydrate', 'normal_weight', '1', NULL),
('670', 'asthama', 'ginger', 'carbohydrate', 'over_weight', '1', NULL),
('671', 'asthama', 'ginger', 'carbohydrate', 'under_weight', '0', NULL),
('672', 'asthama', 'ginger', 'carbohydrate', 'normal_weight', '1', NULL),
('673', 'asthama', 'celery', 'carbohydrate', 'over_weight', '0', NULL),
('674', 'asthama', 'celery', 'carbohydrate', 'under_weight', '1', NULL);
INSERT INTO `items_display` (`id`, `disease`, `food`, `nutrient`, `wt_condition`, `edible`, `nutrition`) VALUES
('675', 'asthama', 'celery', 'carbohydrate', 'normal_weight', '1', NULL),
('676', 'asthama', 'sweet_potato', 'carbohydrate', 'over_weight', '1', NULL),
('677', 'asthama', 'sweet_potato', 'carbohydrate', 'under_weight', '1', NULL),
('678', 'asthama', 'sweet_potato', 'carbohydrate', 'normal_weight', '1', NULL),
('679', 'asthama', 'seasame_seeds', 'fat', 'over_weight', '1', NULL),
('680', 'asthama', 'seasame_seeds', 'fat', 'under_weight', '0', NULL),
('681', 'asthama', 'seasame_seeds', 'fat', 'normal_weight', '1', NULL),
('682', 'asthama', 'qunioa', 'carbohydrate', 'over_weight', '1', NULL),
('683', 'asthama', 'qunioa', 'carbohydrate', 'under_weight', '1', NULL),
('684', 'asthama', 'qunioa', 'carbohydrate', 'normal_weight', '1', NULL),
('685', 'asthama', 'potato', 'carbohydrate', 'over_weight', '0', NULL),
('686', 'asthama', 'potato', 'carbohydrate', 'under_weight', '1', NULL),
('687', 'asthama', 'potato', 'carbohydrate', 'normal_weight', '1', NULL),
('688', 'asthama', 'avocado', 'fat', 'over_weight', '1', NULL),
('689', 'asthama', 'avocado', 'fat', 'under_weight', '1', NULL),
('690', 'asthama', 'avocado', 'fat', 'normal_weight', '1', NULL),
('691', 'asthama', 'dark_chocolate', 'fat', 'over_weight', '0', NULL),
('692', 'asthama', 'dark_chocolate', 'fat', 'under_weight', '1', NULL),
('693', 'asthama', 'dark_chocolate', 'fat', 'normal_weight', '1', NULL),
('694', 'asthama', 'berries', 'carbohydrate', 'over_weight', '1', NULL),
('695', 'asthama', 'berries', 'carbohydrate', 'under_weight', '1', NULL),
('696', 'asthama', 'berries', 'carbohydrate', 'normal_weight', '1', NULL),
('697', 'asthama', 'red_beets', 'carbohydrate', 'over_weight', '1', NULL),
('698', 'asthama', 'red_beets', 'carbohydrate', 'under_weight', '1', NULL),
('699', 'asthama', 'red_beets', 'carbohydrate', 'normal_weight', '1', NULL),
('700', 'asthama', 'banana', 'carbohydrate', 'over_weight', '1', NULL),
('701', 'asthama', 'banana', 'carbohydrate', 'under_weight', '1', NULL),
('702', 'asthama', 'banana', 'carbohydrate', 'normal_weight', '1', NULL),
('703', 'asthama', 'olive_oil', 'fats', 'over_weight', '1', NULL),
('704', 'asthama', 'olive_oil', 'fats', 'under_weight', '1', NULL),
('705', 'asthama', 'olive_oil', 'fats', 'normal_weight', '1', NULL),
('706', 'asthama', 'pomegranet', 'carbohydrate', 'over_weight', '1', NULL),
('707', 'asthama', 'pomegranet', 'carbohydrate', 'under_weight', '0', NULL),
('708', 'asthama', 'pomegranet', 'carbohydrate', 'normal_weight', '1', NULL),
('709', 'asthama', 'sunflower_seed', 'fats', 'over_weight', '0', NULL),
('710', 'asthama', 'sunflower_seed', 'fats', 'under_weight', '0', NULL),
('711', 'asthama', 'sunflower_seed', 'fats', 'normal_weight', '0', NULL),
('712', 'asthama', 'fish', 'protein', 'over_weight', '1', NULL),
('713', 'asthama', 'fish', 'protein', 'under_weight', '1', NULL),
('714', 'asthama', 'fish', 'protein', 'normal_weight', '1', NULL),
('715', 'asthama', 'carrot', 'carbohydrate', 'over_weight', '1', NULL),
('716', 'asthama', 'carrot', 'carbohydrate', 'under_weight', '0', NULL),
('717', 'asthama', 'carrot', 'carbohydrate', 'normal_weight', '1', NULL),
('718', 'asthama', 'tomato', 'carbohydrate', 'over_weight', '1', NULL),
('719', 'asthama', 'tomato', 'carbohydrate', 'under_weight', '0', NULL),
('720', 'asthama', 'tomato', 'carbohydrate', 'normal_weight', '1', NULL),
('721', 'asthama', 'whole_grains', 'carbohydrate', 'over_weight', '1', NULL),
('722', 'asthama', 'whole_grains', 'carbohydrate', 'under_weight', '1', NULL),
('723', 'asthama', 'whole_grains', 'carbohydrate', 'normal_weight', '1', NULL),
('724', 'asthama', 'spinash', 'carbohydrate', 'over_weight', '1', NULL),
('725', 'asthama', 'spinash', 'carbohydrate', 'under_weight', '0', NULL),
('726', 'asthama', 'spinash', 'carbohydrate', 'normal_weight', '1', NULL),
('727', 'asthama', 'cabbage', 'carbohydrate', 'over_weight', '0', NULL),
('728', 'asthama', 'cabbage', 'carbohydrate', 'under_weight', '0', NULL),
('729', 'asthama', 'cabbage', 'carbohydrate', 'normal_weight', '0', NULL),
('730', 'asthama', 'raspberry', 'carbohydrate', 'over_weight', '1', NULL),
('731', 'asthama', 'raspberry', 'carbohydrate', 'under_weight', '1', NULL),
('732', 'asthama', 'raspberry', 'carbohydrate', 'normal_weight', '1', NULL),
('733', 'asthama', 'blueberry', 'carbohydrate', 'over_weight', '1', NULL),
('734', 'asthama', 'blueberry', 'carbohydrate', 'under_weight', '1', NULL),
('735', 'asthama', 'blueberry', 'carbohydrate', 'normal_weight', '1', NULL),
('736', 'asthama', 'buckwheat', 'carbohydrate', 'over_weight', '1', NULL),
('737', 'asthama', 'buckwheat', 'carbohydrate', 'under_weight', '0', NULL),
('738', 'asthama', 'buckwheat', 'carbohydrate', 'normal_weight', '1', NULL),
('739', 'asthama', 'orange', 'carbohydrate', 'over_weight', '1', NULL),
('740', 'asthama', 'orange', 'carbohydrate', 'under_weight', '1', NULL),
('741', 'asthama', 'orange', 'carbohydrate', 'normal_weight', '1', NULL),
('742', 'asthama', 'pineapple', 'carbohydrate', 'over_weight', '1', NULL),
('743', 'asthama', 'pineapple', 'carbohydrate', 'under_weight', '1', NULL),
('744', 'asthama', 'pineapple', 'carbohydrate', 'normal_weight', '1', NULL),
('745', 'asthama', 'barley', 'carbohydrate', 'over_weight', '1', NULL),
('746', 'asthama', 'barley', 'carbohydrate', 'under_weight', '1', NULL),
('747', 'asthama', 'barley', 'carbohydrate', 'normal_weight', '1', NULL),
('748', 'asthama', 'papaya', 'carbohydrate', 'over_weight', '1', NULL),
('749', 'asthama', 'papaya', 'carbohydrate', 'under_weight', '1', NULL),
('750', 'asthama', 'papaya', 'carbohydrate', 'normal_weight', '1', NULL),
('751', 'diabetes', 'pears', 'carbohydrate', 'over_weight', '1', NULL),
('752', 'diabetes', 'pears', 'carbohydrate', 'under_weight', '0', NULL),
('753', 'diabetes', 'pears', 'carbohydrate', 'normal_weight', '1', NULL),
('754', 'diabetes', 'onions', 'fats', 'over_weight', '1', NULL),
('755', 'diabetes', 'onions', 'fats', 'under_weight', '1', NULL),
('756', 'diabetes', 'onions', 'fats', 'normal_weight', '1', NULL),
('757', 'diabetes', 'shiitake_mushroom', 'carbohydrate', 'over_weight', '1', NULL),
('758', 'diabetes', 'shiitake_mushroom', 'carbohydrate', 'under_weight', '1', NULL),
('759', 'diabetes', 'shiitake_mushroom', 'carbohydrate', 'normal_weight', '1', NULL),
('760', 'diabetes', 'cinnamon', 'carbohydrate', 'over_weight', '0', NULL),
('761', 'diabetes', 'cinnamon', 'carbohydrate', 'under_weight', '0', NULL),
('762', 'diabetes', 'cinnamon', 'carbohydrate', 'normal_weight', '0', NULL),
('763', 'diabetes', 'grapefruit', 'carbohydrate', 'over_weight', '1', NULL),
('764', 'diabetes', 'grapefruit', 'carbohydrate', 'under_weight', '0', NULL),
('765', 'diabetes', 'grapefruit', 'carbohydrate', 'normal_weight', '1', NULL),
('766', 'diabetes', 'honey', 'carbohydrate', 'over_weight', '0', NULL),
('767', 'diabetes', 'honey', 'carbohydrate', 'under_weight', '0', NULL),
('768', 'diabetes', 'honey', 'carbohydrate', 'normal_weight', '0', NULL),
('769', 'diabetes', 'chilli', 'protein', 'over_weight', '1', NULL),
('770', 'diabetes', 'chilli', 'protein', 'under_weight', '0', NULL),
('771', 'diabetes', 'chilli', 'protein', 'normal_weight', '1', NULL),
('772', 'cholesterol', 'pears', 'carbohydrate', 'over_weight', '1', NULL),
('773', 'cholesterol', 'pears', 'carbohydrate', 'under_weight', '0', NULL),
('774', 'cholesterol', 'pears', 'carbohydrate', 'normal_weight', '1', NULL),
('775', 'cholesterol', 'onions', 'fats', 'over_weight', '1', NULL),
('776', 'cholesterol', 'onions', 'fats', 'under_weight', '1', NULL),
('777', 'cholesterol', 'onions', 'fats', 'normal_weight', '1', NULL),
('778', 'cholesterol', 'shiitake_mushroom', 'carbohydrate', 'over_weight', '0', NULL),
('779', 'cholesterol', 'shiitake_mushroom', 'carbohydrate', 'under_weight', '0', NULL),
('780', 'cholesterol', 'shiitake_mushroom', 'carbohydrate', 'normal_weight', '0', NULL),
('781', 'cholesterol', 'cinnamon', 'carbohydrate', 'over_weight', '1', NULL),
('782', 'cholesterol', 'cinnamon', 'carbohydrate', 'under_weight', '1', NULL),
('783', 'cholesterol', 'cinnamon', 'carbohydrate', 'normal_weight', '1', NULL),
('784', 'cholesterol', 'grapefruit', 'carbohydrate', 'over_weight', '1', NULL),
('785', 'cholesterol', 'grapefruit', 'carbohydrate', 'under_weight', '0', NULL),
('786', 'cholesterol', 'grapefruit', 'carbohydrate', 'normal_weight', '1', NULL),
('787', 'cholesterol', 'honey', 'carbohydrate', 'over_weight', '1', NULL),
('788', 'cholesterol', 'honey', 'carbohydrate', 'under_weight', '1', NULL),
('789', 'cholesterol', 'honey', 'carbohydrate', 'normal_weight', '1', NULL),
('790', 'cholesterol', 'chilli', 'protein', 'over_weight', '1', NULL),
('791', 'cholesterol', 'chilli', 'protein', 'under_weight', '0', NULL),
('792', 'cholesterol', 'chilli', 'protein', 'normal_weight', '1', NULL),
('793', 'high_blood_pressure', 'pears', 'carbohydrate', 'over_weight', '1', NULL),
('794', 'high_blood_pressure', 'pears', 'carbohydrate', 'under_weight', '0', NULL),
('795', 'high_blood_pressure', 'pears', 'carbohydrate', 'normal_weight', '1', NULL),
('796', 'high_blood_pressure', 'onions', 'fats', 'over_weight', '1', NULL),
('797', 'high_blood_pressure', 'onions', 'fats', 'under_weight', '1', NULL),
('798', 'high_blood_pressure', 'onions', 'fats', 'normal_weight', '1', NULL),
('799', 'high_blood_pressure', 'shiitake_mushroom', 'carbohydrate', 'over_weight', '1', NULL),
('800', 'high_blood_pressure', 'shiitake_mushroom', 'carbohydrate', 'under_weight', '1', NULL),
('801', 'high_blood_pressure', 'shiitake_mushroom', 'carbohydrate', 'normal_weight', '1', NULL),
('802', 'high_blood_pressure', 'cinnamon', 'carbohydrate', 'over_weight', '1', NULL),
('803', 'high_blood_pressure', 'cinnamon', 'carbohydrate', 'under_weight', '1', NULL),
('804', 'high_blood_pressure', 'cinnamon', 'carbohydrate', 'normal_weight', '1', NULL),
('805', 'high_blood_pressure', 'grapefruit', 'carbohydrate', 'over_weight', '1', NULL),
('806', 'high_blood_pressure', 'grapefruit', 'carbohydrate', 'under_weight', '0', NULL),
('807', 'high_blood_pressure', 'grapefruit', 'carbohydrate', 'normal_weight', '1', NULL),
('808', 'high_blood_pressure', 'honey', 'carbohydrate', 'over_weight', '1', NULL),
('809', 'high_blood_pressure', 'honey', 'carbohydrate', 'under_weight', '1', NULL),
('810', 'high_blood_pressure', 'honey', 'carbohydrate', 'normal_weight', '1', NULL),
('811', 'high_blood_pressure', 'chilli', 'protein', 'over_weight', '1', NULL),
('812', 'high_blood_pressure', 'chilli', 'protein', 'under_weight', '0', NULL),
('813', 'high_blood_pressure', 'chilli', 'protein', 'normal_weight', '1', NULL),
('814', 'thyroid', 'pears', 'carbohydrate', 'over_weight', '0', NULL),
('815', 'thyroid', 'pears', 'carbohydrate', 'under_weight', '0', NULL),
('816', 'thyroid', 'pears', 'carbohydrate', 'normal_weight', '0', NULL),
('817', 'thyroid', 'onions', 'fats', 'over_weight', '1', NULL),
('818', 'thyroid', 'onions', 'fats', 'under_weight', '1', NULL),
('819', 'thyroid', 'onions', 'fats', 'normal_weight', '1', NULL),
('820', 'thyroid', 'shiitake_mushroom', 'carbohydrate', 'over_weight', '1', NULL),
('821', 'thyroid', 'shiitake_mushroom', 'carbohydrate', 'under_weight', '1', NULL),
('822', 'thyroid', 'shiitake_mushroom', 'carbohydrate', 'normal_weight', '1', NULL),
('823', 'thyroid', 'cinnamon', 'carbohydrate', 'over_weight', '1', NULL),
('824', 'thyroid', 'cinnamon', 'carbohydrate', 'under_weight', '1', NULL),
('825', 'thyroid', 'cinnamon', 'carbohydrate', 'normal_weight', '1', NULL),
('826', 'thyroid', 'grapefruit', 'carbohydrate', 'over_weight', '0', NULL),
('827', 'thyroid', 'grapefruit', 'carbohydrate', 'under_weight', '0', NULL),
('828', 'thyroid', 'grapefruit', 'carbohydrate', 'normal_weight', '0', NULL),
('829', 'thyroid', 'honey', 'carbohydrate', 'over_weight', '1', NULL),
('830', 'thyroid', 'honey', 'carbohydrate', 'under_weight', '1', NULL),
('831', 'thyroid', 'honey', 'carbohydrate', 'normal_weight', '1', NULL),
('832', 'thyroid', 'chilli', 'protein', 'over_weight', '1', NULL),
('833', 'thyroid', 'chilli', 'protein', 'under_weight', '0', NULL),
('834', 'thyroid', 'chilli', 'protein', 'normal_weight', '1', NULL),
('835', 'asthama', 'pears', 'carbohydrate', 'over_weight', '1', NULL),
('836', 'asthama', 'pears', 'carbohydrate', 'under_weight', '0', NULL),
('837', 'asthama', 'pears', 'carbohydrate', 'normal_weight', '1', NULL),
('838', 'asthama', 'onions', 'fats', 'over_weight', '0', NULL),
('839', 'asthama', 'onions', 'fats', 'under_weight', '0', NULL),
('840', 'asthama', 'onions', 'fats', 'normal_weight', '0', NULL),
('841', 'asthama', 'shiitake_mushroom', 'carbohydrate', 'over_weight', '0', NULL),
('842', 'asthama', 'shiitake_mushroom', 'carbohydrate', 'under_weight', '0', NULL),
('843', 'asthama', 'shiitake_mushroom', 'carbohydrate', 'normal_weight', '0', NULL),
('844', 'asthama', 'cinnamon', 'carbohydrate', 'over_weight', '1', NULL),
('845', 'asthama', 'cinnamon', 'carbohydrate', 'under_weight', '1', NULL),
('846', 'asthama', 'cinnamon', 'carbohydrate', 'normal_weight', '1', NULL),
('847', 'asthama', 'grapefruit', 'carbohydrate', 'over_weight', '1', NULL),
('848', 'asthama', 'grapefruit', 'carbohydrate', 'under_weight', '0', NULL),
('849', 'asthama', 'grapefruit', 'carbohydrate', 'normal_weight', '1', NULL),
('850', 'asthama', 'honey', 'carbohydrate', 'over_weight', '1', NULL),
('851', 'asthama', 'honey', 'carbohydrate', 'under_weight', '1', NULL),
('852', 'asthama', 'honey', 'carbohydrate', 'normal_weight', '1', NULL),
('853', 'asthama', 'chilli', 'protein', 'over_weight', '0', NULL),
('854', 'asthama', 'chilli', 'protein', 'under_weight', '0', NULL),
('855', 'asthama', 'chilli', 'protein', 'normal_weight', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `recipe` varchar(225) NOT NULL,
  `number_of_items` varchar(225) NOT NULL,
  `recipe_id` bigint(20) NOT NULL,
  `recipe_name` varchar(255) DEFAULT NULL,
  `ingredients` varchar(255) DEFAULT NULL,
  `review` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `asthama` varchar(255) DEFAULT NULL,
  `cholesterol` varchar(255) DEFAULT NULL,
  `diabetes` varchar(255) DEFAULT NULL,
  `high_blood_pressure` varchar(255) DEFAULT NULL,
  `thyroid` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `height` float NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `weight` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `age`, `gender`, `bmi`, `password`, `firstname`, `lastname`, `email`, `asthama`, `cholesterol`, `diabetes`, `high_blood_pressure`, `thyroid`, `first_name`, `height`, `last_name`, `weight`) VALUES
(13, 22, 'female', '', '123456sdhg', 'sakshamta', 'manandhar', 'saksham@gmail.com', 'true', 'false', 'true', 'true', 'false', NULL, 0, NULL, 0),
(12, 12, 'male', '', 'frefefdf', 'ram', 'rai', 'dfcerf', 'true', 'true', 'true', 'false', 'false', NULL, 0, NULL, 0),
(14, 12, 'male', NULL, NULL, 'ram', 'rai', NULL, NULL, NULL, 'true', 'true', 'true', NULL, 0, NULL, 0),
(15, 12, 'male', NULL, NULL, 'ram', 'rai', NULL, NULL, NULL, 'true', 'true', NULL, NULL, 0, NULL, 0),
(16, 12, 'male', NULL, NULL, 'ram', 'rai', NULL, NULL, NULL, 'true', 'true', NULL, NULL, 0, NULL, 0),
(17, 12, 'male', NULL, NULL, 'ram', 'rai', NULL, NULL, NULL, 'true', 'true', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `age` int(25) NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `d_id` int(25) NOT NULL,
  `i_id` int(25) NOT NULL,
  `r_id` int(25) NOT NULL,
  `f_id` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facts`
--
ALTER TABLE `facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_facts`
--
ALTER TABLE `food_facts`
  ADD PRIMARY KEY (`fact_id`);

--
-- Indexes for table `food_items`
--
ALTER TABLE `food_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `f_id` (`f_id`),
  ADD KEY `i_id` (`i_id`),
  ADD KEY `r_id` (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facts`
--
ALTER TABLE `facts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_facts`
--
ALTER TABLE `food_facts`
  MODIFY `fact_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_items`
--
ALTER TABLE `food_items`
  MODIFY `item_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `disease` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`f_id`) REFERENCES `facts` (`id`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`i_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`r_id`) REFERENCES `recipes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

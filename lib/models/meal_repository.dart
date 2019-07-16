import 'meal.dart';

class MealRepository {
  static List<Meal> loadMeals() {
    const meals = <Meal> [
      Meal(
        strMeal: "Baked salmon with fennel & tomatoes",
        strMealThumb: "https://www.themealdb.com/images/media/meals/1548772327.jpg",
        idMeal: "52959",
        strInstructions: "Heat oven to 180C/fan 160C/gas 4. Trim the fronds from the fennel and set aside. Cut the fennel bulbs in half, then cut each half into 3 wedges. Cook in boiling salted water for 10 mins, then drain well. Chop the fennel fronds roughly, then mix with the parsley and lemon zest.\r\n\r\nSpread the drained fennel over a shallow ovenproof dish, then add the tomatoes. Drizzle with olive oil, then bake for 10 mins. Nestle the salmon among the veg, sprinkle with lemon juice, then bake 15 mins more until the fish is just cooked. Scatter over the parsley and serve."
      ),
      Meal(
        strMeal: "Cajun spiced fish tacos",
        strMealThumb: "https://www.themealdb.com/images/media/meals/uvuyxu1503067369.jpg",
        idMeal: "52819",
        strInstructions: "Cooking in a cajun spice and cayenne pepper marinade makes this fish super succulent and flavoursome. Top with a zesty dressing and serve in a tortilla for a quick, fuss-free main that's delightfully summery.\r\n\r\nOn a large plate, mix the cajun spice and cayenne pepper with a little seasoning and use to coat the fish all over.\r\n\r\nHeat a little oil in a frying pan, add in the fish and cook over a medium heat until golden. Reduce the heat and continue frying until the fish is cooked through, about 10 minutes. Cook in batches if you don’t have enough room in the pan.\r\n\r\nMeanwhile, prepare the dressing by combining all the ingredients with a little seasoning.\r\nSoften the tortillas by heating in the microwave for 5-10 seconds. Pile high with the avocado, lettuce and spring onion, add a spoonful of salsa, top with large flakes of fish and drizzle over the dressing."
      ),
      Meal(
        strMeal: "Escovitch Fish",
        strMealThumb: "https://www.themealdb.com/images/media/meals/1520084413.jpg",
        idMeal: "52944",
        strInstructions: "Rinse fish; rub with lemon or lime, seasoned with salt and pepper or use your favorite seasoning. I used creole seasoning. Set aside or place in the oven to keep it warm until sauce is ready.\r\n\r\nIn large skillet heat oil over medium heat, until hot, add the fish, cook each side- for about 5-7 minutes until cooked through and crispy on both sides. Remove fish and set aside. Drain oil and leave about 2-3 tablespoons of oil\r\nAdd, bay leave, garlic and ginger, stir-fry for about a minute making sure the garlic does not burn\r\nThen add onion, bell peppers, thyme, scotch bonnet, sugar, all spice-continue stirring for about 2-3 minutes. Add vinegar, mix an adjust salt and pepper according to preference. Let it simmer for about 2 more minutes. \r\n\r\nDiscard bay leave, thyme spring and serve over fish with a side of this bammy. You may make the sauce about 2 days in advance."
      ),
      Meal(
        strMeal: "Fish pie",
        strMealThumb: "https://www.themealdb.com/images/media/meals/ysxwuq1487323065.jpg",
        idMeal: "52802",
        strInstructions: "01.Put the potatoes in a large pan of cold salted water and bring to the boil. Lower the heat, cover, then simmer gently for 15 minutes until tender. Drain, then return to the pan over a low heat for 30 seconds to drive off any excess water. Mash with 1 tbsp olive oil, then season.\r\n02.Meanwhile put the milk in a large sauté pan, add the fish and bring to the boil. Remove from the heat, cover and stand for 3 minutes. Remove the fish (reserving the milk) and pat dry with kitchen paper, then gently flake into an ovenproof dish, discarding the skin and any bones.\r\n03.Heat the remaining oil in a pan, stir in the flour and cook for 30 seconds. Gradually stir in 200-250ml of the reserved milk (discard the rest). Grate in nutmeg, season, then bubble until thick. Stir in the cream.\r\n04.Preheat the oven to 190°C/fan170°C/gas 5. Grate the artichokes and add to the dish with the leek, prawns and herbs. Stir the lemon zest and juice into the sauce, then pour over. Mix gently with a wooden spoon.\r\n05.Spoon the mash onto the fish mixture, then use a fork to make peaks, which will crisp and brown as it cooks. Sprinkle over the cheese, then bake for 35-40 minutes until golden and bubbling. Serve with wilted greens."
      ),
      Meal(
        strMeal: "Fish Stew with Rouille",
        strMealThumb: "https://www.themealdb.com/images/media/meals/vptqpw1511798500.jpg",
        idMeal: "52918",
        strInstructions: "Twist the heads from the prawns, then peel away the legs and shells, but leave the tails intact. Devein each prawn. Fry the shells in 1 tbsp oil for 5 mins, until dark pink and golden in patches. Add the wine, boil down by two thirds, then pour in the stock. Strain into a jug, discarding the shells.\r\nHeat the rest of the oil in a deep frying pan or casserole. Add the fennel, onion and garlic, season, then cover and gently cook for 10 mins until softened. Meanwhile, peel the potato and cut into 2cm-ish chunks. Put into a pan of cold water, bring to the boil and cook for 5 mins until almost tender. Drain in a colander.\r\nPeel a strip of zest from the orange. Put the zest, star anise, bay and ½ tsp harissa into the pan. Fry gently, uncovered, for 5-10 mins, until the vegetables are soft, sweet and golden.\r\nStir in the tomato purée, cook for 2 mins, then add the tomatoes and stock. Simmer for 10 mins until the sauce thickens slightly. Season to taste. The sauce can be made ahead, then reheated later in the day. Meantime, scrub the mussels or clams and pull away any stringy beards. Any that are open should be tapped sharply on the worktop – if they don’t close after a few seconds, discard them.\r\nReheat the sauce if necessary, then stir the potato, chunks of fish and prawns very gently into the stew. Bring back to the boil, then cover and gently simmer for 3 mins. Scatter the mussels or clams over the stew, then cover and cook for 2 mins more or until the shells have opened wide. Discard any that remain closed. The chunks of fish should flake easily and the prawns should be pink through. Scatter with the thyme leaves.\r\nTo make the quick rouille, stir the rest of the harissa through the mayonnaise. Serve the stew in bowls, topped with spoonfuls of rouille, which will melt into the sauce and enrich it. Have some good bread ready, as you’ll definitely want to mop up the juices."
      ),
      Meal(
        strMeal: "Garides Saganaki",
        strMealThumb: "https://www.themealdb.com/images/media/meals/wuvryu1468232995.jpg",
        idMeal: "52764",
        strInstructions: "Place the prawns in a pot and add enough water to cover. Boil for 5 minutes. Drain, reserving the liquid, and set aside.\r\nHeat 2 tablespoons of oil in a saucepan. Add the onion; cook and stir until soft. Mix in the parsley, wine, tomatoes, garlic and remaining olive oil. Simmer, stirring occasionally, for about 30 minutes, or until the sauce is thickened.\r\nWhile the sauce is simmering, the prawns should become cool enough to handle. First remove the legs by pinching them, and then pull off the shells, leaving the head and tail on.\r\nWhen the sauce has thickened, stir in the prawns. Bring to a simmer again if the sauce has cooled with the prawns, and cook for about 5 minutes. Add the feta and remove from the heat. Let stand until the cheese starts to melt. Serve warm with slices of crusty bread.\r\nThough completely untraditional, you can add a few tablespoons of stock or passata to this recipe to make a delicious pasta sauce. Toss with pasta after adding the feta, and serve."
      ),
      Meal(
        strMeal: "Honey Teriyaki Salmon",
        strMealThumb: "https://www.themealdb.com/images/media/meals/xxyupu1468262513.jpg",
        idMeal: "52773",
        strInstructions: "Mix all the ingredients in the Honey Teriyaki Glaze together. Whisk to blend well. Combine the salmon and the Glaze together.\r\n\r\nHeat up a skillet on medium-low heat. Add the oil, Pan-fry the salmon on both sides until it’s completely cooked inside and the glaze thickens.\r\n\r\nGarnish with sesame and serve immediately."
      ),
      Meal(
        strMeal: "Kedgeree",
        strMealThumb: "https://www.themealdb.com/images/media/meals/utxqpt1511639216.jpg",
        idMeal: "52887",
        strInstructions: "For the rice, heat the oil in a large, lidded pan, add the onion, then gently fry for 5 mins until softened but not coloured. Add the spices, season with salt, then continue to fry until the mix start to go brown and fragrant; about 3 mins.\r\nAdd the rice and stir in well. Add 600ml water, stir, then bring to the boil. Reduce to a simmer, then cover for 10 mins. Take off the heat and leave to stand, covered, for 10-15 mins more. The rice will be perfectly cooked if you do not lift the lid before the end of the cooking.\r\nMeanwhile, put the haddock and bay leaves in a frying pan, cover with the milk, then poach for 10 mins until the flesh flakes. Remove from the milk, peel away the skin, then flake the flesh into thumbsize pieces. Place the eggs in a pan, cover with water, bring to the boil, then reduce to a simmer. Leave for 4½-5 mins, plunge into cold water, then peel and cut the eggs into quarters. Gently mix the fish, eggs, parsley, coriander and rice together in the pan. Serve hot, sprinkled with a few extra herbs."
      ),
      Meal(
        strMeal: "Kung Po Prawns",
        strMealThumb: "https://www.themealdb.com/images/media/meals/1525873040.jpg",
        idMeal: "52946",
        strInstructions: "Mix the cornflour and 1 tbsp soy sauce, toss in the prawns and set aside for 10 mins. Stir the vinegar, remaining soy sauce, tomato purée, sugar and 2 tbsp water together to make a sauce.\r\n\r\nWhen you’re ready to cook, heat a large frying pan or wok until very hot, then add 1 tbsp oil. Fry the prawns until they are golden in places and have opened out– then tip them out of the pan.\r\n\r\nHeat the remaining oil and add the peanuts, chillies and water chestnuts. Stir-fry for 2 mins or until the peanuts start to colour, then add the ginger and garlic and fry for 1 more min. Tip in the prawns and sauce and simmer for 2 mins until thickened slightly. Serve with rice."
      ),
      Meal(
        strMeal: "Laksa King Prawn Noodles",
        strMealThumb: "https://www.themealdb.com/images/media/meals/rvypwy1503069308.jpg",
        idMeal: "52821",
        strInstructions: "Heat the oil in a medium saucepan and add the chilli. Cook for 1 min, then add the curry paste, stir and cook for 1 min more. Dissolve the stock cube in a large jug in 700ml boiling water, then pour into the pan and stir to combine. Tip in the coconut milk and bring to the boil.\r\nAdd the fish sauce and a little seasoning. Toss in the noodles and cook for a further 3-4 mins until softening. Squeeze in the lime juice, add the prawns and cook through until warm, about 2-3 mins. Scatter over some of the coriander.\r\nServe in bowls with the remaining coriander and lime wedges on top for squeezing over."
      ),
      Meal(
        strMeal: "Recheado Masala Fish",
        strMealThumb: "https://www.themealdb.com/images/media/meals/uwxusv1487344500.jpg",
        idMeal: "52809",
        strInstructions: "Soak all the spices, ginger, garlic, tamarind pulp and kashmiri chilies except oil in vinegar.\r\nAdd sugar and salt.\r\nAlso add turmeric powder.\r\nCombine all nicely and marinate for 35-40 mins.\r\nGrind the mixture until soft and smooth. Add more vinegar if required but ensure the paste has to be thick so add vinegar accordingly. If the masala paste is thin then it would not stick to the fish.\r\nRinse the fish slit from the center and give some incision from the top. You could see the fish below for clarity.\r\nNow stuff the paste into the center and into the incision. Coat the entire fish with this paste. Marinate the fish for 30 mins.\r\nPlace oil in a shallow pan, once oil is quite hot shallow fry the stuffed mackerels.\r\nFry until golden brown from both sides\r\nServe the recheado mackerels hot with salad, lime wedges, rice and curry.\r\nNotes\r\n1. Ensure the masala paste is thick else the result won't be good.\r\n2. If you aren't able to find kashmiri chilies then use bedgi chilies or kashmiri red chili powder.\r\n3. You could use white vinegar or coconut vinegar.\r\n4. Any left over paste could be stored in the fridge for future use.\r\n5. Cinnamon could be avoided as it's a strong spice used generally for meat or chicken."
      ),
      Meal(
        strMeal: "Salmon Avocado Salad",
        strMealThumb: "https://www.themealdb.com/images/media/meals/1549542994.jpg",
        idMeal: "52960",
        strInstructions: "Season the salmon, then rub with oil. Mix the dressing ingredients together. Halve, stone, peel and slice the avocados. Halve and quarter the cucumber lengthways, then cut into slices. Divide salad, avocado and cucumber between four plates, then drizzle with half the dressing.\r\n\r\nHeat a non-stick pan. Add the salmon and fry for 3-4 mins on each side until crisp but still moist inside. Put a salmon fillet on top of each salad and drizzle over the remaining dressing. Serve warm."
      ),
      Meal(
        strMeal: "Salmon Prawn Risotto",
        strMealThumb: "https://www.themealdb.com/images/media/meals/xxrxux1503070723.jpg",
        idMeal: "52823",
        strInstructions: "Melt the butter in a thick-based pan and gently cook the onion without colour until it is soft.\r\nAdd the rice and stir to coat all the grains in the butter\r\nAdd the wine and cook gently stirring until it is absorbed\r\nGradually add the hot stock, stirring until each addition is absorbed. Keep stirring until the rice is tender\r\nSeason with the lemon juice and zest, and pepper to taste. (there will probably be sufficient saltiness from the salmon to not need to add salt) Stir gently to heat through\r\nServe scattered with the Parmesan and seasonal vegetables.\r\nGrill the salmon and gently place onto the risotto with the prawns and asparagus"
      ),
      Meal(
        strMeal: "Saltfish and Ackee",
        strMealThumb: "https://www.themealdb.com/images/media/meals/vytypy1511883765.jpg",
        idMeal: "52936",
        strInstructions: "For the saltfish, soak the salt cod overnight, changing the water a couple of times.\r\nDrain, then put the cod in a large pan of fresh water and bring to the boil. Drain again, add fresh water and bring to the boil again.\r\nSimmer for about five minutes, or until cooked through, then drain and flake the fish into large pieces. Discard any skin or bones.\r\nFor the dumplings, mix the flour and suet with a pinch of salt and 250ml/9fl oz water to make a dough.\r\nWrap the mixture in clingfilm and leave in the fridge to rest.\r\nOpen the can of ackee, drain and rinse, then set aside.\r\nHeat a tablespoon of olive oil in a pan and fry the onion until softened but not brown.\r\nAdd the spices, seasoning, pepper sauce and sliced peppers and continue to fry until the peppers are tender.\r\nAdd the chopped tomatoes, then the salt cod and mix together. Lastly stir in the ackee very gently and leave to simmer until ready to serve.\r\nWhen you’re almost ready to eat, heat about 1cm/½in vegetable oil in a frying pan and heat until just smoking.\r\nShape the dumpling mix into plum-size balls and shallow-fry until golden-brown. (CAUTION: hot oil can be dangerous. Do not leave the pan unattended.)\r\nDrain the dumplings on kitchen paper and serve with the saltfish and ackee."
      ),
      Meal(
        strMeal: "Seafood fideuà",
        strMealThumb: "https://www.themealdb.com/images/media/meals/wqqvyq1511179730.jpg",
        idMeal: "52836",
        strInstructions: "Boil the kettle. Empty the mussels into a colander and run under cold water. Throw away any with broken shells. Pick through the shells, tapping each one on the side of the sink – they should be closed or should slowly close when tapped – if they stay open, throw them away. If any of the shells still have barnacles or stringy beards attached, pull them off with a cutlery knife and rinse the shells well. Keep in the colander, covered with a cold, damp cloth, until you’re ready to cook. Peel the prawn shells on the body section only – leave the heads and tails intact. Score down the backs and pull out any gritty entrails. Chill until you’re ready to cook.\r\nPut the saffron in a small cup, cover with 50ml kettle-hot water and set aside for 10 mins. If using vermicelli, put in a bowl and crush to little pieces (about 1cm long) with your hands.\r\nHeat the oil in a large frying pan with at least a 3cm lip, or a 40cm paella pan. Add the onion and stir around the pan for 5 mins until soft. Add the garlic and cook for 1 min more, then tip in the vermicelli and cook for 5 mins, stirring from time to time, until the vermicelli is toasted brown. Stir in the paprika.\r\nKeeping the heat moderate, stir through the monkfish, squid and saffron with its water, seasoning well. Spread the ingredients out in an even layer, then pour over the hot stock and scatter the tomatoes on top. Bring to a simmer, then cover the whole dish with a tight-fitting lid (or foil). Turn the heat to medium and cook for 6 mins.\r\nUncover and stir to incorporate the dry top layer of pasta. Push the mussels into the pasta so the hinges are buried in the bottom of the dish, and they stand straight up. Arrange the prawns on top, cover tightly and cook for another 6 mins or until the mussels are open, the prawns are pink and the pasta is cooked through. Leave to simmer for another 2-3 mins to cook off most of the remaining liquid (leave a little in the pan to prevent the pasta from sticking together). Allow to sit for 2-3 mins, then squeeze over the lemon juice and arrange the wedges on top. Scatter with parsley before serving."
      ),
      Meal(
        strMeal: "Shrimp Chow Fun",
        strMealThumb: "https://www.themealdb.com/images/media/meals/1529445434.jpg",
        idMeal: "52953",
        strInstructions:"STEP 1 - SOAK THE RICE NOODLES\r\nSoak the rice noodles overnight untill they are soft\r\nSTEP 2 - BOIL THE RICE NOODLES\r\nBoil the noodles for 10-15 minutes and then rinse with cold water to stop the cooking process of the noodles.\r\nSTEP 3 -MARINATING THE SHRIMP\r\nIn a bowl add the shrimp, egg, 1 pinch of white pepper, 1 Teaspoon of sesame seed oil, 1 Tablespoon corn starch and 1 tablespoon of oil\r\nMix together well\r\nSTEP 4 - STIR FRY\r\nIn a wok add 2 Tablespoons of oil, shrimp and stir fry them until it is golden brown\r\nSet the shrimp aside\r\nAdd 1 Tablespoon of oil to the work and then add minced garlic, ginger and all of the vegetables.\r\nAdd the noodles to the wok\r\nNext add sherry cooking wine, oyster sauce, sugar, vinegar, sesame seed oil, 1 pinch white pepper, and soy sauce\r\nAdd back in the shrimp\r\nTo thicken the sauce, whisk together 1 Tablespoon of corn starch and 2 Tablespoon of water in a bowl and slowly add to your stir-fry until it's the right thickness."
      ),
      Meal(
        strMeal: "Three Fish Pie",
        strMealThumb: "https://www.themealdb.com/images/media/meals/spswqs1511558697.jpg",
        idMeal: "52882",
        strInstructions:"Preheat the oven to 200C/400F/Gas 6 (180C fan).\r\nPut the potatoes into a saucepan of cold salted water. Bring up to the boil and simmer until completely tender. Drain well and then mash with the butter and milk. Add pepper and taste to check the seasoning. Add salt and more pepper if necessary.\r\nFor the fish filling, melt the butter in a saucepan, add the leeks and stir over the heat. Cover with a lid and simmer gently for 10 minutes, or until soft. Measure the flour into a small bowl. Add the wine and whisk together until smooth.\r\nAdd the milk to the leeks, bring to the boil and then add the wine mixture. Stir briskly until thickened. Season and add the parsley and fish. Stir over the heat for two minutes, then spoon into an ovenproof casserole. Scatter over the eggs. Allow to cool until firm.\r\nSpoon the mashed potatoes over the fish mixture and mark with a fork. Sprinkle with cheese.\r\nBake for 30-40 minutes, or until lightly golden-brown on top and bubbling around the edges."
      ),
      Meal(
        strMeal: "Tuna and Egg Briks",
        strMealThumb: "https://www.themealdb.com/images/media/meals/2dsltq1560461468.jpg",
        idMeal: "52975",
        strInstructions:"Heat 2 tsp of the oil in a large saucepan and cook the spring onions over a low heat for 3 minutes or until beginning to soften. Add the spinach, cover with a tight-fitting lid and cook for a further 2–3 minutes or until tender and wilted, stirring once or twice. Tip the mixture into a sieve or colander and leave to drain and cool.\r\nUsing a saucer as a guide, cut out 24 rounds about 12.5 cm (5 in) in diameter from the filo pastry, cutting 6 rounds from each sheet. Stack the filo rounds in a pile, then cover with cling film to prevent them from drying out.\r\nWhen the spinach mixture is cool, squeeze out as much excess liquid as possible, then transfer to a bowl. Add the tuna, eggs, hot pepper sauce, and salt and pepper to taste. Mix well.\r\nPreheat the oven to 200°C (400°F, gas mark 6). Take one filo round and very lightly brush with some of the remaining oil. Top with a second round and brush with a little oil, then place a third round on top and brush with oil.\r\nPlace a heaped tbsp of the filling in the middle of the round, then fold the pastry over to make a half-moon shape. Fold in the edges, twisting them to seal, and place on a non-stick baking sheet. Repeat with the remaining pastry and filling to make 8 briks in all.\r\nLightly brush the briks with the remaining oil. Bake for 12–15 minutes or until the pastry is crisp and golden brown.\r\nMeanwhile, combine the tomatoes and cucumber in a bowl and sprinkle with the lemon juice and seasoning to taste. Serve the briks hot with this salad and the chutney."
      ),
      Meal(
        strMeal: "Tuna Nicoise",
        strMealThumb: "https://www.themealdb.com/images/media/meals/yypwwq1511304979.jpg",
        idMeal: "52852",
        strInstructions:"Heat oven to 200C/fan 180C/gas 6. Toss the potatoes with 2 tsp oil and some seasoning. Tip onto a large baking tray, then roast for 20 mins, stirring halfway, until crisp, golden and cooked through.\r\nMeanwhile, put eggs in a small pan of water, bring to the boil, then simmer for 8-10 mins, depending on how you like them cooked. Plunge into a bowl of cold water to cool for a few mins. Peel away the shells, then cut into halves.\r\nIn a large salad bowl, whisk together the remaining oil, red wine vinegar, capers and chopped tomatoes. Season, tip in the onion, spinach, tuna and potatoes, then gently toss together. Top with the eggs, then serve straight away."
      ),
    ];

    return meals.toList();
  }
}
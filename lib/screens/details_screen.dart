import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/my_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../recipe_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.recipe});

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: const Color(0xff303030),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipe.subTitle,
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff303030),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  recipe.recipeImage,
                  width: 330,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFB660),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.5',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff303030),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(300 Reviews)',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xffA9A9A9),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CreatorInfo(recipe: recipe),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Recipe',
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff303030),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                recipe.description,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: const Color(0xffA9A9A9),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ingredients',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff303030),
                    ),
                  ),
                  Text(
                    '${recipe.ingredients.length.toString()} items',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color(0xffA9A9A9),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  recipe.ingredients.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  recipe.ingredients[index].image,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                recipe.ingredients[index].name,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff303030),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            recipe.ingredients[index].quantity,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: const Color(0xffA9A9A9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CreatorInfo extends StatelessWidget {
  const CreatorInfo({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(recipe.creatorImage2 ?? recipe.creatorImage),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipe.creatorName,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color(0xffE23E3E),
                ),
                Text(
                  'Bali, Indonesia',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: const Color(0xffA9A9A9),
                  ),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xffE23E3E),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Follow',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

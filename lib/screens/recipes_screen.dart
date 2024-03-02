import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/recipe_tile.dart';
import 'package:food_recipe_app/recipe_model.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: const Color(0xff303030),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore All Recipes',
                  style: GoogleFonts.poppins(
                    color: const Color(
                      0xff303030,
                    ),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20,),
                Column(
                  children: List.generate(
                      recipeModel.length, (index) => Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: RecipeTile(index: index, width: double.infinity,),
                      ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

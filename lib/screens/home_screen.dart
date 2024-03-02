import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_recipe_app/recipe_model.dart';
import 'package:food_recipe_app/screens/recipes_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/my_textfield.dart';
import '../components/recipe_tile.dart';
import '../creators.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find best recipes \nfor cooking',
                style: GoogleFonts.poppins(
                  color: const Color(
                    0xff303030,
                  ),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const MyTextField(
                hintText: 'Search recipes',
                icon: Icons.search_rounded,
                color: Color(
                  0xffC1C1C1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleRow(
                title: 'Trending now 🔥',
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipeModel.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: RecipeTile(
                      index: index,
                      width: 280,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TitleRow(
                title: 'Popular Creators',
              ),
              const SizedBox(
                height: 10,
              ),
              const PopularCreators(),
            ],
          ),
        ),
      ),
    );
  }
}

class PopularCreators extends StatelessWidget {
  const PopularCreators({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Creators> creators = [
      Creators(name: 'Troyan \nSmith', image: 'assets/creator3.png'),
      Creators(name: 'James \nWolden', image: 'assets/creator4.png'),
      Creators(name: 'Niki \nSamantha ', image: 'assets/creator5.png'),
      Creators(name: 'Roberta \nAnny', image: 'assets/creator6.png'),
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          creators.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Column(
              children: [
                Image.asset(creators[index].image),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  creators[index].name,
                  style: GoogleFonts.poppins(
                    color: const Color(0xff303030),
                    fontSize: 12,
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

class TitleRow extends StatelessWidget {
  const TitleRow({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: const Color(0xff303030),
          ),
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RecipesScreen()));
              },
              child: Text(
                'See all',
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffE23E3E),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward,
              size: 16,
              color: Color(0xffE23E3E),
            ),
          ],
        ),
      ],
    );
  }
}

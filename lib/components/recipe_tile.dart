import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../recipe_model.dart';
import '../screens/details_screen.dart';

class RecipeTile extends StatelessWidget {
  const RecipeTile({
    super.key,
    required this.index,
    required this.width,
  });

  final int index;
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  recipe: recipeModel[index],
                )));
      },
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                recipeModel[index].recipeImage,
                width: width,
                height: 180,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    recipeModel[index].subTitle,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff303030),
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Color(0xff303030),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(recipeModel[index].creatorImage),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'By ${recipeModel[index].creatorName}',
                  style: GoogleFonts.poppins(
                    color: const Color(0xffA9A9A9),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
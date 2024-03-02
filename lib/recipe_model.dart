import 'ingredients.dart';

class RecipeModel {
  final String title;
  final String subTitle;
  final String description;
  final String recipeImage;
  final String creatorName;
  final String creatorImage;
  final String? creatorImage2;
  final List<Ingredients> ingredients;

  RecipeModel({
    required this.title,
    required this.subTitle,
    required this.description,
    required this.recipeImage,
    required this.creatorName,
    required this.creatorImage,
    required this.ingredients,
    this.creatorImage2,
  });
}

List<RecipeModel> recipeModel = [
  RecipeModel(
    title: 'French Toast',
    subTitle: 'How to make french toast at home',
    description:
        "Gather all ingredients. \nWhisk milk, eggs, vanilla, cinnamon, and salt together in a shallow bowl.\nLightly butter a griddle or skillet and heat over medium-high heat. \nDunk bread in the egg mixture, soaking both sides.\nTransfer to the hot skillet and cook until golden, 3 to 4 minutes per side.\nServe hot.",
    recipeImage: 'assets/frenchToast.png',
    creatorName: 'Troyan Smith',
    creatorImage: 'assets/creator2.png',
    creatorImage2: 'assets/creator3.png',
    ingredients: ingredientsFrenchToast,
  ),
  RecipeModel(
    title: 'Oatmeal',
    subTitle: 'Easy oatmeal recipe',
    description:
        "Pour the milk and salt into a saucepan, and bring to a boil. Stir in the oats, maple syrup, raisins, and cranberries. Return to a boil, then reduce heat to medium. Cook for 5 minutes. Stir in walnuts and coconut, and let stand until it reaches your desired thickness. Spoon into serving bowls, and top with yogurt and honey, if desired.",
    recipeImage: 'assets/oatmeal.png',
    creatorName: 'James Wolden',
    creatorImage: 'assets/creator7.png',
    creatorImage2: 'assets/creator4.png',
    ingredients: ingredientsOatmeal,
  ),
  RecipeModel(
    title: 'Sushi',
    subTitle: 'How to make sushi at home',
    description:
    "Soak rice for 4 hours. Drain rice and cook in a rice cooker with 2 cups of water. Rice must be slightly dry as vinegar will be added later.\nImmediately after rice is cooked, mix in rice wine vinegar; spread rice on a plate until completely cool.\nPlace 1 sheet of seaweed on a bamboo mat; press a thin layer of cool rice on seaweed, leaving at least a 1/2 inch top and bottom edge of the seaweed uncovered. This is for easier sealing later. Dot some wasabi on rice; arrange smoked salmon, cucumber, and avocado on rice about 1 inch away from the bottom edge of seaweed.\nSlightly wet the top edge of seaweed; roll up tightly from the bottom to the top edge with the help of the bamboo mat. Cut salmon roll into 8 equal pieces and serve. Repeat for other rolls.",
    recipeImage: 'assets/sushi.png',
    creatorName: 'Niki Samantha',
    creatorImage: 'assets/creator1.png',
    creatorImage2: 'assets/creator6.png',
    ingredients: ingredientsSushi,
  ),
];

class Ingredients {
  final String name;
  final String quantity;
  final String image;

  Ingredients({
    required this.name,
    required this.quantity,
    required this.image,
  });
}


List<Ingredients> ingredientsSushi = [
  Ingredients(name: 'Rice', quantity: '2 cups', image: 'assets/rice.png'),
  Ingredients(name: 'Seaweed', quantity: '6 sheets', image: 'assets/seaweed.png'),
  Ingredients(name: 'Salmon', quantity: '8 ounces', image: 'assets/milk.png'),
  Ingredients(name: 'Cucumber', quantity: '1 sliced', image: 'assets/butter.png'),
];

List<Ingredients> ingredientsFrenchToast = [
  Ingredients(name: 'Bread', quantity: '200g', image: 'assets/bread.png'),
  Ingredients(name: 'Eggs', quantity: '200g', image: 'assets/egg.png'),
  Ingredients(name: 'Milk', quantity: '200g', image: 'assets/milk.png'),
  Ingredients(name: 'Butter', quantity: '200g', image: 'assets/butter.png'),
  Ingredients(name: 'Vanilla', quantity: '2 tbs', image: 'assets/vanilla.png'),
];

List<Ingredients> ingredientsOatmeal = [
  Ingredients(name: 'Oats', quantity: '2 cups', image: 'assets/oats.png'),
  Ingredients(name: 'Salt', quantity: '1/4 tbs', image: 'assets/salt.png'),
  Ingredients(name: 'Milk', quantity: '200g', image: 'assets/milk.png'),
  Ingredients(name: 'Walnuts', quantity: '1/3 cup', image: 'assets/walnut.png'),
  Ingredients(name: 'Vanilla', quantity: '3 cups', image: 'assets/vanilla.png'),
];

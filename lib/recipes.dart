class Recipe {
  String label;
  String imageUrl;
  int serving;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imageUrl, this.serving, this.ingredients);

  static List<Recipe> samples = [
    Recipe('Spaghetti and Meatballs',
        'https://source.unsplash.com/350x350/?Spaghetti', 4, [
      Ingredient(
        1,
        'box',
        'Spaghetti',
      ),
      Ingredient(
        4,
        '',
        'Frozen Meatballs',
      ),
      Ingredient(
        0.5,
        'jar',
        'sauce',
      ),
    ]),
    Recipe(
      'Tomato Soup',
      'https://source.unsplash.com/350x350/?soup',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'https://source.unsplash.com/350x350/?grilledcheese',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'https://source.unsplash.com/350x350/?cookies',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Taco Salad',
      'https://source.unsplash.com/350x350/?salad',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Hawaiian Pizza',
      'https://source.unsplash.com/350x350/?pizza',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
      
    ),
  ];
}

class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

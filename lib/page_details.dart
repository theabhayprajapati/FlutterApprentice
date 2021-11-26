import 'package:flutter/material.dart';

import 'recipes.dart';

class RecipeDetials extends StatefulWidget {
  const RecipeDetials({Key? key, required this.recipe}) : super(key: key);

  final Recipe recipe;

  @override
  _RecipeDetialsState createState() => _RecipeDetialsState();
}

class _RecipeDetialsState extends State<RecipeDetials> {
  // add here the slider
  int _sliderval = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(widget.recipe.imageUrl),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(7),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final Ingredient = widget.recipe.ingredients[index];
// return
                  return Text("${Ingredient.quantity * _sliderval}"
                      " ${Ingredient.measure},"
                      " ${Ingredient.name}");
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderval * widget.recipe.serving} servings',
              value: _sliderval.toDouble(),
              onChanged: (newvalue) {
                setState(
                  () {
                    _sliderval = newvalue.round();
                  },
                );
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

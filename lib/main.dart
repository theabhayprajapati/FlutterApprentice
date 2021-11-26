import 'package:apprenticeflutter/page_details.dart';
import 'package:apprenticeflutter/recipes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  RecipeApp({Key? key}) : super(key: key);
  var apptitle = "RecipeApp";

  Widget buildRecipeCard(Recipe recipe) {
    // 1

    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      // 2
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          // 3
          children: <Widget>[
            // 4
            Image.network(recipe.imageUrl),
            SizedBox(
              height: 14,
            ),
            // 5
            Text(
              recipe.label,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'palatino'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(apptitle),
          ),
          body: Card(
            child: ListView.builder(
                itemCount: Recipe.samples.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return RecipeDetials(recipe: Recipe.samples[index]);
                      }));
                    },
                    child: buildRecipeCard(Recipe.samples[index]),
                  );
                }),
          )),
    );
  }
}

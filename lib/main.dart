import 'package:flutter/material.dart';
import 'package:recipes/recipe.dart';

void main() {
  runApp(const RecipesApp());
}

class RecipesApp extends StatelessWidget {
  const RecipesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<Recipe> recipes = [
    Recipe('recipe number 1', 'assets/salad.jpeg'),
    Recipe('recipe number 2', 'assets/salad.jpeg'),
    Recipe('recipe number 3', 'assets/salad.jpeg'),
    Recipe('recipe number 4', 'assets/salad.jpeg'),
    Recipe('recipe number 5', 'assets/salad.jpeg'),
    Recipe('recipe number 6', 'assets/salad.jpeg'),
    Recipe('recipe number 7', 'assets/salad.jpeg'),
    Recipe('recipe number 8', 'assets/salad.jpeg'),
    Recipe('recipe number 9', 'assets/salad.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the Recipes App'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return buileRecipeCard(recipes[index]);
        }, itemCount: recipes.length,
      ),
    );
  }

  Widget buileRecipeCard(Recipe recipes){
    return Card(
      elevation:2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(recipes.imageUrl!),
            SizedBox(height: 10,),
            Text(recipes.label),
          ],
        ),
      ),
    );
  }
}
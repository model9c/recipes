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
    Recipe('recipe number 1', 'image path number number 1'),
    Recipe('recipe number 2', 'image path number number 2'),
    Recipe('recipe number 3', 'image path number number 3'),
    Recipe('recipe number 4', 'image path number number 4'),
    Recipe('recipe number 5', 'image path number number 5'),
    Recipe('recipe number 6', 'image path number number 6'),
    Recipe('recipe number 7', 'image path number number 7'),
    Recipe('recipe number 8', 'image path number number 8'),
    Recipe('recipe number 9', 'image path number number 9'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is the Recipes App'),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(recipes[index].label!);
      }, itemCount: recipes.length, ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:micropackage_di_sample/di/injector.dart';
import 'package:micropackage_di_sample/repositories/food_repository.dart';

void main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Make Food',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String foodMade = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              foodMade,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                  color: Colors.purple,
                  child: const Text('Make Beef Burger'),
                    onPressed: () {
                  final beefBurger = getIt<FoodRepository>().makeBeefBurger();
                  setState(() {
                    foodMade = beefBurger;
                  });
                }),
                const SizedBox(width: 20,),
                MaterialButton(
                    color: Colors.purple,
                    child: const Text('Make Chicken Shawarma',),
                    onPressed: () {
                      final spicyChickenShawarma = getIt<FoodRepository>().makeSpicyChickenShawarma();
                      setState(() {
                        foodMade = spicyChickenShawarma;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

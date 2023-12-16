import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Favorite City',
      home: FavoriteCity(),
    ),
  );
}

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({super.key});

  @override
  State<FavoriteCity> createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite City'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            const Text('What is your favorite city?'),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
              color: Colors.blue,
            ),
            TextField(onSubmitted: (String UserInput) {
              setState(() {
                nameCity = UserInput;
              });
            }),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Your Favorite City: $nameCity'),
            ),
          ],
        ),
      ),
    );
  }
}

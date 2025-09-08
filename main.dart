import 'package:flutter/material.dart';
/* Import the material design library, it provides widgets
the material.dart is part of a FLUTTER SDK and implements in google material design guidelines for UI
 * */

void main() {
  runApp(const myApp()); // flutter app function initialize the app that attached on the root widget(main screen ) to the screen.
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie' ,
      theme: ThemeData(
        primarySwatch: Colors.brown,
    ),
    home:const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text('Movie (Anime)'),
     ),
     body: Center (
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Image.network('https://image.tmdb.org/t/p/original/Sw50QpmJFUsWELy4z9QhTHFmas.jpg',
           width: 150,
           height: 360,
         ),
         const Text(
           'Demon Slayer',
           style: TextStyle(fontSize:30, fontWeight: FontWeight.bold),
         ),
       const Text(
         'An anime television series adaptation, produced by Ufotable, aired a 26-episode first season from April to September 2019, with a sequel film, Demon Slayer: Kimetsu no Yaiba – The Movie: Mugen Train, released in October 2020, which became the highest-grossing anime and Japanese film of all time. An 18-episode second season of the anime series aired from October 2021 to February 2022 while a compilation film, Demon Slayer: Kimetsu no Yaiba – To the Swordsmith Village, was released in February 2023. An 11-episode third season aired from April to June 2023 while another compilation film, Demon Slayer: Kimetsu no Yaiba – To the Hashira Training, was released in February 2024. An eight-episode fourth season aired from May to June 2024. A film trilogy sequel adapting the "Infinity Castle" story arc premiered in July 2025.',
         style: TextStyle(fontSize:25),
       ),
       ],
     ),
    ),
   );

  }
}

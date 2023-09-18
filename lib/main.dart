import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Second live test",
      theme: ThemeData.light( useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("My shopping List"),
      centerTitle: true,
      elevation: 8,
      backgroundColor: Colors.purple,),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
            leading: Icon(Icons.shopping_basket,),
            title: Text("Apple",
            style: TextStyle(fontSize: 16),),
            ),
            ListTile(
            leading: Icon(Icons.shopping_basket,),
            title: Text("Banan",
            style: TextStyle(fontSize: 16),),
            ),
            ListTile(
            leading: Icon(Icons.shopping_basket,),
            title: Text("Milk",
            style: TextStyle(fontSize: 16),),
            ),
            ListTile(
            leading: Icon(Icons.shopping_basket,),
            title: Text("Eggs",
            style: TextStyle(fontSize: 16),),
            ),
            ListTile(
            leading: Icon(Icons.shopping_basket,),
            title: Text("Orange",
            style: TextStyle(fontSize: 16),),
            ),
          ],
        ),
      ),
    );

  }
}
//https://github.com/nazmul-hasan-24/live_test_6
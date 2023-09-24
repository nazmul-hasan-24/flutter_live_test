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
      title: " Counter App",
      theme: ThemeData.light( useMaterial3: true),
      home:  const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int count = 0;

void _showDialog(){
    showDialog(
      context: context,
       builder: (context){
        return AlertDialog(
          title:  Text("Button pressed $count times"),
         
          actions: [
            TextButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Close"))
          ],
        );
       });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter App"),
      backgroundColor: Colors.blue,),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text("Count:",
        style: TextStyle(fontSize: 20),),
        Text("$count",
        style: const TextStyle(fontSize: 20),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           ElevatedButton(onPressed: (){
            if(count>=5){
              _showDialog();
            }
            setState(() {
              count=count++;
            });
           }, child: const Icon(Icons.add)),
           const SizedBox(width: 20.0,),
           ElevatedButton(onPressed: (){
           if(count>=5){
              _showDialog();
            }
            setState(() {
              count=count--;
            });
           }, 
           child: const Icon(Icons.minimize))
          ],
        )
      ]),
    );
  }
}

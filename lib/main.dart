import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<Widget> myList = [
          Container(
            height: 300,
            width: 3000,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.green,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.blue,
          ),
          Container(
            height: 300,
            width: 3000,
            color: Colors.yellow,
          )
        ];

    final List<Color> myColor = [Colors.red, Colors.green, Colors.blue, Colors.yellow];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(
        title: const Text("List View"),
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text('Ariq'),
            subtitle: Text('Lorem ipsum sor dolor ameta daosdaodsmaosdaosdoasodmaomsdaosdoasodamdoasmda',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,),
            leading: CircleAvatar(),
            trailing: Text('10.00'),
            onTap: (){
              return;
            },
          )
        ],
      )
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
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

  var arrNames = ["Vikas", "Akash", "Shiv", "Anmol", "Rahul", "Rakesh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: 
      // Center(
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     reverse: true,
      //     children: const [
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text("Hello Developer1", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text("Hello Developer2", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text("Hello Developer3", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text("Hello Developer4", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text("Hello Developer5", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      //       ),
      //     ],
      //   ),
      // )
      
      // ListView.builder(itemBuilder: (context, index) {
      //   return Text(arrNames[index], style: TextStyle(fontSize: 21),);
      // },
      // itemCount: arrNames.length,
      //   // reverse: true,
      //   itemExtent: 300,
      //   scrollDirection: Axis.vertical,// extend listview item size
      // )

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(itemBuilder: (context, index) {
          return Text(arrNames[index], style: TextStyle(fontSize: 21),);
        },
          itemCount: arrNames.length,
          // reverse: true,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: 30),
          // for divide list we use separatorBuilder
          separatorBuilder: (context, index){
          return Divider(height: 40,thickness: 2, color: Colors.black,);

          },// extend listview item size
        ),
      )

    );
  }
}

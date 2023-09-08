import 'package:flutter/material.dart';
import 'chocieList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Form Choice'),
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

   bool switchdata=false;
   choicList _radiolist=choicList.Man;

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
          children: [
          const Text("User Choice"),
          const Divider(color: Colors.blue),
          const Text("Switch"),
          Switch(value: switchdata, onChanged: (val){
            setState(() {
              switchdata=val;
            });
          }),
          Text(switchdata ? 'On' : 'Off'),
          const Divider(color: Colors.blue),
          const Text("Radio"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: choicList.Man, groupValue: _radiolist, onChanged: (val){
                 setState(() {
                      _radiolist=choicList.Man;
                 });
              }),
                Text("Man",style: _radiolist==choicList.Man ? const TextStyle(fontWeight: FontWeight.bold) : const TextStyle(),),
                Radio(value: choicList.Woman, groupValue: _radiolist, onChanged: (val){
                 setState(() {
                      _radiolist=choicList.Woman;
                 });
              }),
            Text("Woman",style: _radiolist==choicList.Woman ? const TextStyle(fontWeight: FontWeight.bold) : const TextStyle(),),
              
            ],
          )
          
        ]),
      ),
    );
  }
}

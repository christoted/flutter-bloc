import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            
            onPressed: () {},
            child: const Text('Action 1'),
          ),
          TextButton(
        
            onPressed: () {},
            child: const Text('Action 2'),
          )
        ],
      ),
      body:  Container(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.green,
                    child: Text("Hello One"),
                  ),  
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    color: Colors.blue,
                    child: Text("Hello One"),
                  )
                ],
              ),
               Row(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    color: Colors.yellow,
                    child: Text("Hello One"),
                  )
                ],
              ),
                Row(
                children: [
                  Container(
                    width: 200,
                    height: 300,
                    color: Colors.red,
                    child: Text("Hello One"),
                  )
                ],
              ),
            ],
          ),
        )),
    );
    
   
  }
}

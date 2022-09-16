import 'package:flutter/material.dart';

class CampaignScreen extends StatefulWidget {
  const CampaignScreen({Key? key}) : super(key: key);

  @override
  State<CampaignScreen> createState() => _CampaignScreenState();
}

class _CampaignScreenState extends State<CampaignScreen> {
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        height: 50,
                        color: Colors.green,
                        child: Text("Hello One"),
                      );
                    }),
              ),
              Container(
                height: 250,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        height: 50,
                        color: Colors.green,
                        child: Text("Hello One"),
                      );
                    }),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        height: 50,
                        color: Colors.green,
                        child: Text("Hello One"),
                      );
                    }),
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        height: 50,
                        color: Colors.green,
                        child: Text("Hello One"),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

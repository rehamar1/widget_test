import 'package:dummy_test_app/card_profile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 238, 238),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(14),
            child: Text(
              'List horizontal : ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              padding: EdgeInsets.all(14),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: CardProfile(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

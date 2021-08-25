import 'package:flutter/material.dart';

import 'expandable_floating_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Expandable Floating Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

@immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expandable Fab'),
      ),
      body: Center(
        child: Container(
          child: Text("Customize Floating Button by Expand."),
        ),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            onPressed: () => print('ABC'),
            icon: const Icon(Icons.format_size),
          ),
          ActionButton(
            onPressed: () => print('DEF'),
            icon: const Icon(Icons.insert_photo),
          ),
          ActionButton(
            onPressed: () => print('GHI'),
            icon: const Icon(Icons.videocam),
          ),
          ActionButton(
            onPressed: () => print('DEF'),
            icon: const Icon(Icons.camera_enhance),
          ),
          ActionButton(
            onPressed: () => print('GHI'),
            icon: const Icon(Icons.camera),
          ),
        ],
      ),
    );
  }
}

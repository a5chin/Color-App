import 'package:flutter/material.dart';
import 'models/colorlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JColor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Color Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    List<String> _colors = [
      '895b8a',
      '824880',
      '915c8b',
      '9d5b8b',
      '7a4171',
      'bc64a4'
    ];
    List<String> _names = ['古代紫', '茄子紺', '二藍', '京紫', '蒲葡', '若紫'];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(children: <Widget>[
        for (var i = 0; i < _colors.length; i++)
          ColorList(_size.height, _size.width, _colors[i], _names[i])
      ]));
  }
}

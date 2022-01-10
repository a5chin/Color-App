import 'package:flutter/material.dart';
import 'models/hexcolor.dart';
import 'models/details.dart';

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
            GestureDetector(
              child: Hero(
                tag: '1',
                child: Container(
                  height: _size.height / 6,
                  width: _size.width,
                  margin: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: HexColor(_colors[i]),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: HexColor(_colors[i]),
                        spreadRadius: 10.0,
                        blurRadius: 30.0,
                        offset: const Offset(10, 10),
                      ),
                    ],
                  ),
                  child: Center(child: Text(_names[i])),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Details();
                    },
                  ),
                );
              },
            ),
        ]));
  }
}

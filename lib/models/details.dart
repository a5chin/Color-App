import 'package:flutter/material.dart';
import './hexcolor.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: '1',
        child: Container(
          height: _size.height / 5,
          width: _size.width,
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: HexColor('895b8a'),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: HexColor('895b8a'),
                spreadRadius: 10.0,
                blurRadius: 30.0,
                offset: const Offset(10, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

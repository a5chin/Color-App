import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hexcolor.dart';
import '../models/details.dart';

class ColorList extends StatelessWidget {
  double height;
  double width;
  String color;
  String name;

  ColorList(this.height, this.width, this.color, this.name);

  @override
  Widget build(BuildContext context) {
    const String _style = 'Yuji Syuku';

    return GestureDetector(
      child: Hero(
        tag: color,
        child: Container(
          height: height / 6,
          width: width,
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: HexColor(color),
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: HexColor(color),
                spreadRadius: 10.0,
                blurRadius: 30.0,
                offset: const Offset(10, 10),
              ),
            ],
          ),
          child: Center(
            child: Text(
              name,
              style: GoogleFonts.getFont(
                _style,
                fontSize: 50
              ),
            )
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details(color, name);
            },
          ),
        );
      },
    );
  }
}
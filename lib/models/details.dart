import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hexcolor.dart';

class Details extends StatelessWidget {
  String color;
  String name;

  Details(this.color, this.name);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      body: ClipPath(
        child: Container(
          color: HexColor(color),
          child: Column(
            children: <Widget>[
              Hero(
                tag: color,
                child: Padding(
                  padding: EdgeInsets.only(top: _size.height / 5),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: name,
                            style: GoogleFonts.getFont(
                              'Yuji Syuku',
                              fontSize: 50
                            )
                          ),
                          TextSpan(
                            text: ' (カラーコード: #$color)',
                            style: const TextStyle(
                              fontSize: 20,
                            )
                          )
                        ]
                      ),
                    ),
                  )
                )
              ),
            ],
          ),
        ),
        clipper: CustomClipPath(),
      )
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius=10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 5 * 2);
    path.quadraticBezierTo(
      size.width / 3, size.height / 2,
      size.width, size.height / 3
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

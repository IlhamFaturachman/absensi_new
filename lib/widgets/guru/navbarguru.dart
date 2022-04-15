import 'package:absen_new/constants/color.dart';
import 'package:absen_new/pages/guru/home.dart';
import 'package:flutter/material.dart';

class NavbarGuru extends StatefulWidget {
  const NavbarGuru({Key? key}) : super(key: key);

  @override
  State<NavbarGuru> createState() => _NavbarGuruState();
}

class _NavbarGuruState extends State<NavbarGuru> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 70,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 70),
                    foregroundPainter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.1,
                    child: FloatingActionButton(
                        backgroundColor: secondaryColour,
                        child: Icon(
                          Icons.add,
                          size: 50,
                        ),
                        elevation: 0.1,
                        onPressed: () {}),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (c) => HomePageGuru(),
                                    ),
                                  );
                              },
                            ),
                            Text(
                              "Profile",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Container(
                          width: size.width * 0.20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.history,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onPressed: () {
                                  //
                                }),
                            Text(
                              "History",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = mainColour
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 10);
    path.arcToPoint(Offset(size.width * 0.60, 0),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.60, 10);
    path.quadraticBezierTo(size.width * 0.70, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

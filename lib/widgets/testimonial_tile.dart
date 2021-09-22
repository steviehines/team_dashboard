import 'package:flutter/material.dart';

class TestimonialTile extends StatelessWidget {
  const TestimonialTile({
    Key? key,
    required this.image,
    required this.top,
    required this.left,
    required this.leftAlign,
  }) : super(key: key);

  final String image;
  final double top;
  final double left;
  final bool leftAlign;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(microseconds: 500),
      left: left,
      top: top,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: ExactAssetImage(
              image,
            ),
          ),
          Positioned(
            left: -80,
            child: Container(
              height: 20,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.amber[400],
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 15,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: Colors.amber,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

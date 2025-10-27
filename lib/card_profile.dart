import 'package:flutter/material.dart';

class CardProfile extends StatefulWidget {
  const CardProfile({super.key});

  @override
  State<CardProfile> createState() => _CardProfileState();
}

class _CardProfileState extends State<CardProfile> {
  double _width = 290;

  double _height = 160;
  bool expandCard = false;
  Color _color = Colors.white;
  final BoxShadow _shadow = BoxShadow(
    color: Colors.black26,
    offset: Offset(0, 4), // 0px 4px
    blurRadius: 8,
    spreadRadius: 0, // 0px
  );

  void _handleTap() {
    setState(() {
      expandCard = !expandCard;
      _height = expandCard ? 200 : 160;
      _width = expandCard ? 305 : 290;

      _color = expandCard ? Colors.grey[300]! : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: _width,
        height: _height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(9),
          boxShadow: expandCard ? [_shadow] : null,
        ),
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/photo.jpg',
                  width: 80,
                  height: 80,
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Emma',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      ' développeur mobile ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (expandCard)
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          Text(
                            'Mannouba, Tunis',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Text(
                              ' Hobbies : camping ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

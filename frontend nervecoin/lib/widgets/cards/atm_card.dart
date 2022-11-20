import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../shared/colors.dart';

class ATMCard extends StatelessWidget {
  const ATMCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 150,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: orangeA,
        border: Border.all(
          width: 1,
          color: orangeA,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                padding: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: red,
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'Limited use card',
                      style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  '₦ 0.00',
                  style: TextStyle(color: white),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.akronim(
                      textStyle: const TextStyle(
                          color: white, letterSpacing: .5, fontSize: 24),
                    ),
                    children: const [
                      TextSpan(text: 'ASO ORJI \n'),
                      TextSpan(
                        text: '4230 4729 8752 7235',
                        style: TextStyle(fontSize: 28, letterSpacing: 8),
                      ),
                    ],
                  ),
                  textScaleFactor: 0.5,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: const [
                      Text(
                        'VALID\nTILL',
                        style: TextStyle(fontSize: 8, color: white),
                      ),
                      Text(
                        '11/25',
                        style: TextStyle(fontSize: 14, color: white),
                      )
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  'VISA',
                  style: TextStyle(
                      fontSize: 24, color: white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

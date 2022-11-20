import 'package:flutter/material.dart';

import '../../shared/colors.dart';

class AcctNumber extends StatelessWidget {
  const AcctNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
        color: yellow.withOpacity(0.5),
      ),
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                style: TextStyle(fontSize: 20, color: black),
                children: [
                  TextSpan(text: 'Barter Account Number: ####### \n'),
                  TextSpan(
                    text: 'Bank Name: ######',
                  ),
                ],
              ),
              textScaleFactor: 0.5,
            ),
            const Icon(
              Icons.share,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}

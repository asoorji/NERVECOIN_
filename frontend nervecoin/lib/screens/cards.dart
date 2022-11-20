import 'package:flutter/material.dart';
import 'package:nervecoin/shared/spacer.dart';

import '../shared/colors.dart';
import '../widgets/cards/atm_card.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey[300],
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: grey.shade200,
                    ),
                    color: grey.shade200,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    label: const Text('New Card'),
                    icon: const Icon(
                      Icons.add,
                      color: black,
                      size: 15,
                    ),
                  ),
                ),
              ],
            ),
            spacer,
            const ATMCard()
          ],
        ),
      ),
    );
  }
}

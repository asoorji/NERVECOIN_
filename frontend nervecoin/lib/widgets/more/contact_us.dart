import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nervecoin/shared/spacer.dart';

import '../../shared/colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.mail_outline,
              color: black,
            ),
            label: const Text(
              'hi@nervecoin.com',
              style: TextStyle(
                color: black,
              ),
            )),
        spacerMic,
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.twitter,
              color: blueA,
            ),
            label: const Text(
              '@nvcSupport',
              style: TextStyle(
                color: black,
              ),
            )),
        spacerMic,
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: black,
            ),
            label: const Text(
              '0812 997 6178',
              style: TextStyle(
                color: black,
              ),
            )),
      ],
    );
  }
}

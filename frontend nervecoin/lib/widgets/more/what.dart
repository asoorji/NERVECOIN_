import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../shared/colors.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => const Ade(),
        //   ),
        // );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton.icon(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) =>
                //         const Ade(),
                //   ),
                // );
              },
              icon: const Icon(
                FontAwesomeIcons.whatsapp,
                color: Color.fromARGB(255, 97, 161, 99),
              ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Send money to WhatsApp \n',
                        style: TextStyle(color: black)),
                    TextSpan(
                        text: 'Send money to your friends on WhatsApp.',
                        style: TextStyle(fontSize: 20, color: Colors.black45))
                  ],
                ),
                textScaleFactor: 0.5,
              )),
          const Icon(
            Icons.keyboard_arrow_right,
          )
        ],
      ),
    );
  }
}

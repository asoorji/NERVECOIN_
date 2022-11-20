import 'package:flutter/material.dart';
import '../../shared/colors.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({Key? key}) : super(key: key);

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
                Icons.message,
                color: greenA,
              ),
              // icon: const Image(
              //   image: AssetImage('assets/logo.png'),
              //   width: 20,
              // ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Live Chat \n', style: TextStyle(color: blueA)),
                    TextSpan(
                        text: 'Chat with us about your problem.',
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

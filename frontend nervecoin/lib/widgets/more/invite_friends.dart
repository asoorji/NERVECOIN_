import 'package:flutter/material.dart';
import '../../shared/colors.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({Key? key}) : super(key: key);

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
                Icons.wallet_giftcard_outlined,
                color: greenA,
              ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Invite Friends \n',
                        style: TextStyle(color: black)
                        ),
                    TextSpan(
                        text:
                            'Get paid for every friend that signs up and \nuses Barter',
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

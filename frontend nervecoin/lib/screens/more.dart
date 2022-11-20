import 'package:flutter/material.dart';
import 'package:nervecoin/shared/spacer.dart';
import 'package:nervecoin/widgets/more/invite_friends.dart';
import 'package:nervecoin/widgets/more/live_chat.dart';
import 'package:nervecoin/widgets/more/what.dart';
import '../shared/colors.dart';
import '../widgets/more/acct_number.dart';
import '../widgets/more/contact_us.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey[300],
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              spacer,
              Text(
                'More things you can do',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              spacer,
              Text(
                'Receive Money',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              spacer,
              AcctNumber(),
              spacer,
              InviteFriends(),
              spacer,
              Text(
                'Send Money',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              spacerMin,
              WhatsApp(),
              spacer,
              Text(
                'FAQs',
                style: TextStyle(fontSize: 15),
              ),
              spacerMin,
              LiveChat(),
              spacer,
              Text(
                'Contact us',
                style: TextStyle(fontSize: 15),
              ),
              spacerMin,
              ContactUs()
            ],
          ),
        ));
  }
}

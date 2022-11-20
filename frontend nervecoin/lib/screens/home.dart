import 'package:flutter/material.dart';
import 'package:nervecoin/shared/colors.dart';
import '../l10n/language_selector.dart';
import '../shared/spacer.dart';
import '../widgets/home/add_money.dart';
import '../widgets/home/home_cards.dart';
import '../widgets/home/verify.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey[300],
        appBar: AppBar(
            leading: const LanguageSelector(),
            backgroundColor: transparent,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            actions: [
              GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => (),
                  //     ),
                  //   );
                  // },
                  child: const Icon(
                Icons.settings,
                color: grey,
              )),
              Center(
                  child: Text(
                '    |    ',
                style: TextStyle(color: grey.shade300, fontSize: 15),
              )),
              GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => (),
                  //     ),
                  //   );
                  // },
                  child: const Icon(
                Icons.notifications,
                color: grey,
              )),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              spacerMin,
              AddMoney(),
              spacer,
              Verify(),
              spacer,
              HomeCard()
            ],
          ),
        ));
  }
}

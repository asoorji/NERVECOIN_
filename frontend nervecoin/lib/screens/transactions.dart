import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/spacer.dart';
import '../widgets/home/add_money.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey[300],
        appBar: AppBar(
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
                Icons.search,
                color: grey,
              )),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              spacerMin,
              AddMoney(),
              spacer,
              spacer,
              Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Image(
                  image: AssetImage('assets/barter.png'),
                ),
              ),
              spacer,
              spacer,
              Text(
                'You have no transactions',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              spacerMin,
              Text(
                'You haven\'t made any transactions yet.\n When you do, they will appear here',
                // style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ));
  }
}

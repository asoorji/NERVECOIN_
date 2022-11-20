import 'package:flutter/material.dart';
import 'package:nervecoin/screens/home.dart';
import 'package:nervecoin/screens/transactions.dart';
import '../screens/cards.dart';
import '../screens/more.dart';
import '../screens/tracker.dart';
import '../shared/colors.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  final _myHome = const Home();
  final _myCards = const Cards();
  final _myTransactions = const Transactions();
  final _myTracker = Tracker();
  final _myMore = const More();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey[300],
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: grey[300],
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Cards'),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_large_outlined), label: 'Transactions'),
          BottomNavigationBarItem(
              icon: Icon(Icons.donut_large_outlined), label: 'Crytos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.more_outlined), label: 'More'),
        ],
        onTap: (int index) {
          onTapHandler(index);
        },
      ),
    );
  }

  getBody() {
    if (selectedIndex == 0) {
      // return _myMore;
      return _myHome;
    } else if (selectedIndex == 1) {
      return _myCards;
    } else if (selectedIndex == 2) {
      return _myTransactions;
    } else if (selectedIndex == 3) {
      return _myTracker;
    } else {
      return _myMore;
      // return _myHome;
    }
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}

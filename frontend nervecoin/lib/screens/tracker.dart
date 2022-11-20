import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:nervecoin/shared/colors.dart';

import '../model/coin_model.dart';
import '../widgets/tracker/coinCard.dart';

class Tracker extends StatefulWidget {
  @override
  _TrackerState createState() => _TrackerState();
}

class _TrackerState extends State<Tracker> {
  Future<List<Coin>> fetchCoin() async {
    coinList = [];
    final response = await http.get(Uri.parse(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false'));

    if (response.statusCode == 200) {
      List<dynamic> values = [];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            coinList.add(Coin.fromJson(map));
          }
        }
        setState(() {
          coinList;
        });
      }
      return coinList;
    } else {
      throw Exception('Failed to load coins');
    }
  }

  @override
  void initState() {
    fetchCoin();
    Timer.periodic(const Duration(seconds: 10), (timer) => fetchCoin());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    return Scaffold(
        backgroundColor: grey[300],
        appBar: AppBar(
          backgroundColor: transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: SizedBox(
            // width: MediaQuery.of(context).size.width * 0.5,
            height: 40,
            child: TextField(
                style: const TextStyle(color: black),
                onChanged: searchPost,
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: yellow)),
                )),
          ),
        ),
        body: NewWidget());
  }

  void searchPost(String query) {
    final suggestions = coinList.where((coin) {
      final itemMsg = coin.name.toLowerCase();
      final input = query.toLowerCase();

      return itemMsg.contains(input);
    }).toList();

    setState(() {
      coinList = suggestions;
    });
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: coinList.length,
      itemBuilder: (context, index) {
        return CoinCard(
          name: coinList[index].name,
          symbol: coinList[index].symbol,
          imageUrl: coinList[index].imageUrl,
          price: coinList[index].price.toDouble(),
          change: coinList[index].change.toDouble(),
          changePercentage: coinList[index].changePercentage.toDouble(),
        );
      },
    );
  }
}

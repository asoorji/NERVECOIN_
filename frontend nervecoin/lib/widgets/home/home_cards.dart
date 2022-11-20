import 'package:flutter/material.dart';
import 'package:nervecoin/model/contents.dart';
import 'package:nervecoin/shared/colors.dart';

import '../../services/remote_service.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  List<Content>? contents;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getContent();
  }

  getContent() async {
    contents = await ContentService().getContents();
    if (contents != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            Card(
              color: pink,
              child: SizedBox(
                height: 80,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.payment),
                      Text(contents![0].body ?? ''),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: butter,
              child: SizedBox(
                height: 80,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.payment),
                      Text(contents![1].body ?? ''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Wrap(
          children: [
            Card(
              color: green,
              child: SizedBox(
                height: 80,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.today),
                      Text(contents![3].body ?? ''),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: blue,
              child: SizedBox(
                height: 80,
                width: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.today),
                      Text(contents![3].body ?? ''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

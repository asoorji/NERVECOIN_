import 'package:flutter/material.dart';
import '../../shared/colors.dart';

class AddMoney extends StatelessWidget {
  const AddMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: orange,
        border: Border.all(
          width: 1,
          color: orange,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 15),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(text: '₦ 0.'),
                      TextSpan(
                        text: '00 ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  textScaleFactor: 0.5,
                ),
                label: const Icon(
                  Icons.visibility_off,
                  color: black,
                  size: 15,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 25,
                ),
                decoration: BoxDecoration(
                  color: yellow,
                  border: Border.all(
                    width: 1,
                    color: yellow,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextButton.icon(
                  onPressed: () {},
                  icon: const Text(
                    'NGN',
                    style: TextStyle(
                        color: black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  ),
                  label: const Icon(
                    Icons.keyboard_arrow_down,
                    color: black,
                    size: 10,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: yellow,
                    border: Border.all(
                      width: 1,
                      color: yellow,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Text(
                        'Add money',
                        style: TextStyle(
                            color: black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                      label: const Text('')),
                )),
          ),
        ]),
      ),
    );
  }
}

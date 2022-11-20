import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nervecoin/shared/colors.dart';

class Verify extends StatelessWidget {
  const Verify({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: grey.shade300,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
              height: 3,
              width: 327,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: greenA,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                Column(children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: black,
                        fontSize: 24,
                      ),
                      children: [
                        TextSpan(
                          text: '${AppLocalizations.of(context)!.im}\n\n',
                          //'Verify your identity \n\n'
                        ),
                        TextSpan(
                          text: AppLocalizations.of(context)!.project,
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    textScaleFactor: 0.5,
                  ),
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}

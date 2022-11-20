import 'package:flutter/material.dart';
import 'package:nervecoin/chart.dart';
import 'l10n/l10n.dart';
import 'l10n/locale_provider.dart';
import 'screens/tracker.dart';
import 'shared/colors.dart';
import 'widgets/navigation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:nervecoin/demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LocaleProvider>(create: (_) => LocaleProvider()),
      ],
      child: Consumer<LocaleProvider>(builder: (context, locale, child) {
        return MaterialApp(
          title: 'NERVE COIN',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: grey,
          ),
          locale: locale.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: const Box(),
        );
      }),
    );
  }
}

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: grey[300],
      child: Center(
        child: Container(
          height: 700,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            border: Border.all(
              // color: Colors.white,
              width: 10,
            ),
          ),
          child: const Navigation(),
          // child: Demo(),
        ),
      ),
    );
  }
}

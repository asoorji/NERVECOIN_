import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n.dart';
import 'locale_provider.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocaleProvider>(context, listen: false);
    return DropdownButton(
      icon: const Icon(
        Icons.language,
      ),
      onChanged: (_) {},
      items: L10n.all
          .map(
            (locale) => DropdownMenuItem(
              onTap: () {
                provider.changeLocale(Locale(locale.languageCode));
              },
              value: locale.languageCode,
              child: Text(
                locale.languageCode.toUpperCase(),
              ),
            ),
          )
          .toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../l10n/l10n.dart';
import '../provider/locale_provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),
        actions: [
          IconButton(onPressed: (){

             final provider = Provider.of<LocaleProvider>(
                context,
                listen: false
              );

              provider.setLocale(L10n.all[(provider.getLocale()==L10n.all[0]) ? 1 : 0]);

          }, icon: const Icon(Icons.language))
        ],
      ),
      body: Container(
        child: Center(
          child: Text(AppLocalizations.of(context)!.language),
        ),
      ),
    );
  }
}
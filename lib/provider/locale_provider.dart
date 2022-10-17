import 'package:flutter/material.dart';
import 'package:localizationdemo/l10n/l10n.dart';

class LocaleProvider extends ChangeNotifier
{
  Locale? _locale;

  Locale? get locale => _locale;


  void setLocale(Locale locale)
  {
    if(!L10n.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }


Locale getLocale()
{
  _locale ??= L10n.all[0];
  return _locale!;
}
  void clearLocale()
  {
    _locale=null;
    notifyListeners();
  }
}
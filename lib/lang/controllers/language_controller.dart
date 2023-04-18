
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_rodrigobak/const.dart';
import 'package:web_rodrigobak/lang/model/language_model.dart';

class LocalizationController extends GetxController implements GetxService {
  final SharedPreferences sharedPreferences;

  LocalizationController({required this.sharedPreferences}) {
    loadCurrentLanguage();
  }

  Locale _locale = Locale(AppConstants.languages[1].languageCode,
      AppConstants.languages[1].countryCode);

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  List<LanguageModel> _languages = [];

  Locale get locale => _locale;

  List<LanguageModel> get languages => _languages;

  void loadCurrentLanguage() async {
    _locale = Locale(sharedPreferences.getString(AppConstants.LANGUAGE_CODE) ??
        AppConstants.languages[0].countryCode);

    for (int index = 0; index < AppConstants.languages.length; index++) {
      if (AppConstants.languages[index].languageCode == _locale.languageCode) {
        _selectedIndex = index;
        break;
      }
    }
    _languages = [];
    _languages.addAll(AppConstants.languages);
    update();
  }

  void setLanguague(Locale locale) {
    Get.updateLocale(locale);
    _locale = locale;
    saveLanguague(_locale);
    update();
  }

  void setSelectetIndex(int index){
    _selectedIndex = index;
    update();
  }

  void saveLanguague(Locale locale){
    sharedPreferences.setString(AppConstants.LANGUAGE_CODE, locale.languageCode);
    sharedPreferences.setString(AppConstants.COUNTRY_CODE, locale.countryCode!);
  }
}

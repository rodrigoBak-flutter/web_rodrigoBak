import 'package:web_rodrigobak/lang/model/language_model.dart';

class AppConstants {
  /*
    Localization data
  */

  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';

  static List<LanguageModel> languages = [
    LanguageModel(
        languageCode: 'es', countryCode: 'ES', languageName: 'Español'),
    LanguageModel(
        languageCode: 'en', countryCode: 'US', languageName: 'English'),
    
  ];
}

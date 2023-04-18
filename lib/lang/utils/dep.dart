

import 'dart:convert';


import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_rodrigobak/const.dart';
import 'package:web_rodrigobak/lang/controllers/language_controller.dart';
import 'package:web_rodrigobak/lang/model/language_model.dart';


Future<Map<String,Map< String,String>>> init() async{
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(()=> sharedPreferences);
  Get.lazyPut(() => LocalizationController(sharedPreferences: Get.find()));

  Map<String,Map< String,String>> _languages = Map();
  for(LanguageModel languageModel in AppConstants.languages){
    String jsonStringValues = await rootBundle.loadString('assets/language/${languageModel.languageCode}.json');
    Map<String, dynamic> _mappedJson = json.decode(jsonStringValues);
    Map<String, String> _json = Map();
    _mappedJson.forEach((key, value) {

        _json[key] = value.toString();
    });
    _languages['${languageModel.languageCode}_${languageModel.countryCode}' ] = _json;
  }
  return _languages;
}
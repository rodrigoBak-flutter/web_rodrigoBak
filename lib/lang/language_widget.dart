import 'package:flutter/material.dart';
import 'package:web_rodrigobak/const.dart';
import 'package:web_rodrigobak/lang/controllers/language_controller.dart';
import 'package:web_rodrigobak/lang/model/language_model.dart';

class LanguageWidget extends StatelessWidget {
  final LanguageModel languageModel;
  final LocalizationController localizationController;
  final int index;

  const LanguageWidget(
      {super.key,
      required this.languageModel,
      required this.localizationController,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        localizationController.setLanguague(Locale(
            AppConstants.languages[index].languageCode,
            AppConstants.languages[index].countryCode));
        localizationController.setSelectetIndex(index);
      },
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 5,
                spreadRadius: 1,
              ),
            ]),
        child: Stack(children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  languageModel.languageName,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          localizationController.selectedIndex == index
              ? const Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 20,
                  ),
                )
              : const SizedBox()
        ]),
      ),
    );
  }
}

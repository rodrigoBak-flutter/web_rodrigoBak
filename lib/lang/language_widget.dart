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
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                  size: 20,
                )
              : const SizedBox()
        ]),
      ),
    );
  }
}

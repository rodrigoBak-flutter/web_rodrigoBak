import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_rodrigobak/lang/controllers/language_controller.dart';
import 'package:web_rodrigobak/lang/language_widget.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
          GetBuilder<LocalizationController>(builder: (localizationController) {
        return Column(
          children: [
            Text('home'.tr),
            GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 4),
                    itemCount: 2,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => LanguageWidget(
                      languageModel: localizationController.languages[index],
                      localizationController: localizationController,
                      index: index,
                    ),
                  )
          ],
        );
      }),
    );
  }
}

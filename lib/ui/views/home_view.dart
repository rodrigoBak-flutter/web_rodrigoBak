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
          ],
        );
      }),
    );
  }
}

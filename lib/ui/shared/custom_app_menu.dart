import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_rodrigobak/lang/controllers/language_controller.dart';
import 'package:web_rodrigobak/locator.dart';
import 'package:web_rodrigobak/services/navigation_service.dart';
import 'package:web_rodrigobak/ui/shared/customFlatButton_app.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomFlatButton(
              onPressed: () => locator<NavigationService>().navigateTo('/home'),
              text: 'home'.tr,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/sobreMi'),
              text: 'about'.tr,
              color: Colors.black,
            ),
            CustomFlatButton(
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/language'),
              text: 'selection'.tr,
              color: Colors.black,
            ),
          ],
        ),
      );
    });
  }
}




/*

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Condicion que me permite pasar de WEB a MOBILE, determinadno el ancho
    return LayoutBuilder(
      builder: (_, constraints) =>
          (constraints.maxWidth > 420) ? _TableDesktopMenu() : _MobileMenu(),
    );
  }
}


//ORDENADOR
class _TableDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LocalizationController>(
        builder: (localizationController) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomFlatButton(
              onPressed: () => locator<NavigationService>().navigateTo('/home'),
              text: 'home'.tr,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomFlatButton(
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/sobreMi'),
              text: 'about'.tr,
              color: Colors.black,
            ),
            
          ],
        ),
      );
    });
  }
}


//MOVIL
class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            onPressed: () => locator<NavigationService>().navigateTo('/home'),
            text: 'Inicio',
            color: Colors.black,
          ),
          const SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            onPressed: () =>
                locator<NavigationService>().navigateTo('/sobreMi'),
            text: 'Sobre mi',
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}



*/
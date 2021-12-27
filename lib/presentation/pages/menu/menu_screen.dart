import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/main-button.dart';
import 'package:android_test_task/presentation/resources/routes-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key key}) : super(key: key);

  @override
  _MenuViewState createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s28),
            margin: EdgeInsets.symmetric(vertical: AppSize.s12),
            height: AppMargin.m56,
            width: double.infinity,
            child: MainButton(
              borderColor: ColorManager.subtleGrey,
              color: ColorManager.subtleGrey,
              textColor: ColorManager.white,
              onPressed: (
                  AnimationController controller) async {
                Navigator.pushNamed(
                    context, Routes.createPinCodeRoute);
              },
              text: 'Create PIN Code',
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s28,),
            margin: EdgeInsets.symmetric(vertical: AppSize.s12),
            height: AppMargin.m56,
            width: double.infinity,
            child: MainButton(
              borderColor: ColorManager.subtleGrey,
              color: ColorManager.subtleGrey,
              textColor: ColorManager.white,
              onPressed: (
                  AnimationController controller) async {
                Navigator.pushNamed(
                    context, Routes.authenticationByPinRoute);
              },
              text: 'Authentication by PIN Code',
            ),
          ),
        ],
      ),
    );
  }
}

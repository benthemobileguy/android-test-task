import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 35,),
      child: Row(
        children: [
          new IconButton(
            color: ColorManager.black,
            icon: Icon(
              Icons.chevron_left,
              size: AppSize.s40,
              color: ColorManager.black,),
            onPressed: () {
            Navigator.pop(context);
            },),
          Spacer(),
          Text(
            AppStrings.setUpPin,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: AppSize.s14,
              fontWeight: FontWeight.w500,
              fontFamily: 'Euclid',
              color: ColorManager.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 50),
            child: Text(
              AppStrings.pinInstructions,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: AppSize.s14,
                height: 1.6,
                fontWeight: FontWeight.w400,
                fontFamily: 'Euclid',
                color: ColorManager.black.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
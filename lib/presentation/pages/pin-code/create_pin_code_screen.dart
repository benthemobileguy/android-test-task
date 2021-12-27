import 'package:android_test_task/presentation/pages/pin-code/components/header.dart';
import 'package:android_test_task/presentation/resources/color-manager.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:android_test_task/presentation/resources/values-manager.dart';
import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CreatePinCodeView extends StatefulWidget {
  const CreatePinCodeView({Key key}) : super(key: key);

  @override
  _CreatePinCodeViewState createState() => _CreatePinCodeViewState();
}

class _CreatePinCodeViewState extends State<CreatePinCodeView> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Header(),
          SizedBox(
            height: 30,
          ),

          Text(
            AppStrings.createPin,
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: AppSize.s16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Euclid',
              color: ColorManager.black.withOpacity(0.5),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          PinCodeTextField(
            showCursor: false,
            length: 4,
            autoDismissKeyboard: true,
            enabled: false,
            obscuringCharacter: ".",
            obscureText: true,
            mainAxisAlignment: MainAxisAlignment.center,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              borderWidth: 1,
              shape: PinCodeFieldShape.circle,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 15,
              fieldOuterPadding: EdgeInsets.all(10),
              fieldWidth: 15,
              inactiveColor: ColorManager.grey,
              activeColor: ColorManager.grey,
              inactiveFillColor: ColorManager.white,
              selectedColor: ColorManager.grey,
              selectedFillColor: ColorManager.white,
              activeFillColor: Colors.deepPurple,
            ),
            animationDuration: Duration(milliseconds: 300),
            enableActiveFill: true,
            controller: textEditingController,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {
                // currentText = value;
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            },
            appContext: context,
          ),
          Expanded(
            child: NumericKeyboard(
                onKeyboardTap: _onKeyboardTap,
                textColor: ColorManager.grey2,
                rightButtonFn: () {
                  setState(() {
                   // text = text.substring(0, text.length - 1);
                  });
                },
                rightIcon: Icon(Icons.backspace, color: ColorManager.grey2,),
                mainAxisAlignment: MainAxisAlignment.spaceBetween
            ),
          )
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
     // text = text + value;
    });
  }
}



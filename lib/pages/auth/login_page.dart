import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/image_utils.dart';
import 'package:flutter_application_1/utils/spacing_utils.dart';
import 'package:flutter_application_1/utils/string_utils.dart';
import 'package:flutter_application_1/utils/strings_style.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
                SpacingUtils.space15,
                SpacingUtils.space100,
                SpacingUtils.space15,
                SpacingUtils.space15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(StringUtils.LOGIN_HEADING, style: authHeadingStyle),
                SizedBox(height: SpacingUtils.space5),
                Text(StringUtils.LOGIN_SUBHEADING, style: authSubHeadingStyle),
                SizedBox(height: SpacingUtils.space15),
                _loginIdTextFieldView(),
              ],
            ),
          ),
          Container(
              height: Get.height / 3,
              width: Get.width / 1,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage(ImageUtils.authBg))))
        ],
      )),
    );
  }

  _loginIdTextFieldView() {
    return SizedBox(
      width: Get.width / 1,
      height: SpacingUtils.buttonHeight,
      child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: AppColors.whiteBoxBgColor,
          child: TextField(
            keyboardType: TextInputType.text,
            textAlignVertical: TextAlignVertical.top,
            textAlign: TextAlign.left,
            controller: idController,
            style: inputTextStyle,
            decoration: const InputDecoration(
                hintStyle: hintTextStyle,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 15, right: 15),
                hintText: StringUtils.ID_HINT),
          )),
    );
  }
}

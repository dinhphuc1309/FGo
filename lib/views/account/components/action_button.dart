import 'package:fgo/constants.dart';
import 'package:fgo/controllers/custommer_controller.dart';
import 'package:fgo/controllers/home_controller.dart';
import 'package:fgo/routes/routes.dart';
import 'package:fgo/widgets/button_full_width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {Key? key,
      required CustommerController custommerController,
      required HomeController homeController})
      : _custommerController = custommerController,
        _homeController = homeController,
        super(key: key);

  final CustommerController _custommerController;
  final HomeController _homeController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonFullWidth(
          text: 'Đổi mật khẩu',
          color: blueColor,
          press: () {
            Get.toNamed(RoutesClass.changePassword);
          },
        ),
        const SizedBox(height: defaultPadding),
        ButtonFullWidth(
          text: 'Đăng xuất',
          color: Colors.red.shade300,
          press: () {
            _homeController.logout();
          },
        ),
      ],
    );
  }
}

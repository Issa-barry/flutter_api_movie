import 'package:flutter/material.dart';

class AppBareWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBareWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Studio Issa"),
      backgroundColor: Colors.lightBlue,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}

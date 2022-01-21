import 'package:api_tp/widgets/appBare_widget.dart';
import 'package:api_tp/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class HomeSreen extends StatelessWidget {
  const HomeSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBareWidget(),
      body: HomeWidget(),
    );
  }
}

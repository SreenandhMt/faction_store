import 'package:faction_store/core/colors.dart';
import 'package:flutter/material.dart';

class AppLoadingWidget extends StatefulWidget {
  const AppLoadingWidget({super.key});

  @override
  State<AppLoadingWidget> createState() => App_LoadingStateWidget();
}

class App_LoadingStateWidget extends State<AppLoadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: AppColor.appColor));
  }
}
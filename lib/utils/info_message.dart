import 'package:faction_store/core/colors.dart';
import 'package:faction_store/utils/buttons.dart';
import 'package:flutter/material.dart';

import 'package:faction_store/core/fonts.dart';
import 'package:faction_store/core/size.dart';

class AppInfoWidget extends StatefulWidget {
  const AppInfoWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  State<AppInfoWidget> createState() => _AppInfoWidgetState();
}

class _AppInfoWidgetState extends State<AppInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(radius:  35,backgroundColor: AppColor.secondColor,child: Icon(Icons.info_outline,size: 35)),
            height20,
            Text(widget.text,style: titleTextFont()),
            height5,
            SmallButton(text: "Go Back", onPressed: (){})
          ],),
        ],
      ),
    );
  }
}
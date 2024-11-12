import 'package:faction_store/core/assets.dart';
import 'package:faction_store/core/fonts.dart';
import 'package:faction_store/core/size.dart';
import 'package:faction_store/utils/buttons.dart';
import 'package:flutter/material.dart';

class FailedToLoadWidget extends StatefulWidget {
  const FailedToLoadWidget({super.key});

  @override
  State<FailedToLoadWidget> createState() => _FailedToLoadWidgetState();
}

class _FailedToLoadWidgetState extends State<FailedToLoadWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppAssets.failedToLoadImage,height: 200,width: 200),
              height15,
              Text("Something went weong",style: titleTextFont(),),
              height5,
              Text("Try refreshing the page",style: subTitleTextFont()),
              height10,
              SmallButton(text: "Refresh",onPressed: (){})
            ],
          ),
        ],
      ),
    );
  }
}
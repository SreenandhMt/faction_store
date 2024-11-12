import 'package:faction_store/core/colors.dart';
import 'package:faction_store/core/fonts.dart';
import 'package:flutter/material.dart';

import '../../../core/size.dart';

class BannerManagementPage extends StatefulWidget {
  const BannerManagementPage({super.key});

  @override
  State<BannerManagementPage> createState() => _BannerManagementPageState();
}

class _BannerManagementPageState extends State<BannerManagementPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Banners",style: titleTextFont(size: 20)),
        ),
        Container(width: double.infinity,margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.backgroundSecondColor(context)),padding: EdgeInsets.all(15),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.add),width5, Text("Add Banner")],),),
        Column(
          children: List.generate(5, (index) => Container(margin: EdgeInsets.all(10),width: double.infinity,height: 250,decoration: BoxDecoration(color: AppColor.backgroundSecondColor(context),borderRadius: BorderRadius.circular(5)),),),
        )
      ],
    );
  }
}
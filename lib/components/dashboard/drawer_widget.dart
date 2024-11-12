import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/size.dart';
import '../../utils/buttons.dart';
import 'drawer_button.dart';

int currentIdx = 0;

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
    required this.sell,
  });
  final StatefulNavigationShell sell;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  List<String> titles = [
    "Overview",
    "Category",
    "Order Management",
    "Transactions",
    "Add Product",
    "Role Management",
    "Banner Management",
    "Notification"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 310,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(9),color: AppColor.backgroundSecondColor(context)),
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              height30,
              const Text("Dashboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              height30,
              Column(
                children: List.generate(4, (index) => AppDrawerButton(title: titles[index],onTap: () =>widget.sell.goBranch(index),selected: widget.sell.currentIndex==index),),
              ),
              
              const Spacer(flex: 1),
              const Text("Settings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              height20,
              Column(
                children: List.generate(titles.length-4, (index) => AppDrawerButton(title: titles[index+4],onTap: () =>widget.sell.goBranch(index+4),selected: widget.sell.currentIndex==index+4),),
              ),
              const Spacer(flex: 5),
              SmallButton(text: "Logout", onPressed: () {},),
              const Spacer(),
            ],
          ),
        ),
      );
  }
}
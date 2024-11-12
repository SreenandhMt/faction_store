import 'package:flutter/material.dart';

import '../../core/colors.dart';

class AppDrawerButton extends StatefulWidget {
  const AppDrawerButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.selected,
  });
  final String title;
  final void Function() onTap;
  final bool selected;

  @override
  State<AppDrawerButton> createState() => AppDrawerButtonState();
}

class AppDrawerButtonState extends State<AppDrawerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8,left: 5,right: 5),
      child: InkWell(
                onTap: widget.onTap,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(color: widget.selected?AppColor.appColor:AppColor.secondaryTheme(context),borderRadius: BorderRadius.circular(10)),
                  child: Text(widget.title,style: widget.selected?const TextStyle(color: Colors.black):null,),
                ),
              ),
    );
  }
}
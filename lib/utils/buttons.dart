import 'package:faction_store/core/colors.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  const SmallButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  State<SmallButton> createState() => SmallButtonState();
}

class SmallButtonState extends State<SmallButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: widget.onPressed, child: Text(widget.text,style: TextStyle(),),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColor.secondaryTheme(context)),side: WidgetStatePropertyAll(BorderSide(width: 1,color: AppColor.secondColor))),);
  }
}
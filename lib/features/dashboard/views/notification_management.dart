import 'package:faction_store/core/colors.dart';
import 'package:faction_store/core/fonts.dart';
import 'package:faction_store/core/size.dart';
import 'package:flutter/material.dart';

class NotificationManagementPage extends StatefulWidget {
  const NotificationManagementPage({super.key});

  @override
  State<NotificationManagementPage> createState() => _NotificationManagementPageState();
}

class _NotificationManagementPageState extends State<NotificationManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Send Notification",style: titleTextFont(size: 20)),
        ),
          height10,
          const SendNotificationWidget()
        ],
      ),
    );
  }
}

class SendNotificationWidget extends StatefulWidget {
  const SendNotificationWidget({super.key});

  @override
  State<SendNotificationWidget> createState() => Send_NotificationWidgetState();
}

class Send_NotificationWidgetState extends State<SendNotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: double.infinity,height: 250,decoration: BoxDecoration(color: AppColor.backgroundSecondColor(context),borderRadius: BorderRadius.circular(10)),child: const Icon(Icons.add,size: 50,),),
          height10,
          TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: "Title")),
          height10,
          TextFormField(maxLines: 10,minLines: 3,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),hintText: "Discription")),
          height15,
          Container(padding: const EdgeInsets.all(20),width: double.infinity,decoration: BoxDecoration(color: AppColor.appColor,borderRadius: BorderRadius.circular(10)),child: Center(child: Text("Send Notification",style: titleTextFont(size: 16,color: Colors.black),)),)
      ],
    );
  }
}
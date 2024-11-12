import 'package:faction_store/core/colors.dart';
import 'package:faction_store/core/fonts.dart';
import 'package:faction_store/core/size.dart';
import 'package:faction_store/features/dashboard/views/notification_management.dart';
import 'package:flutter/material.dart';

class DashboardOrderDetailsPage extends StatefulWidget {
  const DashboardOrderDetailsPage({super.key});

  @override
  State<DashboardOrderDetailsPage> createState() => _DashboardOrderDetailsPageState();
}

class _DashboardOrderDetailsPageState extends State<DashboardOrderDetailsPage> {
  String selectedValue = "Order processing";
  List<String> status = [
    "Order placed",
    "Order processing",
    "Shipped/Dispatched",
    "Out for delivery",
    "Delivered",
    "Canceled"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,shadowColor: Colors.transparent,elevation: 0),
      body: ListView(
        children: [
          height10,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              width10,
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5HkIHr1cp_lbi0ysXWLx_bXtRaBQ0aH5ypGLfG1YSBQbskPCcXTcCuQcS0plOAsrL1IQ&usqp=CAU",
                          width: 100,
                          height: 100),
                          width10,
            LimitedBox(
              maxWidth: size.width-120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title",style: titleTextFont(size: 16),maxLines: 1,overflow: TextOverflow.ellipsis),
                  Text("Sun title with 2 line",style: subTitleTextFont(),maxLines: 2,overflow: TextOverflow.ellipsis),
                  const Text("Price: 100")
                ],
              ),
            ),
            ],
          ),
          height20,
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Customer details",style: titleTextFont()),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
            child: Text("Name: Sreenand",style: TextStyle(fontSize: 15),),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
            child: Text("Number: 7012123028",style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
            child: Text("Date: Oct-3-2023 (3 days ago)",style: subTitleTextFont(),),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
            child: Text("Email: Sreenand104@gmail.com",style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Address: ",style: titleTextFont()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              width: size.width-10,
              child: const Text("Street:	12E, 1st floor, Padmalaya toweeers, 10th street, Gandhipuram\nCity/Town:	Coimbatore\nState/Province/Region:	Tamil Nadu\nZip/Postal Code:	641012\nPhone Number:	0422 424 2300\nCountry:	India",style: TextStyle(fontSize: 15),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Settings",style: titleTextFont()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("Status:",style: subTitleTextFont()),
          ),
          height10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.backgroundSecondColor(context),border: Border.all(width: 0.5,color: AppColor.blackOrWhite(context))),
              child: DropdownButton(
                icon: const SizedBox(),
                underline: const SizedBox(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                borderRadius: BorderRadius.circular(10),
                  value: selectedValue,
                  items: status
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e,
                              style: Theme.of(context).textTheme.bodyMedium)))
                      .toList(),
                  onChanged: (s) => setState(() {
                        selectedValue = s!;
                      })),
            ),
          ),
          height10,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("Notify Customer:",style: subTitleTextFont()),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: SendNotificationWidget(),
          ),
          height10,
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';

class OrderListWidget extends StatefulWidget {
  const OrderListWidget({super.key});

  @override
  State<OrderListWidget> createState() => _OrderListWidgetState();
}

class _OrderListWidgetState extends State<OrderListWidget> {
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
    return Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              dividerTheme: const DividerThemeData(
                color: Colors.transparent,
                space: 0,
                thickness: 0,
                indent: 0,
                endIndent: 0,
              ),
            ),
            child: Container(
            margin: const EdgeInsets.only(left: 8,right: 5,top: 5),
            decoration:BoxDecoration(
              color: AppColor.backgroundSecondColor(context),
              borderRadius: BorderRadius.circular(7)
            ),
              child: DataTable(
                showCheckboxColumn: false,
                horizontalMargin: 10,
                columns: [
                  DataColumn(label: Text('Name',style: titleTextFont())),
                  DataColumn(label: Text('price',style: titleTextFont())),
                  DataColumn(label: Text('Payment',style: titleTextFont())),
                  DataColumn(label: Text('status',style: titleTextFont())),
                  if(size.width>=900)
                  DataColumn(label: Text('Date',style: titleTextFont())),
                ],
                border: null,
                showBottomBorder: false,
                dividerThickness: 0.0,
                dataRowHeight: 70,
                columnSpacing: 10,
                rows: List.generate(
                  10,
                  (index) => DataRow(onSelectChanged: (value) {
                    context.go("/dashboard/order-management/details");
                  },cells: [
                    const DataCell(SizedBox(width: 100, child: Text("Sreenand104"))),
                    const DataCell(Text("700")),
                    const DataCell(
                      Text("Prepaid"),
                    ),
                    DataCell(DropdownButton(value: selectedValue,items: status.map((e) => DropdownMenuItem(value: e, child: Text(e,style: Theme.of(context).textTheme.bodyMedium))).toList(), onChanged: (s)=>setState(() {
                      selectedValue=s!;
                    }))),
                    if(size.width>=900)
                    const DataCell(Text("Oct 13 2024")),
                  ]),
                ),
              ),
            ),
          );
  }
}
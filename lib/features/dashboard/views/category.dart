import 'package:faction_store/core/size.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class CategoryManagementPage extends StatefulWidget {
  const CategoryManagementPage({super.key});

  @override
  State<CategoryManagementPage> createState() => _CategoryManagementPageState();
}

class _CategoryManagementPageState extends State<CategoryManagementPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Categorys",style: titleTextFont(size: 20)),
        ),
        Container(width: double.infinity,margin: EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.backgroundSecondColor(context)),padding: EdgeInsets.all(15),child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.add),width5, Text("Add category")],),),
        Theme(
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
                  DataColumn(label: Text('Image',style: titleTextFont())),
                  DataColumn(label: Text('Category name',style: titleTextFont())),
                  DataColumn(label: Text('Product count',style: titleTextFont()))
                ],
                border: null,
                showBottomBorder: false,
                dividerThickness: 0.0,
                dataRowHeight: 70,
                columnSpacing: 10,
                rows: List.generate(
                  10,
                  (index) => DataRow(onSelectChanged: (value) {
                  },cells: [
                    DataCell(Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5HkIHr1cp_lbi0ysXWLx_bXtRaBQ0aH5ypGLfG1YSBQbskPCcXTcCuQcS0plOAsrL1IQ&usqp=CAU",
                        width: 60,
                        height: 50)),
                    const DataCell(Text("T-Shirt")),
                    const DataCell(
                      Text("10"),
                    ),
                  ]),
                ),
              ),
            ),
          )
      ],
    ),
    );
  }
}
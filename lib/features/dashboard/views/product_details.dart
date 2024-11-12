import 'package:faction_store/core/colors.dart';
import 'package:faction_store/core/fonts.dart';
import 'package:faction_store/core/size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          const ProductOverviewCard(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Reviews",style: titleTextFont()),
          ),
          Column(
            children: List.generate(4, (index) => const ReviewWidget(),),
          ),
          Container(width: double.infinity,padding: const EdgeInsets.all(10),margin: const EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.backgroundSecondColor(context)),child: const Center(child: Text("Show more >"),),),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("Question and answer",style: titleTextFont()),
          ),
          Column(
            children: List.generate(6, (index) => const QuestionAndAnswer()),
          ),
          Container(width: double.infinity,padding: const EdgeInsets.all(10),margin: const EdgeInsets.all(10),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColor.backgroundSecondColor(context)),child: const Center(child: Text("Show more >"),),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: size.width*0.47,margin: EdgeInsets.all(4),padding: EdgeInsets.all(15),decoration: BoxDecoration(color: Colors.deepOrange,borderRadius: BorderRadius.circular(10)),child: Text("Delete",style: titleTextFont()),),
              Container(width: size.width*0.47,margin: EdgeInsets.all(4),padding: EdgeInsets.all(15),decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(10)),child: Text("Edit",style: titleTextFont()),)
            ],
          ),
          height15,
        ],
      ),
    );
  }
}

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({super.key});

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            decoration: BoxDecoration(color: AppColor.backgroundSecondColor(context),borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star_border),
                    width5,
                    Text("| 4.0",maxLines: 1)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(radius: 15),
                      width10,
                      Text("Aju Ck",style: titleTextFont()),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8,bottom: 8),
                  child: Text("This product build quality is so good"),
                )
              ],
            ),
          );
  }
}

class QuestionAndAnswer extends StatefulWidget {
  const QuestionAndAnswer({super.key});

  @override
  State<QuestionAndAnswer> createState() => _QuestionAndAnswerState();
}

class _QuestionAndAnswerState extends State<QuestionAndAnswer> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
            decoration: BoxDecoration(color: AppColor.backgroundSecondColor(context),borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      const CircleAvatar(radius: 15),
                      width10,
                      Text("Aju Ck",style: titleTextFont()),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text("Q: This product build quality is so good"),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8,bottom: 8),
                  child: Text("A: Yes thanks"),
                )
              ],
            ),
          );
  }
}

class ProductOverviewCard extends StatefulWidget {
  const ProductOverviewCard({super.key});

  @override
  State<ProductOverviewCard> createState() => _ProductOverviewCardState();
}

class _ProductOverviewCardState extends State<ProductOverviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all(width: 1,color: AppColor.blackOrWhite(context)),borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(width: 1,color: AppColor.blackOrWhite(context)),bottom: BorderSide(width: 1,color: AppColor.blackOrWhite(context))),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10)),
                              color: AppColor.backgroundSecondColor(context),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Views",style: titleTextFont(size: 20,fontWeight: FontWeight.w300),),
                                Text("500",style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.w500),maxLines: 1,),
                                height10
                              ],
                            ),
                            )),
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1,color: AppColor.blackOrWhite(context))),
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10)),
                              color: AppColor.backgroundSecondColor(context),
                            ),child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Orders",style: titleTextFont(size: 20,fontWeight: FontWeight.w300),),
                                Text("27",style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.w500),maxLines: 1,),
                                height10
                              ],
                            ),))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10)),
                                color: AppColor.backgroundSecondColor(context),
                                border: Border(
                                    right: BorderSide(
                                        width: 1,
                                        color:
                                            AppColor.blackOrWhite(context)))),child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Reviews",style: titleTextFont(size: 20,fontWeight: FontWeight.w300),),
                                Text("10",style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.w500),maxLines: 1,),
                                height10
                              ],
                            ),)),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(10)),
                              color: AppColor.backgroundSecondColor(context),
                            ),child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Rateing",style: titleTextFont(size: 20,fontWeight: FontWeight.w300),),
                                Text("4.0",style: GoogleFonts.firaSans(fontSize: 50,fontWeight: FontWeight.w500),maxLines: 1,),
                                height10
                              ],
                            ),)),
                  ],
                )
              ],
            ),
          );
  }
}
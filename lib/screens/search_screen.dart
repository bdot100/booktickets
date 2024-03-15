import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20, context), vertical: AppLayout.getHeight(20, context)),
        children: [
          Gap(AppLayout.getHeight(40, context)),
          Text("What are\nYou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getHeight(35, context)),
          ),
          Gap(AppLayout.getHeight(20, context)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(50, context),),
                color: const Color(0xFFF4F6FD)
              ),
              child: Row(
                children: [
                  /**Airline Tickets */
                  Container(
                    width: size.width* .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7, context)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50, context))),
                      color: Colors.white
                    ),
                    child: const Center(child: Text("Airline Tickets")),
                  ),

                  /**Hotel  */
                  Container(
                    width: size.width* .44,
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7, context)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50, context))),
                      color: Colors.transparent
                    ),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
          ),
          Gap(AppLayout.getHeight(25, context)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15, context)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25, context)),
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18, context), horizontal: AppLayout.getWidth(15, context)),
            decoration: BoxDecoration(
              color: const Color(0xD91130CE),
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10, context)),
            ),
            child: 
              Center(
                child: Text(
                  "Find Tickets", 
                  style: Styles.textStyle.copyWith(color: Colors.white,),
                ),
              )
          ),
          Gap(AppLayout.getHeight(15, context)),
          const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(15, context)),
          /**Discount Section */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425, context),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15, context), vertical: AppLayout.getWidth(15, context)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20, context)),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.grey.shade200,
                       blurRadius: 1,
                       spreadRadius: 1
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190, context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12, context)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/sit2.jpeg"
                            )
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(12, context)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss.",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(210, context),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18, context))
                        ),
                        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15, context), horizontal: AppLayout.getHeight(15, context)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                          Gap(AppLayout.getHeight(10, context)),
                          Text("Take the survey about our services and get discount", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                        ],),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30, context)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Color(0xFF189999)),
                            color: Colors.transparent
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15, context)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210, context),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15, context), horizontal: AppLayout.getHeight(15, context)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18, context)),
                      color: const Color(0xFFEC6545)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold, ), textAlign: TextAlign.center,),
                        Gap(AppLayout.getHeight(5, context)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: '😍',
                                style: TextStyle(fontSize: 38)
                              ),
                              TextSpan(
                                text: '🥰',
                                style: TextStyle(fontSize: 50)
                              ),
                              TextSpan(
                                text: '😘',
                                style: TextStyle(fontSize: 38)
                              ),
                            ]
                          )
                        )
                      ],),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
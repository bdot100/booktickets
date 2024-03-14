import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
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
        ],
      ),
    );
  }
}
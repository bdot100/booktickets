import 'package:booktickets/screens/tickect_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';



class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20, context), vertical: AppLayout.getHeight(20, context)),
            children: [
              Gap(AppLayout.getHeight(40, context)),
              Text("Tickets", style: Styles.headLineStyle1,),
              Gap(AppLayout.getHeight(20, context)),
              const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20, context)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15, context)),
                child: TicketView(ticket: ticketList[0], isColor: true,),
              ),
              const SizedBox(
                height: 1,
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "Flutter DB", secondText: "Passenger", alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: "5221 364568", secondText: "Passport", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20, context)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                    Gap(AppLayout.getHeight(20, context)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(firstText: "335762 87765432", secondText: "Number of E-ticket", alignment: CrossAxisAlignment.start, isColor: true,),
                        AppColumnLayout(firstText: "B2SG28", secondText: "Booking Code", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20, context)),
                    const AppLayoutBuilderWidget(sections: 15, isColor: false, width: 5,),
                    Gap(AppLayout.getHeight(20, context)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa_1.jpeg", scale: 11,),
                                Text(" *** 2462", style: Styles.headLineStyle3,)
                              ],
                            ),
                            const Gap(5),
                            Text("Payment Method", style: Styles.headLineStyle4,)
                          ],
                        ),
                        const AppColumnLayout(firstText: "\$249.99", secondText: "Price", alignment: CrossAxisAlignment.end, isColor: true,),
                      ],
                    ),
                    const SizedBox(
                        height: 1,
                    ),
                    Gap(AppLayout.getHeight(20, context)),
                  ],
                ),
              ),
              // Draw Bar code
              const SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppLayout.getHeight(21, context)),
                    bottomRight: Radius.circular(AppLayout.getHeight(21, context))
                  )
                ),
                margin: EdgeInsets.only(left: AppLayout.getHeight(15, context), right: AppLayout.getHeight(15, context)),
                padding: EdgeInsets.only(top: AppLayout.getHeight(20, context), bottom: AppLayout.getHeight(20, context)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15, context)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(15, context)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20, context)),
              // Ticket Design
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15, context)),
                child: TicketView(ticket: ticketList[0], isColor: null,),
              ),
            ],
          ),

          //the two dots by the side of the page
          Positioned(
            left: AppLayout.getHeight(22, context),
            top: AppLayout.getHeight(295, context),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22, context),
            top: AppLayout.getHeight(295, context),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
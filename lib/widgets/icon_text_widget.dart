import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12, context), horizontal: AppLayout.getWidth(10, context)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10, context)),
            ),
            child: Row(children: [
              Icon(icon, color: const Color(0xFFBFC2DF),),
              Gap(AppLayout.getWidth(10, context)),
              Text(text, style: Styles.textStyle,)
            ],),
          );
  }
}
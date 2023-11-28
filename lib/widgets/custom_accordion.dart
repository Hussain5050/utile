


import 'package:flutter/material.dart';
import 'package:getwidget/components/accordion/gf_accordion.dart';
import 'package:utile_app/themes/app_colors.dart';
class CustomAccordion extends StatelessWidget {
  final String title;
  final String content;
  const CustomAccordion({super.key, required this.title, required this.content});
  @override

  Widget build(BuildContext context) {
    return GFAccordion(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      expandedTitleBackgroundColor: Colors.white,
      title:title,
      textStyle:TextStyle(
        color:AppColors.primaryColor,fontSize: 16,
        fontWeight: FontWeight.w600,),
      content: content,
      expandedIcon:const Icon(Icons.add,size:30,color: Color(0xffED7B30),),
      collapsedIcon:const Icon(Icons.remove,size:30,color: Color(0xffED7B30),),

    );
  }
}

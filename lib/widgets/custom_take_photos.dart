import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utile_app/themes/app_colors.dart';

class CustomTakePhotos extends StatelessWidget {
  final String image;

  const CustomTakePhotos({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image),
        fit: BoxFit.cover,),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:75,top: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height:25,
              width:25,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.close,size: 20,
                color:AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
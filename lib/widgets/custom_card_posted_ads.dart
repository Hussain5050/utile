

import 'package:flutter/material.dart';

class CustomCardPostedAdsDelete extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String subtitle;
  final IconData? icon;
  final String subtitleTwo;
  final Function()? onpressed;
  const CustomCardPostedAdsDelete({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
    required this.subtitle,
    this.icon, required this.subtitleTwo, this.onpressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: SizedBox(
        height: 100,
        width: double.infinity,
        child:
        Row(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff00213A)),
                ),
                const SizedBox(height:5,),
                Row(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4D6475)),
                    ),
                    const SizedBox(width: 80,),
                    Icon(icon),
                  ],
                ),

                const SizedBox(height: 10,),

                Row(
                  children: [
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4D6475)),
                    ),
                    Text(subtitleTwo,style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4D6475)),),

                  ],
                )


              ],
            ),





          ],
        ),
      ),
    );
  }
}
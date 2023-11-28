


import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:utile_app/screens/feedback.dart';
import 'package:utile_app/themes/app_colors.dart';
import 'package:utile_app/widgets/custom_accordion.dart';
class Question extends StatelessWidget {
  const Question({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.AppbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FeedbackScreen()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25),
              child: Text('Q & A',style:GoogleFonts.poiretOne(
                fontWeight: FontWeight.w400,fontSize: 30,color:AppColors.primaryColor,
              ) ,),
            ),
            const SizedBox(height: 10,),
            const CustomAccordion(

              title: 'What is Utile About?',
              content: 'Lorem ipsum dolor sit amet, consectetur adipisc\n'
                  'ing elit, sed do eiusmod tempor incididunt ut lab \n'
                  'ore et dolore magna aliqua. Ut enim ad minim ve\n'
                  'quis nostrud exercitation ullamco laboris\n'
                  'nisi ut aliquip ex ea commodo consequat.\n'
                  '\n'
                  '\n'
                  'Duis aute irure dolor in reprehenderit in voluptate \n'
                  'velit esse cillum dolore eu fugiat nulla pariatur.',

            ),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'How to purchase an item?',
              content:'',),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'How to sell an item?',
              content:'',),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'Question 4?',
              content:'',
            ),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'Question 5?',
              content:'',),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'Question 6?',
              content:'',),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'Question 7?',
              content:'',
            ),
            const Divider(thickness: 1,),
            const CustomAccordion(
              title: 'Question 8?',
              content:'',
            ),
            const Divider(thickness: 1,),
            const SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }
}

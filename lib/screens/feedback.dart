

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:utile_app/screens/privacy_policy.dart';
import 'package:utile_app/themes/app_colors.dart';
import 'package:utile_app/widgets/custom_description_fields.dart';
import 'package:utile_app/widgets/customfields.dart';
import 'package:utile_app/widgets/primary_button.dart';
class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.AppbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {


            Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PrivacyPolicy()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Feedback',style:GoogleFonts.poiretOne(
                fontSize: 30,fontWeight: FontWeight.w400,
                color: AppColors.primaryColor,
              ),),
              const SizedBox(height: 30,),
              CustomFields(hintText: 'Subject',
                  controller:TextEditingController(),
                  obscureText: false),
             const SizedBox(height: 35,),
             const CustomDescriptionFields(hintText: 'Feedcack'),
          const SizedBox(height: 280
             ,),
              PrimaryButton(onPressed: (){},
                title: 'Submit',),
              const SizedBox(height: 30,),


            ],
          ),
        ),
      ),
    );
  }
}

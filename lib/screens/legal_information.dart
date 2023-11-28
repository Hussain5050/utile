


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utile_app/screens/legal_information_one.dart';
import 'package:utile_app/themes/app_colors.dart';
class LegalInformation extends StatelessWidget {
  const LegalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.AppbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
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
              Text('Legal Information',style: GoogleFonts.poiretOne(
                color:AppColors.primaryColor,fontSize: 30,fontWeight: FontWeight.w400
              ),),
              const SizedBox(height: 30,),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder:
                (_)=>LegalInformationOne()));
              },
                child: Text('Service Agreement',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 14,color:AppColors.primaryColor,
                  decoration: TextDecoration.underline,decorationThickness: 2,decorationColor:AppColors.primaryColor,

                ),
                ),
              ),
              const SizedBox(height: 35,),
              InkWell(onTap: (){},
                child: Text('Transaction Services Agreement for EU \n consumers',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 14,color:AppColors.primaryColor,
                  decoration: TextDecoration.underline,decorationThickness: 2,decorationColor:AppColors.primaryColor,

                ),
                ),
              ),
              const SizedBox(height: 35,),
              InkWell(onTap: (){},
                child: Text('Free Membership Agreement',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 14,color:AppColors.primaryColor,
                  decoration: TextDecoration.underline,decorationThickness: 2,decorationColor:AppColors.primaryColor,

                ),
                ),
              ),
              const SizedBox(height: 39,),
              InkWell(onTap: (){},
                child: Text('Terms of Use',style: TextStyle(
                  fontWeight: FontWeight.w700,fontSize: 14,color:AppColors.primaryColor,
                  decoration: TextDecoration.underline,decorationThickness: 2,decorationColor:AppColors.primaryColor,

                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



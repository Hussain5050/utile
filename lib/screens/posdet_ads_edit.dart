import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:utile_app/custom_dotprogressindicator.dart';
import 'package:utile_app/screens/purchase_history.dart';
import 'package:utile_app/themes/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utile_app/widgets/custom_description_fields.dart';
import 'package:utile_app/widgets/custom_take_photos.dart';
import 'package:utile_app/widgets/customfields.dart';
import 'package:utile_app/widgets/primary_button.dart';
class PostedAdsEdit extends StatelessWidget {
  const PostedAdsEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.only(left: 20,right:20,bottom: 20),
        child: PrimaryButton(title: 'Next',
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=> PurchaseHistory()));
        },),
      ),
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.AppbarColor,
        elevation: 0,
        actions: [

          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.primaryColor,
            ),

          ),
          const SizedBox(width:35,),
          const CustomProgressStepper(
            lineOneColor:Colors.blueGrey,
            stepperTwoColor: Colors.white,
            lineTwoColor: Colors.blueGrey,
            stepperThreeColor:Colors.white,
            lineThreeColor: Colors.blueGrey,
            stepperFourColor: Colors.white,
            borderColor: Colors.blueGrey,
            borderTwoColor:Colors.blueGrey,
            borderThreeColor:Colors.blueGrey,),
          const SizedBox(width:20,),
          TextButton(onPressed: (){}, child:const Text('Cancel',
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                color: Color(0xffF89554)),),
          ),
          const SizedBox(width: 15,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Edit Item',style:GoogleFonts.poiretOne(
                fontWeight: FontWeight.w400,fontSize: 30,color:AppColors.primaryColor,
              ),),
              const SizedBox(height: 30,),
              CustomFields(
                hintText: 'Postcode',
                controller:TextEditingController(),
                obscureText:false,),
              const SizedBox(height: 30,),
              CustomFields(
                hintText: 'Title',
                controller:TextEditingController(),
                obscureText:false,),
              const SizedBox(height: 30,),
              const CustomDescriptionFields(hintText: 'Description'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Be sure to include all the details including\n'
                    'imperfections if any ',style: GoogleFonts.openSans(
                  fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xff00213A),
                ),),
              ),
              const SizedBox(height: 20,),
              Text('Photos',style: GoogleFonts.openSans(
                fontWeight: FontWeight.w600,fontSize: 15,
                color: AppColors.primaryColor,
              ),),
              Text('Take up to 10 photos of the items and\n'
                  ' make sureto capture all the details',
                style:GoogleFonts.openSans(fontSize: 14,
                fontWeight: FontWeight.w400,color:AppColors.primaryColor),),
              const SizedBox(height: 20,),
              DottedBorder(
                strokeWidth: 2,
                color: AppColors.primaryColor,
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: AppColors.whiteColor,
                    child: Center(
                      child: Text("+ Take Photos",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor,
                          )),
                    ),
                  ),
                ),

              ),
              const SizedBox(height:10,),
              Wrap(spacing:5,
                runSpacing: 5,
                children: const [
                  CustomTakePhotos(image: 'images/circuit _breaker.png',),
                  CustomTakePhotos(image: 'images/circuit _breaker.png',),
                  CustomTakePhotos(image: 'images/circuit _breaker.png',),
                  CustomTakePhotos(image: 'images/circuit _breaker.png',),
                  CustomTakePhotos(image: 'images/circuit _breaker.png',),
              ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

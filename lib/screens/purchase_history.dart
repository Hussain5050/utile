import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utile_app/screens/question.dart';
import 'package:utile_app/themes/app_colors.dart';
import 'package:utile_app/widgets/custom_card_purchase_history.dart';
class PurchaseHistory extends StatelessWidget {
  const PurchaseHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.AppbarColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Question()));
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
              Text('Purchase History',style: GoogleFonts.poiretOne(
                fontSize: 30,fontWeight: FontWeight.w400,
              ),),
              const SizedBox(height:30,),
              CustomCardPurchaseHistory(
                onpressed: (){},
                image: 'images/circuit _breaker.png',
                text: '£10',
                titleTwo: 'SW1W 0NY',
                title: 'Circuit breaker',
                subtitle: 'Used ',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),
              const SizedBox(height: 5,),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 5,),
              CustomCardPurchaseHistory(
                onpressed: (){},
                image: 'images/circuit _breaker.png',
                text: '£20',
                title: 'Circuit breaker',
                titleTwo: 'PO16 7GZ',
                subtitle: 'Used ',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),
              const SizedBox(height: 5,),
              const Divider(
                thickness: 1,
              ),
              const SizedBox(height: 5,),
              CustomCardPurchaseHistory(
                onpressed: (){},
                image: 'images/circuit _breaker.png',
                text: 'Free',
                title: 'Circuit breaker',
                titleTwo: 'GU16 7HF',
                subtitle: 'Used ',
                subtitleTwo: ' 1 EcoCredit',
                icon: Icons.keyboard_arrow_right,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:foodpanda/consts/colors.dart';
import 'package:foodpanda/consts/images.dart';
import 'package:foodpanda/consts/text_style.dart';
import 'package:foodpanda/screens/auth_screens/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class LocationAccessScreen extends StatelessWidget {
  const LocationAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.foodpandalocation2,
                      height: 300,
                    ),
                    32.heightBox,
                    normalText(
                      text: "Allow location access on the next screen for:",
                      fSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                    32.heightBox,
                    locationWidget(
                      icon: Icons.delivery_dining_outlined,
                      text: "Finding the best restaurant and shops near you",
                    ),
                    16.heightBox,
                    locationWidget(
                      icon: Icons.store_outlined,
                      text: "Faster and more accourate delivety",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: normalText(
                      text: "Continue",
                      color: white,
                      fSize: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row locationWidget({icon, text}) {
    return Row(
      children: [
        VxBox(
          child: Icon(
            icon,
            color: primaryColor,
            size: 30,
          ),
        )
            .color(primaryColor.withOpacity(0.15))
            .padding(EdgeInsets.all(6))
            .roundedFull
            .make(),
        8.widthBox,
        Expanded(
          child: normalText(
            text: text,
            color: black.withOpacity(0.6),
            fSize: 16.0,
          ),
        ),
      ],
    );
  }
}

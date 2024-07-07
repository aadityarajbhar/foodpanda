import 'package:foodpanda/consts/constants.dart';
import 'package:foodpanda/screens/auth_screens/email_auth_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: context.screenHeight / 1.8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Icon(
                      Icons.close,
                      color: white,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    AppImages.authBack,
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 18),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  10.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        normalText(
                          text: "Sign up or log in",
                          fSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        8.heightBox,
                        normalText(
                          text: "Select your preferred method to continue",
                          fSize: 12,
                          // fontWeight: FontWeight.w700,
                          textalign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  30.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Vx.gray300,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppImages.google_icon,
                            width: 25,
                          ),
                          normalText(
                            text: "Continue with Google",
                            color: Colors.grey[600],
                            fSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          20.widthBox,
                        ],
                      ),
                    ),
                  ),
                  15.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Vx.gray300,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            AppImages.facebook_icon,
                            width: 30,
                          ),
                          normalText(
                            text: "Continue with Facebook",
                            color: white,
                            fSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          20.widthBox,
                        ],
                      ),
                    ),
                  ),
                  15.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                        ),
                      ),
                      normalText(
                        text: "   or   ",
                        fontWeight: FontWeight.w600,
                        color: greyColor[400],
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  15.heightBox,
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return EmailAuthScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 58,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: primaryColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.mail_outline_rounded,
                            color: primaryColor,
                          ),
                          normalText(
                            text: "Continue with Email",
                            color: primaryColor,
                            fSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                          20.widthBox,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

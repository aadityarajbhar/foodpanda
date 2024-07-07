import 'package:foodpanda/screens/auth_screens/fill_account_info_screen.dart';
import 'package:foodpanda/screens/auth_screens/verification_email.dart';
import 'package:foodpanda/screens/widgets/custom_text_button.dart';
import 'package:foodpanda/screens/widgets/custom_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/constants.dart';

class LoginWithEmailScreen extends StatefulWidget {
  const LoginWithEmailScreen({super.key});

  @override
  State<LoginWithEmailScreen> createState() => _LoginWithEmailScreenState();
}

class _LoginWithEmailScreenState extends State<LoginWithEmailScreen> {
  final TextEditingController passController = TextEditingController();

  String passText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 20,
                      ),
                      child: Image.asset(
                        AppImages.login_icon,
                        width: 60,
                      ),
                    ),
                    normalText(
                      text: "Log in with your email",
                      fSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    20.heightBox,
                    normalText(
                      text:
                          "log in with your password to aadityarajbhar@gmail.com. or get a login link via email",
                      fSize: 14,
                    ),
                    30.heightBox,
                    CustomTextField(
                      lableText: "Password",
                      controller: passController,
                      noIcon: false,
                      onChanged: (value) {
                        setState(() {
                          passText = value;
                        });
                      },
                    ),
                    20.heightBox,
                    normalText(
                      text: "I forget my password?",
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ).onTap(() {}),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: greyColor[200],
                ),
                CustomTextButton(
                  text: "Login with Password",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return FillAccountInfoScreen();
                        },
                      ),
                    );
                  },
                  isDisabled: passText.isEmpty,
                ),
                15.heightBox,
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return VerificationEmail();
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
                    child: Center(
                      child: normalText(
                        text: "Send me a login link",
                        color: primaryColor,
                        fSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

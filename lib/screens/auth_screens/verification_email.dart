import 'package:foodpanda/screens/widgets/custom_text_button.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/constants.dart';

class VerificationEmail extends StatefulWidget {
  const VerificationEmail({super.key});

  @override
  State<VerificationEmail> createState() => _VerificationEmailState();
}

class _VerificationEmailState extends State<VerificationEmail> {
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 20,
                    ),
                    child: Image.asset(
                      AppImages.email_icon,
                      width: 60,
                    ),
                  ),
                  normalText(
                    text: "Verify your email address to get started",
                    fSize: 25,
                    fontWeight: FontWeight.bold,
                    textalign: TextAlign.center,
                  ),
                  20.heightBox,
                  normalText(
                    text:
                        "this help us to mitigate found and keep your personal data safe ",
                    fSize: 14,
                    textalign: TextAlign.center,
                  ),
                  20.heightBox,
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: greyColor[200],
                ),
                CustomTextButton(
                  text: "Send Verification email",
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return LoginWithEmailScreen();
                    //     },
                    //   ),
                    // );
                  },
                  isDisabled: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

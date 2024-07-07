import 'package:foodpanda/consts/constants.dart';
import 'package:foodpanda/screens/auth_screens/login_with_email_screen.dart';
import 'package:foodpanda/screens/widgets/custom_text_button.dart';
import 'package:foodpanda/screens/widgets/custom_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String emailText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: primaryColor,
        elevation: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Form is valid, navigate to next screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginWithEmailScreen();
                    },
                  ),
                );
              }
            },
            child: normalText(
              text: "Continue",
              color: emailText.isEmpty ? greyColor[400] : primaryColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      text: "What\'s your email?",
                      fSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    20.heightBox,
                    normalText(
                      text: "We\'ll check if you have an account",
                      fSize: 14,
                    ),
                    30.heightBox,
                    CustomTextField(
                      lableText: "Email",
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {
                          emailText = value;
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 40,
              color: greyColor[300],
            ),
            CustomTextButton(
              text: "Continue",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Form is valid, navigate to next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginWithEmailScreen();
                      },
                    ),
                  );
                }
              },
              isDisabled: emailText.isEmpty,
            ),
          ],
        ),
      ),
    );
  }
}

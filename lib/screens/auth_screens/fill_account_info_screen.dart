import 'package:foodpanda/screens/home_screen/home_screen.dart';
import 'package:foodpanda/screens/widgets/custom_text_button.dart';
import 'package:foodpanda/screens/widgets/custom_text_field.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/constants.dart';

class FillAccountInfoScreen extends StatefulWidget {
  const FillAccountInfoScreen({super.key});

  @override
  State<FillAccountInfoScreen> createState() => _FillAccountInfoScreenState();
}

class _FillAccountInfoScreenState extends State<FillAccountInfoScreen> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  String firstNameText = '';
  String lastNameText = '';
  String passText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        foregroundColor: primaryColor,
        actions: [
          TextButton(
            onPressed: () {},
            child: normalText(
              text: "Continue",
              color: firstNameText.isEmpty ||
                      lastNameText.isEmpty ||
                      passText.isEmpty
                  ? greyColor[400]
                  : primaryColor,
            ),
          ),
        ],
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
                        AppImages.profile_icon,
                        width: 60,
                      ),
                    ),
                    normalText(
                      text: "Let\'s get your started!",
                      fSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    20.heightBox,
                    normalText(
                      text:
                          "First, let\'s create your food panda account with aadityarajbhar",
                      fSize: 14,
                    ),
                    30.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          padding: EdgeInsets.only(right: 7),
                          child: CustomTextField(
                            lableText: "First Name",
                            controller: firstNameController,
                            noIcon: false,
                            onChanged: (value) {
                              setState(() {
                                firstNameText = value;
                              });
                            },
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          padding: EdgeInsets.only(right: 7),
                          child: CustomTextField(
                            lableText: "Last Name",
                            controller: lastNameController,
                            noIcon: false,
                            onChanged: (value) {
                              setState(() {
                                lastNameText = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    20.heightBox,
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
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  isDisabled: firstNameText.isEmpty ||
                      lastNameText.isEmpty ||
                      passText.isEmpty,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

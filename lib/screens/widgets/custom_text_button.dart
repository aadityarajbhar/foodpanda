import 'package:foodpanda/consts/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isDisabled});

  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isDisabled ? null : onPressed,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: isDisabled ? greyColor[400] : primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: normalText(
            text: text,
            textalign: TextAlign.center,
            color: white,
            fSize: 15,
          ),
        ),
      ),
    );
  }
}

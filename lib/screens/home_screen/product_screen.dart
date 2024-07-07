import 'package:foodpanda/consts/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.cricket_deal_2,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(),
                    shape: BoxShape.circle,
                    color: white,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          16.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              normalText(
                text: "Cricket Deal 2",
                fontWeight: FontWeight.bold,
                fSize: 24,
              ),
              Column(
                children: [
                  normalText(
                    text: "Rs. 869.00",
                    color: greyColor,
                    fSize: 13,
                    deco: TextDecoration.lineThrough,
                  ),
                  normalText(
                    text: "Rs 549.00",
                    fontWeight: FontWeight.bold,
                    fSize: 15,
                  ),
                ],
              ),
            ],
          ),
          5.heightBox,
          normalText(
            text: "6 inches sub & 345 ,l drinks",
            fSize: 14,
            color: Colors.black54,
          ),
          Divider(
            height: 40,
            color: Colors.black12,
          ),
          10.heightBox,
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: primaryColor.withOpacity(0.07),
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    normalText(
                      text: "Choose Your Bread",
                      fSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: normalText(
                        text: "Required",
                        fSize: 13,
                        fontWeight: FontWeight.bold,
                        color: white,
                      ),
                    ),
                  ],
                ),
                8.heightBox,
                normalText(
                  text: "Select One",
                  fSize: 13,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
                8.heightBox,
                radioListTileWidget(
                  value: "Italian",
                  gvalue: "Bread",
                  title: "Italian",
                  secondary: "Free",
                  onChanged: (value) {},
                ),
                radioListTileWidget(
                  value: "Wheat",
                  gvalue: "Bread",
                  title: "Wheat",
                  secondary: "Free",
                  onChanged: (value) {},
                ),
                radioListTileWidget(
                  value: "Sesame",
                  gvalue: "Bread",
                  title: "Sesame",
                  secondary: "Free",
                  onChanged: (value) {},
                ),
                radioListTileWidget(
                  value: "Honey Oat",
                  gvalue: "Bread",
                  title: "Honey Oat",
                  secondary: "Free",
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          30.heightBox,
          normalText(
            text: "Special instructions",
            fSize: 18,
            fontWeight: FontWeight.bold,
          ),
          5.heightBox,
          normalText(
            text:
                "Please let us know if you are allergic to anything or if we need to avoid anything.",
            fSize: 18,
            color: Colors.black45,
          ),
          30.heightBox,
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: "eg. no mayo",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(12),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(),
              child: normalText(
                text: "0./500",
                color: Colors.black,
              ),
            ),
          ),
          30.heightBox,
          normalText(
            text: "If this product is not available",
            fSize: 18,
            fontWeight: FontWeight.bold,
          ),
          15.heightBox,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: greyColor.shade300,
              ),
            ),
            child: ListTile(
              title: normalText(text: "Remove it from my order"),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: primaryColor,
              ),
            ),
          ),
          30.heightBox,
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: greyColor[400],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.remove,
                    color: white,
                    size: 30,
                  ),
                ),
                20.widthBox,
                normalText(
                  text: "1",
                  fSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                20.widthBox,
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    color: white,
                    size: 30,
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: context.screenWidth / 2,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: primaryColor,
                ),
                child: normalText(
                  text: "Add to cart",
                  textalign: TextAlign.center,
                  fSize: 15,
                  fontWeight: FontWeight.bold,
                  color: white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  RadioListTile<String> radioListTileWidget({
    title,
    value,
    gvalue,
    secondary,
    onChanged,
  }) {
    return RadioListTile(
      value: value,
      groupValue: gvalue,
      title: normalText(text: title),
      secondary: normalText(
        text: secondary,
        fSize: 15,
      ),
      activeColor: primaryColor,
      onChanged: onChanged,
    );
  }
}

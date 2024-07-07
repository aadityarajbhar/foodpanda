import 'package:foodpanda/consts/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
            onTap: onTap,
            title: Text(
              text,
              style: TextStyle(
                color: black,
                fontSize: 14,
              ),
            ),
          )
        : ListTile(
            leading: Icon(
              icon,
              color: primaryColor,
            ),
            onTap: onTap,
            title: Text(
              text,
              style: TextStyle(
                color: black,
                fontSize: 14,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(
            builder: (context) {
              return DrawerHeader(
                decoration: BoxDecoration(
                  color: primaryColor,
                  border: Border.all(
                    color: primaryColor,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: white,
                      ),
                      child: Center(
                        child: normalText(
                          text: "D",
                          color: primaryColor,
                          fSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    normalText(
                      text: "Aaditya Rajbhar",
                      color: white,
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              listTile(
                context,
                "Vouchers & Offers",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favorites",
                Icons.favorite_outline_rounded,
                () {},
              ),
              listTile(
                context,
                "Orders & reordering",
                Icons.my_library_books_outlined,
                () {},
              ),
              listTile(
                context,
                "Addresses",
                Icons.location_on_outlined,
                () {},
              ),
              listTile(
                context,
                "Payment methods",
                Icons.payment_rounded,
                () {},
              ),
              listTile(
                context,
                "Help center",
                Icons.help_center_outlined,
                () {},
              ),
              listTile(
                context,
                "Invite friends",
                Icons.wallet_giftcard_outlined,
                () {},
              ),
              Divider(),
              listTile(
                context,
                "Settings",
                null,
                () {},
              ),
              listTile(
                context,
                "Terms & Conditions / Privacy",
                null,
                () {},
              ),
              listTile(
                context,
                "Logout",
                null,
                () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

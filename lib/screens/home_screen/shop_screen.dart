import 'package:flutter/cupertino.dart';
import 'package:foodpanda/consts/constants.dart';
import 'package:foodpanda/consts/lists.dart';
import 'package:foodpanda/screens/widgets/popular_tab.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: primaryColor,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              normalText(
                text: "Delivery",
                fontWeight: FontWeight.bold,
                fSize: 18,
              ),
              normalText(
                text: "15-30 min",
                fSize: 14,
                color: primaryColor,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: primaryColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: primaryColor,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.subway_logo,
                        height: 70,
                      ),
                      8.widthBox,
                      normalText(
                        text: "Subway",
                        fSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                        child: normalText(
                          text:
                              "1.5km away | Rs. 99.00 Delivery | Rs. 249.00 Minimum Service fee applies",
                          fSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: normalText(
                          text: "More info",
                          fSize: 13,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Icon(
                        Icons.star_outline,
                        color: primaryColor,
                        size: 30,
                      ),
                      5.widthBox,
                      normalText(
                        text: "3.9",
                        fontWeight: FontWeight.bold,
                      ),
                      8.widthBox,
                      normalText(
                        text: "1000+ ratings",
                        color: Colors.black54,
                        fSize: 13,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: normalText(
                          text: "See reviews",
                          fSize: 13,
                          fontWeight: FontWeight.bold,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                  // 10.heightBox,
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: primaryColor,
                        size: 25,
                      ),
                      10.widthBox,
                      normalText(
                        text: "Delivery: 15-30 min",
                        fontWeight: FontWeight.bold,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: normalText(
                          text: "Change",
                          fSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                        ),
                      ),
                    ],
                  ),
                  8.heightBox,
                  Row(
                    children: [
                      Image.asset(
                        AppImages.voucher_panda,
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      10.widthBox,
                      normalText(
                        text: "Available deals",
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  8.heightBox,
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: primaryColor.withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppImages.percentage_icon,
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            5.widthBox,
                            normalText(
                              text: "Rs. 320 off",
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            )
                          ],
                        ),
                        8.heightBox,
                        normalText(
                          text:
                              "Min. order Rs. 320. Valid for selecte items.\n Auto-applied",
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          fSize: 12,
                          // textalign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  16.heightBox,
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: black,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: primaryColor,
                    indicatorColor: primaryColor,
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(
                        text: "Popular",
                      ),
                      Tab(
                        text: "Cricket Deals",
                      ),
                      Tab(
                        text: "Strong Pepsi Deals",
                      ),
                      Tab(
                        text: "All New",
                      ),
                    ],
                  ),
                  Center(
                      child: [
                    PopularTab(
                      popularItems: popularItems,
                    ),
                    Center(
                      child: normalText(text: "Cricket Details Tab"),
                    ),
                    Center(
                      child: normalText(text: "Strong pepsi Deals Tab"),
                    ),
                    Center(
                      child: normalText(text: "All New Tab"),
                    ),
                  ][_tabController.index]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:foodpanda/consts/constants.dart';
import 'package:foodpanda/screens/home_screen/product_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularTab extends StatelessWidget {
  const PopularTab({super.key, required this.popularItems});

  final List<Map<String, String>> popularItems;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        20.heightBox,
        normalText(
          text: "Popular",
          fontWeight: FontWeight.bold,
          fSize: 20,
        ),
        5.heightBox,
        normalText(
          text: "Most ordered right now",
        ),
        16.heightBox,
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
          ),
          itemCount: popularItems.length,
          itemBuilder: (BuildContext context, int index) {
            final item = popularItems[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProductScreen();
                    },
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          item['image']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.6),
                              Colors.black.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: normalText(
                          text: item['title']!,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fSize: 15,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 30,
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            normalText(
                              text: item['price']!,
                              fontWeight: FontWeight.bold,
                              fSize: 13,
                            ),
                            if (item.containsKey('oldPrice'))
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: normalText(
                                  text: item['oldPrice']!,
                                  deco: TextDecoration.lineThrough,
                                  fSize: 13,
                                  color: Colors.black45,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

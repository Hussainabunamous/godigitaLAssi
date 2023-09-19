import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_digital/assi%202/item_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'item_moddle.dart';

class AssiHomeScreen extends StatefulWidget {
  @override
  State<AssiHomeScreen> createState() => _AssiHomeScreenState();
}

class _AssiHomeScreenState extends State<AssiHomeScreen> {
  int item_idex = 1;
  int selectedTabIndex = 0;

  List<ItemNews> _filteredItems(int tabIndex) {
    return item_news.where((item) => item.id == tabIndex + 1).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tab_news.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "الرئيسية",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image(
                image: AssetImage(
                  "images/hearts.jpg",
                ),
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "التصنيفات",
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TabBar(
                        tabs: tab_news
                            .map((item) => TabItem(
                                  imgUrl: item.imgUrl,
                                  Title: item.Title,
                                ))
                            .toList(),
                        onTap: (index) {
                          setState(() {
                            selectedTabIndex = index;
                          });
                        },
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 4,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 4),
                        labelPadding: EdgeInsets.symmetric(horizontal: 4),
                        isScrollable: true),
                    GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // number of items in each row
                        mainAxisSpacing: 8.0, // spacing between rows
                        crossAxisSpacing: 8.0, //
                        childAspectRatio: (1 / 1.4), // spacing between columns
                      ),
                      addRepaintBoundaries: true,
                      padding: EdgeInsets.all(8.0),
                      // padding around the grid
                      itemBuilder: (context, index_item) {
                        var foundPlace = item_news
                            .where((element) => element.id == 5)
                            .toList();
                        final filteredItems = item_news
                            .where((item) => item.id == selectedTabIndex + 1)
                            .toList();
                        final currentItem = filteredItems[index_item];
                        return TabBarView(children: [ArticleItem(currentItem)]);
                      },
                      itemCount: item_news
                          .where((item) => item.id == selectedTabIndex + 1)
                          .length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ArticleItem extends StatefulWidget {
  ItemNews item;

  ArticleItem(this.item);

  @override
  State<ArticleItem> createState() => _ArticleItemState();
}

class _ArticleItemState extends State<ArticleItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      color: Colors.white,
      child: Container(
        child: Column(
          children: [
            Image(
              image: AssetImage(widget.item.imgUrl ?? ""),
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.item.itenPrice ?? "",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      Text(widget.item.itemTitle ?? ""),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.item.itemDescription ?? "",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    color: Colors.red.shade900,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_sharp,
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          alignment: Alignment.center,
                          // color: Colors.grey.withOpacity(0.1),
                          child: Text(
                            "اضف للسلة",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String imgUrl;
  final String Title;

  const TabItem({
    super.key,
    required this.imgUrl,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 90,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("images/hearts.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        // make sure we apply clip it properly
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage(imgUrl),
                  width: 15,
                  height: 15,
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  alignment: Alignment.center,
                  // color: Colors.grey.withOpacity(0.1),
                  child: Text(
                    Title,
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

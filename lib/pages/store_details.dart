import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:footonlineflutter/data/product.dart';
import 'package:footonlineflutter/data/store_items.dart';
import 'package:footonlineflutter/widgets/main_appBarr.dart';

class StoreDetailsPages extends StatefulWidget {
  final image;
  final name;
  const StoreDetailsPages({Key? key, this.image, this.name}) : super(key: key);

  @override
  State<StoreDetailsPages> createState() => _StoreDetailsPagesState();
}

class _StoreDetailsPagesState extends State<StoreDetailsPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: getAppBarr(),
        preferredSize: Size.fromHeight(200),
      ),
      body: getBody(),
    );
  }

  Widget getAppBarr() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset("assets/icons/arrow_back_icon.svg"),
        color: Colors.white,
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.info),
        ),
      ],
      backgroundColor: Colors.greenAccent,
      flexibleSpace: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(storeItems[1]['image']),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(
                    0.4)), //l image est derriere et le fond black devt garce a stake le premier enft est mit en dessuade l autre
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "Prel kroup Rodov",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, bottom: 10, top: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          width: 2,
                          color: Colors.white,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 12, right: 12, bottom: 8, top: 8),
                      child: Text(
                        "Delivery 20 min",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(1997)",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 15,bottom: 8,top: 8),
        child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Top menu",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Most oders right now",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5)),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      productItems.length,
                      (index) {
                        return Row(
                          children: [
                            Container(
                              width: 180,
                              height: 80,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(productItems[index]['name'],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Text(productItems[index]['price'])
                                  ],
                                )
                                ],
                              ),
                            ),
                            SizedBox(width: 15,),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(12),
                                image: DecorationImage(image: NetworkImage(productItems[index]['image']),fit: BoxFit.cover)
                              )
                            )
                          ],
                        );
                      },
                    ),
                  ),
               
                ),
                SizedBox(height: 15,),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}

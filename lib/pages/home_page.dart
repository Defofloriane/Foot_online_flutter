import 'package:flutter/material.dart';
import 'package:footonlineflutter/data/categories.dart';
import 'package:footonlineflutter/data/store_items.dart';
import 'package:footonlineflutter/pages/store_details.dart';
import 'package:footonlineflutter/theme/colors.dart';
import 'package:footonlineflutter/theme/helper.dart';
import 'package:footonlineflutter/theme/padding.dart';
import 'package:footonlineflutter/widgets/dish.dart';
import 'package:footonlineflutter/widgets/main_appBarr.dart';
import 'package:footonlineflutter/widgets/store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: PreferredSize(
        child: getAppBar(size: size),
        preferredSize: Size.fromHeight(80),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            height: getHeight(size.width, "21:9"),
            child: Image.asset(
              getImage("promotion.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: mainPadding, bottom: mainPadding),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(storeTypes.length, (index) {
                    return Container(
                      width: 120,
                      height: 120,
                      child: Column(
                        children: [
                          getSvgIcon(storeTypes[index]['image']),
                          SizedBox(
                            height: 8,
                          ),
                          Text(storeTypes[index]['name'])
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: grey.withOpacity(0.15)),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Text(
                      "Special offers",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: List.generate(storeItems.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector( 
                         onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => StoreDetailsPages(
                           
                            ))
                            );
                             },
                           
                          child: Container(
                          child: StoreCard(store: storeItems[index]),
                        ),
                        ),
                      );
              
                    }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: grey.withOpacity(0.15)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,bottom: 10,
                    ),
                    child: Text(
                      "Recommanded Dishes",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(recommendedDishes.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                         child: GestureDetector( 
                         onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => StoreDetailsPages(
                           
                            ))
                            );
                           }, 
                        child: Container(

                          child: DishCard(
                            width: size.width -(mainPadding * 2),
                            dish: recommendedDishes[index]),
                        ),
                         ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
       
        ],
      ),
    );
  }
}

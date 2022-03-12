
import 'package:flutter/material.dart';

// ignore: camel_case_types
class getAppBar extends StatelessWidget {
  const getAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0.8,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        primary: false,
        excludeHeaderSemantics: true,
        flexibleSpace: SafeArea(
          child: Container(
            padding:
                const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Delivery Details",
                          style: TextStyle(
                              color: Colors.black12,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Icon(Icons.arrow_right)
                       
                      ],
                    ),
                    Row(
                      children: [
                       
                       Icon(Icons.car_repair_outlined),
                        IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "/checkout");
                            },
                            icon:  Icon(Icons.search),
                            
                            ),
                            
                      ],
                    )
                  ],
                ),
                SizedBox(
                     
                     
                  child: Text(
                    "66 Preah Monivong Blvd (93), Phnom Penh 66 Preah Monivong Blvd (93), Phnom Penh",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                  
                ),
              ],
            ),
          ),
        ));
  }
}
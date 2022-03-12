import 'package:flutter/material.dart';
import 'package:footonlineflutter/pages/home_page.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getFooter() {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white24,
          border: Border(top: BorderSide(width: 2, color: Colors.greenAccent))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      size: 25,
                      color: activeTab == 0 ? Colors.greenAccent : Colors.black,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text("home"),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.message_sharp,
                      color: activeTab == 1 ? Colors.greenAccent : Colors.black,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text("Oders"),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 2;
                      });
                    },
                    child: Icon(
                      Icons.notifications,
                      color: activeTab == 2 ? Colors.greenAccent : Colors.black,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text("Notifications"),
              ],
            ),
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                      setState(() {
                        activeTab = 3;
                      });
                    },
                    child: Icon(
                      Icons.person,
                      color: activeTab == 3 ? Colors.greenAccent : Colors.black,
                    )),
                SizedBox(
                  height: 8,
                ),
                Text("Profile"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getBody() {
   
  return IndexedStack(
    index: activeTab,
    children: const [
      HomePage(),
       Center(child: Text("message"),
      ),
       Center(child: Text("clock"),
      ),
       Center(child: Text("profile"),
      ),
    ],
  );
  }
}

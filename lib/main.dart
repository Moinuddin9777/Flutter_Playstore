import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:contenterra_assignment/utils/colors.dart';
import 'bottomTabs/apps_page.dart';
import 'bottomTabs/books_page.dart';
import 'bottomTabs/games_page.dart';
import 'bottomTabs/movies_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Color(0xFF1b1b1b)));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Playstore_Contenterra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedButtonIndex = 0;
  var pageList = [
    GamesPage(),
    AppsPage(),
    MoviesPage(),
    BooksPage(),
    BooksPage()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            title: Card(
              color: Color(0xffffffff),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.search,
                    color: textColor,
                  ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search for apps or games",
                          border: InputBorder.none),
                      style: TextStyle(color: textColor),
                    ),
                  ),
                  Icon(
                    Icons.mic_none,
                    color: textColor,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: CircleBorder(), primary: Colors.green),
                      onPressed: () {},
                      child: Text(
                        "M",
                        style: TextStyle(color: titleColor),
                      ))
                ],
              ),
            ),
            shape: Border(bottom: BorderSide(color: textColor, width: 1)),
            elevation: 5,
            backgroundColor: backgroundColor,
            bottom: TabBar(
              padding: EdgeInsets.only(left: 20),
              isScrollable: true,
              indicatorColor: pickColor,
              labelColor: pickColor,
              unselectedLabelColor: textColor,
              tabs: [
                Tab(text: "For You"),
                Tab(text: "Top Charts"),
                Tab(text: "For Kids"),
                Tab(text: "Events"),
                Tab(text: "Categories"),
              ],
            ),
          ),
          body: Column(
            children: [pageList[selectedButtonIndex]],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                border: Border(top: BorderSide(width: 1, color: textColor))),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedButtonIndex,
              onTap: (index) {
                setState(() {
                  selectedButtonIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.videogame_asset_rounded), label: "Games"),
                BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_offer_outlined), label: "Offers"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.movie_outlined), label: "Movies"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.collections_bookmark_outlined), label: "Books"),
              ],
              backgroundColor: backgroundColor,
              selectedItemColor: pickColor,
              unselectedItemColor: textColor,
            ),
          )),
    );
  }
}

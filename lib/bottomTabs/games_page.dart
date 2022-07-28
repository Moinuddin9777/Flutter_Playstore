import 'package:flutter/material.dart';
import 'package:contenterra_assignment/category_services.dart';
import '../models/categories.dart';
import '../utils/colors.dart';
import '../each_category.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  _GamesPageState createState() => _GamesPageState();
}

class _GamesPageState extends State<GamesPage> {
  Future<List<Categories>> getCategories() async {
    var rowList = <Categories>[];
    var r1 = Categories(categoryId: 1, mainTitle: "Trending", item: EachCategory(getCategoryList: Rows().takeFirstItems()));
    var r2 = Categories(categoryId: 2, mainTitle: "Sport Games", item: EachCategory(getCategoryList: Rows().takeSecondItems()));
    var r3 = Categories(categoryId: 3, mainTitle: "Fun Games", item: EachCategory(getCategoryList: Rows().takeThirdItems()));
    var r4 = Categories(categoryId: 4, mainTitle: "Apps for you", item: EachCategory(getCategoryList: Rows().takeFirstItems()));
    rowList.add(r1);
    rowList.add(r2);
    rowList.add(r3);
    rowList.add(r4);
    return rowList;
  }

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    return Expanded(
      child: FutureBuilder<List<Categories>>(
        future: getCategories(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var rowList = snapshot.data;
            return ListView.builder(
              itemCount: rowList!.length,
              itemBuilder: (context,index){
                var category = rowList[index];
                return Card(
                  elevation: 0,
                  color: backgroundColor,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * 0.05,right: screenWidth * 0.03,top: screenHeight * 0.01),
                        child: Row(
                          children: [
                            Text(category.mainTitle,style: TextStyle(color: titleColor,fontSize: screenHeight * 0.022),),
                            const Spacer(),
                            Icon(Icons.arrow_forward,color: titleColor,)
                          ],
                        ),
                      ),
                      category.item  
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}

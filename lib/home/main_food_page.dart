import 'package:d_ace/home/food_page_body.dart';
import 'package:d_ace/utils/colors.dart';
import 'package:d_ace/widgets/big_text.dart';
import 'package:d_ace/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

/*fonts:
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Regular.ttf
          weight: 400
        - asset: assets/fonts/Roboto-Medium.ttf
          weight: 500
        - asset: assets/fonts/Roboto-Bold.ttf
          weight: 700
        - asset: assets/fonts/Roboto-Black.ttf
          weight: 900 */
class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);
  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Container(
              // ignore: prefer_const_constructors
              margin: EdgeInsets.only(top: 45, bottom: 15),
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "Burundi", color: AppColors.mainColor),
                      Row(
                        children: [
                          SmallText(text: "Gitega", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.mainColor),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody(),
          /*   Container(
            width: 200,
            height: 50,
            // color: Colors.red,
            child: Center(
              child: BigText(
                text: "Ouvrir",
                color: Color.fromARGB(255, 4, 4, 4),
                size: 30,
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(100),
              //boxShadow: BoxShadow(const Color(000)),
            ),
          )
        */
        ],
      ),
      /* floatingActionButton: FloatingActionButton(
        onPressed: () => 1,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}

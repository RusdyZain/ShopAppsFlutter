import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/pages/ItemPage.dart';
import 'package:shopapps/widgets/Pallete.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 6; i++)
          Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
            ),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Pallete.mainColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Pallete.secondColor.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(index: i - 1),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/$i.png",
                      height: 130,
                      width: 130,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Shoe Family ${i}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Pallete.secondColor,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "New Shoe For Our Family",
                    style: TextStyle(
                        fontSize: 15,
                        color: Pallete.secondColor.withOpacity(0.7)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$5${i + 2}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.redAccent,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Pallete.secondColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          CupertinoIcons.cart_fill_badge_plus,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/widgets/Pallete.dart';

class BottomCartSheet extends StatelessWidget {
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 600,
        padding: EdgeInsets.only(top: 20),
        color: Pallete.bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 1; i < 4; i++)
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 140,
                        decoration: BoxDecoration(
                          color: Pallete.mainColor,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Pallete.secondColor.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "itemPage");
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "images/$i.png",
                                    height: 130,
                                    width: 130,
                                    fit: BoxFit.contain,
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nike Shoe",
                                    style: TextStyle(
                                      color: Pallete.secondColor,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Pallete.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Pallete.secondColor
                                                  .withOpacity(0.3),
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                            )
                                          ],
                                        ),
                                        child: Icon(
                                          CupertinoIcons.minus,
                                          size: 18,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          "02",
                                          style: TextStyle(
                                            color: Pallete.secondColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Pallete.mainColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Pallete.secondColor
                                                  .withOpacity(0.3),
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                            )
                                          ],
                                        ),
                                        child: Icon(
                                          CupertinoIcons.add,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 25),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Pallete.secondColor
                                              .withOpacity(0.4),
                                          blurRadius: 5,
                                          spreadRadius: 1,
                                        )
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                      color: Pallete.secondColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Pallete.mainColor,
                        borderRadius: BorderRadius.circular(0.3),
                        boxShadow: [
                          BoxShadow(
                            color: Pallete.secondColor.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Delivery Fee:",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.secondColor,
                                ),
                              ),
                              Text(
                                "\$20",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.secondColor,
                                ),
                              )
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.5,
                            color: Pallete.secondColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub-Total:",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.secondColor,
                                ),
                              ),
                              Text(
                                "\$60",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.secondColor,
                                ),
                              )
                            ],
                          ),
                          Divider(
                            height: 20,
                            thickness: 0.4,
                            color: Pallete.secondColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Discount:",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.secondColor,
                                ),
                              ),
                              Text(
                                "-\$10",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              decoration: BoxDecoration(
                color: Pallete.mainColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Pallete.secondColor.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontSize: 22,
                          color: Pallete.secondColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "\$40",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.redAccent,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Pallete.secondColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Check out",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

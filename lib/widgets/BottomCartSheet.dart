import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/widgets/Pallete.dart';
import 'package:shopapps/data/data.dart';

class BottomCartSheet extends StatelessWidget {
  final List<ShoeItem> cartItems;

  const BottomCartSheet({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int subtotal = 0;
    for (ShoeItem item in cartItems) {
      subtotal += int.parse(item.price.replaceAll('\$', ''));
    }

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
                    for (ShoeItem item in cartItems)
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
                            Container(
                              width: 100,
                              child: Image.asset(
                                item.image,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    item.title,
                                    style: TextStyle(
                                      color: Pallete.secondColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "\$${item.price}",
                                    style: TextStyle(
                                      color: Pallete.secondColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(height: 5),
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
                                          color: Pallete.secondColor,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                          color: Pallete.secondColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(width: 10),
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
                                          color: Pallete.secondColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 24,
                              ),
                            ),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        "\$$subtotal",
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
                        "Checkout",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

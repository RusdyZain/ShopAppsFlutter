import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopapps/data/data.dart';
import 'package:shopapps/widgets/ItemBottomNavbar.dart';
import 'package:shopapps/widgets/Pallete.dart';

class ItemPage extends StatelessWidget {
  final ShoeItem shoeItem;

  const ItemPage({Key? key, required this.shoeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
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
                        child: Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Pallete.secondColor,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Pallete.secondColor.withOpacity(0.3),
                            blurRadius: 5,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite,
                        size: 30,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: MediaQuery.of(context).size.height * 0.43,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      shoeItem.image,
                      height: 350,
                      width: 350,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(
                  color: Pallete.mainColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Pallete.secondColor.withOpacity(0.4),
                      blurRadius: 10,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          shoeItem.title,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Pallete.secondColor,
                          ),
                        ),
                        Text(
                          shoeItem.price,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemSize: 20,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4),
                        itemBuilder: (context, _) => Icon(
                          Icons.favorite,
                          color: Colors.redAccent,
                        ),
                        onRatingUpdate: (index) {},
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "This is description of the shoe product. This is desription of the shoe product.",
                      style: TextStyle(
                        color: Pallete.secondColor,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: TextStyle(
                            fontSize: 20,
                            color: Pallete.secondColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            for (int i = 5; i < 10; i++)
                              Container(
                                height: 35,
                                width: 35,
                                alignment: Alignment.center,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  color: Pallete.mainColor,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          Pallete.secondColor.withOpacity(0.3),
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Text(
                                  i.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                          ],
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
      bottomNavigationBar: ItemBottomNavbar(shoeItem: shoeItem),
    );
  }
}

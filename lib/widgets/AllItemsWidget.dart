import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/data/data.dart';
import 'package:shopapps/pages/ItemPage.dart';
import 'package:http/http.dart' as http;
import 'package:shopapps/widgets/Pallete.dart';

class AllItemsWidget extends StatelessWidget {
  const AllItemsWidget({Key? key});

  Future<List<ShoeItem>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://65fcf9c49fc4425c6530ec6c.mockapi.io/dataShoe'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return (data as List).map((item) => ShoeItem.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Container(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<ShoeItem> data = snapshot.data as List<ShoeItem>;
              return GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.68,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: data.map((shoeItem) {
                  return Container(
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
                                builder: (context) => ItemPage(
                                  shoeItem: shoeItem,
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              shoeItem.image,
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
                              shoeItem.title,
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
                            shoeItem.subtitle,
                            style: TextStyle(
                              fontSize: 15,
                              color: Pallete.secondColor.withOpacity(0.7),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                shoeItem.price,
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
                  );
                }).toList(),
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}

import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/widgets/Pallete.dart';
import 'package:http/http.dart' as http;

class ShoeItem {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  ShoeItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  factory ShoeItem.fromJson(Map<String, dynamic> json) {
    return ShoeItem(
      image: json['image'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      price: json['price'] as String,
    );
  }
}

class RowItemWidget extends StatelessWidget {
  const RowItemWidget({super.key});

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
      height: 190,
      child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final List<ShoeItem> data = snapshot.data as List<ShoeItem>;
              return ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  final shoeItem = data[index];
                  return Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 10,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 180,
                    decoration: BoxDecoration(
                      color: Pallete.mainColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.3),
                          blurRadius: 5,
                          spreadRadius: 1,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              shoeItem.image,
                              height: 150,
                              width: 150,
                              fit: BoxFit.contain,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shoeItem.title,
                                style: TextStyle(
                                  color: Pallete.secondColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                shoeItem.subtitle,
                                style: TextStyle(
                                  color: Pallete.secondColor.withOpacity(0.8),
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Text(
                                    shoeItem.price,
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 70),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Pallete.secondColor,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      CupertinoIcons.cart_fill_badge_plus,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}

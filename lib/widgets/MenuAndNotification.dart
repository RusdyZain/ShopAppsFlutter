import 'package:flutter/material.dart';
import 'package:shopapps/widgets/Pallete.dart';
import 'package:badges/badges.dart' as badges;

class MenuAndNotification extends StatelessWidget {
  const MenuAndNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
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
            Icons.sort,
            size: 30,
            color: Pallete.secondColor,
          ),
        ),
        Container(
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
          child: badges.Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.redAccent,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text(
              "3",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Icon(
              Icons.notifications,
              size: 30,
              color: Pallete.secondColor,
            ),
          ),
        ),
      ],
    );
  }
}

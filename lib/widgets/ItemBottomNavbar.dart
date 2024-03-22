import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapps/widgets/Pallete.dart';
import 'package:shopapps/data/data.dart';
import 'package:shopapps/widgets/BottomCartSheet.dart';
import 'package:sliding_sheet2/sliding_sheet2.dart';

class ItemBottomNavbar extends StatelessWidget {
  final ShoeItem shoeItem;

  const ItemBottomNavbar({Key? key, required this.shoeItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Pallete.mainColor,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Added to Cart: ${shoeItem.title}'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Aksi undo jika diperlukan
                    },
                  ),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 30,
              ),
              decoration: BoxDecoration(
                color: Pallete.secondColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Pallete.secondColor,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.cart_badge_plus,
                    color: Colors.white,
                    size: 32,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showSlidingBottomSheet(
                context,
                builder: (context) {
                  return SlidingSheetDialog(
                    elevation: 8,
                    cornerRadius: 16,
                    builder: (context, state) {
                      return BottomCartSheet(cartItems: [shoeItem]);
                    },
                  );
                },
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Pallete.secondColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Pallete.secondColor,
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Icon(
                Icons.shopping_bag,
                color: Colors.white,
                size: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

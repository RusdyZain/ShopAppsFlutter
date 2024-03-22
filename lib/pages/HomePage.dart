import 'package:flutter/material.dart';
import 'package:shopapps/widgets/AllItemsWidget.dart';
import 'package:shopapps/widgets/HomeBottomNavbar.dart';
import 'package:shopapps/widgets/RowItemWidget.dart';
import 'package:shopapps/widgets/MenuAndNotification.dart';
import 'package:shopapps/widgets/Search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: MenuAndNotification(),
              ),
              SizedBox(height: 15),
              Search(),
              SizedBox(height: 30),
              RowItemWidget(),
              SizedBox(height: 5),
              AllItemsWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavbar(),
    );
  }
}

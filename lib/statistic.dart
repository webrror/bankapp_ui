import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistic extends StatelessWidget {
  const Statistic({super.key});
  static String routeName = "/stats";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      animationDuration: Duration(milliseconds: 200),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          title: const Text(
            "Statistic",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(FluentIcons.arrow_sync_16_regular))
          ],
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 80),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(100)),
                child: TabBar(
                  //splashBorderRadius: BorderRadius.circular(100),
                  overlayColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black,
                  // indicatorColor: Colors.black38,
                  indicator: const BubbleTabIndicator(
                    indicatorHeight: 50.0,
                    indicatorColor: Color.fromRGBO(0, 0, 0, 1),
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                  ),
                  tabs: const [
                    Tab(
                      child: Text(
                        "Savings",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Expense",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

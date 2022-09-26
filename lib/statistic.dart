import 'package:bankapp_ui/widgets/target_card.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});
  static String routeName = "/stats";

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      animationDuration: const Duration(milliseconds: 200),
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
                  onPressed: () {},
                  icon: Icon(FluentIcons.arrow_sync_16_regular))
            ],
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 70),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  height: 55,
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
                      indicatorHeight: 45.0,
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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 30, right: 30),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Center(child: Text("Graph Placeholder")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: TargetCard(
                  percentage: 87,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "History",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.black45),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(200, 253, 205, 1),
                            borderRadius: BorderRadius.circular(15)),
                        margin: const EdgeInsets.only(right: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Grocery",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "30 September 2022",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          )),
    );
  }
}

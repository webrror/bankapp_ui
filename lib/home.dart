import 'package:bankapp_ui/statistic.dart';
import 'package:bankapp_ui/widgets/card_ui.dart';
import 'package:bankapp_ui/widgets/totalsentdata.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    NumberFormat toINR = NumberFormat.currency(locale: "en_IN", symbol: "₹");
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(200, 253, 205, 1),
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              FluentIcons.grid_20_regular,
              color: Colors.black,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FluentIcons.settings_20_regular,
              color: Colors.black,
            ),
          ),
          const CircleAvatar(
            radius: 20,
            backgroundColor: Color.fromRGBO(200, 253, 205, 1),
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
          ),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height / 7,
              color: const Color.fromRGBO(200, 253, 205, 1),
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20, top: 30),
                  child: CardUI(
                    bank: 'Federal Bank',
                    balance: 88427,
                    type: 'visa',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 20, right: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Send Money to",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: width / 2.5,
                            height: 90,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const Align(
                                    widthFactor: 0.7,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'),
                                        backgroundColor:
                                            Color.fromRGBO(200, 253, 205, 1),
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 80,
                        width: 58,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(206, 199, 254, 1),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                            splashRadius: 40,
                            onPressed: () {},
                            icon: const Icon(FluentIcons.search_20_regular)),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 20, right: 20, bottom: 10),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Amount",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            toINR.format(5000),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                          height: 45,
                          width: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(200, 253, 205, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            splashRadius: 1,
                            onPressed: () {
                              Navigator.pushNamed(context, Statistic.routeName);
                            },
                            icon:
                                const Icon(FluentIcons.arrow_right_16_regular),
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Divider(
                    color: Colors.black54,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 20, right: 20, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Total Sent",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            "View all",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black45),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TotalSentData(
                        name: "John Doe",
                        amount: 2000,
                      ),
                      const TotalSentData(
                        name: "John Cusack",
                        amount: 890,
                      ),
                      const TotalSentData(
                        name: "John Burtom",
                        amount: 10000,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

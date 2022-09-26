import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class TotalSentData extends StatefulWidget {
  const TotalSentData({
    Key? key,
    this.amount,
    required this.name,
  }) : super(key: key);
  final double? amount;
  final String name;
  @override
  State<TotalSentData> createState() => _TotalSentDataState();
}

class _TotalSentDataState extends State<TotalSentData> {
  @override
  Widget build(BuildContext context) {
    NumberFormat toINR = NumberFormat.currency(locale: "en_IN", symbol: "₹");
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("26 September 2022")
            ],
          ),
          const Spacer(),
          Text(
            toINR.format(widget.amount),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          )
        ],
      ),
    );
  }
}

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class CardUI extends StatefulWidget {
  const CardUI({
    Key? key,
    this.balance,
    this.type,
    required this.bank,
  }) : super(key: key);
  final double? balance;
  final String? type;
  final String bank;
  @override
  State<CardUI> createState() => _CardUIState();
}

class _CardUIState extends State<CardUI> {
  @override
  Widget build(BuildContext context) {
    NumberFormat toINR = NumberFormat.currency(locale: "en_IN", symbol: "₹");

    return Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.84),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: Colors.black45,
                offset: Offset(
                  10.0,
                  12.0,
                ),
                blurRadius: 20.0,
                spreadRadius: 3.0,
              ),
            ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text(
                    widget.bank,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Balance",
                            style: TextStyle(color: Colors.white38),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                FluentIcons.eye_16_regular,
                                color: Colors.white38,
                                size: 18,
                              ))
                        ],
                      ),
                      Text(
                          widget.balance == null
                              ? '₹ 0.0'
                              : toINR.format(widget.balance),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const Spacer(),
                  widget.type == 'visa'
                      ? const FaIcon(
                          FontAwesomeIcons.ccVisa,
                          color: Colors.white,
                          size: 35,
                        )
                      : widget.type == 'mastercard'
                          ? const FaIcon(
                              FontAwesomeIcons.ccMastercard,
                              color: Colors.white,
                              size: 35,
                            )
                          : const FaIcon(
                              FontAwesomeIcons.ccAmex,
                              color: Colors.white,
                              size: 35,
                            )
                ],
              ),
            )
          ],
        ));
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Transaction {

  late String inOrOut;
  late String icon;
  late String balance;
  late String valid;
  late String description;
  late String recipient;
  late String type;
  late Color iconColor;
  late Color firstColor;
  late Color secondColor;
  late String date;

  Transaction({
    required this.inOrOut,
    required this.icon,
    required this.balance,
    required this.valid,
    required this.description,
    required this.recipient,
    required this.type,
    required this.iconColor,
    required this.firstColor,
    required this.secondColor,
    required this.date
  });

  Transaction.fromJson(Map<String, dynamic> json){
    inOrOut = json["inOrOut"];
    type = json["type"];
    balance = json["balance"];
    valid = json["valid"];
    description = json["description"];
    recipient = json["recipient"];
    icon = json["icon"];
    iconColor = json["iconColor"];
    firstColor = json["firstColor"];
    secondColor = json["secondColor"];
    date = json["date"];
  }

  Map<String, dynamic> toJson() {
    return {
      "inOrOut": inOrOut,
      "type": type,
      "balance": balance,
      "valid": valid,
      "description": description,
      "recipient": recipient,
      "icon": icon,
      "iconColor": iconColor,
      "firstColor": firstColor,
      "secondColor": secondColor,
      "date": date
    };
  }
}

final List<Transaction> transactions = [
  Transaction(
      inOrOut: "Outgoing",
      type : "assets/images/mastercard.png",
      balance : "5,450",
      valid : "06/23",
      description: "Account Payment",
      recipient: "Victor",
      icon : "assets/images/outgoing (2).png",
      iconColor : Colors.orange,
      firstColor : AppColors.kGreyColor,
      secondColor : AppColors.kBlackColor,
      date : "14 Aug 2022"
  ),
  Transaction(
      inOrOut : "Incoming",
      type : "assets/images/verve.png",
      balance : "5,450",
      valid : "06/23",
      description: "Rental Space",
      recipient: "Somadina",
      icon : "assets/images/incoming.png",
      iconColor : Colors.green,
      firstColor : AppColors.kWhiteColor,
      secondColor : AppColors.kWhiteColor,
      date : "14 Aug 2022"
  ),
  Transaction(
      inOrOut : "Outgoing",
      type : "assets/images/mastercard.png",
      balance : "5,450",
      valid : "06/23",
      description: "Account Payment",
      recipient: "Soma Anton",
      icon : "assets/images/outgoing (2).png",
      iconColor : Colors.orange,
      firstColor : AppColors.kGreyColor,
      secondColor : AppColors.kBlackColor,
      date : "14 Aug 2022"
  )
];

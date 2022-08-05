import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluuter_finance_app/utils/colors.dart';

class Card {
  late String name;
  late String type;
  late String balance;
  late String valid;
  late String moreIcon;
  late String cardBackground;
  late Color bgColor;
  late Color firstColor;
  late Color secondColor;

  Card({
    required this.name,
    required this.type,
    required this.balance,
    required this.valid,
    required this.moreIcon,
    required this.cardBackground,
    required this.bgColor,
    required this.firstColor,
    required this.secondColor
  });

  Card.fromJson(Map<String, dynamic> json){
    name = json["name"];
    type = json["type"];
    balance = json["balance"];
    valid = json["valid"];
    moreIcon = json["moreIcon"];
    cardBackground = json["cardBackground"];
    bgColor = json["bgColor"];
    firstColor = json["firstColor"];
    secondColor = json["secondColor"];
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "type": type,
      "balance": balance,
      "valid": valid,
      "moreIcon": moreIcon,
      "cardBackground": cardBackground,
      "bgColor": bgColor,
      "firstColor": firstColor,
      "secondColor": secondColor
    };
  }

}

final List<Card> cardList = [
  Card(
      name: "Victor",
      type : "assets/images/mastercard.png",
      balance : "5,450",
      valid : "06/23",
      moreIcon : "assets/images/more.svg",
      cardBackground : "",
      bgColor : AppColors.kMasterCardColor,
      firstColor : AppColors.kGreyColor,
      secondColor : AppColors.kBlackColor
  ),
  Card(
      name : "Victor",
      type : "assets/images/verve.png",
      balance : "5,450",
      valid : "06/23",
      moreIcon : "assets/images/more.svg",
      cardBackground : "",
      bgColor : AppColors.kGeniusColor,
      firstColor : AppColors.kWhiteColor,
      secondColor : AppColors.kWhiteColor
  ),
  Card(
  name : "Soma Anton",
  type : "assets/images/mastercard.png",
  balance : "5,450",
  valid : "06/23",
  moreIcon : "assets/images/more.svg",
  cardBackground : "",
  bgColor : AppColors.kMasterCardColor,
  firstColor : AppColors.kGreyColor,
  secondColor : AppColors.kBlackColor
  )
];



//   List<Card> cardList = cardData.map((e) {
//     return Card(
//       name: e['name'].toString(),
//       type: e['type'].toString(),
//       e['name'].toString(),
//       e['name'].toString(),
//       e['name'].toString(),
//       e['cardBackground'].toString(),
//       e['bgColor'],
//       e['firstColor'],
//       e['secondColor'],
//     );
//   }).toList();
//
// var cardData = [
//   {
//     "name" : "Victor",
//     "type" : "assets/images/mastercard.png",
//     "balance" : "5,450",
//     "valid" : "06/23",
//     "moreIcon" : "",
//     "cardBackground" : "",
//     "bgColor" : AppColors.kMasterCardColor,
//     "firstColor" : AppColors.kWhiteColor,
//     "secondColor" : AppColors.kWhiteColor
//   },
//   {
//     "name" : "Soma Anton",
//     "type" : "assets/images/mastercard.png",
//     "balance" : "5,450",
//     "valid" : "06/23",
//     "moreIcon" : "",
//     "cardBackground" : "",
//     "bgColor" : AppColors.kMasterCardColor,
//     "firstColor" : AppColors.kGreyColor,
//     "secondColor" : AppColors.kBlackColor
//   },
//   {
//     "name" : "Victor",
//     "type" : "assets/images/mastercard.png",
//     "balance" : "5,450",
//     "valid" : "06/23",
//     "moreIcon" : "",
//     "cardBackground" : "",
//     "bgColor" : AppColors.kMasterCardColor,
//     "firstColor" : AppColors.kWhiteColor,
//     "secondColor" : AppColors.kWhiteColor
//   },
// ];

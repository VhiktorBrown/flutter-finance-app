class Wallet {
  late String name;
  late String wallet;
  late String number;
  late String logo;

  Wallet({
    required this.name,
    required this.wallet,
    required this.number,
    required this.logo,

  });

  Wallet.fromJson(Map<String, dynamic> json){
    name = json["name"];
    wallet = json["wallet"];
    number = json["number"];
    logo = json["logo"];
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "wallet": wallet,
      "number": number,
      "logo": logo
    };
  }

}

final List<Wallet> wallets = [
  Wallet(
      name: "Janet Richards",
      wallet : "Paga Wallet",
      number : "2389 **** **** 4635",
      logo : "assets/images/growth.png"
  ),
  Wallet(
      name: "Tom Keen",
      wallet : "Aspire Wallet",
      number : "2389 **** **** 4635",
      logo : "assets/images/growth.png"
  ),
  Wallet(
      name: "Raymond Reddington",
      wallet : "Chipper Cash",
      number : "3983 **** **** 0209",
      logo : "assets/images/growth.png"
  ),
  Wallet(
      name: "Janet Richards",
      wallet : "Paga Wallet",
      number : "2389 **** **** 4635",
      logo : "assets/images/growth.png"
  ),
  Wallet(
      name: "Tom Keen",
      wallet : "Aspire Wallet",
      number : "2389 **** **** 4635",
      logo : "assets/images/growth.png"
  ),
  Wallet(
      name: "Raymond Reddington",
      wallet : "Chipper Cash",
      number : "3983 **** **** 0209",
      logo : "assets/images/growth.png"
  )
];
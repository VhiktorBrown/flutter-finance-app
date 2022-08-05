
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluuter_finance_app/custom_icons/app_icons.dart';
import 'package:fluuter_finance_app/data/models/card.dart';
import 'package:fluuter_finance_app/data/models/transaction.dart';
import 'package:fluuter_finance_app/data/models/wallet.dart';
import 'package:fluuter_finance_app/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu_open_sharp, color: AppColors.kBlackColor,),
          padding: const EdgeInsets.only(left: 8),
          onPressed: (){

          },
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
          height: 55,
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(colors: AppColors.kGradientSlideButton,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            tileMode: TileMode.mirror,
            stops: <double>[0.0, 1.0]),
          ),

          child: ConfirmationSlider(
            onConfirmation: (){},
            height: 55,
            width: MediaQuery.of(context).size.width-32,
            backgroundColor: Colors.transparent,
            shadow: const BoxShadow(
              color: Colors.transparent
            ),
            foregroundColor: AppColors.kWhiteColor,
            foregroundShape: BorderRadius.circular(8),
            icon: Icons.arrow_forward_ios_outlined,
            iconColor: AppColors.kBlueColor,
            text: "Slide to make Payment",
            textStyle: GoogleFonts.nunito(
              fontSize: 14,
              color: AppColors.kWhiteColor,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),

      body: Container(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
              child: Text("Hi, James",
              style: GoogleFonts.nunito(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.kBlackColor
              ),),
            ),
            Container(
              height: 175,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16, right: 8),
                scrollDirection: Axis.horizontal,
                itemCount: cardList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 8),
                      height: 175,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(8),
                        color: cardList[index].bgColor,
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x10000000),
                            blurRadius: 10,
                            spreadRadius: 4,
                            offset: Offset(0.0, 8.0)
                          ),
                        ]
                      ),
                      child: Stack(
                        children: [
                          //MasterCard Logo
                          Positioned(
                            left: 16,
                            top: 12,
                              child: Image.asset(cardList[index].type,
                              width: 33,
                              height: 33,),
                          ),

                          //Name - Victor
                          Positioned(
                            top: 14,
                            right: 12,
                            child: Text(
                              cardList[index].name,
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: cardList[index].firstColor
                              ),
                            ),
                          ),
                          Positioned(
                            top: 60,
                            left: 16,
                              child: Text(
                                "Your Balance",
                                style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: cardList[index].firstColor
                                ),
                              )),

                          //Balance - $5,768
                          Positioned(
                            top: 80,
                            left: 16,
                            child: Text(
                              "\$${cardList[index].balance}",
                              style: GoogleFonts.nunito(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: cardList[index].secondColor
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 16,
                            child: Text(
                              "Valid Thru",
                              style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: cardList[index].firstColor
                              ),
                            ),
                          ),

                          //Valid - 06/24
                          Positioned(
                            bottom: 12,
                            left: 16,
                              child: Text(
                                cardList[index].valid,
                                style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: cardList[index].secondColor
                                ),
                              )
                          ),
                          Positioned(
                            right: 8,
                            bottom: 8,
                              child: SvgPicture.asset(cardList[index].moreIcon, height: 24, width: 24)
                          )
                        ],
                      ),
                    );
                  })
            ),
            //Show Last Transactions Text
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last Transactions",
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kBlackColor
                    ),),
                  Text("See All",
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kBlueColor
                    ),),
                ],
              )
            ),
            Container(
              height: 190,
              padding: EdgeInsets.only(left: 16, right: 8),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x04000000),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(0.0, 8.0)
                      )
                    ]
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 16,
                          child: Image.asset(transactions[index].icon, height: 18, width: 18,
                            color: transactions[index].iconColor,),
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                          child: Text(
                            transactions[index].inOrOut,
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: transactions[index].iconColor
                            ),
                          )),
                      Positioned(
                        top: 64,
                        left: 16,
                          child: Text(
                            transactions[index].balance,
                            style: GoogleFonts.nunito(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: transactions[index].iconColor
                            ),
                          )),
                      Positioned(
                        left: 16,
                        top: 106,
                        child: Text(
                          transactions[index].description,
                          style: GoogleFonts.nunito(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kGreyColor
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 48,
                          child: Text(
                            transactions[index].recipient,
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: AppColors.kBlackColor
                            ),
                          )
                      ),
                      Positioned(
                        left: 16,
                        bottom: 22,
                          child: Text(transactions[index].date,
                      style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kGreyColor
                      ),)),
                      Positioned(
                        right: 14,
                        bottom: 16,
                        child: Image.asset(
                          transactions[index].type,
                          width: 33,
                          height: 33,
                        ),
                      )
                    ],
                  ),
                );
              })),

            //Recent Transactions
            Padding(
                padding: const EdgeInsets.only(left: 24, top: 32, bottom: 16, right: 24),
                child: Text("Send Money",
                  style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor
                  ),),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: ListView.builder(
                itemCount: wallets.length,
                  itemBuilder: (context, index) {

                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.kWhiteColor,
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x04000000),
                            spreadRadius: 10,
                            blurRadius: 10,
                            offset: Offset(0.0, 8.0)
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(width: 12,),
                          Container(
                            height: 44,
                            width: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.kWhiteColor,
                            ),
                            child: Image.asset(wallets[index].logo),
                          ),
                          const SizedBox(width: 12,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(wallets[index].name, style: GoogleFonts.nunito(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.kBlackColor
                              ),),
                              Text(wallets[index].wallet, style: GoogleFonts.nunito(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.kGreyColor
                              ),)
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            wallets[index].number,
                            style: GoogleFonts.nunito(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: AppColors.kGreyColor
                            ),
                          ),
                          const SizedBox(width: 16,),
                        ],
                      ),
                    ],
                  ),
                );
              })),
          ],
        ),
      ),
    );
  }
}

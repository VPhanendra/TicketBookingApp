import 'package:booktickets/Screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/colum_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/layou_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets",style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumLayout(firstText: "Flutter DB", secondText: "Passenger",
                      alignment: CrossAxisAlignment.start,isColor: false,),
                      AppColumLayout(firstText: "5213 5436728", secondText: "passport",
                        alignment: CrossAxisAlignment.end, isColor: false,)

                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumLayout(firstText: "393763654 737353 ", secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,isColor: false,),
                      AppColumLayout(firstText: "B2SG28", secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end, isColor: false,)

                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png", scale: 11,),
                              Text(" *** 2426",style: Styles.headLineStyle3,)
                            ],
                          ),
                          Gap(AppLayout.getHeight(5)),
                          Text("Payment method",style: Styles.headLineStyle4,)
                        ],
                      ),
                      const AppColumLayout(firstText: "\$249.99", secondText: "Price",
                        alignment: CrossAxisAlignment.end, isColor: false,)
                    ],
                  ),
                ],
              ),
            ),
            /*
            bar code
             */
            SizedBox(height: 1,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(bottomRight:Radius.circular(AppLayout.getHeight(21)),
                bottomLeft: Radius.circular(AppLayout.getHeight(21)))
              ),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15),right: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom: AppLayout.getHeight(20 )),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(data: 'https://github.com/martinovovo',
                    barcode: Barcode.code128(),
                  drawText: false,
                  color: Styles.textColor,
                  width: double.infinity,
                  height: 70,),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],),
            ),
          ],
        ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(295),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2),
              ),
              child: CircleAvatar(maxRadius: 4,
              backgroundColor: Styles.textColor,),

            ),
          ),
        Positioned(
          right: AppLayout.getHeight(22),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Styles.textColor,width: 2),
            ),
            child: CircleAvatar(maxRadius: 4,
              backgroundColor: Styles.textColor,),

          ),
        ),
      ]),
    );
  }
}

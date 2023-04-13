import 'package:booktickets/Screens/hotel_screen.dart';
import 'package:booktickets/Screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:  [
                         Text("Good Morning", style: Styles.headLineStyle3,),
                         const Gap(10),
                         Text("Book Tickets",style: Styles.headLineStyle2,),
                       ],
                     ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/present.png")
                          )
                        ),
                      )
                    ],
                  ),
                  const Gap(25),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFF4F6F)
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                    child: Row(
                      children: [
                        const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Color(0xFFBFC205),),
                        Text("Search",style: Styles.headLineStyle4,)
                      ],
                    ),
                  ),
                  const Gap(30),
                  const AppDoubleTextWidget(bigText: "Upcoming flights", smallText: "View all")
                ],
              ),
            ),
            const Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
              ),
            ),
            const Gap(15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View all"),
            ),
            const Gap(15),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              ),
            ),

          ],
      ),
    );
  }
}

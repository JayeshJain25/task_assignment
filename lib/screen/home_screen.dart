import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_assignment/routes/route_name.dart';
import 'package:task_assignment/utils/common_function.dart';
import 'package:task_assignment/utils/constants.dart';

import '../model/transaction_model.dart';
import '../widget/common_widget.dart';
import '../widget/trasanction_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              icon(
                icon: Iconsax.home_2,
                size: 30,
              ),
              icon(
                icon: Iconsax.card,
                size: 30,
              ),
              containerWithIcon(
                clr: btnBgClr,
                iconClr: Colors.white,
                icon: Iconsax.add,
              ),
              GestureDetector(
                onTap: () {
                  moveToNextScreen(
                    context,
                    RouteName.detailScreen,
                  );
                },
                child: icon(
                  icon: Icons.attach_money,
                  size: 30,
                ),
              ),
              icon(
                icon: Iconsax.user,
                size: 30,
              ),
            ],
          ),
        ),
        backgroundColor: bgClr,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 0.045.sh,
                ),
              ),
              SliverToBoxAdapter(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  elevation: 4,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            icon(
                              size: 25,
                              icon: Iconsax.textalign_justifyleft4,
                              iconC: btnBgClr,
                            ),
                            icon(
                              iconC: btnBgClr,
                              size: 25,
                              icon: Icons.more_vert,
                            )
                          ],
                        ),
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            userImage,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        text(
                          text: "Jayesh Jain",
                          color: textClr,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        text(
                          text: "UX/UI Designer",
                          color: Colors.black,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            cardSectionWidget(
                              text1: "\$8900",
                              text2: "Income",
                            ),
                            verticalDivider(),
                            cardSectionWidget(
                              text1: "\$5500",
                              text2: "Expenses",
                            ),
                            verticalDivider(),
                            cardSectionWidget(
                              text1: "\$890",
                              text2: "Loan",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          text(
                            text: "Overview",
                            color: btnBgClr,
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          icon(
                            icon: Iconsax.notification_bing4,
                            size: 25,
                            iconC: btnBgClr,
                          ),
                        ],
                      ),
                      text(
                        text: "Sept 13, 2020",
                        color: btnBgClr,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return transactionCardW(
                      tList[index],
                    );
                  },
                  childCount: tList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

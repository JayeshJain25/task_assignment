import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task_assignment/model/transaction_model.dart';
import 'package:task_assignment/utils/constants.dart';
import 'package:task_assignment/widget/common_widget.dart';

import '../model/transaction_type.dart';

class TransactionDetail extends StatefulWidget {
  const TransactionDetail({super.key});

  @override
  State<TransactionDetail> createState() => _TransactionDetailState();
}

class _TransactionDetailState extends State<TransactionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgClr,
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          bottom: 25,
          left: 15,
          right: 15,
        ),
        child: textBtn(
          primaryClr: btnBgClr,
          bgClr: btnBgClr,
          function: () {},
          text: "See Details",
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: icon(
            size: 28,
            icon: Iconsax.arrow_left_24,
            iconC: Colors.black,
          ),
        ),
        actions: [
          icon(
            size: 28,
            icon: Iconsax.search_normal,
            iconC: Colors.black,
          ),
          const SizedBox(
            width: 18,
          ),
        ],
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: bgClr,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(
                  text: "Recent Transactions",
                  color: selectableContainerBgClr,
                  fontSize: 21.sp,
                  fontWeight: FontWeight.bold,
                ),
                text(
                  text: "See all",
                  color: smallTextClr,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: tTypeList.length,
                itemBuilder: (ctx, index) {
                  return selectableContainer(
                    bgClr: tTypeList[index].value
                        ? selectableContainerBgClr
                        : Colors.white,
                    textClr:
                        tTypeList[index].value ? Colors.white : smallTextClr,
                    textV: tTypeList[index].text,
                    function: () {
                      setState(() {
                        for (var element in tTypeList) {
                          element.value = false;
                        }
                        tTypeList[index].value = !tTypeList[index].value;
                      });
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            text(
              text: "Today",
              color: selectableContainerBgClr,
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 20,
            ),
            transactionCardW1(
              TransactionModel(
                text1: "Payment",
                text2: "Payment from Andrea",
                value: "30.00",
                icon: Iconsax.direct_inbox,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Center(
              child: Stack(alignment: Alignment.center, children: [
                SizedBox(
                  width: 1.sw,
                  height: 214.h,
                ),
                const CircleAvatar(
                  radius: 100,
                  backgroundColor: l3,
                  child: CircleAvatar(
                    radius: 95,
                    backgroundColor: bgClr,
                    child: CircleAvatar(
                      radius: 75,
                      backgroundColor: l3,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: l2,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: l1,
                          child: CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              userImage,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 155,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImage1),
                    ),
                  ),
                ),
                const Positioned(
                  left: 50,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImage2),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  left: 85,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImage3),
                    ),
                  ),
                ),
                const Positioned(
                  right: 50,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImage4),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  right: 85,
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(userImage5),
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

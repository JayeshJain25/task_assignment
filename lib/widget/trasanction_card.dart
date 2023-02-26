import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_assignment/model/transaction_model.dart';

import '../utils/constants.dart';
import 'common_widget.dart';

Widget transactionCardW(TransactionModel tModel) {
  return Container(
    margin: const EdgeInsets.only(bottom: 15),
    child: Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          22,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: containerWithIcon(
            iconClr: Colors.black,
            clr: containerBgClr,
            icon: tModel.icon,
          ),
          title: text(
            text: tModel.text1,
            color: Colors.black,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
          ),
          subtitle: text(
            text: tModel.text2,
            color: smallTextClr,
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.start,
          ),
          trailing: numText(
            text: "\$${tModel.value}",
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    ),
  );
}

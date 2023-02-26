import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TransactionModel {
  TransactionModel({
    required this.text1,
    required this.text2,
    required this.value,
    required this.icon,
  });

  final String text1;
  final String text2;
  final String value;
  final IconData icon;
}

List<TransactionModel> tList = [
  TransactionModel(
    text1: "Sent",
    text2: "Sending Payment to Clients",
    value: "150",
    icon: Iconsax.arrow_up_34,
  ),
  TransactionModel(
    text1: "Receive",
    text2: "Receiving Salary from company",
    value: "250",
    icon: Iconsax.arrow_down4,
  ),
  TransactionModel(
    text1: "Loan",
    text2: "Loan for the Car",
    value: "400",
    icon: Iconsax.dollar_square4,
  )
];

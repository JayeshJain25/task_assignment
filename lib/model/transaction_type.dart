class TransactionType {
  TransactionType({
    required this.text,
    required this.value,
  });

  final String text;
  late bool value;
}

List<TransactionType> tTypeList = [
  TransactionType(
    text: "All",
    value: true,
  ),
  TransactionType(
    text: "Income",
    value: false,
  ),
  TransactionType(
    text: "Expense",
    value: false,
  )
];

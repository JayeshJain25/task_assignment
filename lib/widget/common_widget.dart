import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../model/transaction_model.dart';
import '../utils/constants.dart';

//TEXT

Widget text({
  required String text,
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    style: GoogleFonts.poppins(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

Widget numText({
  required String text,
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
  TextAlign? textAlign,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    style: GoogleFonts.nunito(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}

// Selectable Container
Widget selectableContainer({
  required Function() function,
  required Color bgClr,
  required String textV,
  required Color textClr,
}) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: 100.w,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      height: 25.h,
      child: Card(
        color: bgClr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
          child: text(
            text: textV,
            color: textClr,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
  );
}

// BUTTON

Widget textBtn({
  required Color primaryClr,
  required Color bgClr,
  required Function() function,
  required String text,
  required Color color,
}) {
  return TextButton(
    style: TextButton.styleFrom(
      backgroundColor: bgClr,
      minimumSize: const Size(
        350,
        65,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32),
        side: BorderSide(
          color: primaryClr,
          width: 0,
        ),
      ),
    ),
    onPressed: function,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: color,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

// TEXT FIELD

Widget inputTextFieldWithIcon({
  required TextInputType type,
  required String hintTxt,
  required Icon icon,
  TextEditingController? controller,
}) {
  return TextFormField(
    textInputAction: TextInputAction.next,
    validator: (value) {
      if (value != null && value.isEmpty) {
        return "Can't be empty";
      } else if (type == TextInputType.emailAddress) {
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value!)) {
          return "Please enter a valid email address";
        } else {
          return null;
        }
      } else {
        return null;
      }
    },
    keyboardType: type,
    controller: controller,
    style: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
    ),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      fillColor: Colors.white,
      filled: true,
      prefixIcon: icon,
      prefixIconColor: smallTextClr,
      hintText: hintTxt,
      hintStyle: GoogleFonts.poppins(
        fontSize: 13.sp,
        color: const Color(0xFF9E9E9E),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  );
}

Widget passwordField({
  required TextInputType type,
  required IconButton icon,
  TextEditingController? controller,
  required bool isObscure,
}) {
  return TextFormField(
    validator: (value) {
      if (value != null && value.isEmpty) {
        return "Can't be empty";
      } else {
        return null;
      }
    },
    controller: controller,
    obscureText: isObscure,
    style: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
    ),
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      suffixIcon: icon,
      suffixIconColor: smallTextClr,
      hintText: 'Password',
      fillColor: Colors.white,
      prefixIcon: const Icon(
        Iconsax.lock_1,
      ),
      prefixIconColor: smallTextClr,
      filled: true,
      hintStyle: GoogleFonts.poppins(
        fontSize: 13.sp,
        color: const Color(0xFF9E9E9E),
      ),
      errorBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
        borderSide: BorderSide(
          width: 0,
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(18),
      ),
    ),
  );
}

// ICON

Widget icon({
  required double size,
  required IconData icon,
  Color? iconC,
}) {
  return Icon(
    icon,
    color: iconC ?? iconClr,
    size: size,
  );
}

// Card Section

Widget cardSectionWidget({
  required String text1,
  required String text2,
}) {
  return Column(
    children: [
      numText(
        text: text1,
        color: btnBgClr,
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
      ),
      const SizedBox(
        height: 5,
      ),
      text(
        text: text2,
        color: Colors.black,
        fontSize: 9.sp,
        fontWeight: FontWeight.w500,
      ),
    ],
  );
}

// DIVIDER

Widget verticalDivider() {
  return const SizedBox(
    height: 40,
    child: VerticalDivider(
      color: Colors.grey,
    ),
  );
}

// BOX WIH ICON

Widget containerWithIcon({
  required Color clr,
  required IconData icon,
  required Color iconClr,
}) {
  return Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      color: clr,
      borderRadius: BorderRadius.circular(
        12,
      ),
    ),
    child: Icon(
      icon,
      color: iconClr,
    ),
  );
}

Widget transactionCardW1(TransactionModel tModel) {
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
          leading: icon(
            iconC: selectableContainerBgClr,
            size: 35,
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

import 'package:flutter/material.dart';
import 'package:scientific_calcu/constant/AppColors.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.controller});

  final TextEditingController controller ;

  TextEditingController inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: 25,vertical: 50),
      child: TextField(
          cursorColor: AppColors.secondaryColor,
          controller: controller,
          textAlign: TextAlign.right,

          style: TextStyle(fontSize: 50,color: AppColors.secondary3Color),
          readOnly: true,
          autofocus: true,
          showCursor: true,
          decoration: InputDecoration(

              border: InputBorder.none,
              fillColor: AppColors.primaryColor,
              filled: true

          )
      ),
    );
  }
}

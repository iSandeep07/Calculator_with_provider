import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calcu/provider/cal_provider.dart';

import '../constant/AppColors.dart';


class Button1 extends StatelessWidget {
  const Button1({super.key , required this.label ,this.textColor = AppColors.secondary3Color });

  final String label;
  final  Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Provider.of<CalculatorProvider>(context,listen: false).setValue(label);
      },
      child: Material(
          elevation :3,
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(50),
          child: CircleAvatar(radius: 36,child: Text(label,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600,color: textColor),),backgroundColor: AppColors.primaryColor,)),
    );
  }
}

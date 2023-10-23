import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calcu/provider/cal_provider.dart';

import '../constant/AppColors.dart';

class CalculateButton extends StatefulWidget {
  const CalculateButton({super.key});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
Provider.of<CalculatorProvider>(context , listen: false).setValue("=");
      },
      child: Container(
        height: 155,
        width: 60,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),

        ),
        child: Center(child: Text("=",style: TextStyle(fontSize: 32,color: AppColors.secondary3Color),)),
      ),
    );
  }
}

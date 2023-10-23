import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scientific_calcu/Screen/widgets_data.dart';
import 'package:scientific_calcu/constant/AppColors.dart';
import 'package:scientific_calcu/provider/cal_provider.dart';
import 'package:scientific_calcu/widgets/textfield.dart';

import '../widgets/cla_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final pading = EdgeInsets.symmetric(vertical: 25,horizontal: 30);
    final screenheight = MediaQuery.sizeOf(context).height;
    final screenwidth = MediaQuery.sizeOf(context).width;
    final decaration = BoxDecoration(
      color: AppColors.secondary2Color,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30))
      );
    return Consumer<CalculatorProvider>(
      builder: (context , provider , index) {
        return Scaffold(
        appBar: AppBar(
        title: Center(child: Text("CALCULATOR",style: TextStyle(color: Colors.white),)),
        ),
        body: Container(
        height: screenheight,
        width: screenwidth,
        decoration: BoxDecoration(
        color: Colors.black
        ),
        child: Column(
        children: [
        CustomTextField(controller: provider.compController,),
        // SizedBox(height: 50),
        Spacer(),
        Container(
        height: screenheight * 0.6,
        width: screenwidth,
        padding: pading,
        decoration: decaration,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) => buttonList[index]),
        ),

        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) => buttonList[index + 4]),
        ),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(4, (index) => buttonList[index + 8]),
        ),
        Row(
        children: [
        Expanded(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [

        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(3, (index) => buttonList[index + 12]),
        ),
        SizedBox(height: 10),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(3, (index) => buttonList[index + 15]),
        ),
        ],
        ),
        ),
        SizedBox(width: 15,),
        const CalculateButton()
        ],
        )
        ],
        ),

        )
        ],
        )
        ,
        )
        ,
        );

      }
    );
  }
}

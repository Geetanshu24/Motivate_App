import 'package:flutter/material.dart';
import 'package:suggestion_app/constant/color_constants.dart';
import 'package:suggestion_app/constant/image_constants.dart';
import 'package:suggestion_app/customWidget/custom_button.dart';
import 'package:suggestion_app/customWidget/custom_text_widget.dart';

import '../constant/constants.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(),
            topSection(),
            mainSection(),
        ],),
      ),
    );
  }

  Widget appBar(){
    return const Padding(padding: EdgeInsets.only(left: 20,top: 20),child: CustomTextWidget(text: "SUGGESTION APP", fontWeight: FontWeight.w700, fontSize: 30, color: Colors.white),);
  }
  
  Widget topSection(){
    return  Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder:(context,index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomButton(text: Constants.trendingSuggestion[index], onPressed: (){
                    }, height: 40,),
                  );
                }
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget mainSection(){
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 600,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10.0,
              ),
              padding: const EdgeInsets.all(10.0),
              itemCount: 6,
              itemBuilder: (context, index) {
                int rowHeight = (Constants.trendingSuggestion.length / 3).ceil();
                return Container(
                  height: rowHeight * 10,
                  decoration: BoxDecoration(
                    color: ColorConstants.black,
                    border: Border.all(width: 1,color: ColorConstants.darkGray),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstant.icMovie,scale: 15,color: Colors.white,),
                      const SizedBox(height: 10,),
                       CustomTextWidget(
                         text: Constants.watchList[index],
                         fontSize: 16,
                         fontWeight: FontWeight.w600,
                         color: Colors.white,
                       ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ibilling/utils/const.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      body: Container(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16,top:30),
                child: Text("Date",style: TextStyle(color:colorGrey,fontSize: 14,fontWeight: FontWeight.w700),),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 16,top: 16,),
                child: Row(

                  children: [
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: colorDark,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 19,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("16.02.2021",style: secondNameStyle,),
                            SizedBox(width: 6,),
                            Image.asset("assets/images/calendar.png")
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    Text("-",style: firstNameStyle,),
                    SizedBox(width: 12,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(
                          color: colorDark,
                          borderRadius: BorderRadius.circular(5),

                        ),
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 19,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("To",style: secondNameStyle,),
                            SizedBox(width:62 ,),
                            Image.asset("assets/images/calendar.png")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 195.33),
                  child: Container(


                    child: Column(

                      children: [
                        Image.asset("assets/images/document.png",color: colorGrey,),
                        SizedBox(height: 15.33,),
                        Text("No history for this  period",style: secondNameStyle,)

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

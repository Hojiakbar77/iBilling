import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline_fixed/date_picker_timeline_fixed.dart';
import 'package:ibilling/utils/const.dart';
import 'package:ibilling/data/dummy_data.dart';

import '../data/dummy_data.dart';
class ContractsPage extends StatefulWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  State<ContractsPage> createState() => _ContractsPageState();
}

class _ContractsPageState extends State<ContractsPage> {

 DateTime  _selectedValue=DateTime.now();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,

       body: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Container(
             color: colorDark1,
             child: DatePicker(
               DateTime.now(),
               initialSelectedDate: DateTime.now(),


               selectionColor: colorDeppgreen,
               selectedTextColor: colorWhite,

               onDateChange: (date) {
                 // New date selected
                 setState(() {
                   _selectedValue = date;
                 });
               },

             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top:40,left: 16,bottom: 20),
             child: Row(
               children: [
                 InkWell(
                   onTap: (){},
                   child: Container(

                     width: MediaQuery.of(context).size.width / 4.5,
                     height: MediaQuery.of(context).size.height / 19,
                     decoration: BoxDecoration(
                       color: const Color(0xff00A795),
                       borderRadius: BorderRadius.circular(6)
                     ),

                     child: const Center(child: Text("Contracts",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),


                   ),
                 ),
                 InkWell(
                   onTap: (){},
                   child: SizedBox(


                       width: MediaQuery.of(context).size.width / 4.5,
                       height: MediaQuery.of(context).size.height / 19,

                     child: const Center(
                       child: Text("Invoice",style: TextStyle(color: colorWhite,fontSize: 15,fontWeight: FontWeight.w500),
                   ),
                     )
                   ),
                 ),
               ],
             ),
           ),
           Expanded(

             child: ListView.builder(


                 shrinkWrap: true,
                 itemCount: Users.informations.length,
                 itemBuilder: (context, index) {
                   return buildItem( Users.informations[index], context);




                 }
             ),
           ),

         ],
       )




    );
  }
}

Widget buildItem(Users info, context){
  return Padding(
    padding: const EdgeInsets.only(left: 16,right: 16,bottom: 16),
    child: Container(
      width: MediaQuery.of(context).size.width / 1.0,
      height: MediaQuery.of(context).size.height / 5.0,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: colorDark1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [ ImageIcon(AssetImage("assets/images/paper.png",),color: colorDeppgreen),
                  SizedBox(width: 5,),
                  Text(info.number! ,style: TextStyle(color:colorWhite,fontSize: 14,fontWeight: FontWeight.w700),),],),

                Container(
                  alignment: Alignment.topRight,

                  child: Center(child: Text(info.status!,style: TextStyle(color:  info.status =="Paid"
                      ?colorDeppgreen:(info.status=="In Process"?colorOrange:colorRed),
                  )
                  ),
                  ),
                  width: info.status=="Paid" ? MediaQuery.of(context).size.width / 6.5
                      :(info.status=="In Process"? MediaQuery.of(context).size.width / 5:MediaQuery.of(context).size.width / 3 ),
                  height:  MediaQuery.of(context).size.height / 25,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(12),
                    color:info.status=="Paid"? colorDeppgreen.withOpacity(0.15)
                        :(info.status=="In Process"?colorOrange.withOpacity(0.15):colorRed.withOpacity(0.15)),
                  ),

                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: [
                Text("Fish:",style: firstNameStyle,),
                SizedBox(width: 7.98,),
                Text(info.fish!,style: secondNameStyle,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14,top: 12),
            child: Row(
              children: [
                Text("Amount:".tr(),style: firstNameStyle,),
                SizedBox(width: 7.98,),
                Text(info.amount!,style: secondNameStyle,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14,top: 12),
            child: Row(
              children: [
                Text("Last invoice:".tr(),style: firstNameStyle,),
                SizedBox(width: 7.98,),
                Text(info.lastInvoice!,style: secondNameStyle,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14,top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [ Text("Number of invoices:".tr(),style: firstNameStyle,),
                  SizedBox(width: 7.98,),
                  Text(info.noInvoice!,style: secondNameStyle,),
                ],),
                Container(
                  alignment: Alignment.topCenter,
                  child: Text(info.date!,style: TextStyle(color:colorGrey,fontSize: 14,fontWeight: FontWeight.w700),),)
              ],


            ),
          ),


        ],
      ),
    ),
  );

}



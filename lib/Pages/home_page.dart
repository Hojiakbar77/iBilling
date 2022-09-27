import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/Pages/contracts_pages.dart';
import 'package:ibilling/Pages/history_page.dart';
import 'package:ibilling/Pages/new_page.dart';
import 'package:ibilling/Pages/profile_page.dart';
import 'package:ibilling/Pages/saved_page.dart';
import 'package:ibilling/utils/const.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage= 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ContractsPage(),
    HistoryPage(),
    NewPage(),
    SavedPage(),
    ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 14,left: 20,bottom: 13),
          child: CircleAvatar(

            child: Image.asset('assets/images/elips.png',
                fit:BoxFit.cover,
                height:28.00,
                width:28.00) ,

          ),
        ),

        title:  Text(_selectedPage==0?"Contracts".tr():
        (_selectedPage==1?"History".tr():(_selectedPage==2?"New Contracts".tr():
        (_selectedPage==3?"Saved".tr():"Profile".tr()))),style: TextStyle(color: colorWhite)),
        backgroundColor: colorBlack,

        actions: [
          _selectedPage==4? Container() :
          builactions()



        ],

      ),
      body:_widgetOptions.elementAt(_selectedPage),
      bottomNavigationBar:  BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPage,
        selectedItemColor: colorWhite,
        unselectedItemColor: colorGrey,
        backgroundColor: colorDark,



        onTap: _onItemTapped,


        items: const[
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.doc_plaintext,color: colorWhite,), label: "Contracts" , ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.clock,color: colorWhite), label: "History" ),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined,color: colorWhite,), label: "New" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.bookmark,color: colorWhite,), label: "Saved" ),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person,color: colorWhite,), label: "Profile" )
        ],


      ),

    );
  }
}
Widget builactions(){
  return Row(
    children: [
      InkWell(
          onTap: (){},
          child: const ImageIcon(AssetImage('assets/images/filter.png'))),
      const SizedBox(width: 6,),
      InkWell(
          onTap: (){},
          child: const ImageIcon(AssetImage('assets/images/line.png'))),
      IconButton(

          onPressed: ()async {

          },


          icon:const Icon(CupertinoIcons.search) ),
    ],
  );
}


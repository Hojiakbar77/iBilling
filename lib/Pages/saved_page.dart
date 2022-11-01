import 'package:flutter/material.dart';
import 'package:ibilling/utils/const.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset("assets/images/bookmark.png",color: colorGrey,),
            const SizedBox(height: 15,),
            const Text("No saved Contracts",style: TextStyle(color: colorGrey,fontSize:14 ,fontWeight: FontWeight.w600),)
          ],
        ),
      ),
    );
  }
}

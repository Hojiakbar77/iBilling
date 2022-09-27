import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ibilling/utils/const.dart';

import 'package:ibilling/ExpandedlistAnimationWidget.dart';
import 'package:ibilling/Scrollbar.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List<String> _list = [
    'Physical'.tr(),
    "Legal".tr(),
  ];
  List<String> _list1 = [
    'Paid.'.tr(),
    "In process.".tr(),
    "Rejected by Payme".tr(),
    "Rejacted by IQ".tr()
  ];
  bool isStrechedDropDown = false;
  bool isStrechedDropDown1 = false;
  int? groupValue;
  int? groupValue1;
  var value = 0;
  String title = '';
  String title1 = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBlack,
        extendBodyBehindAppBar: true,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Лицо",
                    style: secondNameStyle,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: colorDark,
                            border: Border.all(width: 1, color: colorDark),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Column(
                          children: [
                            Container(
                                // height: 45,
                                width: double.infinity,
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: colorBlack,
                                    border: Border.all(
                                      width: 2,
                                      color: colorGrey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                constraints: BoxConstraints(
                                  minHeight: 50,
                                  minWidth: double.infinity,
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isStrechedDropDown =
                                                  !isStrechedDropDown;
                                            });
                                          },
                                          child: Text(
                                            title,
                                            style: firstNameStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown =
                                                !isStrechedDropDown;
                                          });
                                        },
                                        child: Icon(
                                          isStrechedDropDown
                                              ? Icons.arrow_upward
                                              : Icons.arrow_downward,
                                          color: colorGrey,
                                        ))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController2) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController2,
                                        shrinkWrap: true,
                                        itemCount: _list.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                _list.elementAt(index),
                                                style: thirdNameSyle,
                                              ),
                                              value: index,
                                              groupValue: groupValue,
                                              onChanged: (val) {
                                                setState(() {
                                                  groupValue = val as int?;
                                                  title =
                                                      _list.elementAt(index);
                                                  setState(() {
                                                    isStrechedDropDown =
                                                        !isStrechedDropDown;
                                                  });
                                                });
                                              });
                                        }),
                                scrollController: ScrollController(),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Fisher’s full name".tr(),
                    style: secondNameStyle,
                  ),
                  builTextFiled(Icon(null), TextInputType.text),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Address of the organization".tr(),
                    style: secondNameStyle,
                  ),
                  builTextFiledaddres(),
                  SizedBox(
                    height: 16,
                  ),
                  Text("ИНН", style: secondNameStyle),
                  builTextFiled(
                      Icon(
                        CupertinoIcons.question_circle_fill,
                        color: colorGrey,
                      ),
                      TextInputType.number),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Save contract".tr(),
                    style: secondNameStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            color: colorDark,
                            border: Border.all(width: 1, color: colorDark),
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: Column(
                          children: [
                            Container(
                                // height: 45,
                                width: double.infinity,
                                padding: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: colorBlack,
                                    border: Border.all(
                                      width: 2,
                                      color: colorGrey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                constraints: BoxConstraints(
                                  minHeight: 50,
                                  minWidth: double.infinity,
                                ),
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              isStrechedDropDown1 =
                                                  !isStrechedDropDown1;
                                            });
                                          },
                                          child: Text(
                                            title1,
                                            style: firstNameStyle,
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isStrechedDropDown1 =
                                                !isStrechedDropDown1;
                                          });
                                        },
                                        child: Icon(
                                          isStrechedDropDown1
                                              ? Icons.arrow_upward
                                              : Icons.arrow_downward,
                                          color: colorGrey,
                                        ))
                                  ],
                                )),
                            ExpandedSection(
                              expand: isStrechedDropDown1,
                              height: 100,
                              child: MyScrollbar(
                                builder: (context, scrollController1) =>
                                    ListView.builder(
                                        padding: EdgeInsets.all(0),
                                        controller: scrollController1,
                                        shrinkWrap: true,
                                        itemCount: _list1.length,
                                        itemBuilder: (context, index) {
                                          return RadioListTile(
                                              title: Text(
                                                _list1.elementAt(index),
                                                style: thirdNameSyle,
                                              ),
                                              value: index,
                                              groupValue: groupValue1,
                                              onChanged: (value) {
                                                setState(() {
                                                  groupValue1 = value as int?;
                                                  title1 =
                                                      _list1.elementAt(index);
                                                  setState(() {
                                                    isStrechedDropDown1 =
                                                        !isStrechedDropDown1;
                                                  });
                                                });
                                              });
                                        }),
                                scrollController: ScrollController(),
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1,
                      height: MediaQuery.of(context).size.height / 17,
                      decoration: BoxDecoration(
                          color: colorDeppgreen,
                          borderRadius: BorderRadius.circular(6)),
                      child: Center(
                          child: Text(
                        "Save contract".tr(),
                        style: TextStyle(
                            color: colorWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

Widget builTextFiled(Icon, TextInputType) {
  return Padding(
    padding: const EdgeInsets.only(top: 6),
    child: Container(
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 2, color: colorGrey)),
      child: TextField(
        keyboardType: TextInputType,
        style: TextStyle(color: Colors.white),
        cursorColor: colorGrey,
        decoration: InputDecoration(
          suffixIcon: Icon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: colorBlack),
          ),
        ),
      ),
    ),
  );
}

Widget builTextFiledaddres() {
  return Padding(
    padding: const EdgeInsets.only(top: 6),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(width: 2, color: colorGrey)),
      child: TextField(
        maxLines: 3,
        style: TextStyle(color: Colors.white),
        cursorColor: colorGrey,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: colorBlack),
          ),
        ),
      ),
    ),
  );
}

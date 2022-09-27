import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/utils/const.dart';
import 'package:provider/provider.dart';

import '../data/language.dart';
import '../provider/lang_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool selected = false;
  get Selected => [true, false, false];
  final List<Lang> _langs = [
    Lang('uz', true),
    Lang("ru", false),
    Lang('en', false),
  ];
  var activeLangIndex = 0;
  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: colorBlack,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  color: colorDark1, borderRadius: BorderRadius.circular(6)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16.05, top: 20, right: 16.05),
                        child: Image.asset(
                          "assets/images/vector.png",
                        ),
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 16),
                            child: Text(
                              "Otabek Abdusamatov    ",
                              style: TextStyle(
                                  color: colorDeppgreen,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Graphic designer • IQ Education",
                            style: TextStyle(
                              color: colorWhite,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.05, top: 16.05, right: 16.05),
                    child: Row(
                      children: [
                        Text(
                          "Data of birth: ",
                          style: firstNameStyle,
                        ),
                        Text(
                          "16.09.2001",
                          style: secondNameStyle,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.05, top: 16.05, right: 16.05),
                    child: Row(
                      children: [
                        Text(
                          "Phone number: ",
                          style: firstNameStyle,
                        ),
                        Text(
                          "+998 97 721 06 88",
                          style: secondNameStyle,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.05, top: 16.05, right: 16.05),
                    child: Row(
                      children: [
                        Text(
                          "Email: ",
                          style: firstNameStyle,
                        ),
                        Text(
                          "predatorhunter041@gmail.com",
                          style: secondNameStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              child: Column(children: [

                Row(
                  children: [
                    ToggleButtons(
                      fillColor: Colors.transparent,
                      selectedBorderColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      selectedColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      children: [
                        langButtons(_langs[0]),
                        langButtons(_langs[1]),
                        langButtons(_langs[2])
                      ],
                      isSelected: _langs.map((e) => e.isActive).toList(),
                      onPressed: (int index) {
                        setState(() {
                          for (var e in _langs) {
                            e.isActive = false;
                          }
                          _langs[index].isActive = true;
                        });
                        switch (index) {
                          case 0:
                            {
                              var newlocale = Locale("uz");
                              context.setLocale(newlocale);

                              langProvider.langChanged();
                            }
                            break;
                          case 1:
                            {
                              var newlocale = Locale("ru");
                              context.setLocale(newlocale);

                              langProvider.langChanged();
                            }
                            break;
                          case 2:
                            {
                              var newlocale = Locale("en");
                              context.setLocale(newlocale);

                              langProvider.langChanged();
                            }
                        }
                      },
                    )
                  ],
                ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}

Widget langButtons(Lang langs) {
  return Container(
      height: 40,
      width: 40,
      child: Center(
        child: Text(
          langs.name,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: langs.isActive
              ? Colors.white.withOpacity(0.5)
              : Colors.black12));
}
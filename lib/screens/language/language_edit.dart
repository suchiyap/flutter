import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

import 'language_top.dart';

class LanguageEdit extends StatefulWidget {
  static String routeName = "/language-edit-page";
  const LanguageEdit({super.key});

  @override
  State<LanguageEdit> createState() => _LanguageEditState();
}

class _LanguageEditState extends State<LanguageEdit> {
  String? _selectedLanguage;
  final List<String> _languageNameList = ['简体中文', 'English', 'Bahasa Melayu'];
  final List<String> _languageCodeList = ['zh', 'en', 'ms'];

  @override
  void initState() {
    super.initState();
    _selectedLanguage = 'zh';
  }

  @override
  Widget build(BuildContext context) {
    //print(_selectedLanguage);
    return Scaffold(
      appBar: const LanguageTop(),
      body: Column(
        children: <Widget>[
          for(var i = 0; i < _languageNameList.length; i++) 
          RadioListTile(
            activeColor: MaterialStateColor.resolveWith((states) => kRatingBarColor),
            selectedTileColor: MaterialStateColor.resolveWith((states) => kPrimaryBackgroundColor),
            title: Text(_languageNameList[i]),
            value: _languageCodeList[i],
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              setState(() {
                _selectedLanguage = value;
              });
            },
          ),
        ],
      )
    );
  }
}

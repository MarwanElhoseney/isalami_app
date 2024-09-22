import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/settings_tab/local/language_bottom_sheet.dart';
import 'package:islami_app/ui/home/settings_tab/theme/theme_bottom_sheet.dart';

class settingsTabWidget extends StatefulWidget {
  @override
  State<settingsTabWidget> createState() => _settingsTabWidgetState();
}

class _settingsTabWidgetState extends State<settingsTabWidget> {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Theme",style: Theme.of(context).textTheme.labelMedium,),
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },

            child: Container(
              padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(color: Theme.of(context).primaryColor)
                ),
                child: Text("Light",style: Theme.of(context).textTheme.labelMedium )),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Language",style: Theme.of(context).textTheme.labelMedium ,),
          ),
          InkWell(
            onTap: () {
showLanguageBottomSheet();
            },

            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    border: Border.all(color: Theme.of(context).primaryColor)
                ),
                child: Text("English",style: Theme.of(context).textTheme.labelMedium,)),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(context: context, builder:(context)=>themeBottomSheet());
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder:(context)=>languageBottomSheet());
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_app/ui/home/hadeth_tab/hadeth_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class hadethTitleWidget extends StatelessWidget {
  HadethItem hadethItem;


  hadethTitleWidget({required this.hadethItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, hadeathDetailsScreen.routeName,
        arguments: hadethItem
        );
      },
      child: Container(
      padding: EdgeInsets.symmetric(vertical: 8),
        alignment: Alignment.center,

        child: Text(AppLocalizations.of(context)!.hadeth_number,style: Theme.of(context).textTheme.bodyMedium),
      ),
    );
  }
}

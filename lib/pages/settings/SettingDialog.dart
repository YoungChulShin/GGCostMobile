import 'package:flutter/material.dart';
import 'package:ggcost_mobile/datamodels/EnumModels.dart';

languageSelectionDialog(BuildContext context) async {
  return await showDialog<DataBackupModels>(
    context: context,
    builder: (BuildContext context) {
      return SimpleDialog(
        title: Text('데이터 백업'),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, DataBackupModels.none);
            },
            child: Text('사용 안함'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, DataBackupModels.google_drive);
            },
            child: Text('구글 드라이브'),
          )
        ],
      );
    }
  );
}


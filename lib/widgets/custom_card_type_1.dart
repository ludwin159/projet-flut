import 'package:flutter/material.dart';

import 'package:first_project/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album, color: AppTheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: (){},
                  child: const Text('Ok')
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
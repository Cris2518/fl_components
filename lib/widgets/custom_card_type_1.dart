import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          ListTile(
            title: Text('Soy un titulo'),
            leading: Icon(Icons.phone_android_outlined, color: AppTheme.primary,),
            subtitle: Text("Ad veniam adipisicing culpa Lorem velit veniam id qui ex cupidatat irure ipsum."),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: Text('Ok')
                ),
                TextButton(
                  onPressed: () {}, 
                  child: Text('Cancel')
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}
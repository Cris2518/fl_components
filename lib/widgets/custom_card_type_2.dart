import 'dart:ui';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  const CustomCardType2({super.key, 
                        required this.imageUrl, 
                        this.name
                        });

  final String imageUrl;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18)
      ),
      elevation: 10,
      shadowColor: AppTheme.primary.withValues(alpha: 0.8),
      child: Column(
        children: [

          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),

          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name ?? 'Name Card')
            )

        ],
      ),
    );
  }
}
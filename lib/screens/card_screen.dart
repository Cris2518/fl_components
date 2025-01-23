import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Wigget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(name: 'Pitbull',
                          imageUrl: 'https://cdn-3.expansion.mx/dims4/default/6297468/2147483647/strip/true/crop/620x484+0+0/resize/1200x937!/quality/90/?url=https:%2F%2Fcherry-brightspot.s3.amazonaws.com%2Fmedia%2F2016%2F03%2F08%2F1a.jpg',),
          SizedBox(height: 20),
          CustomCardType2(name: 'Pelusa',
                          imageUrl: 'https://cdn-images-1.medium.com/v2/resize:fit:2000/1*pwgFvrMy1u8j6jWm_HNuqQ.jpeg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://infolat.news/wp-content/uploads/2023/08/las-10-razas-de-perros-mas-populares-y-sus-caracteristicas-1024x576.jpg',),
          SizedBox(height: 100)

        ],
      )
    );
  }
}
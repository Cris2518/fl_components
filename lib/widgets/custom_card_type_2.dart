import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [

          FadeInImage(
            image: NetworkImage('https://th.bing.com/th/id/R.4a26d1039b25bd5480aa32689c8ff93c?rik=ICv3JL4YqW49DQ&riu=http%3a%2f%2f3.bp.blogspot.com%2f-0zq88NRDdsA%2fU5eDllonX6I%2fAAAAAAAAASk%2ff-Et7ILfi6g%2fs1600%2fcuidados-nombres-como-cuidar-tu-perro-golden-retriever.jpg&ehk=jM8PHh85PxzZ4hGV1hoaiYt4PLPbctMA%2fF1HafVVVAM%3d&risl=&pid=ImgRaw&r=0'),
            placeholder: AssetImage('assets/jar-loading.gif')
          )
        
        ],
      ),
    );
  }
}
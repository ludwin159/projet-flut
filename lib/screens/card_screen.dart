import 'package:flutter/material.dart';

import 'package:first_project/widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Tarjetas'),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://blog.nzibs.co.nz/wp-content/uploads/2020/02/Landscape-1280x640.jpg', text: null),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://backlightblog.com/images/2021/04/landscape-photography-header-2000x1310.jpg'),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://www.namesnack.com/images/Namesnack-nombres-para-compa%C3%B1%C3%ADas-de-landscape-2400x1600-2021084.jpeg?crop=4:3,smart&width=1200&dpr=2', text: 'The Flowers'),
          SizedBox(height: 100,)
        ],
      ),
    );
  }
}

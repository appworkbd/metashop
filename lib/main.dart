import 'package:flutter/material.dart';

import 'MainPage/Splash_Screen.dart';

void main(){
  runApp(metaShop());
}
class metaShop extends StatelessWidget {
  const metaShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

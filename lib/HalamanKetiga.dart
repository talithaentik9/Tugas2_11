import 'package:flutter/material.dart';

class HalamanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: new Container(
          color: Colors.blue,
          child: Text('nah ini halaman terakhir!',
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
        )
    );
  }
}
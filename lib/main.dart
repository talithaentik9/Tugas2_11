import 'package:flutter/material.dart';
import 'package:flutter_apptugas2/HalamanKetiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(title: 'Class in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ContainerWidget (), debugShowCheckedModeBanner: false ,
    );
  }
}

class ContainerWidget extends StatefulWidget {
  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: Column(
              children: <Widget>[
                Text(
                  ' Home ',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text('Nama : Stella Amelia K',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text('Kelas : XII RPL 6',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Text('Absen : 11',
                  style: Theme.of(context).textTheme.headline6,
                ),

                new MaterialButton(onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HalamanPertama()));
                }, child: Text('Halaman Pertama'),
                  padding: const EdgeInsets.all(20),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                ),
                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKedua() ));
                }, child: Text('Halaman Kedua'),
                  padding: const EdgeInsets.all(20),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                ),

                new MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanKetiga() ));
                }, child: Text('Halaman Ketiga'),
                  padding: const EdgeInsets.all(20),
                  color: Colors.pinkAccent,
                  textColor: Colors.white,
                ),
              ],
            )
        )
    );
  }
}

class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: new Container(
          color: Colors.pinkAccent,
          child: Text('ini halaman pertama',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.all(30),
          alignment: Alignment.centerLeft,
        )
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: new Container(
          color: Colors.pinkAccent,
          child: Text('ini tampilan halaman 2!',
            textAlign: TextAlign.center,
          ),
          padding: const EdgeInsets.all(30),
          alignment: Alignment.centerRight,
        )
    );
  }
}
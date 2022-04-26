import 'package:flutter/material.dart';
import 'package:posttest4_1915016023_ibnusina/baris.dart';
import 'package:posttest4_1915016023_ibnusina/item1.dart';
import 'package:posttest4_1915016023_ibnusina/shop.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Posttest 4 Ibnu Sina",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
            Color.fromARGB(255, 187, 247, 255),
            Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Color.fromARGB(255, 187, 247, 255),
            Color.fromARGB(255, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  new Center(
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(20, 120, 20, 20),
                      child: new Text(
                        'SElAMAT DATANG DI',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  new Center(
                    child: new Container(
                      child: new Text(
                        'BULAN JAYA KOMPUTER',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  item1(),
                  new Center(
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: new Text(
                        'HP OMEN PC SET',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: Text("Lihat Selengkapnya...",
                      style: TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return MyShop();
                      }));
                    },
                  ),
                  new Center(
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                      child: new Text(
                        'Barang Terlaris',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 95, 199, 255),
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        baris1(),
                        baris2(),
                        baris3(),
                        baris4(),
                      ],
                    ),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
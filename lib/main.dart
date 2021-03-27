import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:revendedor_app/ScaleRoute.dart';
import 'package:revendedor_app/vender.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Representante App',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MyHomePage(title: 'Representante App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: montaAppBar(),
      body: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 2.4,
        children: <Widget>[
          cardVendas(),
          cardMaleta(),
          cardPendencias(),
          botoes()
        ],
      ),
    ));
  }

  AppBar montaAppBar() {
    return AppBar(
        backgroundColor: Colors.pink.shade200,
        elevation: 0,
        title: Text("Olá, Camila :)",
            style: TextStyle(color: Colors.white, fontSize: 25)));
  }

  GestureDetector cardVendas() {
    return GestureDetector(
        child: Center(
            child: Container(
      height: 150,
      width: 370,
      child: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 2, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Vendas (9)",
                  style: TextStyle(fontSize: 24, color: Colors.black38),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "R\$ 500,00",
                  style: TextStyle(fontSize: 24, color: Colors.green),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Comissão ",
                      style: TextStyle(fontSize: 20, color: Colors.black87),
                    ),
                    Text(
                      "R\$ 125,00",
                      style: TextStyle(fontSize: 20, color: Colors.lightBlue),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        color: Colors.white,
      ),
    )));
  }

  GestureDetector cardMaleta() {
    return GestureDetector(
        child: Center(
            child: Container(
      height: 150,
      width: 370,
      child: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 2, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pronta Entrega (12)",
                  style: TextStyle(fontSize: 24, color: Colors.black38),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "R\$ 700,00",
                  style: TextStyle(fontSize: 24, color: Colors.green),
                ),
              )
            ],
          ),
        ),
        color: Colors.white,
      ),
    )));
  }

  GestureDetector cardPendencias() {
    return GestureDetector(
        child: Center(
            child: Container(
      height: 150,
      width: 370,
      child: Card(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 2, 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Pendências (3)",
                  style: TextStyle(fontSize: 24, color: Colors.black38),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "R\$ 150,00",
                  style: TextStyle(fontSize: 24, color: Colors.red),
                ),
              )
            ],
          ),
        ),
        color: Colors.white,
      ),
    )));
  }

  Center botoes() {
    return Center(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
        height: 120,
        width: 120,
        color: Colors.pink.shade200,
        child: GestureDetector(
            child: Card(
                color: Colors.pink.shade100,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Vender",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                )),
        onTap: () {
          abreTelaSemijoiasDisponiveis();
        }),
      ),
      Container(
        height: 120,
        width: 120,
        color: Colors.pink.shade200,
        child: GestureDetector(
          child: Card(
            color: Colors.pink.shade100,
            child: Align(
              child: Text("Cadastrar",
                  style: TextStyle(fontSize: 20, color: Colors.white70)),
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
      Container(
        height: 120,
        width: 120,
        color: Colors.pink.shade200,
        child: GestureDetector(
          child: Card(
            color: Colors.pink.shade100,
            child: Align(
              child: Text("Ação 3",
                  style: TextStyle(fontSize: 20, color: Colors.white70)),
              alignment: Alignment.center,
            ),
          ),
        ),
      )
    ]));
  }

  abreTelaSemijoiasDisponiveis() {
      Navigator.push(context, ScaleRoute(page: Vender()));
  }
}

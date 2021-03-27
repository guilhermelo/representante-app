import 'package:flutter/material.dart';
import 'package:revendedor_app/Semijoia.dart';

class Vender extends StatefulWidget {
  @override
  _Vender createState() => _Vender();
}

class _Vender extends State<Vender> {
  List<Semijoia> _semijoias = [
    Semijoia.of("9876576454", "Anel", 125.00),
    Semijoia.of("6546546516", "Colar", 30.00),
    Semijoia.of("1513516761", "Pulseira", 22.00),
    Semijoia.of("9876576454", "Anel", 125.00),
    Semijoia.of("6546546516", "Colar", 30.00),
    Semijoia.of("1513516761", "Pulseira", 22.00)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.pink.shade200,
        child: Scaffold(
            backgroundColor: Colors.pink.shade200,
            appBar: montaAppBar(),
            body: GridView.count(
              crossAxisCount: 1,
              children: _semijoias
                  .map((s) => GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 20, 5, 5),
                                    child: Text("${s.descricao} (R\$ ${s.preco.toStringAsFixed(2).replaceAll(".", ",")})", style: TextStyle(color: Colors.green, fontSize: 25))
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(15, 10, 5, 5),
                                    child: Text(
                                      "Código " + s.codigo,
                                      style: TextStyle(
                                          color: Colors.black38, fontSize: 20),
                                    )),
                                Container(
                                  height: 200,
                                  child: Image.asset("imagens/anel.jpg"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            )));
  }

  AppBar montaAppBar() {
    return AppBar(
      backgroundColor: Colors.pink.shade200,
      elevation: 0,
      toolbarOpacity: 0,
      title: Text("Produtos disponíveis",
          style: TextStyle(color: Colors.white70, fontSize: 22)),
    );
  }
}

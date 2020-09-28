import 'package:flutter/material.dart';
import 'package:flutterapp/component/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  var teste = new util();
  MyHomePage(){
    teste.numeroUm = 0;
    teste.numeroDois = 0;
    teste.soma = 0;
    teste.numeroTeste=0;
  }

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: new Container(

          padding: const EdgeInsets.all(40.0),

          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset(
                'img/logo.png',
              ),
              new TextField(
                decoration: new InputDecoration(labelText: "Primeiro Numero"),
                keyboardType: TextInputType.number,
                  onChanged: (text) {
                    setState(() {
                      widget.teste.numeroUm  = int.parse(text);
                  });
                }
              ),
              new TextField(
                decoration: new InputDecoration(labelText: "Segundo Numero"),
                keyboardType: TextInputType.number,
                  onChanged: (text) {
                       setState(() {
                      widget.teste.numeroDois = int.parse(text);
                        });
               }

                // Only numbers can be entered
              ),

              IconButton(
                  icon: Icon(Icons.add_box_sharp),
                  onPressed: () {
                    setState(() {

                      widget.teste.somar( widget.teste.numeroUm, widget.teste.numeroDois);
                    });
                  }
              ),IconButton(
                  icon: Icon(Icons.wine_bar),
                  onPressed: () {
                    setState(() {

                      widget.teste.subtrair( widget.teste.numeroUm, widget.teste.numeroDois);
                    });
                  }
              ),
              Text( widget.teste.soma.toString()),
//              Text( widget.teste.numeroTeste.toString()),

            ],


          ),
      ),
//teste com float button ->achar algo legal para fazer com isso
//      floatingActionButton: FloatingActionButton(
//        onPressed: () => setState(() => widget.teste.numeroTeste++),
//        tooltip: 'Increment Counter',
//        child: const Icon(Icons.add),
//      ),
    );
      

  }
}


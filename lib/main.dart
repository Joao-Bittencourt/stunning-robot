import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter good',
      theme: ThemeData(
        
        primarySwatch: Colors.red,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Calculadora com Flutter'),
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
  int soma = 0;
  int numeroUm=0;
  int numeroDois=0;


  void  somar(int numeroUm, int numeroDois) {
    setState(() {
      soma = numeroUm + numeroDois;
     
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'digite o primeiro numero:',
            ),
            TextField(
              onChanged: (Text){
                numeroUm = int.parse(Text);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '00 '
              ),
            ),
            
             Text(
              'digite o segundo numero:',
            ),

            TextField(
              onChanged: (Text){
                numeroDois = int.parse(Text);
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '00 '
              ),
            ),
            
            Text(
              '$soma',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
            onPressed: () {
              somar(numeroUm,numeroDois);
            },
              child: const Text('somar', style: TextStyle(fontSize: 20)),
          ),
          ],
        ),
      ),
      
    );
  }
}

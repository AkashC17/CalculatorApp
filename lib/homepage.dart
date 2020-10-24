import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var num1,num2,sum;

  final TextEditingController t1 = TextEditingController(text: '');
  final TextEditingController t2 = TextEditingController(text: '');

  void Addition() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1+ num2;
    });
  }

  void sub() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1-num2;
    });
  }

  void mul() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum= num1* num2;
    });
  }

  void div() {
    setState((){
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1/num2;
    });
  }

  void clear(){
    setState(() {
      t1.text='';
      t2.text='';

    });
  }

  void clearOut(){
    setState(() {
     sum= 0;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Output: $sum',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'enter first no.'
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'enter second no.'
              ),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                MaterialButton(
                  child: Text(
                    '+'
                  ),
                  color: Colors.grey,
                  onPressed: Addition,
                ),
                MaterialButton(
                  child: Text(
                      '-'
                  ),
                  color: Colors.grey,

                  onPressed: sub,
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                      '*'
                  ),
                  color: Colors.grey,

                  onPressed: mul,
                ),
                MaterialButton(
                  child: Text(
                      '/'
                  ),
                  color: Colors.grey,

                  onPressed: div,
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(width: 10,),
                MaterialButton(
                  child: Text(
                      'clear'
                  ),
                  color: Colors.grey,

                  onPressed: clear,
                ),
                SizedBox(width: 10,),
                MaterialButton(
                  child: Text(
                      'clear output'
                  ),
                  color: Colors.grey,

                  onPressed: clearOut,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

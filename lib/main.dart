import 'package:flutter/material.dart';

void main() {
  runApp(const calcul());
}
class calcul extends StatefulWidget {
  const calcul({super.key});

  @override
  State<calcul> createState() => _calculState();
}

class _calculState extends State<calcul> {
  @override
  final num1=TextEditingController();
  final num2=TextEditingController();
  var sum=0.0;
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"Calculatrice App",
      home:Scaffold(
      appBar: AppBar(
        title:Text("Calculatrice",style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

      ),
        body: SingleChildScrollView(

            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                SizedBox(
                  height: 20,
                ),
                Container(
                  height:300,
                  width:double.infinity,
                  child:Center(
                    child: Text(sum.toString(),style:TextStyle(
                      fontSize: 70,
                    ),

                    )
                  )
                ),
                Divider(
                  height: 6,
                  color:Colors.grey,
                  thickness: 7,
                ),
                 SizedBox(
                   height: 20,
                 ),
                 Container(
                   padding:EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                   child: TextField(
                     controller: num1,
                     decoration:
                       InputDecoration(labelText: "Enter first number"),
                       keyboardType: TextInputType.number,
                   ),
                 ),
                  Container(
                    padding:EdgeInsets.symmetric(horizontal: 9,vertical: 5),
                    child: TextField(
                      controller: num2,
                      decoration:
                      InputDecoration(labelText: "Enter second number"),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                        onPressed:(){
                          double n1=double.parse(num1.text);
                          double n2=double.parse(num2.text);
                          setState(() {
                             sum=n1+n2;
                          });
                        },
                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            foregroundColor: Colors.white,
                            minimumSize: Size(80, 50),
                          ),
                            child:Text('+',style:TextStyle(
                            fontSize: 20,
                          )
                         )

                    ),
                        ElevatedButton(
                            onPressed:(){
                              double n1=double.parse(num1.text);
                              double n2=double.parse(num2.text);
                              setState(() {
                                    sum=n1-n2;
                              });
                            },
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              minimumSize: Size(80, 50),
                            ),
                            child:Text('-',style:TextStyle(
                              fontSize: 20,
                            )
                            )

                        ),
                        ElevatedButton(
                            onPressed:(){
                              double n1=double.parse(num1.text);
                              double n2=double.parse(num2.text);
                              setState(() {
                                sum=n1/n2;
                              });
                            },
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              minimumSize: Size(80, 50),
                            ),
                            child:Text('/',style:TextStyle(
                              fontSize: 20,
                            )
                            )

                        ),
                        ElevatedButton(
                            onPressed:(){
                              double n1=double.parse(num1.text);
                              double n2=double.parse(num2.text);
                              setState(() {
                                sum=n1*n2;
                              });
                            },
                            style:ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              minimumSize: Size(80, 50),
                            ),
                            child:Text('*',style:TextStyle(
                              fontSize: 20,
                            )
                            )

                        ),




                      ],
                    ),

                  ),
                  ElevatedButton(
                    onPressed:(){
                      num1.clear();
                      num2.clear();
                      setState(() {
                        sum=0;
                      });


                    },
                    style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(200, 60),
                    ) ,
                    child: Text('Clear',style:
                    TextStyle(
                      fontSize:20,
                      color:Colors.white,
                    ),
                    ),
                  ),
              ],
                        ),
            )
        ),
      ),
    );
  }
}


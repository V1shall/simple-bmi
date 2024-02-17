import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculate(){
    h_value=double.parse(height.text);
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(controller:height,
              decoration: InputDecoration(
            border: OutlineInputBorder(),
                hintText: "Enter value",
                filled: true,
                fillColor: Colors.white,
          ), ),
          SizedBox(height: 40,width: 40,),   TextField(
            controller: weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter value",
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          TextButton(onPressed: () {calculate();}, child: Text('Calculate')),
          Text(result.toString(),),

        ],
      ),
    );
  }
}
=
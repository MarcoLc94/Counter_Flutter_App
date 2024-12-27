import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}





class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Counter Functions", style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),),),
          actions: [IconButton(onPressed: () { setState(() {
            clickCounter = 0;
          });}, icon: Icon(Icons.restart_alt_sharp)),],
        ),
        body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('$clickCounter', style: TextStyle(fontSize: 100, fontWeight: FontWeight.w400, color: Colors.blue),), Text("Click${clickCounter == 1 ? '' : 's'}", style: TextStyle(fontWeight: FontWeight.w400),)],),),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [ 
        CustomButtom(icon: Icons.plus_one, onPressed: (){
          setState(() {
            clickCounter++;
          });
        },),

        const SizedBox(height: 15), 
        
        CustomButtom(icon: Icons.exposure_minus_1, onPressed: () {
          setState(() {
            clickCounter--;
          });
        },),],
        )
      );
  }
}

class CustomButtom extends StatelessWidget {
  
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key, required this.icon, this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(shape: StadiumBorder(), enableFeedback: true , elevation: 20 ,onPressed: onPressed, splashColor: Colors.green, foregroundColor: Colors.green,
    child: Icon(icon),);
  }
}
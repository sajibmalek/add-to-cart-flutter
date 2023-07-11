 import 'package:flutter/material.dart';
import 'package:untitled/cart_screen.dart';

main(){
  runApp(app());
 }
 class app extends StatelessWidget {
   const app({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       theme: ThemeData(
         primarySwatch: Colors.red,
       ),
       debugShowCheckedModeBanner: false,
       title: "Add to cart",
       home: cart_screen(),
     );

   }
 }


 class home extends StatefulWidget{
  const home({super.key});


  @override
  State<StatefulWidget> createState() {

     return _home();
  }
 }
class _home extends State<home>{
  late double  result;
  TextEditingController num1= TextEditingController();
  TextEditingController num2= TextEditingController();
   //double n1= double.parse();
  int coutn=1;



  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    late String n;

    return Scaffold(
      appBar: AppBar(
           title: Text("add"),
      ),
      body:  Column(
        children: [
          SizedBox(height:  20,),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: num1,
              autofocus: true,
              cursorColor: Colors.yellow,
              decoration: InputDecoration(
                label: Text("Enter First Number"),
              focusColor: Colors.green,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(10)
              ),
              border: OutlineInputBorder(
              )
              ),
            ),
          ),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
            child: TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              autofocus: true,
              cursorColor: Colors.yellow,
              decoration: InputDecoration(
                  label: Text("Enter Second Number"),
                  focusColor: Colors.green,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  border: OutlineInputBorder(
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Container(
              height:50,
              width:  MediaQuery.sizeOf(context).width,
              color: Colors.green,
              child: Center(child: Text(coutn.toString(),style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    coutn +=1;
                    setState(() {

                    });
                  }, child: Text("Add"),)),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){

                      if(coutn <=0){
                        coutn==0;
                      }
                      else{
                        coutn -=1;
                      }
                      setState(() {

                      });
                    }, child: Text("Sub"),)),

                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text("Mul"),)),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){}, child: Text("Div"),)),
              ],
            ),
          )

        ],
      ),


    );
  }

}

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

class cart_screen extends StatefulWidget {
    cart_screen({super.key});

  @override
  State<cart_screen> createState() => _cart_screenState();
}
class _cart_screenState extends State<cart_screen> {
  int cart=1;
  int price=20;
  late int total= price*cart;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cart"),

        actions: [
          Stack(
            children: [
              GestureDetector(
                onTap: (){

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                  child: Icon(Icons.shopping_cart,size: 40,),
                ),
              ),
              Positioned(
                right: 15,
                top: 5,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Center(
                    child: Text("${cart}",style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              )
            ],
          )

        ],
      ),
      body: Center(
        child: Expanded(
          child: Container(
            width: 220,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(0, 3)
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset("images/b2.jpg",height: 150,width: 100,),

                    ),
                  ),
                  SizedBox(height: 3,),
                  Text("Bean burger",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),),
                  SizedBox(height: 3,),
                  Text("A black bean burger would simply be a patty made from beans",style: TextStyle(
                    fontSize: 16,
                  ),),
                  SizedBox(height: 6,),
                  RatingBar.builder(
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 16,
                    itemPadding: EdgeInsets.symmetric(horizontal: 5),
                    itemBuilder: (context,index)=>(
                        Icon(Icons.star,color: Colors.red,)
                    ),
                    onRatingUpdate: (index){},
                  ),
                  SizedBox(height: 6,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$ ${price}",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      Icon(Icons.favorite_border,color: Colors.red,size: 28,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total: \$${total}",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal
                      ),),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(onPressed: (){
                        if(cart>1){
                          cart -=1;
                          total= price*cart;
                          if(mounted){
                            setState(() {
                            });
                          }
                        }
                        else{
                          cart==1;
                          _maxCart("You have to buy minimum 1 item",Toast.LENGTH_SHORT);
                        }
                      }, child:Text("-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.withOpacity(0.9)
                      ),),
                      Text("${cart}",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),),
                      ElevatedButton(onPressed: (){
                        if(cart==10){
                          cart=10;
                          _maxCart("You can buy only 10 items",Toast.LENGTH_SHORT);
                        }
                        else{
                          cart +=1;
                          total= price*cart;
                          if(mounted){
                            setState(() {
                            });
                          }
                        }

                      }, child:Text("+",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.withOpacity(0.9)
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Future<bool?> _maxCart(message,len){
  return  Fluttertoast.showToast(
      msg: message,
      toastLength:len,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0
  );

}


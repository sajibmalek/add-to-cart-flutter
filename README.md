# Add to Cart in flutter 

# Project Url: <b> https://github.com/sajibmalek/add-to-cart-flutter.git </b>
# Use this package as a library
# Add two dependencies in your pubspec.yaml
 1. for Flutter Toast Message
 2. and the second one for rating bar

Url: https://pub.dev/packages/fluttertoast/install
# Run this command:

With Flutter:

 $ flutter pub add fluttertoast
 
This will add a line like this to your package's pubspec.yaml (and run an implicit <mark> flutter pub get</mark>):

dependencies:
  fluttertoast: ^8.2.2
Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

import 'package:fluttertoast/fluttertoast.dart';

# Example Code:

import 'package:fluttertoast/fluttertoast.dart';

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

# Use this package as a library
Url: https://pub.dev/packages/flutter_rating_bar/install

Run this command:

With Flutter:

 $ flutter pub add flutter_rating_bar
 
This will add a line like this to your package's pubspec.yaml (and run an implicit <b> flutter pub get </b>):

dependencies:
  flutter_rating_bar: ^4.0.1
Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more.

Import it
Now in your Dart code, you can use:

import 'package:flutter_rating_bar/flutter_rating_bar.dart';
# Example Code:

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

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

#ScreenShot: 

![Screenshot_2](https://github.com/sajibmalek/add-to-cart-flutter/assets/44054338/1840fd63-7773-46d2-9d30-88c87a57ad8f)
![Screenshot_1](https://github.com/sajibmalek/add-to-cart-flutter/assets/44054338/a6637f6a-a8c4-41bc-803d-655dbcb930cf)

                  

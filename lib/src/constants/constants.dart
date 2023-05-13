import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

// supabase creds
const supabase_Url = 'https://eblmdswbxxaoxchdxwgt.supabase.co';
final supabase_Key = dotenv.env['SUPABASE_ANON_KEY'];

// Simple preloader inside Center widget
const preloader = Center(child: CircularProgressIndicator(color: Colors.deepOrangeAccent,),);

// Simple sized box to space out form elements
const formSpacer = SizedBox(width: 16.0, height: 16.0,);

// Some padding for use by forms
const formPadding = EdgeInsets.symmetric(vertical: 20, horizontal: 16);

// Error message when unexpected error occurs
const unexpectedErrorMessage = 'Unexpected error occurred';

// Basic app theme
final appTheme = ThemeData.light().copyWith(
  primaryColorDark: Colors.deepOrange,
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: Colors.deepOrangeAccent,
    iconTheme: IconThemeData(color: Colors.black26),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontFamily: 'Cera Pro',
    ),
  ),
  primaryColor: Colors.deepOrange,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.deepOrangeAccent,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepOrange,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    floatingLabelStyle: const TextStyle(
      color: Colors.deepOrange,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 2,
      ),
    ),
    focusColor: Colors.deepOrange,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.deepOrangeAccent,
        width: 2,
      ),
    ),
  ),
);


// extension methods to display a snackbar
// extension ShowSnackBar on BuildContext {
//   // show a basic snackbar
//   void showSnackBar({
//   required String message,
//     Color backgroundColor = Colors.white,
// }) {
//     ScaffoldMessenger.of(this).showSnackBar(SnackBar(
//         content: Text(message),
//       backgroundColor: backgroundColor,
//     ));
//   }
//
//   // show red snackbar indicating error
// void showErrorSnackBar({required String message}) {
//     showSnackBar(message: message, backgroundColor: Colors.red);
// }
//
// }

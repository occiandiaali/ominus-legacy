import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ominus/src/constants/constants.dart';
import 'package:ominus/src/constants/supabase_client.dart';
import 'package:ominus/src/splash_page.dart';
// import 'package:ominus/src/features/authentication/ui/login_screen.dart';
// import 'package:ominus/src/features/mapping/ui/map_widget.dart';
// import 'package:ominus/src/features/user_account/account_page.dart';
// import 'package:ominus/src/splash_screen.dart';
// import 'package:ominus/src/utils/map_info_dialogue.dart';
// import 'package:ominus/src/utils/modalBottomSheet.dart';
// import 'package:ominus/src/widgets/expandable_fab.dart';
// import 'package:ominus/src/widgets/expandable_fab_action_button.dart';
// import 'package:ominus/src/widgets/floating_top_bar.dart';
// import 'package:ominus/src/widgets/profile_settings.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent
      )
  );
  await dotenv.load(fileName: ".env");
  // await Supabase.initialize(
  //     url: supabaseUrl,
  //     anonKey: supabaseKey!,
  // );
  await Supabase.initialize(
    url: supabase_Url,
    anonKey: supabase_Key!,
  );
 // runApp(const MyApp());
}

 class OminusApp extends StatelessWidget {
   const OminusApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: 'ominus',
       theme: appTheme,
       home: const SplashPage(),
     );
   }
 }


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ominus',
//       theme: ThemeData(
//         primarySwatch: Colors.deepOrange,
//       ),
//       initialRoute: '/',
//       routes: <String, WidgetBuilder>{
//         '/': (_) => const SplashScreen(),
//         '/login': (_) => const LoginPage(),
//         '/home': (_) => const HomePage(),
//         '/account': (_) => const AccountPage(),
//       },
//      // home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           const Align(
//             alignment: Alignment.center,
//             child: SizedBox(
//
//               child: MapWidget(),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(
//                 vertical: 30,
//                 horizontal: 20,
//               ),
//               child: FloatingTopBar(open: () => modalBottomSheet(
//                   context,
//                   const ProfileSettings()),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: Padding(
//         padding: const EdgeInsets.only(left: 48.0, bottom: 32.0),
//         child: ExpandableFab(
//           distance: 120.0,
//           children: [
//             ExpandableFabActionButton(
//               onPressed: () {
//                 mapInfoDialog(context);
//               },
//               icon: const Icon(Icons.info_outline_rounded),
//             ),
//             ExpandableFabActionButton(
//               onPressed: () {},
//               icon: const Icon(Icons.zoom_in_map_rounded),
//             ),
//             ExpandableFabActionButton(
//               onPressed: () {},
//               icon: const Icon(Icons.social_distance_rounded),
//             ),
//             ExpandableFabActionButton(
//               onPressed: () {},
//               icon: const Icon(Icons.crisis_alert),
//             ),
//           ],),
//       ),
//     );
//   }
// }

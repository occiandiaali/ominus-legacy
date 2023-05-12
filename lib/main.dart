import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ominus/src/features/mapping/ui/map_widget.dart';
import 'package:ominus/src/utils/map_info_dialogue.dart';
import 'package:ominus/src/utils/modalBottomSheet.dart';
import 'package:ominus/src/widgets/expandable_fab.dart';
import 'package:ominus/src/widgets/expandable_fab_action_button.dart';
import 'package:ominus/src/widgets/floating_top_bar.dart';
import 'package:ominus/src/widgets/profile_settings.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ominus',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: SizedBox(

              child: MapWidget(),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 20,
              ),
              child: FloatingTopBar(open: () => modalBottomSheet(
                  context,
                  const ProfileSettings()),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 48.0, bottom: 32.0),
        child: ExpandableFab(
          distance: 120.0,
          children: [
            ExpandableFabActionButton(
              onPressed: () {
                mapInfoDialog(context);
              },
              icon: const Icon(Icons.info_outline_rounded),
            ),
            ExpandableFabActionButton(
              onPressed: () {},
              icon: const Icon(Icons.zoom_in_map_rounded),
            ),
            ExpandableFabActionButton(
              onPressed: () {},
              icon: const Icon(Icons.social_distance_rounded),
            ),
            ExpandableFabActionButton(
              onPressed: () {},
              icon: const Icon(Icons.crisis_alert),
            ),
          ],),
      ),
    );
  }
}

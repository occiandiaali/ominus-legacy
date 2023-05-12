import 'package:flutter/material.dart';
import 'package:ominus/src/utils/show_snackbar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _redirectCalled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _redirect();
  }

  Future<void> _redirect() async {
    await Future.delayed(Duration.zero);
    if (_redirectCalled || !mounted) {
      return;
    }
    _redirectCalled = true;
    final session = supabase.auth.currentSession;
    if (session != null) {
      Navigator.of(context).pushReplacementNamed('/home');
    } else {
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // body: Center(child: CircularProgressIndicator(),),
      body: Stack(
        children: [
          Image.asset('assets/images/ominus_logo.jpg'),
          const Center(child: CircularProgressIndicator(),),
        ],
      ),
     // body: Image.asset('assets/images/ominus_logo.jpg'),
    );
  }
}


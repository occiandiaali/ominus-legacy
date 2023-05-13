import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:ominus/src/pages/home_page.dart';

import 'features/authentication/presentation/signup/register_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final supabase = Supabase.instance.client;

  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    // wait for the widget to mount
    await Future.delayed(Duration.zero);
    if (mounted) return;

    final session = supabase.auth.currentSession;
    if (session == null) {
      Navigator.of(context).pushAndRemoveUntil(RegisterPage.route(), (route) => false);
    } else {
      Navigator.of(context).pushAndRemoveUntil(HomePage.route(), (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Image.asset('assets/images/ominus_logo.jpg'));
  }
}


import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:ominus/src/constants/constants.dart';

class SupabaseRepo {
  final _client = SupabaseClient(supabase_Url, supabase_Key!);

  Future<void> signUpUser({
    required String username, 
    required String email, 
    required String password}) async {
    try {
      await _client.auth.signUp(email: email, password: password, data: {'username': username});
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signInUser({
    required String email,
    required String password}) async {
    try {
      await _client.auth.signInWithPassword(email: email, password: password);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> signOutUser() async {
    try {
      await _client.auth.signOut();
    } catch (e) {
      throw Exception(e);
    }
  }
}

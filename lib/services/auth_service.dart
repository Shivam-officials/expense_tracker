import 'package:firebase_auth/firebase_auth.dart';
class AuthService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  static User? get getUser => _auth.currentUser;
  static Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
         email:email,
         password:password,
      );
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<void> signUpWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password:  password,
      );

      if (credential.user != null) {
        await credential.user!.updateDisplayName(name);
        await credential.user!.reload();
        // return  _auth.currentUser; // Ensures updated user data
      }

      // return credential.user;
    } catch (e) {
      print("Sign-up error: $e in auth_service.dart");
      rethrow; // Pass error to calling function
    }
  }

  static Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static Future<User?> getCurrentUser() async {
    try {
      return _auth.currentUser;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Function to handle user signup
  Future<String?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Return user ID on successful signup
      return userCredential.user?.uid;
    } catch (e) {
      // Return error message on failed signup
      return e.toString();
    }
  }

  // Function to handle user login
  Future<String?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Return user ID on successful login
      return userCredential.user?.uid;
    } catch (e) {
      // Return error message on failed login
      return e.toString();
    }
  }
}

import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // You can add additional logic here after successful signup
      print('User signed up: ${userCredential.user?.uid}');
      // For example, navigate to another screen
      Get.offNamed('/home');
    } catch (e) {
      // Handle signup errors
      print('Error signing up: $e');
      // You can show an error message to the user here
    }
  }
}

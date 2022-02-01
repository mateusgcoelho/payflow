import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/models/user_model.dart';

class LoginController {
  final AuthController _authController = AuthController();

  Future<void> googleSignIn(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        "email",
        "https://www.googleapis.com/auth/contacts.readonly",
      ],
    );

    try {
      final response = await _googleSignIn.signIn();
      final user = UserModel(
        name: response!.displayName!,
        photoURL: response.photoUrl,
      );

      _authController.setUser(context, user);
    } catch (error) {
      _authController.setUser(context, null);
    }
  }
}

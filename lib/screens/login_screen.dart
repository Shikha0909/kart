import 'package:flutter/material.dart';
import '../widgets/auth_ui.dart';

class LoginScreen extends StatelessWidget {
  static const String id ='login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    'assets/images/logo.png',
                    color: Colors.cyan.shade900,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Vcet Kart',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan.shade900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: AuthUi(),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'If you continue, you are accepting\nTerms and conditions and privacy Policy ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}

import 'package:flutter/material.dart';
import 'package:task2/features/note/presentation/screens/my_folders_page.dart';
import 'package:task2/features/on_boarding/presentation/screens/onboarding_screen.dart';

class LoginButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  const LoginButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyFoldersPage()),
        );
      },
      minWidth: 20,
      color: Colors.blue,
      textColor: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: SizedBox(
        width: 320,
        height: 50,
        child: Center(
          child: Text(
            title!,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

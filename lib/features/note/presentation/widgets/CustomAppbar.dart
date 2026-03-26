import 'package:flutter/material.dart';
import 'package:task2/features/note/presentation/screens/my_folders_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  IconData? firstIcon;
  IconData? secondIcon;
  Color? colorText;

  CustomAppBar({
    super.key,
    required this.title,
    this.firstIcon,
    this.secondIcon,
    this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(firstIcon),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyFoldersPage()),
          );
        },
      ),
      titleSpacing: 65,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: colorText ?? Colors.black,
        ),
      ),
      actions: [
        Stack(
          children: [IconButton(icon: Icon(secondIcon), onPressed: () {})],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

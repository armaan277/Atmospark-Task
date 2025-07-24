import 'package:flutter/material.dart';

class BookButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final IconData icon;
  const BookButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
      child: ElevatedButton.icon(
        onPressed: onPressed,
        label: Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
        icon: Icon(icon, size: 20, color: Colors.white),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF2E7D32),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

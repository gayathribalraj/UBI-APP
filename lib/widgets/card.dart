import 'package:flutter/material.dart';
import '../themes/theme_global.dart';

class Buildcard extends StatelessWidget {
  final String stringname;
  final IconData iconname;
  const Buildcard({
    super.key,
    required this.stringname,
    required this.iconname,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 140,
        height: 140,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: ThemesColor.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 8)],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconname, size: 48, color: ThemesColor.primaryBlue),
            SizedBox(height: 12),
            Text(
              stringname,
              textAlign: TextAlign.center,
              style: TextStyle(color: ThemesColor.textDarkBlue),
            ),
          ],
        ),
      ),
    );
  }
}

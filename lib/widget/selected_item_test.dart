// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedItemTest extends StatelessWidget {
  String variant;
  VoidCallback onTap;
  bool isSelected;

  SelectedItemTest({
    super.key,
    required this.variant,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: EdgeInsets.symmetric(vertical: 10),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected
              ? Colors.red.withOpacity(.3)
              : Colors.white.withOpacity(0.4),
          border: Border.all(
            width: 2,
            color: isSelected ? Colors.red : Colors.red.shade300,
          ),
        ),
        child: Row(
          children: [
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              size: 30,
              color: isSelected ? Colors.red : Colors.grey,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                variant,
                style: TextStyle(
                  color: isSelected ? Colors.red.shade700 : Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

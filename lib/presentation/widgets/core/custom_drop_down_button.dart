import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  List<String>? listDropDown = [];
  String? hint;
  String? value;
  String? hintValidat;
  Function? onChanged;

  CustomDropDownButton(
      {this.listDropDown,
      this.value,
      this.hint,
      this.onChanged,
      this.hintValidat});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      validator: (value) {
        if (value == null) {
          return hintValidat;
        }
      },
      hint: Text(hint!),
      items: listDropDown!
          .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
          .toList(),
      onChanged: (value) {
        onChanged!(value);
      },
      value: value,
    );
  }
}

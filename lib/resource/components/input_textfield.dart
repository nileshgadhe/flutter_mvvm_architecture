import 'package:flutter/material.dart';
import 'package:mvvm_architecture/resource/colors/app_colors.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key? key,
    required this.myController,
    required this.focusNode,
    required this.onFiledSubmittedValue,
    required this.keyBoardType,
    required this.obscuredText,
    required this.hint,
    this.enable = true,
    required this.onValidator,
    this.autoFocus = false,

  }) : super(key: key);

  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFiledSubmittedValue;
  final FormFieldValidator onValidator;

  final TextInputType keyBoardType;
  final String hint;
  final bool obscuredText;
  final bool enable, autoFocus;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      focusNode: focusNode,
      obscureText: obscuredText,
      onFieldSubmitted: onFiledSubmittedValue,
      validator: onValidator,
      keyboardType: keyBoardType,
      enabled: enable,
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(15),
        hintText: hint,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.borderColor),
          borderRadius: BorderRadius.all(Radius.circular(5))

        )
      ),
    );
  }
}

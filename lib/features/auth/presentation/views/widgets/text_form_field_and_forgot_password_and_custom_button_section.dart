import 'package:flutter/material.dart';
import 'package:kabar_app/core/widgets/cutsom_button.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/custom_forgot_password.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class TextFormFieldAndForgorPasswordAndCustomButtonSection
    extends StatefulWidget {
  const TextFormFieldAndForgorPasswordAndCustomButtonSection(
      {super.key, required this.authType});
  final String authType;
  @override
  State<TextFormFieldAndForgorPasswordAndCustomButtonSection> createState() =>
      _TextFormFieldAndForgorPasswordAndCustomButtonSectionState();
}

class _TextFormFieldAndForgorPasswordAndCustomButtonSectionState
    extends State<TextFormFieldAndForgorPasswordAndCustomButtonSection> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const CustomTextFormField(
            title: 'Username',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            suffixIcon: togglePassword(),
            title: 'Password',
            obscureText: obscureText,
          ),
          const SizedBox(
            height: 6,
          ),
          const CustomForgotPassword(),
          const SizedBox(
            height: 12,
          ),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            authType: widget.authType,
          ),
        ],
      ),
    );
  }

  IconButton togglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          obscureText = !obscureText;
        });
      },
      icon: Icon(
        obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
      ),
    );
  }
}

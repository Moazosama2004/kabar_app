import 'package:flutter/material.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/quick_auth_button_and_auth_switcher_section.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/text_form_field_and_forgot_password_and_custom_button_section.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/register_Welcome_text_section.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const RegisterWelcomeTextSection(),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextFormFieldAndForgorPasswordAndCustomButtonSection(
                    authType: 'Sign Up',
                  ),
                  const SizedBox(
                    height: 38,
                  ),
                  QuickAuthButtonAndAuthSwitcherSection(
                    title: 'Already have an account ? ',
                    auth: 'Login',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

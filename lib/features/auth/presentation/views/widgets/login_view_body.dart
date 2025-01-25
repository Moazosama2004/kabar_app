import 'package:flutter/material.dart';
import 'package:kabar_app/core/routes/routes.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/quick_auth_button_and_auth_switcher_section.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/text_form_field_and_forgot_password_and_custom_button_section.dart';
import 'package:kabar_app/features/auth/presentation/views/widgets/login_welcome_text_section.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
                  const LoginWelcomeTextSection(),
                  const SizedBox(
                    height: 48,
                  ),
                  const TextFormFieldAndForgorPasswordAndCustomButtonSection(
                    authType: 'Login',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  QuickAuthButtonAndAuthSwitcherSection(
                    title: 'don’t have an account ? ',
                    auth: 'Sign Up',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.registerView);
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

import 'package:flutter/material.dart';
import 'package:market/shared/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Sign in to continue',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_email.png',
                      width: 14,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Email Address',
                          hintStyle: textFormTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_password.png',
                      width: 14,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: 'Password',
                          hintStyle: textFormTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: regular,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'Login',
            style: secondaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Register',
                style: registerTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: semiBold,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              signInButton(),
              const Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}

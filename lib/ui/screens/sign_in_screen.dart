import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 82,
                ),
                Text(
                  'Get Started With',
                  style: textTheme.displaySmall
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration:  const InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_circle_right_outlined))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

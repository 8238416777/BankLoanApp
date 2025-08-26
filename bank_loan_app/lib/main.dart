import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/loan_form_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyBankLoanApp());
}

class MyBankLoanApp extends StatelessWidget {
  const MyBankLoanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyBank Loan App',
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/applyLoan': (context) => const LoanFormScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}

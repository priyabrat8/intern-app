import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xFF7C67A6),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // About the App
            Text('💡 About the App', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'UIntern is a free app that helps students discover internships across top companies. '
              'We collect internship details from publicly available company career pages and job boards '
              'to simplify your search.',
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 24),

            // Mission or Vision
            Text('🎯 Our Mission', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'Our goal is to make internship discovery faster, easier, and accessible for every student, '
              'without spam or paid listings.',
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 24),

            // Disclaimer
            Text('📜 Disclaimer', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'We are not affiliated with any company listed in the app. All internship data is collected from '
              'publicly accessible websites. Company names, and job details are used for informational '
              'purposes only.',
              style: TextStyle(height: 1.5)),

            const SizedBox(height: 24),

            // Contact
            Text('📬 Contact or Feedback', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'Have a suggestion or found an error?\nReach us at:\n✉️ contact.uintern@gmail.com',
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 24),

            // Privacy Policy
            Text('🔐 Privacy Policy', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'We do not collect or store personal data. Internship listings are stored anonymously. '
              ,
              style: TextStyle(height: 1.5),
            ),
            const SizedBox(height: 24),

            // Terms and Condition
            Text('🛡️ Legal', style: _sectionTitleStyle()),
            RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
          height: 1.5,
        ),
        children: [
          const TextSpan(
            text: 'By using this app, you agree to our ',
          ),
          TextSpan(
            text: 'Terms of Service',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, '/privacy');
              } ,
          ),
          const TextSpan(
            text: '. Please read them carefully.',
          ),
        ],
      ),
            ),
            const SizedBox(height: 24),


            // Version
            Text('🔗 Version Info', style: _sectionTitleStyle()),
            const SizedBox(height: 8),
            const Text(
              'Version 1.0 – Last Updated: August 2025',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  TextStyle _sectionTitleStyle() {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  }
}

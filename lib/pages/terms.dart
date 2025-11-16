import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Color(0xFF7C67A6),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Terms of Service – UIntern\nEffective Date: [Insert Date]',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),

            Text(
              'Welcome to UIntern, By accessing or using our platform you agree to be bound by these Terms of Service. Please read them carefully before using the platform.',
            ),
            SizedBox(height: 24),

            Text('1. Introduction & Acceptance', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'By using UIntern, you acknowledge that you have read, understood, and agreed to these Terms. If you do not agree, please stop using the platform immediately.',
            ),
            SizedBox(height: 16),

            Text('2. Nature of Service', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'UIntern is an internship aggregator. We collect and display internships from publicly available sources, including but not limited to company career pages, LinkedIn, and other job boards. We are not the employer, not involved in the recruitment process, and do not guarantee placement. Our role is limited to helping students discover opportunities in one place.',
            ),
            SizedBox(height: 16),

            Text('3. Prohibited Activities', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'You agree that you will not engage in any activity that attempts to gain unauthorized access to our platform, servers, user data, or any part of the service. This includes scanning, probing, or testing the vulnerability of the platform or any network connected to the service without our prior written permission. It also includes attempts to bypass security controls or authentication systems, uploading or transmitting malicious code, viruses, or any software designed to disrupt or damage our systems, or interfering with the normal operation of the platform including launching DDoS attacks or using automated bots in a way that harms service stability.',
            ),
            SizedBox(height: 8),
            Text(
              'Violations of this section may result in immediate suspension or termination of your access to the platform. Legal action may be taken under the Information Technology Act, 2000 and other applicable laws. Your activities may also be reported to law enforcement authorities.',
            ),
            SizedBox(height: 16),

            Text('4. No Liability Disclaimer', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'We make no guarantees about the accuracy, completeness, or availability of any internship listing, authenticity of third-party job descriptions, or the outcome of applications or hiring processes. Users must verify details directly on the official company website before applying. We are not responsible for hiring decisions, closed or outdated opportunities, or losses, damages, or harm resulting from reliance on the information displayed on our platform.',
            ),
            SizedBox(height: 16),

            Text('5. Intellectual Property', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'All internship descriptions, logos, and company names are the property of their respective owners. We do not claim ownership of third-party job postings and only display them for informational purposes. If you believe your intellectual property rights have been infringed, please contact us and we will investigate and take appropriate action.',
            ),
            SizedBox(height: 16),

            Text('6. Content Removal', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'If you are a company representative or rights holder and wish to have your internship listing removed or corrected, please email us at [Your Email] with the relevant details. We will review and process your request promptly.',
            ),
            SizedBox(height: 16),

            Text('7. Limitation of Liability', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'To the maximum extent permitted by law, UIntern, its owners, employees, and affiliates are not liable for direct, indirect, incidental, or consequential damages, loss of data, revenue, or opportunity, or any harm caused by reliance on internships displayed on the platform. Your use of the platform is at your own risk.',
            ),
            SizedBox(height: 16),

            Text('8. Governing Law & Dispute Resolution', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'These Terms shall be governed by and construed in accordance with the laws of India. Any disputes shall be subject to the exclusive jurisdiction of the courts located in [Your City], India.',
            ),
            SizedBox(height: 16),

            Text('9. Changes to These Terms', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'We may update these Terms from time to time. Changes will be posted on this page with the updated effective date. Your continued use of the platform after changes indicates acceptance.',
            ),
            SizedBox(height: 16),

            Text('10. Company Submissions', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'Companies, startups, and recruiters may submit internship opportunities directly through UIntern for listing on the platform.',
            ),
            SizedBox(height: 16),

            Text('11. Contact Us', style: TextStyle(fontSize: 18)),
            SizedBox(height: 8),
            Text(
              'For questions, concerns, or content removal requests, contact us at [Your Email].',
            ),
          ],
        ),
      ),
    );
  }


}

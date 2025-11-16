import 'package:flutter/material.dart';
import 'package:internapp/models/intern_model.dart';
import 'package:internapp/service/browes_url.dart';
import 'package:internapp/service/google_add.dart';
import 'package:internapp/service/share.dart';

class Intern extends StatelessWidget {
  const Intern({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final intern = ModalRoute.of(context)!.settings.arguments as InternModel;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.share, color: Colors.black),
            onPressed: () {
              shareInternship(intern.title, intern.company, intern.applyUrl);
            },
          ),
        ],
        backgroundColor: Color(0xFF7C67A6),
        
        title: Text(
          'Job Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      intern.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      intern.location != null && intern.location!.isNotEmpty
                          ? '${intern.company} • ${intern.location!}'
                          : intern.company,
                      style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 17),

            // Tags
            if (intern.tags != null && intern.tags!.isNotEmpty)
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: intern.tags!.map((tag) => _buildTag(tag)).toList(),
              ),

            SizedBox(height: 20),

            // About this role
            Text(
              'About this role',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(intern.description, style: TextStyle(height: 1.4)),

            // TextButton(onPressed: () {}, child: Text('Read more')),
            SizedBox(height: 16),

            // Qualifications
            Text(
              'Qualifications',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            ...intern.qualification.map((item) => _buildBullet(item)),

            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () { launchInBrowser(intern.applyUrl); },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(
                    context,
                  ).primaryColor, //Color(0xFF6750A4)
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Apply Now',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GoogleAdd(),
    );
  }

  // Tag widget
  Widget _buildTag(String label) {
    return Chip(label: Text(label), backgroundColor: Colors.grey[200]);
  }

  // Bullet point
  Widget _buildBullet(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

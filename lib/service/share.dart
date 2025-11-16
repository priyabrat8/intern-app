import 'package:share_plus/share_plus.dart';


void shareInternship(String title, String company, String url) {

final message = '''
🔥 Internship Opportunity!

📌 Position: $title
🏢 Company: $company  

🔗 Apply Now:  $url
📱 Explore more internships like this on UIntern App  
👉 Download Now: https://play.google.com/store/apps/details?id=com.uintern.internapp
''';

  SharePlus.instance.share(ShareParams(text: message));
}

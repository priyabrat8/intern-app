import 'package:url_launcher/url_launcher.dart';

Future<void> launchInBrowser(String url) async {
  final Uri uri = Uri.parse(url);

  try{
  if (!await launchUrl(uri)) {
    throw Exception('Could not launch $uri');
  }
}
  catch(e){
    return ;
  }
}



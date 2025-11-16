import 'package:flutter/material.dart';
import 'package:internapp/models/intern_model.dart';
import 'package:internapp/service/browes_url.dart';


class Interncard extends StatelessWidget {
  final InternModel intern;
  

  const Interncard({super.key, required this.intern});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      shadowColor: Color.fromRGBO(158, 158, 158, 0.5),
      margin: EdgeInsets.all(16),
      child: Padding(padding:  const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
              intern.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              intern.company,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {launchInBrowser(intern.applyUrl);},
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: Text('Apply'),
                  ),
                ),
                
                SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/intern_details', arguments: intern);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 2,
                      padding: EdgeInsets.symmetric(vertical: 16),
                     backgroundColor: Colors.white, 
                      foregroundColor: Theme.of(context).primaryColor, 
                      side: BorderSide(color: Theme.of(context).primaryColor,width: 2.0,), 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: Text('More Info'),
                  ),
                ),
                            
                  
              ],
            )
        ],
      ),
      ),
    );
  }
}

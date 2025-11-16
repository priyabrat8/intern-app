import 'package:flutter/material.dart';
import 'package:internapp/components/disclaimer_footer.dart';
import 'package:internapp/components/intern_card.dart';
import 'package:internapp/models/intern_model.dart';
import 'package:internapp/service/firestore.dart';

class InternCardGroup extends StatefulWidget {
  const InternCardGroup({super.key});

  @override
  State<InternCardGroup> createState() => _InternCardGroupState();
}
String _selectedCategory = 'All';

class _InternCardGroupState extends State<InternCardGroup> {
  @override
    Widget build(BuildContext context) {
    return 
  StreamBuilder<List<InternModel>>(
    stream: FireStoreService().getIntern(), 
    builder: (
      BuildContext context,
      AsyncSnapshot<List<InternModel>> snapshot,
    ) {
      if (!snapshot.hasData) {
        return Center(child: CircularProgressIndicator());
      }

      var internships = snapshot.data!;
      final allTypes = internships.map((e) => e.title.trim()).toSet().toList();
      var categories = ['All', ...allTypes];

      if (_selectedCategory != 'All') {
                internships = internships
                    .where((intern) => intern.title.contains(_selectedCategory))
                    .toList();
              }
      return Column(
  children: [
    Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
  child: Align(
  alignment: Alignment.centerRight,
  child: Container(
    margin: const EdgeInsets.only(right: 16, top: 12),
    padding: const EdgeInsets.symmetric(horizontal: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 6,
          offset: Offset(2, 2),
        ),
      ],
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        borderRadius: BorderRadius.circular(12),
        dropdownColor: Colors.white, // Base dropdown background
        focusColor: const Color(0xFF6750A4), // Hover/focus effect
        value: _selectedCategory,
        items: categories.map((category) {
          return DropdownMenuItem<String>(
            value: category,
            child: MouseRegion(
              onEnter: (_) => setState(() {}),
              onExit: (_) => setState(() {}),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(category),
              ),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedCategory = value!;
          });
        },
      ),
    ),
  ),
),
        ),
    Expanded(
      child: ListView.builder(
        itemCount: internships.length,
        itemBuilder: (context, index) {
          final intern = internships[index];
          return Interncard(intern: intern, );
        },
      ),
    ),
    Column(
      children: [
        SizedBox(height: 24),
        DisclaimerFooter()
      ],
    )
      
  ],
);
    },
);
    
  }
}
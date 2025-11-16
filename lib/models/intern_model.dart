class InternModel {
  String company;
  String title;
  String applyUrl;
  String description;
  String? location;
  List<String> qualification;
  List<String>? tags;

  InternModel({
    required this.company,
    required this.title,
    required this.applyUrl,
    required this.description,
    required this.qualification,
    this.tags,
    this.location,
  });

  // Convert object to Map (for Firestore or JSON)
  Map<String, dynamic> toMap() {
    return {
      'company': company,
      'title': title,
      'applyUrl': applyUrl,
      'description': description,
      'location': location,
      'qualification': qualification,
      'tags': tags,
    };
  }

  // Create object from Map
  factory InternModel.fromMap(Map<String, dynamic> map) {
    return InternModel(
      company: map['company'] ?? '',
      title: map['title'] ?? '',
      applyUrl: map['applyUrl'] ?? '',
      description: map['description'] ?? '',
      location: map['location'] ?? '',
      qualification: List<String>.from(map['qualification'] ?? []),
      tags: List<String>.from(map['tags'] ?? []),
    );
  }
}

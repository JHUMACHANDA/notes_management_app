class Note {
  final String id;
  final String title;
  final String description;

  Note({
    required this.id,
    required this.title,
    required this.description,
  });

  factory Note.fromMap(String id, Map<String, dynamic> data) {
    return Note(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }
}
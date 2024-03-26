class Note {
  String? id;
  String? title;
  String? notetext;
  bool? isSaved;

  Note({
    required this.id,
    required this.title,
    required this.notetext,
    bool isSaved= false,
  });
}

List<Note> noteList() {
  return [];
}

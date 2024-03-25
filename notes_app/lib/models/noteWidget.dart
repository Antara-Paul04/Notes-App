class Note {
  String? id;
  String? notes;

  Note({
    required this.id,
    required this.notes,
  });
}

List<Note> noteList() {
  return [
    Note(id: '1', notes: 'Note 1'),
    Note(id: '2', notes: 'Note 2'),
    Note(id: '3', notes: 'Note 3'),
    Note(id: '4', notes: 'Note 4'),
    Note(id: '5', notes: 'Note 5'),
  ];
}

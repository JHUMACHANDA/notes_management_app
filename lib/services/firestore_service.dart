import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note.dart';

class FirestoreService {
  final CollectionReference _notesCollection =
  FirebaseFirestore.instance.collection('notes');

  // READ - stream all notes
  Stream<List<Note>> getNotes() {
    return _notesCollection.snapshots().map((snapshot) {
      return snapshot.docs
          .map((doc) => Note.fromMap(doc.id, doc.data() as Map<String, dynamic>))
          .toList();
    });
  }


  Future<void> addNote(String title, String description) {
    return _notesCollection.add({
      'title': title,
      'description': description,
    });
  }


  Future<void> updateNote(String id, String title, String description) {
    return _notesCollection.doc(id).update({
      'title': title,
      'description': description,
    });
  }


  Future<void> deleteNote(String id) {
    return _notesCollection.doc(id).delete();
  }
}
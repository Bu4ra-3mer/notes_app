import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  featchAllNotes() async {
    emit(NotesCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes));
    } catch (e) {
      emit(NotesCubitFailure(errorMessage: e.toString()));
    }
  }
}

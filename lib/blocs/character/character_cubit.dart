import "package:bloc/bloc.dart";
import 'package:meta/meta.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  CharacterCubit() : super(const CharacterInitial());

  void selectCharacter(String path) {
    emit(CharacterSelected(path: path));
  }

}

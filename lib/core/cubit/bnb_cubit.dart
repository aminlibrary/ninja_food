import 'package:bloc/bloc.dart';

class BnbCubit extends Cubit<int> {
  BnbCubit() : super(0);

  //* toggle bnb index
  void toggleBnbIndex(int index) {
    emit(index);
  }
}

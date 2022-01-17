import 'package:bloc/bloc.dart';
import 'package:cubit_navbar/screens/page1.dart';
import 'package:cubit_navbar/screens/page2.dart';
import 'package:cubit_navbar/screens/page3.dart';
import 'package:meta/meta.dart';

part 'bottomnavbarcubit_state.dart';

class BottomnavbarcubitCubit extends Cubit<BottomnavbarcubitState> {
  int pageIndex = 0;
  BottomnavbarcubitCubit() : super(BottomnavbarcubitInitial());
  List pages = const [
    Page1(),
    Paeg2(),
    Paeg3(),
  ];
  changePage(int tappedIndex) {
    pageIndex = tappedIndex;
    emit(BottomnavbarcubitInitial());
  }
}

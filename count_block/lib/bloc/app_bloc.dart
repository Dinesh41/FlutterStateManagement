import 'package:bloc/bloc.dart';

enum BlocEvent { increment, decrement }

class AppBloc extends Bloc<BlocEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(BlocEvent event) async* {
    switch (event) {
      case BlocEvent.decrement:
        yield state - 1;
        break;
      case BlocEvent.increment:
        yield state + 1;
        break;
    }
  }
}

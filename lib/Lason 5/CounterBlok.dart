import 'package:bloc/bloc.dart';
import 'package:statemanagement/Lason%205/counterEvient.dart';

class CountreBloc extends Bloc<CounterEvent, int> {
  CountreBloc(int initialState) : super(initialState);
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.add:
        yield state + 1;
        break;
      case CounterEvent.remove:
        yield state - 1;
        break;
    }
  }

  @override
  // تنفذ عند تغيير قيمة initialState
  void onTransition(Transition<CounterEvent, int> transition) {
    // TODO: implement onTransition
    super.onTransition(transition);
    // print(transition);
  }

  @override
  void onEvent(CounterEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
    print(event);
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'starting_event.dart';
part 'starting_state.dart';

class StartingBloc extends Bloc<StartingEvent, StartingState> {
  StartingBloc() : super(StartingInitial()) {
    on<StartingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

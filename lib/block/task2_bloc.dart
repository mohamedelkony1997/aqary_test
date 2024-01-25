



import 'package:aqary_test/block/task2_event.dart';
import 'package:aqary_test/block/task2_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

class MyBloc extends Bloc<Event, State> {
  MyBloc() : super(InitialState()) {
    on<FetchDataEvent>(_fetchData as EventHandler<FetchDataEvent, State>);
  }

  // Asynchronous generator function
  Stream<State> _fetchData(FetchDataEvent event) async* {
    // Fetch data asynchronously
    yield LoadingState();

    try {
      final data = await fetchDataFromApi();
      yield DataLoadedState(data);
    } catch (e) {
      yield ErrorState(e.toString());
    }
  }

  static final _debounceTransformer =
      DebounceStreamTransformer<Event>(Duration(milliseconds: 500) as Stream Function(Event event) );

 
  Future<dynamic> fetchDataFromApi() async {
  
    await Future.delayed(Duration(seconds: 2));
    return "Mock Data";
  }
}
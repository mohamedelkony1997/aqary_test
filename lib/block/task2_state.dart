abstract class State {}

class InitialState extends State {}

class LoadingState extends State {}

class DataLoadedState extends State {
  final dynamic data;

  DataLoadedState(this.data);
}

class ErrorState extends State {
  final String error;

  ErrorState(this.error);
}


abstract class EventsState {}

class EventsInitial extends EventsState {}
class GetDataLoadingState extends EventsState {}
class GetDataSuccessState extends EventsState {}
class GetDataErrorState extends EventsState {
  final String error;

  GetDataErrorState({required this.error});
}

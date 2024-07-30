import 'package:bloc/bloc.dart';
import 'package:my_app_9a/data/repository/event_repository.dart';
import 'package:my_app_9a/presentation/cubit/event/event_state.dart';

class EventCubit extends Cubit<EventState>{
  final EventRepository eventRepository;

  EventCubit({required this.eventRepository}) : super(EventInitial());

  Future<void> fetchAllEvents() async {
    try {
      emit(EventLoading());
      final events = await eventRepository.getEvents();
      emit(EventSuccess(events: events));
    } catch (e) {
      emit(EventError(message: e.toString()));
    }
  }

}
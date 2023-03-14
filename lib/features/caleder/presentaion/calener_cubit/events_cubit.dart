// import 'dart:collection';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'events_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class EventsCubit extends Cubit<EventsState> {
//   EventsCubit() : super(EventsInitial());

//   static EventsCubit get(context) => BlocProvider.of(context);

//   LinkedHashMap kEvents = LinkedHashMap<DateTime, List<Event>>(
//       equals: isSameDay, hashCode: getHashCode);
//   List<Event> eventsList = [];
//   List<Event> getEventsForDay(DateTime day) {
//     return kEvents[day] ?? [];
//   }

//   void getEventsFromFirebase() async {
//     emit(GetDataLoadingState());
//     try {
//       QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore
//           .instance
//           .collection('reservations')
//           .orderBy('date_time')
//           .get();

//       for (var element in snapshot.docs) {
//         eventsList.add(Event.fromJson(element.data()));
//       }
//       final events = {
//         for (var element in snapshot.docs)
//           DateTime.parse(element["date_time"].toDate().toString()).toLocal():
//               eventsList
//                   .where((e) =>
//                       DateTime.parse(e.dateTime.toDate().toString()).day ==
//                       DateTime.parse(element['date_time'].toDate().toString())
//                           .day)
//                   .toList()
//       };
//       kEvents.addAll(events);
//       print(kEvents);
//       emit(GetDataSuccessState());
//     } catch (error) {
//       print(error.toString());
//       emit(GetDataErrorState(error: error.toString()));
//     }
//   }
// }

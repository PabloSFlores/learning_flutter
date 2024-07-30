import 'dart:convert';
import 'package:http/http.dart' as http; // do http request
import 'package:my_app_9a/data/models/event_model.dart';

class EventRepository {
    final String API_URL;

    EventRepository({required this.API_URL});

//     Get All Events
    Future<List<EventModel>> getEvents() async {
        final response = await http.get(
            Uri.parse('$API_URL/events'),
            headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8',
            },
        );

        if (response.statusCode == 200) {
            final List<dynamic> events = jsonDecode(response.body);
            return events.map((json) => EventModel.fromJson(json)).toList();
        } else {
            throw Exception('Failed to load events');
        }
    }

}


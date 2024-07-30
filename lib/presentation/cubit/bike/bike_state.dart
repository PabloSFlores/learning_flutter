import 'package:equatable/equatable.dart';
import 'package:my_app_9a/data/models/bike_model.dart';

abstract class BikeState extends Equatable {
  @override
  List<Object> get props => [];
}

class BikeInitial extends BikeState {}

class BikeLoading extends BikeState {}

class BikeSuccess extends BikeState {
  final List<BikeModel> bike;

  BikeSuccess(this.bike);

  @override
  List<Object> get props => [bike];
}

class BikeError extends BikeState {
  final String message;
  BikeError(this.message);

  @override
  List<Object> get props => [message];
}
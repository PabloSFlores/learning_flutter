import 'package:equatable/equatable.dart';

import '../../data/models/museum_model.dart';

abstract class MuseumState extends Equatable {
  @override
  List<Object> get props => [];
}

class MuseumInitial extends MuseumState {}

class MuseumLoading extends MuseumState {}

class MuseumSuccess extends MuseumState {
  final List<MuseumModel> museums;

  MuseumSuccess({required this.museums});

  @override
  List<Object> get props => [museums];
}

class MuseumError extends MuseumState {
  final String message;

  MuseumError({required this.message});

  @override
  List<Object> get props => [message];
}

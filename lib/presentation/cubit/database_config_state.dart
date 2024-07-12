import 'package:equatable/equatable.dart';
import 'package:my_app_9a/data/models/database_conn_model.dart';

abstract class DatabaseConnState extends Equatable {
  @override
  List<Object> get props => [];
}

class DatabaseConnInitial extends DatabaseConnState {}

class DatabaseConnLoading extends DatabaseConnState {}

class DatabaseConnSuccess extends DatabaseConnState {
  final List<DatabaseConnModel> databases;

  DatabaseConnSuccess(this.databases);

  @override
  List<Object> get props => [databases];
}

class DatabaseConnError extends DatabaseConnState {
  final String message;
  DatabaseConnError(this.message);

  @override
  List<Object> get props => [message];
}
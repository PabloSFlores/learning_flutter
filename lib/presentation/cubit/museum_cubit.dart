import 'package:bloc/bloc.dart';
import 'package:my_app_9a/data/models/museum_model.dart';
import 'package:my_app_9a/data/repository/museum_repository.dart';
import 'package:my_app_9a/presentation/cubit/museum_state.dart';

class MuseumCubit extends Cubit<MuseumState> {
  final MuseumRepository museumRepository;

  MuseumCubit({required this.museumRepository}) : super(MuseumInitial());

  Future<void> createMuseum(MuseumModel museum) async {
    try {
      emit(MuseumLoading());
      await museumRepository.createMuseum(museum);
      final museums = await museumRepository.getAllMuseums();
      emit(MuseumSuccess(museums: museums));
    } catch (e) {
      emit(MuseumError(message: e.toString()));
    }
  }

  Future<void> getMuseum(String id) async {
    try {
      emit(MuseumLoading());
      final museums = await museumRepository.getMuseum(id);
      emit(MuseumSuccess(museums: [museums]));
    } catch (e) {
      emit(MuseumError(message: e.toString()));
    }
  }

  Future<void> updateMuseum(MuseumModel museum) async {
    try {
      emit(MuseumLoading());
      await museumRepository.updateMuseum(museum);
      final museums = await museumRepository.getAllMuseums();
      emit(MuseumSuccess(museums: museums));
    } catch (e) {
      emit(MuseumError(message: e.toString()));
    }
  }

  Future<void> deleteMuseum(String id) async {
    try {
      emit(MuseumLoading());
      await museumRepository.deleteMuseum(id);
      final museums = await museumRepository.getAllMuseums();
      emit(MuseumSuccess(museums: museums));
    } catch (e) {
      emit(MuseumError(message: e.toString()));
    }
  }

  Future<void> fetchAllMuseums() async {
    try {
      emit(MuseumLoading());
      final museums = await museumRepository.getAllMuseums();
      emit(MuseumSuccess(museums: museums));
    } catch (e) {
      emit(MuseumError(message: e.toString()));
    }
  }
}

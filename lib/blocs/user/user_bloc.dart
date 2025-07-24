import 'package:bloc/bloc.dart';
import 'user_event.dart';
import 'user_state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../config/app_config.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<LoadUserProfile>(_onLoadUserProfile);
  }


}



Future<void> _onLoadUserProfile(
    LoadUserProfile event,
    Emitter<UserState> emit,
    ) async {
  emit(UserLoading());
  try {
    final doc = await FirebaseFirestore.instance
        .collection('${AppConfig.collectionPrefix}users')
        .doc(event.email)
        .get();

    if (doc.exists) {
      emit(UserProfileLoaded(doc.data()!));
    } else {
      emit(UserError('User not found'));
    }
  } catch (e) {
    emit(UserError('Failed to load profile: ${e.toString()}'));
  }
}

import 'package:equatable/equatable.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object?> get props => [];
}

class LoadUsers extends UserEvent {
  final String email;

  const LoadUsers(this.email); // Added constructor

  @override
  List<Object?> get props => [email];
}

class LoadUserProfile extends UserEvent {
  final String email;

  const LoadUserProfile(this.email);

  @override
  List<Object?> get props => [email];
}

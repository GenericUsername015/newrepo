import 'package:teste/models/user_information_model.dart';

abstract class UserInformationState {
  UserInformationModel user;
  var isLoading;

  UserInformationState({required this.user, this.isLoading = false});
}

class InformationInitialState extends UserInformationState {
  InformationInitialState()
      : super(
            user: const UserInformationModel(
                name: '', bio: '', avatarUrl: '', repositories: []));
}

class InformationSuccessState extends UserInformationState {
  InformationSuccessState({required super.user, super.isLoading});
}

class LoadingState extends UserInformationState {
  LoadingState({required super.user, super.isLoading});
}

class LoadedState extends UserInformationState {
  LoadedState({required super.user, super.isLoading});
}

//     
//criar a de erro
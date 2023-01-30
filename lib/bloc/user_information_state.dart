import 'package:flutter/material.dart';
import 'package:teste/models/user_information_model.dart';

abstract class UserInformationState {
  UserInformationModel user;
  var isLoading;

  UserInformationState(
      {this.user = const UserInformationModel(
          name: '', bio: '', avatarUrl: '', repositories: []),
      this.isLoading = false});
}

class InformationInitialState extends UserInformationState {
  InformationInitialState()
      : super(
            user: const UserInformationModel(
                name: '', bio: '', avatarUrl: '', repositories: []));
}

class SearchEmptyState extends UserInformationState {
  SearchEmptyState({required super.user, super.isLoading});
}

class InformationSuccessState extends UserInformationState {
  InformationSuccessState({required super.user, super.isLoading});
}

class LoadingState extends UserInformationState {
  LoadingState();
}

class ErrorState extends UserInformationState {
  var errorMessage;
  ErrorState({this.errorMessage});
}

class LoadedState extends UserInformationState {
  LoadedState({required super.user, super.isLoading});
}

//     
//criar a de erro
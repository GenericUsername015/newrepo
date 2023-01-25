abstract class UserInformationEvent {}

class LoadUserInformationEvent extends UserInformationEvent {}

class IsLoadingInformationEvent extends UserInformationEvent {}

class GetUserInformationEvent extends UserInformationEvent {
  var name, bioHTML, avatarUrl;
  List repositories;
  GetUserInformationEvent(
      this.name, this.bioHTML, this.avatarUrl, this.repositories);
}

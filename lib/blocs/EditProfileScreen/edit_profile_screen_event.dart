
part of 'edit_profile_screen_bloc.dart';



abstract class EditProfilePageEvent{}

class EditProfilePageInitialEvent extends EditProfilePageEvent{}

// class AllFetchDataForProfilePageEvent extends EditProfilePageEvent{}


class PutProfileDataEvent extends EditProfilePageEvent {

  final String? firstName, lastName, birthDate;

  final File? profilePic;

  PutProfileDataEvent(
      this.firstName,
      this.lastName,
      this.birthDate,
      {this.profilePic}
      );

}


abstract class FacebookLoginStates{

}
class FacebookLoginInatialState extends FacebookLoginStates{}
class FacebookLoginLoadingState extends FacebookLoginStates{}
class FacebookLoginSuccessfulState extends FacebookLoginStates{
  final String uId;

  FacebookLoginSuccessfulState(this.uId);
}
class FacebookLoginErrorState extends FacebookLoginStates{
  final String error;
  FacebookLoginErrorState(this.error);
}
class FacebookCreateLoadingState extends FacebookLoginStates{}

class ChangePassword extends FacebookLoginStates{}
class opencemary1 extends FacebookLoginStates{}
class openGallary2 extends FacebookLoginStates{}
class SignGoggleSuccessfulState extends FacebookLoginStates{
  final String uId;
  SignGoggleSuccessfulState(this.uId);

}
class SignGoggleErrorState extends FacebookLoginStates{
  final String error;

  SignGoggleErrorState(this.error);
}
class CuraLoginGoogleLoadingState extends FacebookLoginStates{}
class ResetpasswordSuccessfulState extends FacebookLoginStates{}
class ResetpasswordErrorState extends FacebookLoginStates{
  final String error;

  ResetpasswordErrorState(this.error);
}
class ResetpasswordLoadingState extends FacebookLoginStates{}

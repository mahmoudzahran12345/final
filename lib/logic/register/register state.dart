abstract class FacebookRegister {

}
class FacebookRegisterInatialState extends FacebookRegister{}
class FacebookRegisterLoadingState extends FacebookRegister{}
class FacebookRegisterSuccessfulState extends FacebookRegister{

}
class FacebookRegisterErrorState extends FacebookRegister{
  final String error;
  FacebookRegisterErrorState(this.error);
}
class FacebookCreateSuccessfulState extends FacebookRegister{

}
class FacebookCreateErrorState extends FacebookRegister{
  final String error;
  FacebookCreateErrorState(this.error);
}


class changepasswordRegister extends FacebookRegister{}
class changeCoverImagesuccess extends FacebookRegister{}
class changeCoverImageerror extends FacebookRegister{}
class EmailVerifyLoading extends FacebookRegister{}

class EmailVerifySuccess extends FacebookRegister{}
class EmailVerifyError extends FacebookRegister{}


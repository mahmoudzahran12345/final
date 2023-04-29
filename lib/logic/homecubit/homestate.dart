abstract class FacebookHomeState{

}
class FacebookHomeInatialState extends FacebookHomeState{}
class FacebookHomeLoadDataLoading extends FacebookHomeState{}
class FacebookHomeLoadDataSusseful extends FacebookHomeState{}
class FacebookHomeLoadDataError extends FacebookHomeState{
  final String error;

  FacebookHomeLoadDataError(this.error);

}
class FacebookChangeColor extends FacebookHomeState{}
class FacebookChangeColorSucceful extends FacebookHomeState{}
class SocialSendMessageSuccess extends FacebookHomeState{}
class SocialSendMessageError extends FacebookHomeState{
  final String error;

  SocialSendMessageError(this.error);

}
class SocialGetMessageSuccess extends FacebookHomeState{


}
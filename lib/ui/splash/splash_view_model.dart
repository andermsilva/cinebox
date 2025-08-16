import 'package:cinebox/ui/splash/commands/check_user_logged_command.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_view_model.g.dart';

class SplashViewModel {
  final CheckUserLoggedCommand _checkUserLoggedCommand;
  SplashViewModel({required CheckUserLoggedCommand checkUserLoggedComand})
    : _checkUserLoggedCommand = checkUserLoggedComand;

  void checkLoginAndRedirect() {
    _checkUserLoggedCommand.execute();
  }
}

@riverpod
SplashViewModel splashViewModel(Ref ref) {
  return SplashViewModel(
    checkUserLoggedComand: ref.read(checkUserLoggedCommandProvider.notifier),
  );
}

import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:nubank_clone/app/modules/home/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind<HomeController>((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

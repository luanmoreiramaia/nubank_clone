import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank_clone/app/modules/home/home_controller.dart';
import 'package:nubank_clone/app/modules/home/home_page.dart';
import 'package:nubank_clone/app/modules/home/widgets/bottom_menu/bottom_menu_controller.dart';
import 'package:nubank_clone/app/modules/home/widgets/cards/second_card/second_card_controller.dart';
import 'package:nubank_clone/app/modules/home/widgets/page_view_app/page_view_app_controller.dart';

import 'widgets/cards/third_card/third_card_controller.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PageViewAppController()),
        Bind((i) => BottomMenuController()),
        Bind((i) => SecondCardController()),
        Bind((i) => ThirdCardController()),
        Bind<HomeController>((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

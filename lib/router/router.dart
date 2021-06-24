import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionDuration: Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionDuration: Duration(milliseconds: 200),
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = pageNotFound;
  }
}

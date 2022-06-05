import 'package:bases_web/router/route_handlers.dart';
import 'package:fluro/fluro.dart';


/// Define las rutas para la aplicación.
class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.none);
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.none);
    router.define('/provider',
        handler: counterProvider, transitionType: TransitionType.none);
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.none);

    router.define('/dashboard/users/:userid/:roleid',
        handler: dashboardUserHandler, transitionType: TransitionType.none);

    //no se encontro
    router.notFoundHandler = counter404;
  }
}

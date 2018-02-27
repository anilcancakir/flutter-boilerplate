import 'package:app/app/app.widget.dart';
import 'package:app/routes/app.routes.dart';
import 'package:app/routes/auth.routes.dart';
import 'package:app/services/http.service.dart';
import 'package:fluro/fluro.dart';

class App {
  // Application environment.
  static String environment;

  // Application router.
  static Router router;

  // Application providers.
  static HttpService http;

  // Create app.
  App({
    String environment,
    String baseUri
  }) {
    App.environment = environment;

    // Create app http service.
    App.http = new HttpService(
      baseUri: baseUri
    );

    // Create a router.
    final Router router = new Router();

    // Init and set app router.
    App.router = this.initializeRoutes(router);
  }

  // Let's init our routes.
  Router initializeRoutes(Router router) {
    new AppRoutes(router);
    new AuthRoutes(router);

    return router;
  }

  // App run.
  void run(runApp) {
    runApp(
      new AppWidget()
    );
  }
}
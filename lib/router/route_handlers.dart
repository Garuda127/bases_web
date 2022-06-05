import 'package:fluro/fluro.dart';
import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';
import '../ui/views/view_404.dart';

// Una forma de pasar parámetros a la vista.
final counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(base: params['base']?[0] ?? '0');
});

/// Una forma de pasar parámetros a la vista.
final counterProvider = Handler(handlerFunc: (context, parameters) {
  return CounterProviderView(
    base: parameters['q']?[0] ?? '0',
  );
});

final counter404 = Handler(
  handlerFunc: (_, __) => const View404(),
);

final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  return const View404();
});

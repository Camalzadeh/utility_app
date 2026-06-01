# State Management: Riverpod

The application uses **Riverpod** (`flutter_riverpod` + `riverpod_annotation` + `riverpod_generator`) for state management. This choice guarantees compiled type safety, eliminates boilerplate code, and supports fast, decoupled states for each micro-utility.

## State Management Principles

1. **Decoupled Isolation**: Each micro-utility has its own dedicated provider. This keeps utilities completely independent, preventing state contamination or reload lag.
2. **Code Generation**: We leverage `riverpod_generator` to generate state structures. Generated code is type-safe and handles caching automatically.
3. **Reactivity**: We use `ref.watch()` to reactively bind user interface components to the providers.
4. **Zero Comments Rule**: As the Dart source files must remain comment-free, the behavior and structure of each provider are fully documented below.

## Recommended Implementation Pattern

### 1. Simple State Notifier (using code generation)
Create a provider class representing state operations:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() => state++;
}
```

### 2. Async States (e.g. Fetching Weather Data)
Represent asynchronous REST API transactions cleanly:

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_provider.g.dart';

@riverpod
Future<WeatherData> fetchWeather(FetchWeatherRef ref, String city) async {
  final client = ref.read(apiClientProvider);
  return client.getWeather(city);
}
```

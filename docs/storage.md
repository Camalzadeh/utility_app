# Local Storage: Hive NoSQL

The application uses **Hive** NoSQL storage as a lightweight, fast, and structured local database. Hive provides exceptional read/write speeds, requires minimal setup, and has no native Android binary dependencies, making it perfect for storing micro-utility preferences, cache, histories, and offline tracking data.

## Storage boxes structure

We partition Hive storage into distinct boxes:

1. **`settings_box`**: Stores global parameters like theme modes, user preferences, API keys (such as TMDB or Unsplash keys).
2. **`anime_tracker_box`**: Custom object storage for anime tracking lists (using TypeAdapters).
3. **`media_history_box`**: Saves download and playback history logs (YouTube downloads, direct links played, IPTV channels marked as favorites).
4. **`sms_sandbox_box`**: Temp logs for custom API endpoints hit or Receive-SMS temporary variables.

## Hive Setup Pattern

During app startup in `main.dart`, we initialize the boxes:

```dart
await Hive.initFlutter();
await Hive.openBox('settings_box');
await Hive.openBox('media_history_box');
```

## Custom Objects & TypeAdapters

For complex models (e.g. Anime Tracker history or custom weather queries), we generate TypeAdapters:

```dart
import 'package:hive/hive.dart';

part 'anime_item.g.dart';

@HiveType(typeId: 0)
class AnimeItem {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final int episode;

  AnimeItem({required this.title, required this.episode});
}
```

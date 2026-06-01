# Architecture Design: Feature-First Clean Architecture

This application utilizes a structured **Feature-First Clean Architecture** optimized for handling a high volume of micro-utilities in a single codebase. Rather than defining flat features or strict layers, utility features are categorized into functional sub-modules.

## Project Structure

The project code is laid out under `lib/` as follows:

```
lib/
├── main.dart              # Entrypoint (initializes Hive database and runs the app)
├── app.dart               # Core App widget (sets theme and router config)
├── core/                  # Shared utilities and configurations across features
│   ├── theme/             # Color tokens and Dark Theme configuration
│   ├── navigation/        # GoRouter navigation paths and deep-linking setups
│   ├── network/           # Configured HTTP and Dio clients
│   └── database/          # Persistent local storage helpers (Hive box managers)
└── features/              # Micro-utilities categorized by domain
    ├── dashboard/         # Main navigation hub and categorizations grid
    ├── media_hub/         # YouTube Downloader, SoundCloud client, M3U8, IPTV, Direct streams
    ├── social_sandbox/    # X Extractor, Instagram client, Reddit reader, Receive-SMS
    ├── data_tools/        # Weather forecast, Translate services, Unsplash client, Anime calendars
    └── developer_suite/   # Custom API Sandbox, Web Scraper Engine
```

## Modular Layers inside Features

For each category feature, we utilize clean separation layers:
1. **Data Layer**: Repositories, data sources, scraping parser functions, or API engines.
2. **Domain Layer**: Models defining track structures, weather forecast intervals, or anime metadata.
3. **Presentation Layer**:
   - **Screens**: category grids or full utilities views.
   - **Widgets**: specialized cards, interactive players, or charts.
   - **Providers**: state control and network fetchers powered by Riverpod.

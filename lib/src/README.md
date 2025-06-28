# Directory Structure

```
lib/src/
├── app/                    # Application layer
│   ├── bootstrap/          # App initialization
│   └── config/             # App configuration
├── core/                   # Core utilities
│   ├── constants/          # App constants
│   ├── errors/             # Error handling
│   └── utils/              # Utility functions
├── data/                   # Data layer
│   ├── datasources/        # Data sources (API, Local)
│   ├── models/             # Data models
│   └── repositories/       # Repository implementations
├── features/               # Feature modules
│   ├── auth/               # Authentication feature
│   ├── expense/            # Expense management feature
│   └── payment/            # Payment processing feature
└── shared/                 # Shared components
    ├── extensions/         # Dart extensions
    └── providers/          # Riverpod providers
```

## Feature Structure

Each feature follows Clean Architecture with three layers:

```
feature/
├── presentation/           # UI layer (Widgets, Controllers)
├── domain/                 # Business logic layer (Entities, Use Cases)
└── data/                   # Data layer (Repositories, Data Sources)
```

## Architecture Principles

- **Separation of Concerns**: Each layer has a specific responsibility
- **Dependency Inversion**: Dependencies point inward toward domain layer
- **Feature-based Organization**: Related code is grouped by feature
- **Testability**: Each layer can be tested independently 
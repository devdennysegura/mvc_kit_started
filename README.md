# Flutter MVC Starter Kit

This repository provides three distinct implementations of the MVC pattern in Flutter, utilizing different libraries and approaches.

## Project Structure

The project is divided into three main directories, each representing a different approach:

1. `flutter_simple`: A pure Flutter implementation without additional libraries.
2. `riverpod`: Uses `flutter_riverpod` for state management.
3. `stacked__get_it`: Combines `stacked` for MVVM architecture and `get_it` for dependency injection.

Inside each directory, you will find:

- `components/`: Contains the counter view (`counter_view.dart`).
- `controller/`: Contains the counter controller (`counter_controller.dart`).
- `models/`: Contains the counter data model (`counter_model.dart`).
- `main.dart`: It's the entry point to run the application.

## How to Run

To run any of the versions, use the following command, replacing `[DIR]` with the desired directory name (e.g., `flutter_simple`):

```bash
flutter run -t lib/src/[DIR]/main.dart
```

## Kit Descriptions
### Flutter Simple
This version uses pure Flutter to implement the MVC pattern. State and logic are handled in the CounterController, and the view simply displays the state and receives actions via callbacks.

### Riverpod
This approach employs the flutter_riverpod library for state management. It defines a state provider and uses ConsumerWidget to watch and react to state changes.

### Stacked + Get It
In this approach, we blend stacked for MVVM architecture with get_it for dependency injection. State is managed via a model that inherits from BaseViewModel, and get_it is utilized to inject this model into our view.
[![Build][github_action_badge]][github_action]
[![Pub][pub_badge]][pub]
[![Codecov][codecov_badge]][codecov]

# nil

A simple widget to add in the widget tree when you want to show nothing, with minimal impact on performance.

## Why?

Sometimes, according to a condition, we want to display nothing. Usually when we can't return null, we would return something like `const SizedBox()` for example.

This is good, but it has some performance impacts since `SizedBox` creates a `RenderObject`. The `RenderObject` lives in the render tree and some computations are performed on it, even if it paints nothing on the screen.

We can do better, we can have a widget which does not create a `RenderObject`, while being still valid. The `Nil` widget is the minimal implementation for this use case. It only creates an `Element` and does nothing while it's building. Because the optimal way to use it, is to call `const Nil()`, it also comes with a `nil` constant that you can use everywhere (which is a `const Nil()`).

## Usage

``` dart
import 'package:nil/nil.dart';

return Builder(
  builder: (_) {
    if (condition) {
      return const MyWidget();
    } else {
      return nil;
    }
  },
);
```

## Warning

This widget is not intended to be used in widgets accepting multiple children (e.g. `Rows`, `Columns`, etc.). The best option is to not add a widget in the list if you don't want it to be displayed. Moreover using a `Nil` widget in such a case, can have unexpected results.

## Sponsoring

I'm working on my packages on my free-time, but I don't have as much time as I would. If this package or any other package I created is helping you, please consider to sponsor me so that I can take time to read the issues, fix bugs, merge pull requests and add features to these packages.

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue][issue].  
If you fixed a bug or implemented a feature, please send a [pull request][pr].

<!-- Links -->
[github_action_badge]: https://github.com/letsar/nil/workflows/Build/badge.svg
[github_action]: https://github.com/letsar/nil/actions
[pub_badge]: https://img.shields.io/pub/v/nil.svg
[pub]: https://pub.dartlang.org/packages/nil
[codecov]: https://codecov.io/gh/letsar/nil
[codecov_badge]: https://codecov.io/gh/letsar/nil/branch/main/graph/badge.svg
[issue]: https://github.com/letsar/nil/issues
[pr]: https://github.com/letsar/nil/pulls

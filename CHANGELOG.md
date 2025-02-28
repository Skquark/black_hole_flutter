# Changelog

All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


<!-- Template:
## [NEW](https://github.com/JonasWanke/black_hole_flutter/compare/vOLD...vNEW) · 2020-xx-xx
### ⚠ BREAKING CHANGES
### 🎉 New Features
### ⚡ Changes
### 🐛 Bug Fixes
### 📜 Documentation updates
### 🏗 Refactoring
### 📦 Build & CI
-->

## [Unreleased](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.15...master)


## [0.2.15](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.14...v0.2.15) · 2020-10-16

### 🎉 New Features
- **bottom_sheet:** export DragIndicator

### 🐛 Bug Fixes
- **bottom_sheet:** expand content to fill cross axis


## [0.2.14](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.13...v0.2.14) · 2020-10-01

### 🎉 New Features
- **widgets/buttons:** add customizable `loadingIndicator`
- **widgets/buttons:** allow reversing extended FAB's child order (to show the icon on the right)

### ⚡ Changes
- **widgets/buttons:** choose disabled FAB's foreground color based on the background color


## [0.2.13](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.12...v0.2.13) · 2020-08-20

### 🎉 New Features
- **widgets/buttons:** add `shape` parameter

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.5.0`


## [0.2.12](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.11...v0.2.12) · 2020-06-11

### 🎉 New Features
- **context:** add `BuildContext.focusScope`

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.4.0`
- update <kbd>Flutter</kbd> to `>=1.17.0`


## [0.2.11](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.10...v0.2.11) · 2020-05-18

### 🎉 New Features
- **async:** add `AsyncSnapshot.hasNoData`, `AsyncSnapshot.hasNoError`
- **color:** add `Random.nextColorHsl()`, `Random.nextColorHsv()`
- **context:** add `BuildContext.overlay`

### 📦 Build & CI
- **example:** update packages


## [0.2.10](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.9...v0.2.10) · 2020-04-30

### 🎉 New Features
- **widgets:** add `TitleAndSubtitle`

### 📦 Build & CI
- update <kbd>dartx</kbd> to `^0.3.0`


## [0.2.9](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.8...v0.2.9) · 2020-04-29

### 🎉 New Features
- **color:** add `Color.isOpaque`
- **color:** add `int.alphaToOpacity`, `double.opacityToAlpha`
- **context:** add `BuildContext.materialLocalizations`
- **context:** add `BuildContext.scaffoldOrNull`
- **size:** add `Size.coerceAtLeast`, `Size.coerceAtMost`


## [0.2.8](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.7...v0.2.8) · 2020-04-20

### 🎉 New Features
- **context:** add `BuildContext.locale`
- **render_object:** add `ContainerRenderObjectMixin.children`


## [0.2.7](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.6...v0.2.7) · 2020-04-08

### 🎉 New Features
- **color:** add `Color.isDark`, `Color.isLight`

### 📜 Documentation updates
- fill README with missing extensions and widgets


## [0.2.6](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.5...v0.2.6) · 2020-04-07

### 🎉 New Features
- **color:** allow fixed red, green or blue values in `Random.nextColor()`
- **fillOrWrap:** create `FillOrWrap` widget
- **navigation:** add `LoggingNavigatorObserver`


## [0.2.5](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.4...v0.2.5) · 2020-04-02

### 🎉 New Features
- **color:** add `Color.alphaBlendOn()`
- **color:** add `Random.nextColor()`


## [0.2.4](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.3...v0.2.4) · 2020-04-02

### 🐛 Bug Fixes
- **widgets/buttons:** use default child for extended buttons while not loading


## [0.2.3](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.2...v0.2.3) · 2020-03-28

### 🎉 New Features
- **color:** add `Color.withAdditionalOpacity`, `Color.withAdditionalAlpha`
- **color:** add `contrastSystemUiOverlayStyle` getters to `Brightness`, `Color`
- **widgets/buttons:** add `icon`-variants to `FancyFlatButton`, `FancyOutlineButton` & `FancyRaisedButton`
- **widgets/buttons:** add `textColor` to all fancy buttons
- **widgets/buttons:** add `FancyOutlineButton.borderSide`, `FancyOutlineButton.highlightedBorderColor`


## [0.2.2](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.1...v0.2.2) · 2020-03-26

### 🎉 New Features
- add `Color.hsl`, `Color.hsv` extensions


## [0.2.1](https://github.com/JonasWanke/black_hole_flutter/compare/v0.2.0...v0.2.1) · 2020-03-25

### 🐛 Bug Fixes
- correctly display `FancyFab.extended`


## [0.2.0](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.3...v0.2.0) · 2020-03-24

### ⚠ BREAKING CHANGES
- fix naming: `FancyFab.icon` is now called `FancyFab.child`

### 🐛 Bug Fixes
- `FancyFab`'s background color is now the same as that of other buttons

### 📜 Documentation updates
- add button demo to README

### 🏗 Refactoring
- `FancyButton` logic is now handled in their base `_FancyButton`


## [0.1.3](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.2...v0.1.3) · 2020-03-22

### ⚡ Changes
- remove unused parameter from `NavigatorState.pushNamedAndRemoveAll`


## [0.1.2](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.1...v0.1.2) · 2020-03-22

### 🐛 Bug Fixes
- add missing export


## [0.1.1](https://github.com/JonasWanke/black_hole_flutter/compare/v0.1.0...v0.1.1) · 2020-03-22

### 🎉 New Features
- add `NavigatorState.pushAndRemoveAll`, `NavigatorState.pushNamedAndRemoveAll`
- **example:** add example app showcasing new widgets


## [0.1.0](https://github.com/JonasWanke/black_hole_flutter/compare/v0.0.1...v0.1.0) · 2020-03-13

### 🎉 New Features
- add `Size.diagonal`, `Size.squaredDiagonal`
- allow loading buttons without a `loadingChild`

### ⚡ Changes
- rename `LoadingRaisedButton` to `FancyRaisedButton`
- make `FancyFab.isExtended` private

### 📜 Documentation updates
- fill the README with a package overview


## 0.0.1 · 2020-03-12
Initial release 🎉

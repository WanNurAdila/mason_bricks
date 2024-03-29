# mason_bricks

List of bricks that can be used using flutter Mason

## Getting Started

Getting Started with MASON

- Use the `mason init` command to initialise mason in a directory .
- The command will create a `mason.yaml` file in which you have to register all the bricks you will use with the Mason CLI
- By referring to below mason brick list, add/ update your `mason.yaml` with bricks that you need.
- After add/update your `mason.yaml`, run `mason get` to get all the bricks that you want.
- Run `mason list` to see all the bricks that you can make.
- Run `mason make` to create your bricks of choice.
- It is advisable to run `mason.upgrade` before making your bricks in order to make sure you getting the latest version of the bricks.

## List of Bricks

### Mason.yaml

```
bricks:
  feature:
    git:
      url: https://github.com/WanNurAdila/mason_bricks.git
      path: bricks/feature
  login_screen:
    git:
      url: https://github.com/WanNurAdila/mason_bricks.git
      path: bricks/login_screen
  dynamic_textbox:
    git:
      url: https://github.com/WanNurAdila/mason_bricks.git
      path: bricks/dynamic_textbox
  rive_skeletal:
    git:
      url: https://github.com/WanNurAdila/mason_bricks.git
      path: bricks/rive_skeletal
```

### Feature Bricks

- Contains MVVM folder structure with BlocProvider.

**Dependencies**
- https://pub.dev/packages/equatable
- https://pub.dev/packages/flutter_bloc


### Login Screen

- Contains Login function with BlocListener.
- Contains main file that include ProviderRepositories.
- Contains email regex option.

**Dependencies**
- https://pub.dev/packages/flutter_bloc
- https://pub.dev/packages/equatable
- https://pub.dev/packages/formz 


### Dynamic Textbox

- Dynamic and reusable textbox

### Rive Skeletal

- A skeletal for Rive 

**Dependencies**
- https://pub.dev/packages/rive


### Hero Animation

- Simple and reusable hero animation
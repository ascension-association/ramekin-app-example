# Ramekin Hello app example

The project from the [Ramekin quick start](https://github.com/ascension-association/ramekin#quick-start-hello-world-on-a-nanopi-r76s): a tiny app that prints "Hello World from" and the device's name every 10 seconds, running on a NanoPi R76S with the [official firmware](https://github.com/ascension-association/firmware.r76s).

- `app.sh` is the app.
- `example.def` is the Apptainer definition file that packages it.
- `ramekin.yaml` is the Ramekin project. It has no `releases.github`, so its device takes apps you push rather than published releases.

Try it on your own R76S (flash it as the quick start shows first):

```sh
git clone https://github.com/ascension-association/ramekin-app-example && cd ramekin-app-example
ramekin keys generate
ramekin device claim hello            # finds the device; enter the code on its screen
ramekin build --no-scan && ramekin push hello --no-scan
ramekin logs hello -f
```

`keys/` isn't committed: `ramekin keys generate` creates your own signing and encryption keys.

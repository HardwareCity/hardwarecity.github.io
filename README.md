# Hardware City website

<img align="right" width="400" src="static/img/hardware-city-logo.svg">

This is the source code for the Hardware City website.

With ❤️ from [Hardware City](https://hardwarecity.org)

## Getting Started

If you have any trouble getting started, reach out to us in our [Discord](https://discord.gg/mF3na6DY) or by email (see the [MAINTAINERS](./MAINTAINERS) file).

### How to set up

> [!NOTE]  
> **For an optimal developer experience, it is recommended to install [Nix](https://nixos.org/download.html) and [direnv](https://direnv.net/docs/installation.html).**.

<details><summary><i>Installing Nix and direnv</i></summary><br>

**Note: These are instructions that _SHOULD_ work in most cases. Consult the links above for the official instructions for your OS.**

Install Nix:

```sh
sh <(curl -L https://nixos.org/nix/install) --daemon
```

Consult the [installation instructions](https://direnv.net/docs/installation.html) to install direnv using your package manager.

On MacOS:

```sh
brew install direnv
```

Install from binary builds:

```sh
curl -sfL https://direnv.net/install.sh | bash
```

The last step is to configure your shell to use direnv. For example for bash, add the following lines at the end of your `~/.bashrc`:

    eval "\$(direnv hook bash)"

**Then restart the shell.**

For other shells, see [https://direnv.net/docs/hook.html](https://direnv.net/docs/hook.html).

**MacOS specific instructions**

Nix may stop working after a MacOS upgrade. If it does, follow [these instructions](https://github.com/NixOS/nix/issues/3616#issuecomment-662858874).

<hr>
</details>

Otherwise, install the required dependencies.

<details><summary><i>Installing required dependencies</i></summary><br>

Install hugo following the instructions at <a href="https://gohugo.io/installation/">Hugo's Website</a>.

Install Node JS >= 18.
You can use `brew install node` on MacOS. For other systems, search on Google or download the installer at <https://nodejs.org/en/download/current>.

<hr>
</details>

Then initialize the project with:

```bash
make init
```

### How to run

```bash
make run # then go to http://localhost:1313 on your browser
```


## Community, discussion, contribution, and support

Contributions are made to this repo via Issues and Pull Requests (PRs).
Opening an issue will show a set of templates and communication channels for you to use.
If any part of the project has a bug or mistake, please let us know by opening an issue.

### Code of conduct

By participating and contributing to this project, you agree to uphold our [Code of Conduct](./CODE_OF_CONDUCT.md).

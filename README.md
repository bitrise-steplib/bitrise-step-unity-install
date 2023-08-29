# Unity Installation Workflow for macOS on Bitrise


[![Step changelog](https://shields.io/github/v/release/bitrise-steplib/bitrise-step-unity-install?include_prereleases&label=changelog&color=blueviolet)](https://github.com/bitrise-steplib/bitrise-step-unity-install/releases)

This workflow automates the installation of Unity Hub and specific Unity versions on macOS (Darwin) through Homebrew and Unity Hub's command-line interface. It also includes the installation of necessary modules.

<details>
<summary>Description</summary>

This workflow automates the installation of Unity Hub and specified Unity versions along with required modules on macOS (Darwin) using Homebrew and Unity Hub's command-line interface.

</details>

## 🧩 Get started

Add this step directly to your workflow in the [Bitrise Workflow Editor](https://devcenter.bitrise.io/steps-and-workflows/steps-and-workflows-index/).

You can also run this step directly with [Bitrise CLI](https://github.com/bitrise-io/bitrise).

### Example

Archive, then export both development and app-store IPAs:

```yaml
steps:
- unity-install:
    title: Unity install step
    inputs:
    - unity_version: 2022.3.1f1
    - unity_version_changeset: fb119bb0b476
```


## ⚙️ Configuration

<details>
<summary>Inputs</summary>

| Key | Description | Flags | Default |
| --- | --- | --- | --- |
| `unity_version` | This variable is used to store the version of the Unity engine that the project is built with. | required |  |
| `unity_version_changeset` | This variable stores the Unity changeset ID for the project's version of the Unity engine. | required |  |
</details>

<details>
<summary>Outputs</summary>
There are no outputs defined in this step
</details>

## 🙋 Contributing

We welcome [pull requests](https://github.com/bitrise-steplib/bitrise-step-activate-tuist-cache/pulls) and [issues](https://github.com/bitrise-steplib/bitrise-step-activate-tuist-cache/issues) against this repository.

For pull requests, work on your changes in a forked repository and use the Bitrise CLI to [run step tests locally](https://devcenter.bitrise.io/bitrise-cli/run-your-first-build/).

Learn more about developing steps:

- [Create your own step](https://devcenter.bitrise.io/contributors/create-your-own-step/)
- [Testing your Step](https://devcenter.bitrise.io/contributors/testing-and-versioning-your-steps/)

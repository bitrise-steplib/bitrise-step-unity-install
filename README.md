# Install Unity

[![Step changelog](https://shields.io/github/v/release/bitrise-steplib/bitrise-step-unity-install?include_prereleases&label=changelog&color=blueviolet)](https://github.com/bitrise-steplib/bitrise-step-unity-install/releases)

Install a specific version of Unity and the android and ios modules.


<details>
<summary>Description</summary>

This step involves setting up the Unity development environment within the pipeline.

It ensures that the required version of Unity is correctly installed and configured,
enabling seamless building and testing of the project.

The process includes downloading the Unity installer for the desired version,
executing the installer with specified arguments to install Unity components,
and validating the successful installation.

Extracting Version and Changeset from Unity download URL. The Unity download URLs contain the version and 
changeset information in the following format:

https://download.unity3d.com/download_unity/{changeset}/{filename}

Where:
- {changeset}: The unique identifier for the changeset.
- {filename}: The name of the Unity installer file.

An example URL:
https://download.unity3d.com/download_unity/fbf46ad88f3d/UnityDownloadAssistant-2023.1.11f1.dmg

In this URL, the version is **2023.1.11f1** and the changeset is **fbf46ad88f3d**.

Parameters from the URL:
 unity_version: 2023.1.11f1
 unity_version_changeset: fbf46ad88f3d

More details: https://unity.com/download

</details>

## 🧩 Get started

Add this step directly to your workflow in the [Bitrise Workflow Editor](https://devcenter.bitrise.io/steps-and-workflows/steps-and-workflows-index/).

You can also run this step directly with [Bitrise CLI](https://github.com/bitrise-io/bitrise).

### Examples

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
| `unity_version` | The version of the Unity engine used for building the project. It ensures that the project runs as intended on the specified Unity version.  | required |  |
| `unity_version_changeset` | The Unity changeset ID or hash for the used Unity version. It ensures that the project runs as intended on the specified Unity version.  | required |  |
</details>

<details>
<summary>Outputs</summary>
There are no outputs defined in this step
</details>

## 🙋 Contributing

We welcome [pull requests](https://github.com/bitrise-steplib/bitrise-step-unity-install/pulls) and [issues](https://github.com/bitrise-steplib/bitrise-step-unity-install/issues) against this repository.

For pull requests, work on your changes in a forked repository and use the Bitrise CLI to [run step tests locally](https://devcenter.bitrise.io/bitrise-cli/run-your-first-build/).

Learn more about developing steps:

- [Create your own step](https://devcenter.bitrise.io/contributors/create-your-own-step/)
- [Testing your Step](https://devcenter.bitrise.io/contributors/testing-and-versioning-your-steps/)

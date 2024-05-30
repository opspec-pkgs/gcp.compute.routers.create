[![Build Status](https://github.com/opspec-pkgs/gcp.compute.routers.create/workflows/build/badge.svg?branch=main)](https://github.com/opspec-pkgs/gcp.compute.routers.create/actions?query=workflow%3Abuild+branch%3Amain)

<img src="icon.svg" alt="icon" height="100px">

# Problem statement

creates a google cloud platform cloud router (if it doesn't exist)

# Example usage

## Visualize

```shell
opctl ui github.com/opspec-pkgs/gcp.compute.routers.create#1.0.0
```

## Run

```
opctl run github.com/opspec-pkgs/gcp.compute.routers.create#1.0.0
```

## Compose

```yaml
op:
  ref: github.com/opspec-pkgs/gcp.compute.routers.create#1.0.0
  inputs:
    keyFile:  # 👈 required; provide a value
    name:  # 👈 required; provide a value
    network:  # 👈 required; provide a value
    projectId:  # 👈 required; provide a value
    region:  # 👈 required; provide a value
  ## uncomment to override defaults
  #   advertisementMode: "DEFAULT"
  #   asn: -1
  #   async: false
  #   description: " "
  #   setAdvertisementRanges: " "
```

# Support

join us on
[![Slack](https://img.shields.io/badge/slack-opctl-E01563.svg)](https://join.slack.com/t/opctl/shared_invite/zt-51zodvjn-Ul_UXfkhqYLWZPQTvNPp5w)
or
[open an issue](https://github.com/opspec-pkgs/gcp.compute.routers.create/issues)

# Releases

releases are versioned according to
[![semver 2.0.0](https://img.shields.io/badge/semver-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
and [tagged](https://git-scm.com/book/en/v2/Git-Basics-Tagging); see
[CHANGELOG.md](CHANGELOG.md) for release notes

# Contributing

see
[project/CONTRIBUTING.md](https://github.com/opspec-pkgs/project/blob/main/CONTRIBUTING.md)

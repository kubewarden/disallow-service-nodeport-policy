Continuous integration | License
 -----------------------|--------
[![CI](https://github.com/kubewarden/disallow-service-nodeport-policy/actions/workflows/ci.yml/badge.svg)](https://github.com/kubewarden/disallow-service-nodeport-policy/actions/workflows/ci.yml) | [![License: Apache 2.0](https://img.shields.io/badge/License-Apache2.0-brightgreen.svg)](https://opensource.org/licenses/Apache-2.0)


This policy works by inspecting `type` of `Service` resources and prevents the
creation of Services with type `NodePort`.

Kubernetes network policies have no control over what is being exposed
via these type of Services. Because of that, it's usually a safer choice to have
tighter control over the creation of these type of Services.

# Configuration

This policy doesn't take any configuration value.

# Obtain policy

The policy is automatically published as an OCI artifact inside of
[this](https://github.com/orgs/kubewarden/packages/container/package/policies%2Fdisallow-service-nodeport)
container registry.

# Using the policy

The easiest way to use this policy is through the [kubewarden-controller](https://github.com/kubewarden/kubewarden-controller).

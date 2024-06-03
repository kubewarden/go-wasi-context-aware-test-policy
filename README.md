[![Kubewarden Policy Repository](https://github.com/kubewarden/community/blob/main/badges/kubewarden-policies.svg)](https://github.com/kubewarden/community/blob/main/REPOSITORIES.md#policy-scope)
[![Stable](https://img.shields.io/badge/status-stable-brightgreen?style=for-the-badge)](https://github.com/kubewarden/community/blob/main/REPOSITORIES.md#stable)

> **WARNING:** this is not the recommended way to write Kubewarden
> policies using Go. Please read [this](https://docs.kubewarden.io/writing-policies/wasi)
> section of the Kubewarden documentation for more information.

This is the template of a plain WASI policy written using Go. The policy is
then compiled with the official Go compiler.
Moreover, this is a context aware policy. Meaning, it makes queries against the Kubernetes API server.

This is a port of [this Rust policy](https://github.com/kubewarden/context-aware-test-policy).

## Description

This is a test policy used in the policy-evaluator integration tests.
Every time a deployment with the label `app.kubernetes.io/component: "api"` is created or updated it checks the following:

- The Deployment must have a `customer-id` label set.
- The value of the `customer-id` label of the deployment must match the value of the `customer-id` namespace where the deployment has been created.
- A deployment with the label `app.kubernetes.io/component: database` must exist in the deployment namespace.
- A deployment with the label `app.kubernetes.io/component: frontend` must exist in the deployment namespace.
- A service named `api-auth-service` with the label `app.kubernetes.io/part-of: api` must exist in the deployment namespace.

## Settings

This policy has no configurable settings.

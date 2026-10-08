---
description: Expose a cluster diagram securely through Tailscale
---

Set up KubeView for the Kubernetes cluster associated with the active repository and make it reachable only over the user's Tailscale network.

Treat `$ARGUMENTS` as deployment guidance. With no arguments, prefer the repository's documented local development cluster, normally its minikube profile/context. Arguments such as `remote`, `staging`, `production`, a kubeconfig context, or a minikube profile select another target. If `remote` is ambiguous, inspect repository documentation and kubeconfig; ask before deploying if more than one plausible remote target remains. Never silently use a different context from the one selected.

First inspect repository instructions and deployment configuration to identify the cluster and avoid conflicting conventions. Verify the chosen context and summarize it before making changes. If the target is production or otherwise sensitive and the user's request did not identify it explicitly, ask for confirmation.

Deploy a pinned stable KubeView release using Helm when available. Use a dedicated namespace, a ClusterIP service, read-only Kubernetes RBAC, no ingress, no LoadBalancer, and no NodePort. Disable pod-log access by default. Do not expose Kubernetes Secrets unless KubeView cannot function without that permission; inspect rendered RBAC and remove unnecessary secret or pod-log permissions where practical.

Expose KubeView through Tailscale Serve over HTTPS. Bind any local port-forward only to `127.0.0.1`, choose an unused local and Tailscale port without replacing existing Serve routes, and make the port-forward persistent with an appropriately named user service. Do not use Tailscale Funnel or expose it publicly. For a cluster that cannot be reached persistently from the current Tailscale node, stop and ask how the user wants it hosted.

Verify the deployment rollout, local health endpoint, Tailscale HTTPS health endpoint, and effective read-only permissions. Report the selected Kubernetes context, namespace, KubeView version, Tailscale URL, security choices, persistence mechanism, and exact teardown commands. Do not modify the active repository unless the user asks for a checked-in deployment.

Deployment guidance: $ARGUMENTS

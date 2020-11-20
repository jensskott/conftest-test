package main

deny[msg] {
  input.kind = "Deployment"
  not input.spec.template.metadata.labels.deployment = input.metadata.name
  msg = "Metadata Name must match label name"
}

deny[msg] {
  input.kind = "Deployment"
  not input.spec.selector.matchLabels.app
  msg = "Containers must provide app label for pod selectors"
}
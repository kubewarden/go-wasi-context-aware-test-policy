#!/usr/bin/env bats

@test "Accept" {
  run kwctl run \
    --request-path test_data/app_deployment.json \
    --allow-context-aware \
    --replay-host-capabilities-interactions test_data/session.yml \
    annotated-policy.wasm

  # this prints the output when one the checks below fails
  echo "output = ${output}"

  [ "$status" -eq 0 ]
  [ $(expr "$output" : '.*"allowed":true.*') -ne 0 ]
}


module github.com/kubewarden/go-wasi-policy-template

go 1.21

require (
	github.com/deckarep/golang-set/v2 v2.6.0
	github.com/kubewarden/k8s-objects v1.27.0-kw5
	github.com/kubewarden/policy-sdk-go v0.6.0
)

replace github.com/go-openapi/strfmt => github.com/kubewarden/strfmt v0.1.3

require (
	github.com/go-openapi/strfmt v0.21.3 // indirect
	github.com/wapc/wapc-guest-tinygo v0.3.3 // indirect
)




########### DO NOT EDIT #############################
# To update call: make add-generated-help-block
# This is added to help document dynamic targets and support shell autocompletion


##@ GIT/Repo Targets
clone-repo:  ## Clone upstream `plugins`
checkout-repo: ## Checkout upstream tag based on value in GIT_TAG file

##@ Binary Targets
binaries: ## Build all binaries: `bandwidth firewall portmap sbr tuning vrf bridge dummy host-device ipvlan loopback macvlan ptp tap vlan dhcp host-local static ` for `linux/amd64 linux/arm64`
_output/1-26/bin/plugins/linux-amd64/bandwidth: ## Build `_output/1-26/bin/plugins/linux-amd64/bandwidth`
_output/1-26/bin/plugins/linux-amd64/firewall: ## Build `_output/1-26/bin/plugins/linux-amd64/firewall`
_output/1-26/bin/plugins/linux-amd64/portmap: ## Build `_output/1-26/bin/plugins/linux-amd64/portmap`
_output/1-26/bin/plugins/linux-amd64/sbr: ## Build `_output/1-26/bin/plugins/linux-amd64/sbr`
_output/1-26/bin/plugins/linux-amd64/tuning: ## Build `_output/1-26/bin/plugins/linux-amd64/tuning`
_output/1-26/bin/plugins/linux-amd64/vrf: ## Build `_output/1-26/bin/plugins/linux-amd64/vrf`
_output/1-26/bin/plugins/linux-amd64/bridge: ## Build `_output/1-26/bin/plugins/linux-amd64/bridge`
_output/1-26/bin/plugins/linux-amd64/dummy: ## Build `_output/1-26/bin/plugins/linux-amd64/dummy`
_output/1-26/bin/plugins/linux-amd64/host-device: ## Build `_output/1-26/bin/plugins/linux-amd64/host-device`
_output/1-26/bin/plugins/linux-amd64/ipvlan: ## Build `_output/1-26/bin/plugins/linux-amd64/ipvlan`
_output/1-26/bin/plugins/linux-amd64/loopback: ## Build `_output/1-26/bin/plugins/linux-amd64/loopback`
_output/1-26/bin/plugins/linux-amd64/macvlan: ## Build `_output/1-26/bin/plugins/linux-amd64/macvlan`
_output/1-26/bin/plugins/linux-amd64/ptp: ## Build `_output/1-26/bin/plugins/linux-amd64/ptp`
_output/1-26/bin/plugins/linux-amd64/tap: ## Build `_output/1-26/bin/plugins/linux-amd64/tap`
_output/1-26/bin/plugins/linux-amd64/vlan: ## Build `_output/1-26/bin/plugins/linux-amd64/vlan`
_output/1-26/bin/plugins/linux-amd64/dhcp: ## Build `_output/1-26/bin/plugins/linux-amd64/dhcp`
_output/1-26/bin/plugins/linux-amd64/host-local: ## Build `_output/1-26/bin/plugins/linux-amd64/host-local`
_output/1-26/bin/plugins/linux-amd64/static: ## Build `_output/1-26/bin/plugins/linux-amd64/static`
_output/1-26/bin/plugins/linux-arm64/bandwidth: ## Build `_output/1-26/bin/plugins/linux-arm64/bandwidth`
_output/1-26/bin/plugins/linux-arm64/firewall: ## Build `_output/1-26/bin/plugins/linux-arm64/firewall`
_output/1-26/bin/plugins/linux-arm64/portmap: ## Build `_output/1-26/bin/plugins/linux-arm64/portmap`
_output/1-26/bin/plugins/linux-arm64/sbr: ## Build `_output/1-26/bin/plugins/linux-arm64/sbr`
_output/1-26/bin/plugins/linux-arm64/tuning: ## Build `_output/1-26/bin/plugins/linux-arm64/tuning`
_output/1-26/bin/plugins/linux-arm64/vrf: ## Build `_output/1-26/bin/plugins/linux-arm64/vrf`
_output/1-26/bin/plugins/linux-arm64/bridge: ## Build `_output/1-26/bin/plugins/linux-arm64/bridge`
_output/1-26/bin/plugins/linux-arm64/dummy: ## Build `_output/1-26/bin/plugins/linux-arm64/dummy`
_output/1-26/bin/plugins/linux-arm64/host-device: ## Build `_output/1-26/bin/plugins/linux-arm64/host-device`
_output/1-26/bin/plugins/linux-arm64/ipvlan: ## Build `_output/1-26/bin/plugins/linux-arm64/ipvlan`
_output/1-26/bin/plugins/linux-arm64/loopback: ## Build `_output/1-26/bin/plugins/linux-arm64/loopback`
_output/1-26/bin/plugins/linux-arm64/macvlan: ## Build `_output/1-26/bin/plugins/linux-arm64/macvlan`
_output/1-26/bin/plugins/linux-arm64/ptp: ## Build `_output/1-26/bin/plugins/linux-arm64/ptp`
_output/1-26/bin/plugins/linux-arm64/tap: ## Build `_output/1-26/bin/plugins/linux-arm64/tap`
_output/1-26/bin/plugins/linux-arm64/vlan: ## Build `_output/1-26/bin/plugins/linux-arm64/vlan`
_output/1-26/bin/plugins/linux-arm64/dhcp: ## Build `_output/1-26/bin/plugins/linux-arm64/dhcp`
_output/1-26/bin/plugins/linux-arm64/host-local: ## Build `_output/1-26/bin/plugins/linux-arm64/host-local`
_output/1-26/bin/plugins/linux-arm64/static: ## Build `_output/1-26/bin/plugins/linux-arm64/static`

##@ Checksum Targets
checksums: ## Update checksums file based on currently built binaries.
validate-checksums: # Validate checksums of currently built binaries against checksums file.
all-checksums: ## Update checksums files for all RELEASE_BRANCHes.

##@ Run in Docker Targets
run-all-attributions-in-docker: ## Run `all-attributions` in docker builder container
run-all-attributions-checksums-in-docker: ## Run `all-attributions-checksums` in docker builder container
run-all-checksums-in-docker: ## Run `all-checksums` in docker builder container
run-attribution-in-docker: ## Run `attribution` in docker builder container
run-attribution-checksums-in-docker: ## Run `attribution-checksums` in docker builder container
run-binaries-in-docker: ## Run `binaries` in docker builder container
run-checksums-in-docker: ## Run `checksums` in docker builder container
run-clean-in-docker: ## Run `clean` in docker builder container
run-clean-go-cache-in-docker: ## Run `clean-go-cache` in docker builder container

##@ Artifact Targets
tarballs: ## Create tarballs by calling build/lib/simple_create_tarballs.sh unless SIMPLE_CREATE_TARBALLS=false, then tarballs must be defined in project Makefile
s3-artifacts: # Prepare ARTIFACTS_PATH folder structure with tarballs/manifests/other items to be uploaded to s3
upload-artifacts: # Upload tarballs and other artifacts from ARTIFACTS_PATH to S3

##@ License Targets
gather-licenses: ## Helper to call $(GATHER_LICENSES_TARGETS) which gathers all licenses
attribution: ## Generates attribution from licenses gathered during `gather-licenses`.
attribution-pr: ## Generates PR to update attribution files for projects
attribution-checksums: ## Update attribution and checksums files.
all-attributions: ## Update attribution files for all RELEASE_BRANCHes.
all-attributions-checksums: ## Update attribution and checksums files for all RELEASE_BRANCHes.

##@ Clean Targets
clean: ## Removes source and _output directory
clean-repo: ## Removes source directory

##@ Helpers
help: ## Display this help
add-generated-help-block: ## Add or update generated help block to document project make file and support shell auto completion

##@Update Helpers
run-target-in-docker: ## Run `MAKE_TARGET` using builder base docker container
stop-docker-builder: ## Clean up builder base docker container
generate: ## Update UPSTREAM_PROJECTS.yaml
update-go-mods: ## Update locally checked-in go sum to assist in vuln scanning
update-vendor-for-dep-patch: ## After bumping dep in go.mod file, uses generic vendor update script or one provided from upstream project
patch-for-dep-update: ## After bumping dep in go.mod file and updating vendor, generates patch
create-ecr-repos: ## Create repos in ECR for project images for local testing

##@ Build Targets
build: ## Called via prow presubmit, calls `validate-checksums attribution   upload-artifacts attribution-pr`
release: ## Called via prow postsubmit + release jobs, calls `validate-checksums   upload-artifacts`
########### END GENERATED ###########################

# command sec

[ refrence docker scout ](https://github.com/docker/scout-cli)

===>>> version 1.18.1

[ download docker scout ](https://github.com/docker/scout-cli/releases/tag/v1.18.1)

====================================================================


===>>> Security vulnerabilities in Docker images
```bash
docker scout quickview [image]
```

===>>> Display the list of identified vulnerabilities
```bash
docker scout cves
```

===>>> Provide suggestions for fixing vulnerabilities
```bash
docker scout recommendations
```

===>>> Compare two images and show the differences
```bash
docker scout compare
```

===>>> Generate or display SBOM of an image
```bash
docker scout sbom
```

for example

**docker scout quickview nginx**

====================================================

# scout cli

refrence scout cli
[ scout cli ](https://github.com/docker/scout-cli/releases)

====================================================

# Command	Description
```bash
docker scout attestation
```
Manage attestations on image indexes

```bash
docker scout cache
```
Manage Docker Scout cache and temporary files

```bash
docker scout compare
```
Compare two images and display differences (experimental)

```bash
docker scout config
```
Manage Docker Scout configuration

```bash
docker scout cves
```
Display CVEs identified in a software artifact

```bash
docker scout enroll
```
Enroll an organization with Docker Scout

```bash
docker scout environment
```
Manage environments (experimental)

```bash
docker scout integration
```
Commands to list, configure, and delete Docker Scout integrations


```bash
docker scout policy
```
Evaluate policies against an image and display the policy evaluation results (experimental)

```bash
docker scout push
```
Push an image or image index to Docker Scout

```bash
docker scout quickview
```
Quick overview of an image

```bash
docker scout recommendations
```
Display available base image updates and remediation recommendations

```bash
docker scout repo
```
Commands to list, enable, and disable Docker Scout on repositories

```bash
docker scout sbom
```
Generate or display SBOM of an image

```bash
docker scout stream
```
Manage streams (experimental)

```bash
docker scout version
```
Show Docker Scout version information

```bash
docker scout watch
```
Watch repositories in a registry and push images and indexes to Docker Scout (experimental)

===>>> help scout
```bash
docker scout --help
```

====================================================


## install offline docker scout

```bash
export DOCKER_SCOUT_OFFLINE=true
```

```bash
docker scout analyze <image>
```
====================================================


Docker Scout : [scout](https://docs.docker.com/scout/) 

Installation Steps: 

```bash
1. curl -fsSL https://raw.githubusercontent.com/doc... -o install-scout.sh

2. sh install-scout.sh
```

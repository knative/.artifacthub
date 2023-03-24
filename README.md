# .artifacthub

Repository for sharing Knative resources to ArtifactHub.

https://artifacthub.io/docs/topics/repositories/knative-client-plugins/

### Adding new artifact metadata

The metadata stored in `plugins` directory is periodically indexed by Artifact Hub to list our plugins per `kn-client-plugin` type.

Step to add a new one:
 - Create a new directory named per GitHub repository name
 - Create `artifact-pkg.yml` per Artifact Hub [docs](https://github.com/artifacthub/hub/blob/master/docs/metadata/artifacthub-pkg.yml)
 - Execute `./hack/update-codegen.sh`

A top-level directory should be created with an appropriate name to add a new type of artifact.

### Updating `README.md` files

There's a script to automatically download the current `main` README files per plugin directory. The [Knobot](https://github.com/knative-sandbox/knobots) `update-deps` action periodically executes it. 

```
./hack/update-codegen.sh
```

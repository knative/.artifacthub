# .artifacthub

Repository for sharing Knative resources to ArtifactHub.

https://artifacthub.io/docs/topics/repositories/knative-client-plugins/

### Adding new artifact metadata

The metadata stored in `plugins` directory are periodically indexed by ArtifactHub to list our plugins per `kn-client-plugin` type of AH.

Step to add a new one:
 - Create a new directory named per GitHub repository name
 - Create `artifact-pkg.yml` per docs link above
 - Execute `./hack/update-codegen.sh`

To add a new type of artifact a top-level directory should be created with appropriate name.

### Updating `README.md` files

There's a script to automatically download current `main` README files per plugin directory. It's periodically executed by Knobot action. 

```
./hack/update-codegen.sh
```

# my-helm-chart
My helm chart package.


# Build new helm chart process

## Create a new folder in helm-chart folder
```
cd helm-chart
helm create {my-helm-chart-name}
```

## Customize k8s yml file

## Dry-run to check it is available to run
```
helm install {release_name} ./{my-helm-chart-name} --dry-run --debug
```

## Pack it as .tgz
```
helm package {my-helm-chart-name}
```

## Move it to helm-chart-index folder
```
mv {my-helm-chart-name}-{chart-version}.tgz ../helm-chart-index
```

## Recreate index.yaml

```
cd ..
helm repo index helm-chart-index
```
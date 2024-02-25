# chapman-Quarto
Quarto styles with that Chapman flair


## adding extensions

for `github_repo/package`,

```bash
cd chapman-Quarto/desired_format
quarto add github_repo/package --embed desired_format
```

Then, you can add the package to the `desired_format/_extension.yml` like:

```yml
contributes:
    filters:
        - package
```

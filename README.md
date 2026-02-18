# Terraform Workspaces (séparation des states)

Les **workspaces Terraform** permettent de gérer plusieurs environnements (par exemple `dev`, `qa`, `prod`) à partir du même code, tout en **séparant les fichiers de state**.  
En entreprise, cette séparation est **indispensable** pour éviter qu’un déploiement sur un environnement n’impacte accidentellement un autre (par exemple la prod).

Chaque workspace possède son **state Terraform propre**, ce qui permet :
- d’isoler les ressources par environnement,
- de limiter les risques d’erreurs,
- de faciliter la gestion des droits et des workflows (CI/CD).

---

## 1. Initialisation du projet

```bash
terraform init

```


## 2. Création des workspaces
```bash
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod
```

## 3. Déploiement par environnement
DEV
```bash
terraform workspace select dev
terraform plan -var-file="env/dev.tfvars"
terraform apply -var-file="env/dev.tfvars"

```
## 3. Déploiement par environnement QA
```bash
terraform workspace select qa
terraform plan -var-file="env/qa.tfvars"
terraform apply -var-file="env/qa.tfvars"

```

## 3. Déploiement par environnement PROD
```bash
terraform workspace select prod
terraform plan -var-file="env/prod.tfvars"
terraform apply -var-file="env/prod.tfvars"

```
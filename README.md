Terraform Workspaces (SÉPARATION DES STATES)

👉 OBLIGATOIRE en entreprise

terraform init

Créer les workspaces
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod


6️⃣ Déploiement DEV / QA / PROD (ULTRA SIMPLE)
DEV
terraform workspace select dev
terraform apply -var-file=env/dev.tfvars


QA
terraform workspace select qa
terraform apply -var-file=env/qa.tfvars


PROD
terraform workspace select prod
terraform apply -var-file=env/prod.tfvars
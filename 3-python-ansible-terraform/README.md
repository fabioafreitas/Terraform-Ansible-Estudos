* Inicializa infra: ubuntu 22.04 LTS em t2.micro na AWS. 

/terraform
```
terraform init
terraform plan
terraform apply
```

* Realiza execução de comandos em lote na VM
* Instala dependências do python e virtualenv
* Instala pelo pip dependencias do Djando
* Inicializa projeto django

/ansible
```
ansible-playbook playbook.yml -u ubuntu --private-key "../terraform/python-ansible-terraform.pem" -i hosts.yml
```
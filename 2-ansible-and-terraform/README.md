* Inicializa infra: ubuntu 22.04 LTS em t2.micro na AWS. 

/terraform
```
terraform init
terraform plan
terraform apply
```

* Realiza execução de comandos em lote na VM
* Inicializa servidor http de testes
/ansible
```
ansible-playbook playbook.yml -u ubuntu --private-key "../terraform/ansible-and-terraform.pem" -i hosts.yml
```
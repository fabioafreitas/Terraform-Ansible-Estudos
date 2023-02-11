* Cria instâcia de ubuntu 20.04 LTS em t2.micro na AWS. 
* Cria servidor http de testes na porta 8080.
* Precisa deletar a VM caso desejemos alterar o código da aplicação. Não é legal para dev, pois precisamos recriar a infra toda vez que algo mudar

```
terraform init
terraform plan
terraform apply
```


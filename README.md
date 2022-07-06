# Infra_ASA - Administração de Sistemas Abertos

**Repositório para Atividade da ETAPA 01**

##### Autor: _Pedro Iéremis Brito de Medeiros_

---

#### Proposta

1. Criar um repositório chamado **infra-asa** (O qual é este)

2. Criar uma pasta (dns) com as configurações da infraestrutura para a zona **prova.asa.br**

3. Criar uma pasta com (web1) com as configurações da infraestrutura para um site web usando **nginx**

4. Criar uma pasta com (web2) com as configurações da infraestrutura para um site web usando **apache**

5. Criar as configurações de DNS para web1 como **s1.prova.asa.br**

6. Criar as configurações de DNS para web2 como **s2.prova.asa.br**

7. Criar um programa (script) para iniciar e parar os três containers que compõem a estrutura

---

###### Informações Complementares

- Foram usados arquivos html e css que já haviam sido utilizados, apenas no intuito de cumprir a proposta. Um sendo meu, outro sendo um arquivo inicial do professor.

- O DNS vai usar o mesmo IP para o *s1.prova.asa.br*, como para *s2.prova.asa.br*, o que vai lhe possibilitar o acesso aos serviços pelas resoluções de nomes, são as portas diferentes definidas no momento de execução, as que serão de uso do host. A interna para os containers web, será 80 para os dois servidores web.
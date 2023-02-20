## __Administração de Sistemas Abertos - Webservers & DNS__

### Proposta

1. Criar uma pasta (dns) com as configurações da infraestrutura para a zona **prova.asa.br**

2. Criar uma pasta com (web1) com as configurações da infraestrutura para um site web usando **nginx**

3. Criar uma pasta com (web2) com as configurações da infraestrutura para um site web usando **apache**

4. Criar as configurações de DNS para web1 como **s1.prova.asa.br**

5. Criar as configurações de DNS para web2 como **s2.prova.asa.br**

6. Criar um programa (script) para iniciar e parar os três containers que compõem a estrutura

---

Para começar clone o repositório:

```shell
git clone https://github.com/pedroieremis/Docker-DNS-Nginx-Apache.git
```

Navegue até o repositório clonado:
```shell
cd Docker-DNS-Nginx-Apache/
```

Execute o Script de automação da Infraestrutura:
```shell
./auto.sh
```

---

### Informações Complementares

- O DNS vai usar o mesmo IP para o *s1.prova.asa.br*, como para *s2.prova.asa.br*, o que vai lhe possibilitar o acesso aos serviços certos são as portas diferentes definidas no momento de execução. A interna para os containers web, será 80 para os dois servidores web, mas as externas diferentes.

- Basta executar o Script de _auto.sh_ para subir a Infraestrutura. Um servidor Web estará sendo acessado pela porta 7070 e outro pela 9090.
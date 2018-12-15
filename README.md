# Estudos sobre Vagrant

## O que é o Vagrant?

![Logo Vagrant](img/vagrantup-card.png)

O Vagrant é uma ferrmenta de linha de comando (CLI) que abstrai a complexidade dos principais virtualizadores disponíveis e permite criar máquinas virtuais de uma forma extremamente simples.

Com o Vagrant é possível gerenciar provedores de máquinas virtuais locais e públicos, como: VMWare, VirtualBox, Amazon AWS, DigitalOcean, etc.

O Vagrant também fornece uma interface para os sistemas de gerenciamento de configurações como Chef, Puppet, CFEngine e Ansible.

## Vagrantfile

O código abaixo é um exemplo de um arquivo `Vagrantfile`. A sintax utilizada na construção dos arquivos é a da linguagem `Ruby`. Nele estamos informando que usaremos a versão 2 da API, que queremos usar o Ubuntu Trusty de 64 bits. Também declaramos nossa rede e finalmente definimos que nossa máquina virtual terá 1GB de memória RAM (informado em megabytes - 1024 MB).

```ruby
# _*_ mode: ruby _*_
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "testvm" do |testvm|
    testvm.vm.box = "ubuntu/trusty64"
    testvm.vm.network :private_network, ip: "192.168.33.21"
  end

  config.vm.provider "virtualbox" do |v|
    v.customize ["modifyvm", :id, "--memory", "1024"]
  end

end
```

## Comandos básicos

* Iniciar a VM

        $ vagrant up

* Acessar a VM via SSH

        $ vagrant ssh

* Destruir a VM

        $ vagrant destroy

* Parar a VM

        $ vagrant halt

* Atualizar a VM executando um novo provisionamento

        $ vagrant provision

## Referências

* [https://rafaelmoraes.pro/install-vagrant-on-fedora](https://rafaelmoraes.pro/install-vagrant-on-fedora)

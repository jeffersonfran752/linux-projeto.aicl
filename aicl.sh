#!/bin/bash 


echo "Criando Diretórios..." 

mkdir /publico 
mkdir /ven 
mkdir /sec
mkdir /adm 

echo "Criando Grupos..." 

groupadd GRP_VEN 
groupadd GRP_ADM 
groupadd GRP_SEC 

echo "Criando Usuarios..." 

useradd carlos -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_ADM  
useradd maria -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_ADM 
useradd joao -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_ADM 

useradd katelin -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_VEN 
useradd leticia -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_VEN 
useradd gustavo -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_VEN 

useradd roberto -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_SEC 
useradd critiano -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_SEC 
useradd lucas -m -s/bin/bash -p$(openssl passwd Senha123) -G GRP_SEC 

echo "Especificando Permissões dos Diretórios..." 

chown root: GRP_ADM /adm
chown root: GRP_VEN /ven 
chown root: GRP_SEC /sec 

chmod 770 /adm 
chmod 770 /ven 
chmod 770 /sec
chmod 777 /publico 

echo "Finalizado..." 

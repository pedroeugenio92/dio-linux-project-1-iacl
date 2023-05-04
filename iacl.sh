#!/bin/bash

echo "Criando diretórios..."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos	    -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd carlos	-G GRP_ADM
useradd maria	      -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd maria -G GRP_ADM
useradd joao	      -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd joao -G GRP_ADM

useradd debora	    -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd debora -G GRP_VEN
useradd sebastiana  -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd sebastiana -G GRP_VEN
useradd roberto	    -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd roberto -G GRP_VEN

useradd josefina    -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd josefina -G GRP_SEC
useradd amanda      -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd amanda -G GRP_SEC
useradd rogerio     -m   -s /bin/bash  -p $(openssl passwd -crypt Senha1) passwd rogerio -G GRP_SEC

echo "Adicionando permissões aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Final..."

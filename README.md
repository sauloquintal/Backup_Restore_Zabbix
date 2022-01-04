# Backup_Restore_Zabbix
Scripts para realizar backup e restore das configurações do Zabbix.

São dois scripts um para backup e um para restore.

Os scripts foram escritos para realizar o backup ou restore das configurações do Zabbix ignorando as maiores tabelas e automatizar esse processo no sistema de backup bacula.

Porem pode ser utilizado dentro do sistema para realizar backup ou restauração sem nenhuma adaptação e sem a necessidade do uso do bacula.

É necessário criar dentro do sistema do Zabbix antes de rodar o script os diretórios a seguir: /home/backup/zabbix/

A princípio não é necessária nenhuma adaptação no script onde foi testado no Zabbix 5.0. Caso faça a utilização em outra versão é necessário verificar os diretórios que o 
script cópia e compacta.

Os scripts são livres para alteração, distribuição e estudo, portanto fique à vontade para alterar distribuir, divulgar sem restrições.

Caso tenha dúvida na utilização fique à vontade para entrar em contato através do e-mail: sauloquintal@gmail.com

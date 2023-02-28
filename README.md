# ansibleplay

Wordpress on Ubuntu 22.04 LAMP
This playbook will install a WordPress website on top of a LAMP environment (Linux, Apache, MySQL and PHP) on an Ubuntu 22.04 machine, as explained in the guide on How to Use Ansible to Set Up Wordpress on Ubuntu 22.04 LAMP. A virtualhost will be created with the options specified in the yml file which i had paased the vars as hardcoded, its not a best practice.

Settings
php_modules: An array containing PHP extensions that should be installed to support your WordPress setup. You don't need to change this variable, but you might want to include new extensions to the list if your specific setup requires it.
mysql_root_password: The desired password for the root MySQL account.
mysql_db: The name of the MySQL database that should be created for WordPress.
mysql_user: The name of the MySQL user that should be created for WordPress.
mysql_password: The password for the new MySQL user.
http_host: Your domain name.
http_conf: The name of the configuration file that will be created within Apache.
http_port: HTTP port for this virtual host, where 80 is the default.



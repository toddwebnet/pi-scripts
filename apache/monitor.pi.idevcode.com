<Directory "/home/jtodd/monitoring/public">
  Options FollowSymLinks MultiViews
  AllowOverride All
  Require all granted
</Directory>

<VirtualHost *:80>
DocumentRoot "/home/jtodd/monitoring/public"
ServerName monitor.pi.idevcode.com
ServerAlias monitor.pi.idevcode.com
</VirtualHost>


<IfModule mod_ssl.c>
<VirtualHost *:443>
DocumentRoot "/home/jtodd/monitoring/public"
ServerName monitor.pi.idevcode.com
ServerAlias monitor.pi.idevcode.com
SSLEngine on
SSLCertificateFile /etc/apache2/ssl/server.crt
SSLCertificateKeyFile /etc/apache2/ssl/server.key

</VirtualHost>
</IfModule>

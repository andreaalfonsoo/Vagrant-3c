apt-get -y update2
apt-get -y install apache2
apt-get -y install git

git clone https://github.com/andreaalfonsoo/landing_page.git /var/www/sitio1
git clone https://github.com/andreaalfonsoo/Prueba-miniCRM.git /var/www/sitio2

git clone https://github.com/andreaalfonsoo/Vagrant-3c.git /home/vagrant/config
checkout config

mv /home/vagrant/config/sitio1.conf /etc/apache2/sites-available/
mv /home/vagrant/config/sitio2.conf /etc/apache2/sites-available/

a2ensite sitio1.conf
a2ensite sitio2.conf



service apache2 reload

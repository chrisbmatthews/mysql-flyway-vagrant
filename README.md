# mysql-flyway-vagrant

This is a fork of https://github.com/AlexDisler/mysql-vagrant

This contains the vagrant config necessary for running mysql with flyway

### Start and login

     $ vagrant up
     $ vagrant ssh
     ...from here, you can run flyway from within the vm:
     $ flyway migrate

### mysql credentials

- username: root
- password: root


### Warning

For development use only, do not use in production.
Also, make sure your mysql port (3306) is not open on your computer for a local network or in general.

### License

MIT

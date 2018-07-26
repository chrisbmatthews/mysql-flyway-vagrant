# mysql-flyway-vagrant

This is a fork of https://github.com/AlexDisler/mysql-vagrant

This contains the vagrant config necessary for running mysql with flyway

See the full youtube video explaining this here:
https://www.youtube.com/watch?v=e8zGQO68hTY


### Start and login

     $ vagrant up
     $ vagrant ssh

...from here, you can run flyway from within the vm:

     $ flyway migrate

### mysql credentials

- username: root
- password: root

### Pulling down from Vagrant Cloud

This is available as a pre-built box as 'cbmatthews/mysql-flyway':
    
    $ vagrant init cbmatthews/mysql-flyway
    $ vagrant up
    $ vagrant ssh

...if you install it this way, port 3306 will not be exposed to your host system by default; you would need to add the port mapping in your Vagrantfile.

### Warning

For development use only, do not use in production.
Also, make sure your mysql port (3306) is not open on your computer for a local network or in general.

### License

MIT

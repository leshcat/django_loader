Simple Django project loader.

Prepares and runs embedded python web server.

"project_name" variable should be set via any vars or --exra-vars option before running playbook which should point to Django project root directory.

I.e.: ansible-playbook -i sat site.yml --extra-vars "project_name=mysite"

Also, "runproject" variable controls cloning repo and running web server process. By default it is set to "yes".

If you are willing to perform cleanup only, for example you can execute playbook with "runproject=no" extra var:

I.e.: ansible-playbook -i sat site.yml --extra-vars "project_name=mysite runproject=no".

The "runtesting" variable runs "testing" role with GET/POST querries. It's "yes" by default. 

If you want to perform testing only, you can run following command:
ansible-playbook -i sat site.yml --extra-vars "project_name=mysite runcleaning=no runproject=no runtesting=yes"

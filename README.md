Simple Django project loader.

Prepares and runs embedded python web server.

"project_name" variable should be set via any vars or --exra-vars option before running playbook which should point to Django project root directory.

I.e.: ansible-playbook -i sat site.yml --extra-vars "project_name=mysite"

Also, "projectrun" variable controls cloning repo and running web server process. By default it is set to "yes".

If you are willing to perform cleanup only, for example you can execute playbook with "projectrun=no" extra var:

I.e.: ansible-playbook -i sat site.yml --extra-vars "project_name=mysite projectrun=no".

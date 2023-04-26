ansible-playbook setup.yml
ansible-playbook couchdb.yml
ansible-playbook initdb.yml

ansible-playbook wipe.yml
ansible-playbook openwhisk.yml -e lean=true -e invoker_user_memory=1024m -e docker_image_prefix=kpavel -e docker_image_tag=rpi
ansible-playbook postdeploy.yml

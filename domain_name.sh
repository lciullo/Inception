if [ "127.0.0.1	lciullo.42.fr" = "$(head -n1 /etc/hosts)" ]
then
    :
else
    sudo sed -i '1s/^/127.0.0.1	lciullo.42.fr\n/' /etc/hosts
fi
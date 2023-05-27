container_name=lambda_doker
dicker_image=aws_lambda_builder_image
docker run -td --name=$container_name $docker_image
docker cp ./requirements.txt $container_name:/


docker exec -i $container_name /bin/bash < ./docker_install.sh
docker cp $container_name:/python.zip python.zip
doker stop $container_name
docker rm $container_name
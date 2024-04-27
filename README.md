## MINI PROJET TERRAFORM

##objectif:

Provisionner une infarstructure sur AWS cloud comprenant:

-1 instance EC2

-1 volume EBS

-1 elastic IP associé a l'instance ec2

-1 security group 


## PREPARATION AU DEPLOIEMENT

Les etapes de construction du projet sont:

-creer les 5 modules (1 module en plus qui est le volume_attachement a ebs volume) sont dans le dossier ./modules/
- ebs1 , voleme EBS
- ec21 , instance EC2
- eip , elastic IP
- sg , security group
- vol_attachement associé au module ebs1
  
-ajout scripts
- install_docker , pour installer docker
- docker_compose.yml ,  pour deployer nginx (ou n'importe quel application ) en mode micro-servive

-recuperation de l'adresse IP public de l'instance EC2 dans un le fichier ip_ec2.txt ,qui servira a d'autres modules a venir

-ce deploiement comprend aussi un script principal main.tf , qui est a la racine du projet, et qui lance les 5 modules citées ci-dessus 

 ## DEPLOIEMENT

 Le deploiment consiste juste a lancer :
 - terraform init
 - terraform plan
 - terraform apply
 - et terraform destroy a été lancé apres avoir verifié que tout est correctement executé et que l'application nginx fonctionne

## RESULTATS DES EXECUTIONS

Apres connexion a AWS, on constate :

-l'instance EC2 créée 
   ![ec2_instance](https://github.com/ravelonanosy/mini-projet-terraform/assets/138290448/db6f4b47-b947-4205-a59e-996d52969605)


-le volume EBS  
![ebs](https://github.com/ravelonanosy/mini-projet-terraform/assets/138290448/0c1ef816-e690-4543-b511-fd4cbcca6127)


-le security groupe
![sec_group](https://github.com/ravelonanosy/mini-projet-terraform/assets/138290448/082ff3f6-ff0f-4424-b157-1ccc16a32014)


-le container nginx sur l'instance EC2
![container_nginx_ec2](https://github.com/ravelonanosy/mini-projet-terraform/assets/138290448/d14e853d-cdfa-425b-b84b-d88b5b875fe0)


-l'application nginx en ligne

![appli_nginx_aws](https://github.com/ravelonanosy/mini-projet-terraform/assets/138290448/4912965b-bb56-44f6-b8f5-df98f6722690)

 
## CONCLUSION

Ce mini projet permet de deployer a la fois une infrastructure sur Cloud AWS de Amazon , un serveur web nginx et une mise en ligne d'une application web, avec Terraform  et le tout en 3 commandes.



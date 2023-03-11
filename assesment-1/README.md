this script will install Multi cluster different instance types with differnet names like dev, staging and prod. We can create multiple clusters with this script we need to just modify the configurations.

Once downloaded the script run the below command to execute 
**terraform init** 
**terraform plan**
**terraform apply**

Once we run the above commands we can see 3 different clusters running in a project with different machine types i.e 
dev and staging cluster will have e2 medium and prod will have n2 series machine runing in europe region.

To destroy the cluster 
**terraform destroy**
for further help terraform -help

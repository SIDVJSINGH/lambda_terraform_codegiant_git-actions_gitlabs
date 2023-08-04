cd zip/
rm python_files.zip
cd ..
terraform init -upgrade
# terraform validate
terraform fmt --recursive
terraform plan -out=tfplan

terraform apply -auto-approve

#aws s3 rm s3://your-bucket-name --recursive    #to delete all the objects of the bucket
# terraform destroy -auto-approve
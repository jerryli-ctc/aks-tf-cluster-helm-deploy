terraform {
 backend "remote" {
   hostname      = "app.terraform.io"
   organization  = "jerryli-ctc"

   workspaces {
     name = "aks-tf-cluster-helm-deploy"
   }
 }
}
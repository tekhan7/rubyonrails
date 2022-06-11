#/bin/sh


# 2022-06-05

echo "INFO: Setting up rails model definition..."
rails g model customer name:string region:string country:string description:text image_url:string
rails g model product_version name:string architecture:string description:text image_url:string
rails g model os_version name:string description:text image_url:string
rails g model map name:string description:text image_url:string 
rails g model support_expiry date:date image_url:string
rails g model enabler name:string description:text image_url:string

echo "INFO: Running rails db migrate (creating tables)..."
rails db:migrate


echo "Done."

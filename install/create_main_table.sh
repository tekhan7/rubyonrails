#/bin/sh


# 2022-06-05

echo "INFO: Setting up rails model definition..."
rails g model masterdata customer_name:string region:string country:string actixone_version:string actixone_architecture:string oracle_version:string anaylzer_version:string bing_map:boolean google_map:boolean topocoding:boolean protone:boolean elka:boolean fileuploadui:boolean platform:string image_url:string --force

echo "INFO: Running rails db migrate (creating tables)..."
rails db:migrate


echo "Done."

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

masterdatas = Masterdatum.create([
    {customer_name: "Maxis", region: "APAC", country: "Malaysia", actixone_version:"9.0.1", actixone_architecture:"Classic",
        oracle_version:"19c", anaylzer_version:"May 2022", bing_map:'True', google_map:'False', topocoding:'True', protone:'False',
        elka:'False', fileuploadui:'False', platform:"On-prem"
    },
    {customer_name: "Teliasonera", region: "EU", country: "Norway/Sweden/Finland/Lithuania", actixone_version:"9.0.1", actixone_architecture:"Classic",
    oracle_version:"19c", anaylzer_version:"May 2022", bing_map:'True', google_map:'True', topocoding:'True', protone:'False',
    elka:'False', fileuploadui:'False', platform:"On-prem"
    }
])
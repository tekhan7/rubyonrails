class PagesController < ApplicationController
  def index
  end

  def data
         masterdatas = Masterdatum.all

         render :json => {
              :total_count => masterdatas.length,
              :pos => 0,
              :rows => masterdatas.map do |masterdata|
              {
                :id => masterdata.id,
                :data => [masterdata.customer_name, masterdata.region, masterdata.country, masterdata.actixone_version, masterdata.actixone_architecture,
                masterdata.anaylzer_version, masterdata.google_map, masterdata.bing_map, masterdata.protone, masterdata.elka, masterdata.platform]
              }
              end
         }
  end

  def db_action
    @mode = params["!nativeeditor_status"]
    customer_name = params["c0"]
    region = params['c1']
    country = params['c2']
    actixone_version = params['c3']
    actixone_architecture = params['c4']
    anaylzer_version = params['c5']
    google_map = params['c6']
    bing_map = params['c7']
    protone = params['c8']
    elka = params['c9']
    platform = params['c10']
    
    @id = params["gr_id"]

    case @mode
    when "inserted"
      masterdata = Masterdatum.create
        :customer_name => customer_name
        :region => region
        :country => country
        :actixone_version => customer_name
        :actixone_architecture => actixone_architecture
        :anaylzer_version => anaylzer_version
        :google_map => google_map
        :bing_map => bing_map
        :protone => protone
        :elka => elka
        :platform => platform
        
        @tid = masterdata.id

    when "deleted"
        Masterdatum.find(@id).destroy
        @tid = @id

    when "updated"
      masterdata = Masterdatum.find(@id)
      masterdata.customer_name = customer_name
      masterdata.region = region
      masterdata.country = country
      masterdata.actixone_version = actixone_version
      masterdata.actixone_architecture = actixone_architecture
      masterdata.anaylzer_version = anaylzer_version
      masterdata.google_map = google_map
      masterdata.bing_map = bing_map
      masterdata.protone = protone
      masterdata.elka = elka
      masterdata.platform = platform
      masterdata.save
        @tid = @id
    end
end



end

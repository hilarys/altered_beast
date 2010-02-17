namespace :import do
  
  task :countries => :environment do
    site = Site.find :first
    
    MainSite::Region.find(:all, :select => 'id, name, name_ru').each do |region|
       
      _name = region.name_ru.blank? ? region.name : region.name_ru
      region_forum = Forum.find :first, :conditions => {:name => _name}
      region_forum = Forum.create :name => _name, :site_id => site.id, :permalink => PermalinkFu.escape(region.name) if region_forum.nil?
       
      MainSite::Country.find(:all, :select => 'id, name, name_ru', :conditions => {:region_id => region.id}).each do |country|
         
        _name = country.name_ru.blank? ? country.name : country.name_ru
        country_forum = Forum.find :first, :conditions => {:name => _name}
        Forum.create :name => _name, :site_id => site.id, :parent_id => region_forum.id, :permalink => PermalinkFu.escape(country.name) if country_forum.nil?
         
      end
    end
  end
  
end
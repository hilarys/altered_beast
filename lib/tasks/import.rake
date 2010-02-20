namespace :import do
  
  task :countries => :environment do
    site = Site.find :first
    ActiveRecord::Base.transaction do
      MainSite::Region.find(:all, :select => 'id, name, name_ru, permalink').each do |region|       
        _name = region.name_ru.blank? ? region.name : region.name_ru
        region_forum = Forum.find :first, :conditions => {:name => _name}
        region_forum = Forum.create :name => _name, :site_id => site.id, :permalink => region.permalink if region_forum.nil? #PermalinkFu.escape(region.name) if region_forum.nil?       
        MainSite::Country.find(:all, :select => 'id, name, name_ru, permalink', :conditions => {:region_id => region.id}).each do |country|      
          _name = country.name_ru.blank? ? country.name : country.name_ru
          country_forum = Forum.find :first, :conditions => {:name => _name}
          Forum.create :name => _name, :site_id => site.id, :parent_id => region_forum.id, :permalink=> country.permalink if country_forum.nil? #:permalink => PermalinkFu.escape(country.name) if country_forum.nil?         
        end
      end
    end
  end
  
end
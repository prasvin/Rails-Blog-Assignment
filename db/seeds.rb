# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
  { :author => "Theo",
   :email => "theo.walcott@arsenalfc.com",
   :general_content => true,
   :category => "General Blog Information",
   :title => "A convenient arena for all your posts",
   :description => "Create and Read Posts as u desire, all on a single click!"
   }

  ].each do |attributes|
    Blog.find_or_create_by_title(attributes)
  end

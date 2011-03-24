namespace :app do
  desc "Reset the appp env with sample data"

  task :populate =>  :environment do
    [{ :author => "Theo",
      :email => "theo.walcott@arsenalfc.com",
      :general_content => true,
      :category => "General Blog Information",
      :title => "1 A convenient arena for all your posts",
      :description => "Create and Read Posts as u desire, all on a single click!"
      },
      { :author => "Theo",
        :email => "theo.walcott@arsenalfc.com",
        :general_content => true,
        :category => "General Blog Information",
        :title => "2 A convenient arena for all your posts",
        :description => "Create and Read Posts as u desire, all on a single click!"
      }
      ].each do |attrs|
        Person.find_or_create_by_title(attrs)
      end
    end

  end

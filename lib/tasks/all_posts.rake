namespace :all_posts do
  desc "Display General or Non-General blog posts"

  task :general =>  :environment do
    print "AUTHOR \t GENERAL_CONTENT CATEGORY \t TITLE \n "
    total_posts = Blog.all
    total_posts.each do |p|
      if(p.general_content == true)
        print "#{p.author} \t #{p.general_content} \t #{p.category} \t #{p.title} \n"
        p.general_content = false
        p.save
        print "#{p.author} \t #{p.general_content} \t #{p.category} \t #{p.title} \n"
      end
    end
  end


  task :non_general =>  :environment do
    print "AUTHOR \t GENERAL_CONTENT CATEGORY \t TITLE \n "
    total_posts = Blog.all
    total_posts.each do |p|
      if(p.general_content == false)
        print "#{p.author} \t #{p.general_content} \t #{p.category} \t #{p.title} \n"
      end
    end
  end

end
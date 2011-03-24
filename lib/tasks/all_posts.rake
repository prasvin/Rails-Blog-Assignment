namespace :all_posts do
  desc "Display General or Non-General blog posts"

  task :change_content =>  :environment do
    print "CURRENT STATE: \n"
    print "AUTHOR \t GENERAL_CONTENT TITLE \n "
    total_posts = Blog.all
    total_posts.each do |p|
      print "#{p.author} \t #{p.general_content} \t #{p.title} \n"
      if(p.general_content == true)
        p.general_content = false
      else
        p.general_content = true
      end
        p.save
    end
      print "\nNEW STATE:\n"
      print "AUTHOR \t GENERAL_CONTENT TITLE \n "
      total_posts = Blog.all
      total_posts.each do |p|
        print "#{p.author} \t #{p.general_content} \t #{p.title} \n"
    end
  end

end
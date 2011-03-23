namespace :latest_posts do
  desc "Display 5 latest blog posts"

  task :populate =>  :environment do
    total_posts = Blog.all.size
    print "#{total_posts} posts \n"
    print "AUTHOR \t GENERAL_CONTENT CATEGORY \t TITLE \tCREATED_AT\n "
    new_posts = Blog.order("created_at DESC").limit(5)
    new_posts.each do |p|
      print "#{p.author} \t #{p.general_content} \t #{p.category} \t #{p.title} \t #{p.created_at.to_date}\n"
    end
  end

end


# print "Author \t Email \t General_Content \t Category \t Title \t Description \t Posted Date"
# print "#{p.author} \t#{p.email} \t#{p.general_content} \t#{p.category} \t#{p.title} \t#{p.description} \t#{p.posted_date}"

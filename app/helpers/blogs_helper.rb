module BlogsHelper
  def show_post_title(post)
    content_tag :div do
      [ post.title,
        link_to("Remove", blog_path(post), :method => :delete, :confirm => "Are you sure ?" ),
        link_to("Edit", edit_blog_path(post) ),
        link_to("Read it..", blog_path(post) )
        ].join('').html_safe
      end
    end

  end

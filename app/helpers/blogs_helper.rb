module BlogsHelper

  def show_post_title(post)
    content_tag :h3 do
      [ post.title,
        post.general_content,
        link_to("Read it here...", blog_path(post) ),
        link_to("Edit", edit_blog_path(post) ),
        link_to("Remove", blog_path(post), :method => :delete, :confirm => "Are you sure ?" )
        ].join('').html_safe
      end
    end

  end

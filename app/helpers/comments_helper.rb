module CommentsHelper

  def show_all_comments
    @comments.each do|c|
      c.name
    end
  end

end

class Post < ActiveRecord::Base
  has_many :comments, :autosave=>true, :inverse_of=>:post,:dependent=>:destroy

  def comment=(val)
    obj=comments.find_or_initialize_by(:posted_at=>Date.today)
    obj.text=val
  end
end

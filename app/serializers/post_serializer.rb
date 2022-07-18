class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :authorname
  has_many :tags
  belongs_to :author
 

  def authorname
    self.object.author.name
  end
end

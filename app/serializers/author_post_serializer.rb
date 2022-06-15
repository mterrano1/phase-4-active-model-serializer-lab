class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags

    #first 40 characters of the post's content as short_content, with a trailing ellipsis (...) at the end
    def short_content
      "#{self.object.content[0..39]}..."
    end
end

class BookSerializer < BaseSerializer
  attributes :id, :title, :author, :publisher, :genre, :created_at, :updated_at
end

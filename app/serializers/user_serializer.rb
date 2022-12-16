class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :email, :phone_number, :age, :gender, :password_digest, :image_url
end

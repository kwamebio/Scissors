class UserSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :phone


  cache_options enabled: true, cache_length: 12.hours
end

# app/serializers/base_serializer.rb
class BaseSerializer < ActiveModel::Serializer
include Rails.application.routes.url_helpers
end

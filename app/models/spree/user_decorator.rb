module Spree::UserDecorator
  def self.prepended(base)
    alias_attribute :roles, :spree_roles
  end
end

Spree.user_class.prepend Spree::UserDecorator

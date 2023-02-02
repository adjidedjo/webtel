class Branch < ApplicationRecord
    alias_attribute :branch, :branch_name
    has_many :employees

    def self.ransackable_attributes(auth_object= nil)
        %w(branch)
    end
end

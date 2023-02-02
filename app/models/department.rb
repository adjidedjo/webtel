class Department < ApplicationRecord
    alias_attribute :dept_name, :name
    has_many :employees

    def self.ransackable_attributes(auth_object= nil)
        %w(dept_name)
    end
end

class Department < ApplicationRecord
    has_many :employees

    def self.ransackable_attributes(auth_object= nil)
        %w(name)
    end
end

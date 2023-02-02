class Employee < ApplicationRecord
    belongs_to :department
    belongs_to :branch

    validates :name, :department_id, :ext, presence: true

    def self.ransackable_attributes(auth_object= nil)
        %w(name)
    end
end

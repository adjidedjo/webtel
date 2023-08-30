module EmployeesHelper
    def company_name(id)
        if id == '3'
            "PT Bestari Mulia"
        elsif id == '4'
            "PT Anugerah Cemerlang Abadi"
        else
            "PT Royal Abadi Sejahtera"
        end
    end

    def line_number(line)
        if line != nil
            "(#{line})"
        else
            ""
        end
    end
end

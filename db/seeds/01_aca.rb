require 'csv'

csv_text = File.read(Rails.root.join('lib', 'aca_ext.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Employee.new
  t.name = row['name']
  t.department_id = row['department_id']
  t.ext = row['ext']
  t.line_id = row['line_id']
  t.branch_id = row['branch_id']
  t.save
  puts "#{t.name} saved"
end
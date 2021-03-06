task :insert_employer_info => :environment do

  infile = File.new("data/companies.json", "r")
  temp = infile.read
  infile.close

  companies = JSON.parse(temp)

  companies.each do |company|
    e = Employer.new
    e.name = company["name"] ? company["name"] : "no record found"
    e.industry = company["category"] ? company["category"] : "no record found"
    e.location = company["location"] ? company["location"] : "no record found"
    e.est_year = company["founded"] ? company["founded"] : "no record found"
    #e.overview = company["overview"] ? company["overview"] : "no record found"
    e.number_of_employees = company["employees"].to_s ? company["employees"] : "no record found"
    e.category_code = company["category"] ? company["category"] : "no record found"
    e.description = company["description"] ? company["description"] : "no record found"
    e.funding = company["funding"] ? company["funding"] : "no record found"
    e.save
  end

end
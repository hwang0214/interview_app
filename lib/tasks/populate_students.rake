task :insert_student_info => :environment do

  students = ["Ana Becker",
 "Laura Brown",
 "Andrew Callahan",
 "Christina Chang",
 "Crystal Chang",
 "Tyler Davis",
 "John Kelly Ferguson",
 "Victoria Friedman",
 "Daniel Gantz",
 "Alex Gorski",
 "Ei-lene Heng",
 "Tim Hunter",
 "Eric Iacutone",
 "Yanik Jayaram",
 "Justin Kestler",
 "Cho Kim",
 "Jesse Larusso",
 "Erin Lee",
 "Dave Liu",
 "Danny Olinsky",
 "Masha Rikhter",
 "Rahul Seshan",
 "Wallis Tsai",
 "Jane Vora",
 "Eugene Wang",
 "Harrison Wang",
 "Anthony Wijnen"]

 industries = ["gaming", "fashion", "media", "communcation", "education", "finance", "healthcare", "nonprofit"]

   students.each do |student|
    s = Student.new
    s.name = student
    s.preferred_industry = industries.sample.capitalize
    s.preferred_location = "NYC"
    s.save
  end

end
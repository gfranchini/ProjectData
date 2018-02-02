projects = {
  "OmegaXL" => "Omega 3 site with Larry King",
  "GreatHealthWorks": "The GHW store.",
  "Towzing Site": "Towzing wordpress landing page.",
  "Chat": "Internal chat tool for IBOs.",
  "IBO-IMS": "Tool used to check IBO sales.",
  "Client Services": "Client dashboard to view phone metrics.",
  "Case": "Used by QA team.",
  "New You": "Wordpress site for newyou.com",
  "Great LearningWorks": "Wordpress site.",
  "NCTD": "Moodle site.",
  "Prebiophage": "Probiotic site.",
  "GHW University": "Freddie's moodle site.",
  "Great VirtualWorks": "Wordpress landing page.",
  "Pennwell": "Freddie's client's moodle site.",
  "Click Safety": "Freddie's client's moodle site.",
  "Great DataWorks": "",
  "Git GHW": "GHW Applications team internal git repository.",
  "Testimonials": "Site to collect product testimonials.",
  "Omaprem": "",
  "OmegaXLSport": "Landing page for future site.",
  "Great CloudWorks": "Wordpress site for GCW.",
  "ProbioticXL": "Probiotic site.",
  "Miles Dupree": "Miles' bio page.",
  "Ken Meares": "Ken's bio page.",
  "Dr. Sharon McQuillan": "The Doc's bio page.",
  "XL VirtualClassroom": "",
  "GLW OnDemand": "Moodle store for online learning.",
  "Try OmegaXLNow": "Marketing site for OmegaXL",
  "Password Reset": "To reset your password.",
  "Totalee": "Hair product store.",
  "WWE OmegaXL": "OmegaXL with WWE sponsorship.",
  "Towzing App": "Mobile app to summon towers, like Uber.",
  "GVW University": "Freddie's training site."
}

projects.each do |name,description|
  Project.create!(
    name: "#{name}",
    description: "#{description}"
  )

end

puts "#{projects.length} projects were created."

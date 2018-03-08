projects = {
  "OmegaXL" => "Omega 3 site with Larry King",
  "GreatHealthWorks": "The GHW store.",
  "Chat": "Internal chat tool for IBOs.",
  "Client Services": "Client dashboard to view phone metrics.",
  "Case": "Used by QA team.",
}

projects.each do |name,description|
  Project.create!(
    name: "#{name}",
    description: "#{description}"
  )

end

puts "#{projects.length} projects were created."

Environment.create!(
  name: "Development",
  project_id: 1,
  docker: true,
  rancher: true
)

Environment.create!(
  name: "QA",
  project_id: 1,
  docker: true,
  rancher: true
)

Environment.create!(
  name: "Production",
  project_id: 1,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Training",
  project_id: 3,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Staging",
  project_id: 2,
  docker: true,
  rancher: false
)

Environment.create!(
  name: "Test",
  project_id: 4,
  docker: true,
  rancher: true
)

puts "6 Environments created."

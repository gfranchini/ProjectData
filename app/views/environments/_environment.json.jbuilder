json.extract! environment, :id, :name, :docker, :rancher, :url, :notes, :dbhost, :dbuser, :dbname, :dbport, :project_id, :created_at, :updated_at
json.url environment_url(environment, format: :json)

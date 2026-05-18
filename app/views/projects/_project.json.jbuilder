json.extract! project, :id, :title, :slug, :description, :image, :client, :created_at, :updated_at
json.url project_url(project, format: :json)

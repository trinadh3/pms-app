json.extract! project, :id, :Project_name, :Description, :Project_Type, :user_id, :task_id, :created_at, :updated_at
json.url project_url(project, format: :json)

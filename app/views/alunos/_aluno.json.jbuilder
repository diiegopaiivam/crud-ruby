json.extract! aluno, :id, :nome, :endereco, :telefone, :whatsapp, :email, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)

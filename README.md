== Instalação

Após baixar o repositório, crie um arquivo `config/settings.local.yml`, contendo:

    email: email_cadastrado_no_pag_seguro
    token: token_do_email_cadastrado_no_pag_seguro

utilizando ruby 1.9.2-p290, faça:

    bundle
    rake db:setup
    bundle exec rails s

Após isto, basta iniciar o servidor com `rails s` e abrir `localhost:3000`

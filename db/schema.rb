# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do
  create_table "mik_cobrancas", :force => true do |t|
    t.integer "empresa_id"
    t.date "vencimento"
    t.float "valor"
    t.date "data_pagamento"
    t.float "valor_pago"
    t.integer "situacao_id"
    t.integer "num_pagamento"
    t.string "referente"
    t.string "tipo_cobranca"
    t.text "obs"
    t.string "mes_referente"
    t.float "desconto"
    t.float "acrescimo"
    t.string "ps_code_transacao"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "cadastrado_por"
    t.string "modificado_por"
  end

  create_table "empresas", :force => true do |t|
    t.string "nome"
    t.string "tipo"
    t.string "cpf_cnpj"
    t.string "telefone"
    t.string "celular"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "mensalidade_automatica", :default => true
    t.boolean "ativa", :default => true
    t.string "situacao_empresa"
    t.text "email_recebimento_relatorio"
    t.string "email_empresa"
    t.string "subdominio"
    t.string "nome_fantasia"
    t.string "email_provedor"
    t.string "telefone_provedor"
    t.string "cep"
    t.string "logradouro"
    t.string "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.string "logo_file_size"
    t.datetime "logo_updated_at"
    t.float "valor_unitario"
    t.string "dia_vencimento"
    t.string "status_financeiro"
    t.string "status_acesso"
    t.integer "mik_plano_id"
    t.boolean "bloqueio_automatico", :default => true
    t.boolean "mensagem_pendencia_automatica", :default => true
    t.integer "dias_para_bloqueio", :default => 10
  end
end

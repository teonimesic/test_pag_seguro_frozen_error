class MinhasCobrancasController < ApplicationController
  def pagar
    c = MikCobranca.first

    payment = PagSeguro::Payment.new(Settings.email, Settings.token, :id => c.id)

    payment.items = [PagSeguro::Item.new(:id => 1, :description => c.referente, 
                        :amount => c.valor.to_s,  
                        :quantity => "1")]

    payment.shipping = PagSeguro::Shipping.new(
      :state => c.empresa.uf,
      :city => c.empresa.cidade, :postal_code => c.empresa.cep,
      :district => c.empresa.bairro,
      :street => c.empresa.logradouro,
      :number => "1",
      :complement => c.empresa.complemento)

    if payment.valid?       
      redirect_to payment.checkout_payment_url
    end
  end
end

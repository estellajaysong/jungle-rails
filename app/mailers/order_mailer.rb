class OrderMailer < ApplicationMailer
  default from: 'no-reply@jungle.com'
 
  def order_receipt(order)
    @order = order
    mail(to: order.email, subject: "Thanks for your Jungle order ##{order.id}!")
  end
  
end

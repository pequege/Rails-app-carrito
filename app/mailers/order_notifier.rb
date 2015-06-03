class OrderNotifier < ApplicationMailer
  default from: 'Sam Ruby <depot@example.com>'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received
    @greeting = "Hi"

    mail to: "to@example.org", subject: "hola"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.snipped.subject
  #
  def snipped
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

class QuoteMailer < ApplicationMailer
  def new_quote(quote)
    @quote = quote
    mail(
      to:      ENV.fetch("CONTACT_EMAIL", "oscar@electricasrincon.com"),
      from:    ENV.fetch("MAIL_FROM", "info@electricasrinconvlc.es"),
      subject: "Nuevo presupuesto de #{quote.name} – #{quote.titulo}"
    )
  end
end

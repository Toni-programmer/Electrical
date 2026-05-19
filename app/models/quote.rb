class Quote < ApplicationRecord
  validates :name, :phone, :email, :provincia, :ciudad, :codigo_postal,
            :titulo, :suministro_electrico, :tipo_alimentacion,
            :tipo_vivienda, :superficie, :puntos_de_luz, :tipo_reforma, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone, format: { with: /\A(\+34|0034)?[6789]\d{8}\z/, message: "debe ser un teléfono válido (9 dígitos, ej: 612345678)" }, allow_blank: true

  STATUSES = %w[pendiente contactado completado].freeze
  after_initialize { self.status ||= "pendiente" }
end

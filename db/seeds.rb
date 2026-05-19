Project.destroy_all

Project.create!(
  title: "Instalación de cuadro eléctrico",
  slug: "cuadro-electrico",
  description: "Instalación completa de cuadro eléctrico con protecciones diferenciales y magnetotérmicos en vivienda unifamiliar. Trabajo realizado según el Reglamento Electrotécnico de Baja Tensión, garantizando la máxima seguridad de toda la instalación.",
  client: "Particular",
  category: "Cuadros eléctricos",
  image: "cuadro  1.jpg",
  gallery: ["cuadro 1.1.jpg", "cuadro 1.2.jpg", "cuadro 1.3.jpg", "cuadro 1.4.jpg"].to_json
)

Project.create!(
  title: "Reforma eléctrica integral",
  slug: "reforma-electrica-integral",
  description: "Renovación completa de la instalación eléctrica en vivienda con reforma de armarios empotrados y fachada. Incluye nuevos puntos de luz, tomas de corriente y acabados de alta calidad.",
  client: "Comunidad de propietarios",
  category: "Reformas integrales",
  image: "fachada 1.1.jpg",
  gallery: ["fachada 1 .jpg", "fachada 1.2.jpg", "fachada 1.3.jpg", "armario 1.jpg", "armario .jpg"].to_json
)

Project.create!(
  title: "Reforma de cocina",
  slug: "reforma-cocina",
  description: "Renovación eléctrica completa en cocina con nuevos circuitos para electrodomésticos, iluminación LED empotrada y tomas de corriente adicionales. Acabados modernos y funcionales.",
  client: "Particular",
  category: "Reformas integrales",
  image: "cocina 1.jpg",
  gallery: ["cocina 1.1.jpg", "cocina 1.2.jpg", "cocina1.3.jpg", "cocina 1.4.jpg", "cocina 1.5.jpg"].to_json
)

Project.create!(
  title: "Reforma de baños",
  slug: "reforma-banos",
  description: "Instalación eléctrica completa en baños con circuitos independientes, iluminación de ambiente, toma de corriente con protección diferencial y calefacción eléctrica.",
  client: "Particular",
  category: "Reformas integrales",
  image: "baño 1.jpg",
  gallery: ["baño 1.1.jpg", "baño 1.2.jpg", "baño 1.3.jpg", "baño 1.4.jpg", "baño 1.5.jpg", "baño 1.6.jpg"].to_json
)

Project.create!(
  title: "Instalación de portero automático",
  slug: "portero-automatico",
  description: "Instalación de sistema de telefonillo y control de acceso en edificio residencial. Sistema moderno con videoportero digital y apertura remota, mejorando la seguridad y comodidad de los vecinos.",
  client: "Comunidad de vecinos",
  category: "Automatización",
  image: "telefonillo 1.jpg",
  gallery: ["telefonillo 1.1.jpg", "telefonillo 1.2.jpg", "telefonilo 1.3.jpg"].to_json
)

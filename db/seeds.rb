Service.destroy_all

Service.create!(
  title: "Instalación eléctrica",
  slug: "instalacion-electrica",
  description: "Realizamos instalaciones eléctricas completas para viviendas, locales y comunidades. Desde el proyecto hasta la legalización ante la Conselleria, cumpliendo el Reglamento Electrotécnico de Baja Tensión.",
  image: "instalando.jpg"
)

Service.create!(
  title: "Reformas integrales",
  slug: "reformas-integrales",
  description: "Renovación completa de instalaciones eléctricas en reformas de cocinas, baños y viviendas. Nuevos circuitos, puntos de luz, tomas de corriente y acabados de alta calidad adaptados a tus necesidades.",
  image: "cocina 1.4.jpg"
)

Service.create!(
  title: "Reparación de averías",
  slug: "reparacion-averias",
  description: "Servicio rápido de reparación de averías eléctricas. Diagnóstico y solución de problemas en cuadros eléctricos, cortocircuitos, fallos de diferencial y cualquier incidencia eléctrica urgente.",
  image: "cuadro 1.4.jpg"
)

Service.create!(
  title: "Mantenimiento eléctrico",
  slug: "mantenimiento-electrico",
  description: "Servicio de mantenimiento preventivo y correctivo para comunidades de propietarios, locales comerciales y empresas. Revisiones periódicas, certificados de instalación y actualización de normativa.",
  image: "cuadro 1.2.jpg"
)

Service.create!(
  title: "Porteros y videoporteros",
  slug: "porteros-videoporteros",
  description: "Instalación y sustitución de sistemas de portero automático y videoportero para viviendas y comunidades. Sistemas analógicos y digitales con apertura remota desde el móvil.",
  image: "telefonillo 1.jpg"
)

Service.create!(
  title: "Boletín (Certificado eléctrico)",
  slug: "boletin-certificado-electrico",
  description: "Tramitamos el Boletín Eléctrico (Certificado de Instalación) exigido por la Conselleria: cambio de acometida y sustitución de la placa de fusibles por una caja general de protección homologada con fusibles BUC, dejando la instalación conforme al REBT.",
  image: "boletin-certificado.jpg"
)

Service.create!(
  title: "Instalaciones eléctricas en naves y comercios",
  slug: "instalaciones-naves-comercios",
  description: "Ejecutamos instalaciones eléctricas completas para naves industriales, locales y establecimientos comerciales: cuadros de distribución, alumbrado técnico y de emergencia, fuerza motriz y adaptación a la actividad del negocio. Proyectos y boletines conforme al Reglamento Electrotécnico de Baja Tensión.",
  image: "nave.jpg"
)

News.destroy_all

News.create!(
  title: "ASELEC – Asociación Empresarial del Sector Eléctrico",
  slug: "aselec",
  content: "Portal de la asociación empresarial del sector eléctrico. Información sobre normativa, noticias del sector y recursos para instaladores eléctricos.",
  link: "https://www.aselec.es/",
  image: "news-aselec.jpg",
  published: true
)

News.create!(
  title: "Curenergia – Todo sobre energía y electricidad",
  slug: "curenergia",
  content: "Guías, comparativas y consejos sobre tarifas eléctricas, eficiencia energética y energías renovables para particulares y empresas.",
  link: "https://www.curenergia.es/",
  image: "news-curenergia.png",
  published: true
)

News.create!(
  title: "Sol Valencia – Energía solar en la Comunitat Valenciana",
  slug: "sol-valencia",
  content: "Especialistas en instalaciones de energía solar fotovoltaica en Valencia. Información sobre ayudas, subvenciones y autoconsumo.",
  link: "https://solvalencia.es/",
  image: "news-solvalencia.jpg",
  published: true
)

News.create!(
  title: "Rastreator – Comparador de tarifas eléctricas",
  slug: "rastreator-tarifas",
  content: "Compara las mejores tarifas de electricidad del mercado y encuentra la opción más económica para tu hogar o negocio.",
  link: "https://www.rastreator.com/tarifas-energia/companias-electricas",
  image: "news-rastreator.svg",
  published: true
)

News.create!(
  title: "Aprende Electricidad – Formación eléctrica online",
  slug: "aprende-electricidad",
  content: "Cursos y recursos formativos sobre electricidad, electrónica e instalaciones eléctricas para profesionales y aficionados.",
  link: "https://www.aprendeelectricidad.com/",
  image: "news-aprendeelectricidad.jpg",
  published: true
)

News.create!(
  title: "Circuito Eléctrico – Recursos para electricistas",
  slug: "circuito-electrico",
  content: "Artículos técnicos, esquemas y recursos prácticos sobre instalaciones eléctricas, domótica y automatización industrial.",
  link: "https://circuitoelectrico.com/",
  published: true
)

Project.destroy_all

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
  title: "Reforma de cocina",
  slug: "reforma-cocina",
  description: "Renovación eléctrica completa en cocina con nuevos circuitos para electrodomésticos, iluminación LED empotrada y tomas de corriente adicionales. Acabados modernos y funcionales.",
  client: "Particular",
  category: "Reformas integrales",
  image: "cocina 1.jpg",
  gallery: ["cocina 1.1.jpg", "cocina 1.2.jpg", "cocina1.3.jpg", "cocina 1.4.jpg", "cocina 1.5.jpg", "armario .jpg", "armario 1.jpg"].to_json
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

Project.create!(
  title: "Reforma eléctrica integral",
  slug: "reforma-electrica-integral",
  description: "Renovación completa de la instalación eléctrica en vivienda con reforma de fachada. Incluye nuevos puntos de luz, tomas de corriente y acabados de alta calidad.",
  client: "Comunidad de propietarios",
  category: "Reformas integrales",
  image: "fachada 1 .jpg",
  gallery: ["fachada 1.1.jpg", "fachada 1.2.jpg", "fachada 1.3.jpg"].to_json
)

Project.create!(
  title: "Instalación de cuadro eléctrico",
  slug: "cuadro-electrico",
  description: "Instalación completa de cuadro eléctrico con protecciones diferenciales y magnetotérmicos en vivienda unifamiliar. Trabajo realizado según el Reglamento Electrotécnico de Baja Tensión, garantizando la máxima seguridad de toda la instalación.",
  client: "Particular",
  category: "Cuadros eléctricos",
  image: "cuadro 1.jpg",
  gallery: ["cuadro 1.1.jpg", "cuadro 1.2.jpg", "cuadro 1.3.jpg", "cuadro 1.4.jpg"].to_json
)

Project.create!(
  title: "Local comercial y plantas bajas",
  slug: "local-comercial-plantas-bajas",
  description: "Instalación eléctrica completa en local comercial y planta baja: cuadro de distribución, iluminación técnica, tomas de fuerza para maquinaria y adaptación a la actividad del negocio, cumpliendo el Reglamento Electrotécnico de Baja Tensión.",
  client: "Comercio",
  category: "Locales comerciales",
  image: "local.jpg",
  gallery: ["local 2.jpg", "local 3.jpg"].to_json
)

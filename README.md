# ⚡ Electrical

> Sitio web corporativo de una empresa de servicios eléctricos — construido con Ruby on Rails 8.

Una aplicación web moderna que permite a la empresa presentar sus servicios, darse a conocer y facilitar el contacto con clientes potenciales.

---

## 🚀 Stack tecnológico

| Tecnología | Versión | Uso |
|---|---|---|
| Ruby on Rails | 8.1.3 | Framework principal |
| SQLite | ≥ 2.1 | Base de datos |
| Tailwind CSS | 4.4 | Estilos |
| Hotwire (Turbo + Stimulus) | — | Interactividad sin JS pesado |
| Puma | ≥ 5.0 | Servidor web |
| Kamal | — | Despliegue con Docker |
| Render | — | Hosting en la nube |

---

## 🛠️ Requisitos previos

- **Ruby** `>= 3.x` (ver `.ruby-version` para la versión exacta)
- **Node.js** (para el pipeline de assets)
- **SQLite3**
- **Docker** (opcional, para despliegue con Kamal)

---

## ⚙️ Instalación y puesta en marcha

### 1. Clonar el repositorio

```bash
git clone https://github.com/Toni-programmer/Electrical.git
cd Electrical
```

### 2. Instalar dependencias

```bash
bundle install
```

### 3. Configurar variables de entorno

```bash
cp .env.example .env
```

### 4. Crear e inicializar la base de datos

```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

### 5. Arrancar el servidor en desarrollo

```bash
bin/dev
```

La aplicación estará disponible en [http://localhost:3000](http://localhost:3000).

---

## 🧪 Tests

```bash
bin/rails test
bin/rails test:system
```

---

## 🐳 Despliegue

### Con Kamal (Docker)

```bash
kamal setup
kamal deploy
```

### En Render

El archivo `render.yaml` contiene la configuración lista para desplegar en [Render](https://render.com).

---

## 🔒 Seguridad

- **Rack::Attack** — protección contra ataques de fuerza bruta
- **Invisible Captcha** — prevención de spam en formularios
- **Brakeman** — análisis estático de vulnerabilidades
- **Bundler Audit** — auditoría de dependencias

---

## 🗺️ SEO

Sitemap automático generado con `sitemap_generator`.

---

## 👤 Autor

**Toni-programmer** — [@Toni-programmer](https://github.com/Toni-programmer)
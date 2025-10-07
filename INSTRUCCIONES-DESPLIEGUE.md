# 🚀 Instrucciones de Despliegue - Casanare Emiratos Árabes

## Opciones de Despliegue Rápido

### Opción 1: GitHub Pages (GRATIS) ✅ Recomendado

#### Paso 1: Crear Repositorio en GitHub
```bash
# Navegar a la carpeta del proyecto
cd pitcharabe

# Inicializar Git
git init

# Agregar archivos
git add .
git commit -m "Primer commit: Landing Page Casanare-EAU"

# Conectar con GitHub (reemplaza con tu usuario)
git remote add origin https://github.com/TU-USUARIO/casanare-emiratos.git
git branch -M main
git push -u origin main
```

#### Paso 2: Activar GitHub Pages
1. Ve a tu repositorio en GitHub
2. Click en **Settings** (Configuración)
3. En el menú lateral, click en **Pages**
4. En **Source**, selecciona **main** branch
5. Click en **Save**
6. Tu sitio estará disponible en: `https://TU-USUARIO.github.io/casanare-emiratos/`

**Tiempo estimado**: 5-10 minutos
**Costo**: $0

---

### Opción 2: Netlify (GRATIS con SSL) ✅ Muy Rápido

#### Método Drag & Drop (Más Fácil)
1. Ve a [netlify.com](https://netlify.com)
2. Crea una cuenta gratis
3. Click en **"Add new site"** → **"Deploy manually"**
4. Arrastra la carpeta `pitcharabe` completa
5. ¡Listo! Tu sitio estará en línea en segundos

#### Con Git (Más Profesional)
```bash
# Instalar Netlify CLI
npm install -g netlify-cli

# Login en Netlify
netlify login

# Deploy desde la carpeta
cd pitcharabe
netlify deploy --prod
```

**Tiempo estimado**: 2-5 minutos
**Costo**: $0
**Ventajas**: SSL automático, dominio personalizado gratis

---

### Opción 3: Vercel (GRATIS) ⚡ Súper Rápido

```bash
# Instalar Vercel CLI
npm install -g vercel

# Deploy
cd pitcharabe
vercel --prod
```

**Tiempo estimado**: 2-3 minutos
**Costo**: $0

---

### Opción 4: Servidor Propio / Hosting Tradicional

#### Requisitos Mínimos
- Hosting con soporte para archivos estáticos
- PHP no requerido
- 50 MB de espacio

#### Pasos
1. Comprimir la carpeta `pitcharabe` en un ZIP
2. Subir a tu hosting vía FTP o cPanel
3. Descomprimir en el directorio raíz (public_html)
4. Acceder a `tu-dominio.com`

**Tiempo estimado**: 10-15 minutos
**Costo**: Variable ($2-$10/mes)

---

## 🔧 Configuración Post-Despliegue

### 1. Verificar PDF
Asegúrate de que el archivo `PRESENTACION ARABE-c.pdf` esté accesible:
- URL: `tu-sitio.com/PRESENTACION ARABE-c.pdf`
- Si no funciona, renombra el archivo sin espacios: `presentacion-arabe.pdf`
- Actualiza la ruta en `index.html` línea ~780

### 2. Configurar Dominio Personalizado (Opcional)

#### En Netlify
1. Settings → Domain management → Add custom domain
2. Sigue las instrucciones para configurar DNS
3. Ejemplo: `invertir.casanare.gov.co`

#### En GitHub Pages
1. Settings → Pages → Custom domain
2. Agrega tu dominio
3. Configura DNS CNAME apuntando a `TU-USUARIO.github.io`

### 3. Agregar SSL/HTTPS
- **Netlify/Vercel**: Automático ✅
- **GitHub Pages**: Automático ✅
- **Hosting propio**: Configura Let's Encrypt o compra certificado

---

## 📊 Analítica (Opcional)

### Agregar Google Analytics

1. Crea una cuenta en [analytics.google.com](https://analytics.google.com)
2. Obtén tu código de seguimiento (G-XXXXXXXXXX)
3. Agrega antes de `</head>` en `index.html`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🌍 Optimización para SEO

### Meta Tags Recomendados

Agrega en `<head>` de `index.html`:

```html
<!-- SEO Básico -->
<meta name="description" content="Oportunidades de inversión en Casanare, Colombia. Proyectos con certificación Halal para inversores de Emiratos Árabes.">
<meta name="keywords" content="inversión, Casanare, Colombia, Halal, agroindustria, Emiratos Árabes">
<meta name="author" content="Gobernación de Casanare">

<!-- Open Graph para Redes Sociales -->
<meta property="og:title" content="Invertir en Casanare - Alianza Estratégica con Emiratos Árabes">
<meta property="og:description" content="Proyectos de inversión sostenibles con certificación Halal">
<meta property="og:image" content="URL-DE-TU-IMAGEN-PREVIEW.jpg">
<meta property="og:url" content="https://tu-sitio.com">
<meta property="og:type" content="website">

<!-- Twitter Card -->
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:title" content="Invertir en Casanare">
<meta name="twitter:description" content="Oportunidades de inversión con certificación Halal">
<meta name="twitter:image" content="URL-DE-TU-IMAGEN-PREVIEW.jpg">
```

---

## ✅ Checklist Pre-Lanzamiento

- [ ] Verificar que todas las traducciones funcionan (ES/EN/AR)
- [ ] Probar el cambio de idioma RTL (árabe)
- [ ] Confirmar que el PDF se visualiza correctamente
- [ ] Probar en diferentes navegadores (Chrome, Firefox, Safari, Edge)
- [ ] Verificar responsividad en móvil
- [ ] Comprobar todos los enlaces
- [ ] Revisar ortografía en los 3 idiomas
- [ ] Optimizar imágenes (si se agregan)
- [ ] Configurar HTTPS
- [ ] Agregar favicon (opcional)
- [ ] Configurar Google Analytics (opcional)

---

## 🐛 Solución de Problemas Comunes

### El PDF no se muestra
**Problema**: El iframe del PDF está vacío
**Solución**: 
1. Verifica la ruta del archivo: `../PRESENTACION ARABE-c.pdf`
2. Renombra el PDF sin espacios: `presentacion-arabe.pdf`
3. Actualiza la ruta en el código

### El árabe no se ve bien
**Problema**: Texto árabe aparece mal formado
**Solución**: 
1. Asegúrate de que la fuente Tajawal esté cargando
2. Verifica que `dir="rtl"` esté activo
3. Limpia caché del navegador

### Los colores se ven diferentes
**Problema**: La paleta no coincide
**Solución**: 
1. Verifica que `styles.css` esté cargando
2. Revisa las variables CSS en `:root`
3. Usa DevTools para inspeccionar elementos

---

## 📱 Compartir en Redes Sociales

### URLs Cortas Recomendadas

Usa un acortador como:
- Bitly: `bit.ly/casanare-uae`
- TinyURL: `tinyurl.com/casanare-invest`
- Google: `g.page/casanare-invest`

### Mensaje Sugerido (Español)
```
🇨🇴🤝🇦🇪 Descubre las oportunidades de inversión en Casanare, Colombia

✅ Proyectos con Certificación Halal
✅ Beneficios Tributarios en Zona Franca
✅ USD $194M en proyectos de alto impacto

Conoce más: [TU-URL]
#Casanare #InversiónEAU #Halal #Colombia
```

### Mensaje Sugerido (Árabe)
```
🇨🇴🤝🇦🇪 اكتشف فرص الاستثمار في كاساناري، كولومبيا

✅ مشاريع معتمدة حلال
✅ مزايا ضريبية في المنطقة الحرة
✅ 194 مليون دولار في مشاريع عالية التأثير

اعرف المزيد: [TU-URL]
#كاساناري #استثمار_الإمارات #حلال #كولومبيا
```

---

## 🎯 Próximos Pasos Recomendados

1. **Semana 1-2**: Deploy y configuración inicial
2. **Semana 3-4**: Promoción en redes sociales
3. **Mes 2**: Agregar formulario de contacto
4. **Mes 3**: Implementar chat en vivo
5. **Mes 4+**: Crear contenido adicional (blog, casos de éxito)

---

## 📞 Soporte Técnico

**Contacto de Desarrollo**:
- Para modificaciones: Contactar al desarrollador original
- Para hosting: Soporte de la plataforma elegida (Netlify/GitHub/Vercel)

**Contacto Institucional**:
- Email: inversion@casanare.gov.co
- Teléfono: +57 (8) 635 8588

---

## 📌 Recursos Adicionales

- [Documentación Netlify](https://docs.netlify.com)
- [Guía GitHub Pages](https://pages.github.com)
- [Vercel Docs](https://vercel.com/docs)
- [Google Analytics](https://analytics.google.com)

---

**¡Éxito con el lanzamiento!** 🚀

*Última actualización: Octubre 2025*


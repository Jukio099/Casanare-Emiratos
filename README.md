# Casanare - Emiratos Árabes: Landing Page de Inversión Estratégica

## 📋 Descripción

Landing page profesional diseñada para presentar oportunidades de inversión en el departamento de Casanare, Colombia, dirigida específicamente a inversores de los Emiratos Árabes Unidos y el mundo árabe.

## ✨ Características Principales

### 🌐 Multiidioma con Soporte RTL
- **Español** - Idioma principal
- **Inglés** - Versión internacional
- **Árabe (العربية)** - Con soporte completo Right-to-Left (RTL)

### 📊 Secciones Incluidas

1. **Hero Principal**
   - Título: "CASANARE: POTENCIA AGROINDUSTRIAL SOSTENIBLE"
   - Presentación del Gobernador César Augusto Ortiz Zorro

2. **Un Territorio de Oportunidades**
   - Área: 44,490 km²
   - Población: 481,938 habitantes
   - Distribución urbana/rural

3. **Riqueza Natural**
   - 6,372 especies de biodiversidad
   - 3.7 millones de hectáreas de humedales
   - Cuenca del Orinoco

4. **Proyectos de Alto Impacto (Plan PACCA)**
   - ✅ Planta de Carne con Certificación Halal (USD $30.6M)
   - ✅ Planta de Alimentos Concentrados (USD $40.3M)
   - ✅ Planta Láctea Sostenible (USD $11.5M)
   - ✅ Distrito de Riego Río Cusiana (USD $111.9M)

5. **Conectividad Estratégica**
   - Aeropuerto Internacional El Alcaraván
   - Capacidad de carga 30% superior

6. **Visor de PDF Integrado**
   - Presentación completa incrustada
   - Modo pantalla completa
   - Descarga directa

## 🎨 Diseño

### Paleta de Colores
- **Verde Oscuro**: `#006633` - Sostenibilidad
- **Verde Principal**: `#009444` - Naturaleza y crecimiento
- **Dorado**: `#FFD700` - Prosperidad y oportunidad
- **Azul**: `#003366` - Confianza y profesionalismo

### Tipografías
- **Español/Inglés**: Inter (Google Fonts)
- **Árabe**: Tajawal (Google Fonts) - Optimizada para lectura RTL

## 🚀 Tecnologías Utilizadas

- HTML5
- CSS3 con variables personalizadas
- Tailwind CSS (CDN)
- JavaScript vanilla
- Chart.js (para futuras expansiones)
- Google Fonts

## 📁 Estructura de Archivos

```
pitcharabe/
├── index.html              # Página principal
├── css/
│   └── styles.css         # Estilos personalizados + RTL
├── PRESENTACION ARABE-c.pdf  # Documento completo
└── README.md              # Este archivo
```

## 🌍 Soporte RTL (Right-to-Left)

El sitio incluye soporte completo para idioma árabe:

- Dirección de texto invertida automáticamente
- Márgenes y padding ajustados
- Iconos y elementos visuales reposicionados
- Números y estadísticas mantienen formato LTR
- Animaciones adaptadas

### Implementación RTL

Cuando se selecciona árabe:
```javascript
if (lang === 'ar') {
    document.documentElement.setAttribute('dir', 'rtl');
    document.body.style.fontFamily = "'Tajawal', sans-serif";
}
```

## 📱 Responsive Design

- ✅ Desktop (1920px+)
- ✅ Laptop (1024px - 1919px)
- ✅ Tablet (768px - 1023px)
- ✅ Mobile (320px - 767px)

## 🔧 Personalización

### Cambiar Traducciones

Edita el objeto `translations` en `index.html`:

```javascript
const translations = {
    es: { /* traducciones españolas */ },
    en: { /* traducciones inglesas */ },
    ar: { /* traducciones árabes */ }
};
```

### Ajustar Colores

Modifica las variables CSS en `css/styles.css`:

```css
:root {
    --color-primary-green: #009444;
    --color-dark-green: #006633;
    --color-gold: #FFD700;
    /* ... */
}
```

## 📊 Datos del Proyecto

Todos los datos presentados están extraídos del documento oficial:
**"PRESENTACION ARABE-c.pdf"**

### Inversión Total Proyectos PACCA
**USD $194,487,216**

### Sectores Priorizados
1. Agroindustria con certificación Halal
2. Producción de alimentos concentrados
3. Cadena láctea sostenible
4. Infraestructura de riego

## 🎯 Público Objetivo

- Inversores de Emiratos Árabes Unidos
- Fondos de inversión del mundo árabe
- Empresas agroindustriales internacionales
- Organizaciones enfocadas en seguridad alimentaria

## 🤝 Ventajas Competitivas Destacadas

1. **Certificación Halal** - Acceso directo a mercados musulmanes
2. **Beneficios Tributarios** - Zona Franca
3. **Infraestructura Logística** - Aeropuerto con ventaja de carga
4. **Recursos Naturales** - Agua, tierra y biodiversidad
5. **Estabilidad** - Marco jurídico sólido

## 📞 Contacto

**Gobernación de Casanare**
- Email: inversion@casanare.gov.co
- Teléfono: +57 (8) 635 8588

## 📝 Notas de Desarrollo

- Desarrollado siguiendo las especificaciones del Gobernador César Augusto Ortiz Zorro
- Basado en plantilla original de Casanare-Japón
- Adaptado completamente para audiencia árabe
- Énfasis en certificación Halal y seguridad alimentaria

## 🔄 Actualizaciones Futuras Sugeridas

- [ ] Integrar Google Analytics
- [ ] Agregar formulario de contacto
- [ ] Implementar chat en vivo trilingüe
- [ ] Videos promocionales con subtítulos en árabe
- [ ] Galería de fotos del territorio
- [ ] Testimonios de inversores

## 📄 Licencia

© 2025 Gobernación de Casanare. Todos los derechos reservados.

---

**Versión**: 1.0
**Fecha**: Octubre 2025
**Idiomas**: Español, English, العربية


# Proyecto: Documento de Diseño de Red (Formato LaTeX)

---

## 1. Requerimientos de Formato (Documento LaTeX)

El documento final debe cumplir con las siguientes especificaciones de formato (estos requisitos son fijos):

* **Papel:** Tamaño carta
* **Tipo de letra:** Arial o Times New Roman
* **Tamaño de letra:** 12 puntos
* **Espaciado:** Interlineado 2.0, sin espacio entre párrafos
* **Alineado:** Justificado
* **Márgenes:** 2.5 cm (superior, inferior, izquierdo, derecho)
* **Sangría:** 5 espacios en la primera línea de cada párrafo
* **Estilo de Referencias:** Formato APA 7 (incluir sangría francesa).

---

## 2. Contexto del Proyecto: Red para Edificio "A"

El documento describirá el diseño de una red para el edificio de salones (A), basado en las siguientes consideraciones.

### Consideraciones Específicas

* **Presupuesto:** Máximo **$490,200 MXN**.
* **Interconexión:** Se debe crear una conexión entre el edificio A y el edificio de innovación.
* **Nodos:** Un nodo por cuarto.
* **Red Inalámbrica:**
    * Debe ser muy estable.
    * Separada para **alumnos** y **docentes** (presumiblemente con VLANs).
* **Seguridad:** Incluir un mínimo de **4 cámaras CCTV por piso**.
* **Infraestructura:**
    * Elegir una ubicación para el **site**.
    * Instalar teléfonos **VoIP** en 5 oficinas (Oficina SEFI, cuarto de mantenimiento, etc.).

### Estructura del Edificio

* **Total:** 3 pisos
* **Piso 1 (14 cuartos):**
    * 12 salones
    * 2 oficinas
* **Piso 2 (11 cuartos):**
    * 10 salones
    * 1 oficina
* **Piso 3 (8 cuartos):**
    * 6 salones
    * 2 oficinas

---

## 3. Lista de Tareas: Estructura del Documento (Estilo APA 7)

Esta es la lista de tareas organizada según las secciones de un reporte técnico formal.

### `[ ]` Preliminares
- [ ] **Portada:** (Siguiendo formato APA 7 y requerimientos de la universidad).
- [ ] **Resumen (Abstract):** (Breve descripción del proyecto, objetivos y solución propuesta).
- [ ] **Índice / Tabla de Contenidos:** (Generado automáticamente por LaTeX).

### `[ ]` Capítulo 1: Introducción
- [ ] **Planteamiento del Problema:** (Necesidad de la red en el Edificio A, basado en el contexto).
- [ ] **Justificación:** (Importancia del proyecto).
- [ ] **Objetivos:** (General y específicos).
- [ ] **Alcance y Limitaciones:** (Qué incluye y qué no incluye el diseño).

### `[ ]` Capítulo 2: Marco Teórico y Metodología
- [ ] **Fundamentos Teóricos:** (Conceptos clave: Topologías, modelo jerárquico, estándares, etc.).
- [ ] **Metodología de Diseño:** (Describir la metodología seleccionada, ej. PPDIOO, Top-Down).
- [ ] **Estándares a Utilizar:** (Mención y justificación de ANSI/TIA 568 y 606).

### `[ ]` Capítulo 3: Propuesta de Diseño de Red (Desarrollo)
- [ ] **Análisis de Requerimientos:** (Detalle de las consideraciones: 3 pisos, 5 VoIP, 4 CCTV/piso, WiFi dual).
- [ ] **Topología de Red:** (Diagrama y justificación de topología física y lógica).
- [ ] **Diseño Jerárquico de Red:**
    - [ ] Diagrama de Red (Especificar capas de **Núcleo, Distribución y Acceso**).
- [ ] **Plan de Direccionamiento IP:**
    - [ ] Tabla de direccionamiento (IPv4/IPv6).
    - [ ] Diseño de Subredes y **VLANs** (Para separación Alumnos/Docentes, VoIP, CCTV, etc.).
- [ ] **Diseño de Cableado Estructurado:**
    - [ ] **Cableado a utilizar:** (Tipo y categoría justificada, ej. Cat 6a).
    - [ ] Diagrama de cableado (Conforme a ANSI/TIA 568).
    - [ ] Ubicación del **site** (Justificación).
- [ ] **Selección de Equipos:**
    - [ ] **Equipo activo:** (Lista de switches, routers, APs, cámaras, teléfonos).
    - [ ] **Equipo pasivo:** (Lista de rack, patch panels, patch cords, faceplates).
- [ ] **Diagrama de Conexiones del Rack:** (Detalle de acomodo y conexiones).
- [ ] **Identificación y Etiquetado:** (Definir el estándar de etiquetado según ANSI/TIA 606).

### `[ ]` Capítulo 4: Gestión y Cotización del Proyecto
- [ ] **Cotización:**
    - [ ] Lista detallada de todo el material y equipo.
    - [ ] Costo de mano de obra.
    - [ ] Costo total (Validar contra presupuesto de **$490,200 MXN**).
- [ ] **Cronograma de Actividades:** (Plan de implementación por fases).

### `[ ]` Capítulo 5: Conclusiones
- [ ] **Conclusiones del diseño:** (Resumen de la solución propuesta).
- [ ] **Recomendaciones y Trabajo Futuro.**

### `[ ]` Secciones Finales
- [ ] **Referencias:** (Lista de todas las fuentes citadas en formato APA 7).
- [ ] **Apéndices:** (Opcional, para cotizaciones detalladas, diagramas a gran escala, etc.).

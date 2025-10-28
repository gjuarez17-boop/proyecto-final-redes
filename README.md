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

### Propuesta y Diseño
- [ ] Cableado a utilizar.
- [ ] Equipo activo.
- [ ] Equipo pasivo.
- [ ] Metodología.
- [ ] Tabla de direccionamiento IP.
- [ ] Tamaño de la red (tipo de red).
- [ ] Diagrama de red.
- [ ] Diagrama de cableado estructurado o conexiones conforme a ANSI/TIA 606 Y 568.
- [ ] Topología de red a utilizar.
- [ ] Diagrama de conexiones del rack a utilizar (Debe incluir el detalle de todo el material que se vaya a utilizar para su acomodo y conexión)
- [ ] Cotización: Entregar una lista con todo el material a utilizar (agregar costo de mano de obra).
- [ ] Identificación y etiquetado del cableado y del equipo activo.
- [ ] Cronograma de actividades.

### Configuraciones
- [ ] Archivo en packet tracer con los equipos ya configurados y que incluyan los puntos que describe este documento.
- [ ] Los teléfonos IP deben tener asignados una extensión diferente cada uno y deben de tener comunicación entre si. (Si aplica para su proyecto)
- [ ] Las cámaras (CCTV) solamente deberán ser representas en el diagrama e incluir que direcciones IP tendrán. (Si aplica para su proyecto)
- [ ] El equipo activo debe contar con las configuraciones básicas:
    - [ ] Password con encriptación.
    - [ ] Hostname (identificador)
    - [ ] Dirección IPv4
- [ ] Indicar como se dividirán las VLAN y configurarlas en los switches.
- [ ] Encontrar mediante una app para analizar el wifi, en el edificio que se les fue asignado, buscar mejoras que se le puedan hacer a la red actual. Encontrar el canal más eficiente. Analizar la cobertura de wifi todo el edificio. Pueden agregar algún indicador más que consideren pertinente. Agregar al entregable final.
- [ ] Recomendar un equipo para certificación de cable UTP (Poner precio pero no agregar a la cotización general) y agregar reportes ficticios de pruebas de fibra óptica y cable de cobre UTP a su entregable final.

### Monitoreo y Análisis de Red

### Implementación de Seguridad

### Administración de Fallas

### Calidad en el Servicio

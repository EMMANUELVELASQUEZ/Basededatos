# 📚 **Aprendizaje de SQL Básico con Ruby y SQLite3** 🖥️

¡Bienvenido! Este proyecto está diseñado para ayudarte a aprender **SQL básico** utilizando el lenguaje de programación **Ruby** y la base de datos **SQLite3**. A continuación, se muestran las operaciones básicas de SQL que puedes realizar para interactuar con una base de datos.

---

## 🔧 **Operaciones Básicas de SQL**

### 1. **Crear una Tabla**  
Crear una tabla es la primera acción que se realiza en una base de datos para organizar y almacenar información de manera estructurada. En este caso, la tabla `usuarios` tiene tres columnas: `id`, `nombre`, y `edad`.

```sql
CREATE TABLE IF NOT EXISTS usuarios (
  id INTEGER PRIMARY KEY,
  nombre TEXT,
  edad INTEGER
);

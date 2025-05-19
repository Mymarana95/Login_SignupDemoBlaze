# Demoblaze API Testing with Karate DSL

Este proyecto contiene pruebas automatizadas de la API pública de [Demoblaze](https://api.demoblaze.com)  
utilizando **Karate DSL**, **JUnit 5**, y **Maven** como parte de un ejercicio técnico.

---

## ✅ Requerimientos

- Java 17
- Maven 3.8+
- Git
- VS Code o IntelliJ IDEA

---

## ✅ Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/Mymarana95/DemoBlazeE2E.git
   cd DemoBlazeE2E
   ```

2. Ejecuta Maven para descargar dependencias:
   ```bash
   mvn clean install
   ```

---

## ✅ Estructura del Proyecto

```
src
 └── test
      ├── java
      │    └── com.demoblaze.karate
      │         ├── SignupRunnerTest.java
      │         └── LoginRunnerTest.java
      └── resources
           └── karate
                ├── signup.feature
                └── login.feature
```

---

## ✅ Escenarios Implementados

### 📋 Signup (`signup.feature`)
1. Crear un nuevo usuario.
2. Intentar crear un usuario ya existente.

### 📋 Login (`login.feature`)
1. Login con usuario y password correctos.
2. Login con usuario y password incorrectos.

---

## ✅ Cómo Ejecutar

### 🟢 Ejecutar pruebas de **Signup**
```bash
mvn test -Dtest=SignupRunnerTest
```

### 🟢 Ejecutar pruebas de **Login**
```bash
mvn test -Dtest=LoginRunnerTest

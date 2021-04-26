# Condominio App

A new Flutter project.

## Getting Started

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

<img src="https://github.com/luisfevq/Condominio_app/blob/develop/home.png" width="250" align="left"/>
<img src="https://github.com/luisfevq/Condominio_app/blob/develop/menu.png" width="250"/>

<Enter>

```dart
return Container(
  color: context.theme.backgroundColor
);

onPressed: () {
  if (Get.isDarkMode)
    Get.changeThemeMode(ThemeMode.light);
  else
    Get.changeThemeMode(ThemeMode.dark);
}

ThemeService().switchTheme
```


- Servicios (CRUD)
  * Crear servicios
  * Listar servicios 
    - listAll
    - listWhereUserId
    - listByTypeService
    - searchServiceByTag
  * Editar servicios
    - serviceName
    - serviceDescription
    - serviceTag
    - idServiceType
    - isVisible
  * Eliminar servicios

- id
- createdAt
- updatedAt
- serviceName
- serviceDescription
- serviceTag
- idServiceType
- idUser
- state                (active, inactive)
- isVisible

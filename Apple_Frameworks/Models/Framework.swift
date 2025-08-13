//
//  Framework.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 05/08/2025.
//

import Foundation

struct Framework: Identifiable {
    
    let id = UUID()
    let name: String
    let iconName: String
    let url: String
    let description: String
}

struct MockData {
    
    static let sampleFramework = Framework(name: "App Clip",
                                           iconName: "app-clip",
                                           url: "https://developer.apple.com/app-clips/",
                                           description: "App Clips es una forma ligera y rápida de ofrecer funciones clave de una aplicación sin que el usuario deba instalarla por completo. Pueden lanzarse mediante códigos App Clip, NFC o enlaces, y son ideales para acciones inmediatas como pagar un estacionamiento, pedir comida o completar un registro rápido. Están optimizados para ejecutarse en segundos, ocupar poco espacio y desaparecer si no se usan, garantizando practicidad y fluidez en la experiencia.")
    
    static let frameworks = [
        Framework(
            name: "App Clip",
            iconName: "app-clip",
            url: "https://developer.apple.com/app-clips/",
            description: "App Clips es una forma ligera y rápida de ofrecer funciones clave de una aplicación sin que el usuario deba instalarla por completo. Pueden lanzarse mediante códigos App Clip, NFC o enlaces, y son ideales para acciones inmediatas como pagar un estacionamiento, pedir comida o completar un registro rápido. Están optimizados para ejecutarse en segundos, ocupar poco espacio y desaparecer si no se usan, garantizando practicidad y fluidez en la experiencia."
        ),
        
        Framework(
            name: "ARKit",
            iconName: "arkit",
            url: "https://developer.apple.com/augmented-reality/",
            description: "ARKit es el framework de Apple para desarrollar experiencias de realidad aumentada de alta calidad. Permite detectar planos, realizar seguimiento de movimiento, estimar iluminación, aplicar oclusión de personas y objetos, e integrar modelos 3D de forma realista en el entorno físico del usuario. Se utiliza en juegos, educación, comercio electrónico, diseño de interiores y más, aprovechando el hardware avanzado de las cámaras y sensores de los dispositivos Apple."
        ),
        
        Framework(
            name: "CarPlay",
            iconName: "carplay",
            url: "https://developer.apple.com/carplay/",
            description: "CarPlay permite integrar aplicaciones compatibles directamente en el sistema de infoentretenimiento del automóvil. Está diseñado para minimizar distracciones y mostrar interfaces optimizadas para la conducción. Soporta navegación, música, mensajería, llamadas y aplicaciones de audio, con comandos por voz vía Siri y controles físicos del vehículo, garantizando seguridad y comodidad para el conductor."
        ),
        
        Framework(
            name: "Catalyst",
            iconName: "catalyst",
            url: "https://developer.apple.com/macos/catalyst/",
            description: "Catalyst permite portar aplicaciones de iOS y iPadOS a macOS con cambios mínimos en el código, manteniendo una base de desarrollo unificada. Esto facilita que una app llegue a múltiples plataformas de Apple con el mismo núcleo funcional, aprovechando al mismo tiempo elementos nativos de macOS como menús, atajos de teclado y ventanas redimensionables."
        ),
        
        Framework(
            name: "ClassKit",
            iconName: "classkit",
            url: "https://developer.apple.com/classkit/",
            description: "ClassKit está orientado a aplicaciones educativas y se integra con la app Tareas de Apple. Permite que los profesores asignen actividades y tareas directamente desde las apps, y que los estudiantes trabajen en ellas mientras el progreso se registra de forma segura. Es una herramienta clave para entornos escolares gestionados mediante Apple School Manager."
        ),
        
        Framework(
            name: "CloudKit",
            iconName: "cloudkit",
            url: "https://developer.apple.com/cloudkit/",
            description: "CloudKit es la solución de Apple para almacenamiento en la nube y sincronización en tiempo real mediante iCloud. Ofrece bases de datos públicas y privadas, manejo de grandes volúmenes de datos, seguridad de extremo a extremo y sincronización transparente entre dispositivos del mismo usuario. Es ideal para apps colaborativas, de respaldo y de datos persistentes."
        ),
        
        Framework(
            name: "CoreML",
            iconName: "coreml",
            url: "https://developer.apple.com/machine-learning/",
            description: "CoreML facilita la integración de modelos de machine learning entrenados en aplicaciones iOS, iPadOS, macOS y watchOS. Soporta tareas como reconocimiento de imágenes, clasificación de texto, predicciones de comportamiento y análisis de datos, todo de forma optimizada para el hardware de Apple, aprovechando CPU, GPU y Neural Engine."
        ),
        
        Framework(
            name: "HealthKit",
            iconName: "healthkit",
            url: "https://developer.apple.com/healthkit/",
            description: "HealthKit centraliza y protege la información de salud y actividad física del usuario, permitiendo que diferentes aplicaciones compartan datos con la app Salud. Admite seguimiento de pasos, frecuencia cardíaca, nutrición, sueño y más, con control total del usuario sobre qué apps acceden a qué información."
        ),
        
        Framework(
            name: "MapKit",
            iconName: "mapkit",
            url: "https://developer.apple.com/maps/",
            description: "MapKit ofrece integración de mapas interactivos en aplicaciones, con soporte para anotaciones personalizadas, rutas de navegación, superposición de datos geoespaciales, vista 3D, imágenes satelitales y funciones avanzadas como el seguimiento en tiempo real."
        ),
        
        Framework(
            name: "Metal",
            iconName: "metal",
            url: "https://developer.apple.com/metal/",
            description: "Metal es un framework de gráficos y cómputo de bajo nivel que permite desarrollar experiencias visuales de alto rendimiento. Es utilizado en videojuegos AAA, aplicaciones de edición profesional y machine learning, aprovechando al máximo el hardware gráfico y de cálculo de los dispositivos Apple."
        ),
        
        Framework(
            name: "SF Symbols",
            iconName: "sf-symbols",
            url: "https://developer.apple.com/sf-symbols/",
            description: "SF Symbols proporciona más de 5,000 iconos vectoriales perfectamente integrados con la tipografía San Francisco. Los iconos son escalables, adaptables a distintos pesos y estilos, y se actualizan con cada nueva versión de iOS y macOS."
        ),
        
        Framework(
            name: "SiriKit",
            iconName: "sirikit",
            url: "https://developer.apple.com/siri/",
            description: "SiriKit permite que las aplicaciones se integren con el asistente de voz Siri para ejecutar comandos, responder consultas y realizar acciones sin abrir la app. Compatible con dominios como mensajería, pagos, reservas, llamadas y control de dispositivos inteligentes."
        ),
        
        Framework(
            name: "SpriteKit",
            iconName: "spritekit",
            url: "https://developer.apple.com/spritekit/",
            description: "SpriteKit es un framework 2D que facilita la creación de juegos, simulaciones y animaciones. Incluye físicas integradas, renderizado optimizado, soporte para partículas y efectos, y herramientas para manejar colisiones, texturas y movimientos fluidos."
        ),
        
        Framework(
            name: "SwiftUI",
            iconName: "swiftui",
            url: "https://developer.apple.com/swiftui/",
            description: "SwiftUI es el framework moderno y declarativo de Apple para construir interfaces de usuario de forma rápida y consistente en todas sus plataformas. Soporta animaciones fluidas, reactividad con datos en tiempo real, compatibilidad con accesibilidad y previsualización instantánea en Xcode."
        ),
        
        Framework(
            name: "TestFlight",
            iconName: "test-flight",
            url: "https://developer.apple.com/testflight/",
            description: "TestFlight es la plataforma oficial de Apple para distribuir versiones beta de aplicaciones. Permite invitar evaluadores, recolectar retroalimentación y recibir reportes de errores antes del lanzamiento público."
        ),
        
        Framework(
            name: "TipKit",
            iconName: "tipkit",
            url: "https://developer.apple.com/tipkit/",
            description: "TipKit ayuda a implementar consejos contextuales y sugerencias dentro de una aplicación. Permite guiar al usuario en nuevas funciones o flujos complejos, mejorando la experiencia y reduciendo la curva de aprendizaje."
        ),
        
        Framework(
            name: "Wallet",
            iconName: "wallet",
            url: "https://developer.apple.com/wallet/",
            description: "Wallet permite crear y gestionar pases digitales como tarjetas de embarque, entradas, credenciales y tarjetas de pago. Está integrado con Apple Pay para pagos rápidos y seguros desde iPhone o Apple Watch."
        ),
        
        Framework(
            name: "WidgetKit",
            iconName: "widgetkit",
            url: "https://developer.apple.com/widgetkit/",
            description: "WidgetKit es el framework para crear widgets personalizables e interactivos en iOS, iPadOS y macOS. Los widgets se actualizan de forma automática y muestran información relevante directamente en la pantalla de inicio o el centro de notificaciones."
        )
    ]
}



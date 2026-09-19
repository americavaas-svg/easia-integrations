# Setup Make.com (Orquestación del flujo)

## Paso 1: Crear cuenta Make.com

https://www.make.com → Sign up free

## Paso 2: Crear Scenario

Dashboard → Create scenario
Nombre: voice-booking-flow

## Paso 3: Módulo 1 - Twilio Voice (Trigger)

1. Add module → Twilio → Receive call
2. Create connection: Account SID + Auth Token
3. Guardar

## Paso 4: Módulo 2 - OpenAI Realtime

1. Add module → OpenAI → Realtime Voice Agent
2. Create connection: API Key
3. Configura:
   - Model: gpt-4-realtime
   - Instructions: [Pega el prompt base]
   - Language: Spanish

## Paso 5: Módulo 3 - Extract Data

Este módulo toma lo que dijo el cliente y lo convierte en datos estructurados.

1. Add module → OpenAI → Create message
2. Prompt:

El cliente dijo: [mensaje de voz transcrito]

Extrae en JSON:
{
  "fecha": "YYYY-MM-DD o null",
  "hora": "HH:MM o null",
  "nombre": "nombre o null",
  "telefono": "teléfono o null",
  "servicio": "tipo servicio o null"
}

Responde SOLO JSON.

## Paso 6: Módulo 4 - Google Calendar (Crear evento)

1. Add module → Google Calendar → Create event
2. Configure:
   - Calendar ID: tu calendar ID
   - Summary: {{nombre}} - {{servicio}}
   - Start: {{fecha}} {{hora}}
   - Description: Tel: {{telefono}}

## Paso 7: Módulo 5 - Google Sheets (Registrar datos)

1. Add module → Google Sheets → Add a row
2. Spreadsheet: tu sheet ID
3. Mapea columnas:
   - Fecha: {{fecha}}
   - Hora: {{hora}}
   - Nombre: {{nombre}}
   - Teléfono: {{telefono}}
   - Servicio: {{servicio}}

## Paso 8: Módulo 6 - Twilio WhatsApp (Confirmación)

1. Add module → Twilio → Send message
2. To: {{telefono}} (en formato +52xxxxxxxxx)
3. Body:

✅ Cita confirmada
📅 {{fecha}}
🕐 {{hora}}
📞 {{servicio}}

¿Necesitas cambiar algo? Llámanos.

## Paso 9: Módulo 7 - Hang up (Terminar llamada)

1. Add module → Twilio → Hang up call
2. Sin configuración adicional

## Paso 10: Testing

Click Run once
Llama a tu número Twilio desde teléfono
Prueba el flujo completo

## Paso 11: Exportar Blueprint

Click ⋮ → Export blueprint
Descarga JSON → Guarda en templates/make-blueprint.json

---
Creado: 2026-09-17

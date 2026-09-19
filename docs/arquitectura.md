# Arquitectura: Twilio Voice + OpenAI Realtime + WhatsApp + Calendar + Sheets

## Flujo completo

Cliente llama por teléfono
       ↓
Twilio Voice recibe llamada
       ↓
OpenAI Realtime Agent atiende (voz en tiempo real)
       ↓
Cliente dice: 'Quiero agendar cita para el jueves a las 3'
       ↓
Agente IA entiende y confirma: 'Perfecto, tu cita está registrada'
       ↓
**Automáticamente (Make.com orquesta):**
   1. Envía WhatsApp: 'Tu cita confirmada jueves a las 3 PM'
   2. Crea evento en Google Calendar
   3. Registra en Google Sheets (Excel)
   4. Guarda datos del cliente

Cliente cuelga happy ✅

## Componentes

### 1. Twilio Voice
- Recibe llamadas telefónicas
- Conecta con agente IA
- Costo: ~-zsh.10-0.15 MXN/minuto

### 2. OpenAI Realtime API
- Agente IA que entiende voz en español
- Extrae: intent, fecha, hora, nombre, servicio
- Responde en tiempo real (no lag)
- Costo: ~-5 MXN/minuto de conversación

### 3. Twilio WhatsApp (Confirmación)
- Envía confirmación por WhatsApp
- Costo: ~-zsh.18-0.90 MXN/mensaje

### 4. Google Calendar
- Registra cita automáticamente
- Cliente puede ver en su calendario
- Costo: gratis

### 5. Google Sheets
- Excel con todos los datos de citas
- Análisis, reportes, backup
- Costo: gratis

### 6. Make.com
- Orquesta todo (sin código)
- Llama → IA → WhatsApp + Calendar + Sheets
- Costo: plan gratuito inicialmente

## Casos de uso

1. **Agendar cita**: 'Quiero una cita mañana a las 10'
2. **Consultar disponibilidad**: '¿Hay espacio el jueves?'
3. **Cambiar cita**: 'Necesito cambiar mi cita del viernes'
4. **Cancelar**: 'Quiero cancelar mi cita'

---
Creado: 2026-09-17

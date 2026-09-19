# Setup Twilio Voice (Llamadas telefónicas)

## Paso 1: Crear cuenta Twilio

1. Ve a https://www.twilio.com
2. Click Sign Up
3. Elige: 30 days free trial
4. Completa datos básicos
5. Verifica email

## Paso 2: Obtener credenciales

En https://console.twilio.com:

1. Panel izquierdo → Account
2. Copia:
   - Account SID (ACxxxxxxx)
   - Auth Token (línea larga)

Guarda en archivo seguro:

TWILIO_ACCOUNT_SID=ACxxxxxxxxxxxxxxxxxxxxxxxx
TWILIO_AUTH_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxx

## Paso 3: Comprar número de voz

1. Panel izquierdo → Phone Numbers → Manage
2. Click Buy a Phone Number
3. Filtros:
   - Country: Mexico
   - Capabilities: Voice
4. Selecciona número
5. Click Buy (en trial: gratis)

Copia número (ej: +52 55 1234 5678)

## Paso 4: Configurar Webhook (TwiML)

1. Panel izquierdo → Phone Numbers → Manage
2. Selecciona tu número recién comprado
3. Voice Configuration:
   - A Call Comes In: Webhook
   - URL: https://hook.make.com/xxxxxxx (lo completas en Make.com)
   - Method: HTTP POST

---
Creado: 2026-09-17

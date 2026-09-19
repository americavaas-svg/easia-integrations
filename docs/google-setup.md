# Setup Google Calendar + Google Sheets

## Google Calendar Setup

1. Ve a https://console.cloud.google.com
2. Crea proyecto: easia-voice-booking
3. Habilita Google Calendar API:
   - APIs Library → Google Calendar API → Enable
4. Crea Service Account:
   - Credentials → Create → Service Account
   - Nombre: easia-voice-agent
5. Crea JSON key (descarga archivo)
6. Comparte tu calendario con el email del Service Account
   - Permisos: Make changes to events

Guarda:
GOOGLE_CALENDAR_ID=xxxxx@calendar.google.com
GOOGLE_SERVICE_ACCOUNT_JSON=[archivo descargado]

## Google Sheets Setup

1. Crea Google Sheet nuevo: easia-voice-bookings
2. Columnas:
   - Fecha
   - Hora
   - Nombre cliente
   - Teléfono
   - Servicio
   - Email
   - Notas

3. Compartir con el mismo Service Account
4. Guarda Sheet ID (en URL: /spreadsheets/d/[SHEET_ID]/edit)

GOOGLE_SHEETS_ID=[SHEET_ID_AQUI]

---
Creado: 2026-09-17

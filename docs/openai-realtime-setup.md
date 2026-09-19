# Setup OpenAI Realtime API (Agente IA con voz)

## Paso 1: Habilitar Realtime API

1. Ve a https://platform.openai.com/api-keys
2. Copia tu API key (o crea una nueva)
3. Copia en lugar seguro:

OPENAI_API_KEY=sk-proj-xxxxxxxxxxxxxxxxxxxxxxxx

## Paso 2: Entender el Realtime API

Realtime API es diferente a ChatGPT normal:
- Escucha audio en tiempo real
- Entiende español natural
- Responde sin lag
- Ideal para llamadas telefónicas

## Paso 3: Prompt base para agente

Este es el prompt que usarás en Make.com:

Tu eres un agente de atencion al cliente experto en agendar citas.

Tu trabajo:
1. Saludar amablemente
2. Preguntar qué tipo de servicio necesita
3. Ofrecer fechas/horarios disponibles
4. Confirmar cita

IMPORTANTE:
- Sé breve y conciso (es llamada telefónica)
- Sé amable y profesional
- Si el cliente quiere cancelar, acepta sin problema
- Siempre confirma datos antes de terminar

Si no entiendes algo, pide amablemente que repita.

---
Creado: 2026-09-17

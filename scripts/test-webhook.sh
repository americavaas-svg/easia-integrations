#!/bin/bash

# Test webhook Twilio → Make.com

echo "Testing Twilio → Make.com webhook"

# Reemplaza con tu URL real de Make.com
WEBHOOK_URL="https://hook.make.com/xxxxxxx"

# Test 1: Agendar cita
echo "Test 1: Agendar cita"
curl -X POST    -H "Content-Type: application/x-www-form-urlencoded"   -d "From=%2B52555555555&Body=Quiero+una+cita+mañana+a+las+10"

echo ""
echo "Test 2: Consultar disponibilidad"
curl -X POST    -H "Content-Type: application/x-www-form-urlencoded"   -d "From=%2B52555555555&Body=Hay+espacio+el+jueves"

echo ""
echo "Test completado"

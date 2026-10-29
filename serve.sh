#!/usr/bin/env bash
# Prosty serwer lokalny HTTP dla Dwóch Zdrojów
# Rozwiązuje problem blokowania fetch() przez przeglądarkę przy otwieraniu plików przez file://

PORT=${1:-8000}

echo "=========================================================="
echo "  Dwa Zdroje - Lokalny Serwer Podglądu (HTTP)"
echo "=========================================================="
echo ""
echo "Serwer wystartował pod adresem:"
echo "👉 http://localhost:$PORT"
echo ""
echo "Otwórz w przeglądarce:"
echo " - Strona główna: http://localhost:$PORT/index.html"
echo " - Czas Wolny:    http://localhost:$PORT/warsztaty.html"
echo " - Przewodnik:     http://localhost:$PORT/przewodnik.html"
echo " - Panel CMS:      http://localhost:$PORT/admin/"
echo ""
echo "Naciśnij Ctrl+C, aby zatrzymać serwer."
echo "=========================================================="

python3 -m http.server "$PORT"

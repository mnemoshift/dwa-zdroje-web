# Instrukcja obsługi panelu edycji dla Dwa Zdroje (`/admin`)

Panel administracyjny pozwala na samodzielną zmianę **tekstów**, **opisów apartamentów**, **liczb/parametrów** oraz **zdjęć (galerii i tła)** bezpośrednio w przeglądarce (zarówno na komputerze, jak i na telefonie) — bez dotykania kodu i bez potrzeby angażowania programisty.

Adres panelu: **`https://dwazdroje.dulaq.eu/admin`**

---

## 1. Pierwsze logowanie (Jednorazowa konfiguracja — 2 minuty)

Panel działa bezpośrednio z repozytorium GitHub (Git-based CMS), co oznacza, że każda zapisana zmiana jest bezpiecznie wersjonowana.

Do zalogowania potrzebny jest tzw. **Klucz dostępu (Personal Access Token)** z GitHuba:

1. Zaloguj się na swoje konto na [github.com](https://github.com).
2. Przejdź do: **Settings** (kliknij swój awatar w prawym górnym rogu -> Settings) -> zjedź na sam dół lewego menu -> **Developer settings** -> **Personal access tokens** -> **Fine-grained tokens** (lub wejdź bezpośrednio w link: `https://github.com/settings/tokens?type=beta`).
3. Kliknij zielony przycisk **Generate new token**.
4. Wypełnij:
   - **Token name**: np. `Dwa Zdroje Admin Siostra`
   - **Expiration**: np. `90 days` lub `1 year` (według preferencji)
   - **Repository access**: zaznacz **Only select repositories** i wybierz z listy `mnemoshift/dwa-zdroje-web`
   - **Permissions** -> kliknij **Repository permissions** -> znajdź pozycję **Contents** i zmień na **Read and write**.
5. Kliknij **Generate token** na dole strony i skopiuj wygenerowany ciąg znaków (zaczyna się od `github_pat_...`).
6. Wejdź na stronę: **`https://dwazdroje.dulaq.eu/admin`**.
7. Wybierz logowanie przez **GitHub Token**, wklej skopiowany klucz i zatwierdź.
8. Przeglądarka zapamięta ten token, więc przy kolejnych wizytach wchodzisz od razu do panelu.

---

## 2. Jak edytować teksty i opisy?

1. Po wejściu w panel po lewej stronie masz do wyboru kolekcje:
   - **Treści strony głównej**:
     - **Górny Pasek Ogłoszeń (Baner na samej górze strony)**: etykieta („Cena od gospodarzy”), treść komunikatu, tekst przycisku i link docelowy (np. `#rezerwacja`).
     - **1. Sekcja Główna (Hero na samej górze)**: nagłówek, podtytuł, duże zdjęcie w tle.
     - **2. Rezerwacja — „Gdzie chcesz spędzić swój wypoczynek?” (Krok 1)**: dedykowana sekcja dla 3 kafelków wyboru obiektu na stronie głównej:
       - **Karta 1: 🌲 Dulakówka (Piwniczna-Zdrój)**: zdjęcie obiektu w kafelku, krótki opis, lokalizacja, sypialnie.
       - **Karta 2: 🌿 Rabka: Rodzinny z tarasem (parter)**: zdjęcie obiektu w kafelku, krótki opis, lokalizacja, sypialnie.
       - **Karta 3: 🏡 Rabka: 3 sypialnie (piętro)**: zdjęcie obiektu w kafelku, krótki opis, lokalizacja, sypialnie.
     - **3. Kolekcja Dwa Zdroje**: nagłówek i wstęp do sekcji „Nasze Miejsca”.
     - **4. Dulakówka (Piwniczna-Zdrój)**: tytuł, opisy, parametry, duża karta w „Nasze Miejsca” i galeria zdjęć.
     - **5. Apartamenty w Alejce (Rabka-Zdrój)**: opisy willi, duża karta w „Nasze Miejsca”, oba apartamenty z galeriami.
     - **6. O Gospodarzach**: zdjęcie gospodarzy, powitanie, podpis.
     - **7. Cytat Gospodarzy**: treść cytatu i podpis.
     - **8. Sekcja Zwiastunów (Przewodnik & Czas Wolny)**: karty zwiastunów na stronie głównej.
     - **9. Opinie Zweryfikowanych Gości**: ocena i recenzje gości.
     - **10. Korzyści Rezerwacji Bezpośredniej**: gwarancja najniższej ceny i atuty.
     - **11. Jak do nas dotrzeć (Dojazd i Połączenia)**: dojazd autem i PKP.
     - **12. Stopka, Dane Kontaktowe i Wpłaty (Numer Konta)**: numer konta bankowego (do zadatku / przelewu z wygodnym przyciskiem kopiowania na stronie), odbiorca przelewu, nazwa banku/wskazówka, telefon, WhatsApp, e-mail oraz opis w stopce pod logo.
   - **Przewodnik po Regionie (Polecamy)**:
     - **Górny Pasek Powitalny**: etykieta („Przewodnik”), treść banera, tekst linku i link docelowy.
     - Główne zdjęcie w tle (Hero), tytuł i podtytuł strony.
     - Pełna lista atrakcji: nazwa, lokalizacja, kategoria, odznaka/etykieta na zdjęciu, zdjęcie, odległość/czas dojazdu, opis, link do mapy oraz własny tekst przycisku.
     - Wskazówki gospodarzy oraz dolny baner rezerwacyjny.
   - **Czas Wolny**:
     - **Górny Pasek Powitalny**: etykieta („Czas Wolny”), treść banera, tekst linku i link docelowy.
     - Główne zdjęcie w tle (Hero), tytuł i podtytuł strony.
     - Lista propozycji (np. Wieczór przy kominku): obiekt, termin, zdjęcie, opis, punkty programu, cena/warunki.
     - Dolny baner z kontaktem.
2. Wprowadź pożądane zmiany w polach tekstowych i kliknij **Save**.

---

## 3. Jak podmieniać i wgrywać nowe zdjęcia?

1. Przy wybranym polu ze zdjęciem (np. *Zdjęcie 1 (górne lewe)* lub *Duże zdjęcie w tle*):
   - Kliknij **Choose an image** (lub ikonę wymiany zdjęcia).
   - Możesz przeciągnąć i upuścić plik z dysku / telefonu lub kliknąć **Upload new**.
2. CMS automatycznie prześle zdjęcie do repozytorium do folderu `assets/img/uploads/` i ustawi do niego ścieżkę.
3. Nie musisz niczego ręcznie zmniejszać ani konwertować – strona sama dopasuje wymiary i proporcje.

---

## 4. Publikacja zmian

1. Po zakończeniu edycji kliknij niebieski przycisk **Save** (Zapisz) w prawym górnym rogu.
2. W tym momencie CMS automatycznie wyśle zmianę do GitHuba.
3. GitHub Pages przebuduje stronę w około **30–60 sekund**. Po odświeżeniu witryny `https://dwazdroje.dulaq.eu` nowe teksty i zdjęcia będą widoczne dla wszystkich gości!

---

## 5. Jak sprawdzać statystyki odwiedzin strony?

Na stronie wdrożona jest nowoczesna, prywatna analityka **Umami Cloud** (działa całkowicie bez ciasteczek śledzących i nie wymaga zgód RODO od odwiedzających).

1. W panelu administracyjnym (`https://dwazdroje.dulaq.eu/admin`) w prawym dolnym rogu ekranu znajduje się przycisk: **📊 Statystyki Odwiedzin ↗**.
2. Kliknięcie w niego otwiera panel analityki w nowej karcie.
3. W panelu można sprawdzić:
   - **Liczbę odwiedzin i unikalnych gości** w wybranym okresie (dzisiaj, ostatnie 24h, 7 dni, miesiąc lub dowolny zakres dat).
   - **Niezależne statystyki podstron**: ile wejść miała strona główna (`/`), a ile zakładki *Czas Wolny* (`/warsztaty.html`) i *Przewodnik po Regionie* (`/przewodnik.html`).
   - **Źródła wejść**: z jakich stron goście przeszli do Dwóch Zdrojów (np. z wyszukiwarki Google, Facebooka, linków bezpośrednich).
   - **Urządzenia i lokalizacje**: czy goście przeglądają ofertę na telefonach czy komputerach oraz z jakich miast/krajów.

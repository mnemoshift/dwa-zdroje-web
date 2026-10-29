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
     - **1. Sekcja Główna (Hero na samej górze)**: nagłówek, podtytuł, duże zdjęcie w tle.
     - **4. Dulakówka (Piwniczna-Zdrój)**: tytuł, opisy, parametry, galeria oraz **pola karty rezerwacji**: lokalizacja, sypialnie i **zdjęcie w karcie rezerwacji**.
     - **5. Apartamenty w Alejce (Rabka-Zdrój)**: opisy willi i obu apartamentów (Apartament 1 i Apartament 2) z ich galeriami oraz **polami kart rezerwacji**: lokalizacja, sypialnie i **zdjęcie w karcie rezerwacji**.
     - **6. O Gospodarzach**: zdjęcie, powitanie, podpis.
     - **7. Cytat Gospodarzy**: treść cytatu i podpis.
     - **8. Sekcja Zwiastunów (Przewodnik & Czas Wolny)**: karty zwiastunów na stronie głównej.
     - **11. Dane Kontaktowe**: numery telefonów i link do WhatsApp.
   - **Przewodnik po Regionie (Polecamy)**:
     - Główne zdjęcie w tle (Hero), tytuł i podtytuł strony.
     - Pełna lista atrakcji: nazwa, lokalizacja, kategoria, odznaka/etykieta na zdjęciu, zdjęcie, odległość/czas dojazdu, opis, link do mapy oraz własny tekst przycisku.
     - Wskazówki gospodarzy oraz dolny baner rezerwacyjny.
   - **Czas Wolny**:
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

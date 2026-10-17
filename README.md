# Dwa Zdroje — Strona Rezerwacji Bezpośrednich (GitHub Pages)

Repozytorium statycznej strony WWW dla obiektów noclegowych firmy **Dwa Zdroje**:
1. **Dulakówka – Domek na każdą pogodę** (Piwniczna-Zdrój)
2. **Apartament w Alejce** (Rabka-Zdrój)

Adres docelowy: **https://dwazdroje.dulaq.eu**  
Hosting: **GitHub Pages** (100% darmowy, SSL, CDN, zero reklam)

---

## 🚀 Jak wdrożyć repozytorium na GitHub Pages (Krok po kroku)

### Krok 1: Utworzenie repozytorium na GitHubie
1. Zaloguj się na swoje konto na GitHubie.
2. Utwórz nowe publiczne (lub prywatne) repozytorium o nazwie np. `dwa-zdroje-web`.
3. Na swoim komputerze w katalogu tego projektu wykonaj:
```bash
cd /home/jarek/projects/ghostshift/dwa-zdroje-web
git init
git add .
git commit -m "Initial commit: Dwa Zdroje direct booking landing page"
git branch -M main
git remote add origin https://github.com/<twoj-login-github>/dwa-zdroje-web.git
git push -u origin main
```

---

### Krok 2: Włączenie GitHub Pages
1. W repozytorium na GitHubie przejdź do zakładki **Settings** ➔ **Pages** (w menu po lewej stronie).
2. W sekcji **Build and deployment**:
   * **Source:** wybierz `Deploy from a branch`
   * **Branch:** wybierz `main` oraz folder `/(root)`, a następnie kliknij **Save**.
3. W sekcji **Custom domain**:
   * Wpisz: `dwazdroje.dulaq.eu`
   * Kliknij **Save** (plik `CNAME` w repozytorium już istnieje i zapewni utrwalenie tej konfiguracji).
   * Zaznacz opcję **Enforce HTTPS** (zostanie ona aktywowana w ciągu kilkunastu minut po rozpropagowaniu DNS z OVH).

---

### Krok 3: Konfiguracja subdomeny `dwazdroje` w panelu OVH (dulaq.eu)

Aby subdomena wskazywała na Twoje GitHub Pages:

1. Zaloguj się do **Panelu Klienta OVH** (ovh.com).
2. W menu po lewej stronie przejdź do **Domeny** ➔ wybierz **`dulaq.eu`**.
3. Kliknij zakładkę **Strefa DNS** (*DNS Zone*).
4. Kliknij przycisk **Dodaj wpis** (*Add an entry*):
   * **Typ rekordu:** wybierz **`CNAME`**
   * **Subdomena (*Subdomain*):** wpisz `dwazdroje`
   * **Wartość docelowa (*Target*):** wpisz `<twoj-login-github>.github.io.` *(pamiętaj o kropce na końcu w OVH, np. `jarekdulak.github.io.`)*
   * **TTL:** pozostaw domyślne (np. standardowe lub 3600)
   * Kliknij **Dalej** i **Zatwierdź**.

> **Czas propagacji:** Wpis DNS rozpropaguje się zazwyczaj w ciągu 15–60 minut. Po tym czasie adres `https://dwazdroje.dulaq.eu` będzie serwował stronę bezpośrednio z GitHuba z darmowym certyfikatem Let's Encrypt wygenerowanym przez GitHub Pages.

---

## 🧩 Wklejenie Widgetu RoomAdmin (`roomadmin.pl`)

Gdy siostra podeśle wygenerowany w panelu RoomAdmin kod widgetu rezerwacji dla obu obiektów:
1. Otwórz plik `index.html`.
2. Znajdź sekcję oznaczoną komentarzem:
   `<!-- MIEJSCE NA DEDYKOWANY WIDGET ROOMADMIN -->`
3. Wklej dostarczony kod HTML/JavaScript wewnątrz kontenera `id="roomadmin-widget-container"`.
4. Wykonaj `git commit -am "Podpięcie widgetu RoomAdmin" && git push` — strona zaktualizuje się automatycznie w ciągu 30 sekund.

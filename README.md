# My-MySQL

## Opis projekta
Projekat sadrži SQL skripte za kreiranje i upravljanje bazom podataka za sistem rezervacija vozila.

---

## Struktura baze podataka

### Tabele
1. **admins**:
   - Služi za čuvanje administratorskih naloga.
   - Kolone: `id`, `username`, `password_hash`, `email`, `created_at`.

2. **vehicle_types**:
   - Sadrži tipove vozila (npr. kombi, mini bus, autobus).
   - Kolone: `id`, `type_name`, `description`, `price`.

3. **time_slots**:
   - Vremenski slotovi za prevoz.
   - Kolone: `id`, `start_time`, `end_time`, `type`, `status`.

4. **reservations**:
   - Čuva podatke o rezervacijama.
   - Kolone: `id`, `time_slot_id`, `reservation_date`, `user_name`, `country`, itd.

---

## Inicijalizacija baze

1. **Kreiranje tabela**:
   - Pokrenite `create_tables.sql` kako biste kreirali sve potrebne tabele.
   ```bash
   mysql -u root -p my_mysql < database/create_tables.sql
   ```

2. **Dodavanje inicijalnih podataka**:
   - Pokrenite `seed_data.sql` kako biste ubacili default podatke u bazu.
   ```bash
   mysql -u root -p my_mysql < database/seed_data.sql
   ```

---

## Procedura

### Dodavanje administratorskog naloga
U fajlu `seed_data.sql` dodali smo default administratorski nalog:
- **Korisničko ime**: `admin`
- **Lozinka**: `secure_password`
- **E-mail**: `admin@example.com`

### SQL procedure
1. **AddReservation**:
   - Dodaje novu rezervaciju za određeni vremenski slot.
2. **CheckTimeSlotAvailability**:
   - Proverava dostupnost vremenskog slota.
3. **UpdateAvailableParking**:
   - Ažurira broj dostupnih parking mesta.

---

## Šema baze podataka

Vizuelni prikaz šeme baze podataka dostupan je u PDF formatu:
[Preuzmi šemu baze podataka (PDF)](docs/database_schema.pdf)

## Autor
GORAN GRBOVIĆ 

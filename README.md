# My-MySQL

## Opis projekta
Projekat sadrži SQL skripte za kreiranje i upravljanje bazom podataka za sistem rezervacija vozila, uključujući vremenske slotove, tipove vozila i rezervacije.

---

## Struktura baze podataka

### Tabele

1. **admins**:
   - Služi za čuvanje administratorskih naloga.
   - **Kolone**: `id`, `username`, `password_hash`, `email`, `created_at`.

2. **vehicle_types**:
   - Sadrži tipove vozila (npr. kombi, mini bus, autobus).
   - **Kolone**: `id`, `type_name`, `description`, `price`.

3. **time_slots**:
   - Vremenski slotovi za prevoz.
   - **Kolone**: `id`, `start_time`, `end_time`, `slot_type`, `status`.

4. **reservations**:
   - Čuva podatke o rezervacijama.
   - **Kolone**: `id`, `time_slot_id`, `reservation_date`, `company_name`, `country`, `license_plate`, `email`, `is_data_accurate`, `is_terms_accepted`, `payment_method`, `payment_status`.

---

## Inicijalizacija baze

1. **Kreiranje tabela**:
   - Pokrenite `create_tables.sql` kako biste kreirali sve potrebne tabele:
   ```bash
   mysql -u root -p my_mysql < database/create_tables.sql
   ```

2. **Dodavanje inicijalnih podataka**:
   - Pokrenite `seed_data.sql` kako biste ubacili default podatke u bazu:
   ```bash
   mysql -u root -p my_mysql < database/seed_data.sql
   ```

3. **Ažuriranje baze**:
   - Sve naknadne izmene baze nalaze se u fajlu `update_base.sql`:
   ```bash
   mysql -u root -p my_mysql < database/update_base.sql
   ```

---

## API Dokumentacija

### 1. Kreiranje rezervacije

**Endpoint**: `/api/reservations/create`  
**Metoda**: `POST`  
**Opis**: Kreira novu rezervaciju sa unetim podacima.

**Podaci za slanje:**
```json
{
  "company_name": "Naziv firme",
  "country": "Država",
  "license_plate": "Registarske oznake",
  "email": "email@primer.com",
  "unloading_slot_id": 1,
  "loading_slot_id": 2,
  "is_data_accurate": true,
  "is_terms_accepted": true
}
```

**Odgovor**:
- **200 OK**: Rezervacija je uspešno kreirana.
- **400 Bad Request**: Nedostaju potrebni podaci ili su podaci nevalidni.

---

### 2. Plaćanje rezervacije

**Endpoint**: `/api/reservations/pay`  
**Metoda**: `POST`  
**Opis**: Obradjuje plaćanje za rezervaciju.

**Podaci za slanje:**
```json
{
  "reservation_id": 123,
  "payment_method": "credit_card"
}
```

**Odgovor**:
- **200 OK**: Plaćanje je uspešno.
- **400 Bad Request**: Greška u podacima za plaćanje.
- **402 Payment Required**: Plaćanje nije uspelo.

---

### 3. Slanje potvrde e-mailom

**Endpoint**: `/api/reservations/confirm`  
**Metoda**: `POST`  
**Opis**: Šalje potvrdu rezervacije na unetu e-mail adresu.

**Podaci za slanje:**
```json
{
  "reservation_id": 123
}
```

**Odgovor**:
- **200 OK**: Potvrda je poslata.
- **404 Not Found**: Rezervacija nije pronađena.

---

## Autor
GORAN GRBOVIĆ
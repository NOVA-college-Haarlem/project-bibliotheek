# Project Bibliotheek

Dit project draait een PHP-webapplicatie met MariaDB, phpMyAdmin en Mailpit via Docker Compose.

## Voor Studenten

1. Open deze repository op GitHub (https://github.com/NOVA-college-Haarlem/project-bibliotheek) en klik rechtsboven op de knop Fork.
2. Bevestig de standaardinstellingen om de fork in je eigen GitHub-account aan te maken.
3. Open daarna jouw fork, klik op de groene knop Code en kopieer het repository-adres (HTTPS).
4. Clone jouw fork naar je lokale omgeving (in de map "Projecten" op je C-schijf) met:

	```bash
	git clone <gekopieerde-repository-url>
	```

## Services

- Webapp: http://localhost
- phpMyAdmin: http://localhost:8000

## Databaseconfiguratie

De connectie met de database is geconfigureerd in `www/database.php`.

## Eerste keer opstarten

1. Start alle containers:

	```bash
	docker compose up -d
	```

2. Open phpMyAdmin via http://localhost:8000.
3. Log in (bijvoorbeeld met `user` / `password`, of met root-gegevens).
4. Selecteer de database `bibliotheek`.
5. Importeer en voer het SQL-bestand `sql/boeken.sql` uit.

Na deze import is de tabel `boeken` beschikbaar en gevuld met voorbeelddata.

## Import Controleren

Voer na het importeren van `sql/boeken.sql` deze query uit in phpMyAdmin (tab SQL):

```sql
SELECT COUNT(*) AS aantal_boeken FROM boeken;
```

Verwacht resultaat:

- `aantal_boeken` moet `20` zijn

## Dagelijks Gebruik

- Start services: `docker compose up -d`
- Stop services: `docker compose down`


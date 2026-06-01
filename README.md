# Project Bibliotheek - Docker Configuratie

Dit project draait een PHP-webapplicatie met MariaDB, phpMyAdmin en Mailpit via Docker Compose.

## Diensten

- Webapp: http://localhost
- MariaDB: interne host `mariadb` op poort `3306` (hostpoort `3307`)
- phpMyAdmin: http://localhost:8000
- Mailpit: http://localhost:8025

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

- Start diensten: `docker compose up -d`
- Stop diensten: `docker compose down`


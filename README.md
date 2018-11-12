offsh-postgres
==============
Bash scripts to automate Postgres.

## user_db.bash

Usage:
```bash
export $(./user_db.bash 'rest_user' 'rest_pass' 'localhost' 'rest_api_db')
psql "$RDBMS_URI"
```

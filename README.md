offsh-postgres
==============
[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech)
[![License](https://img.shields.io/badge/license-Apache--2.0%20OR%20MIT-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Bash scripts to automate Postgres.

## user_db.bash

Usage:
```bash
export $(./user_db.bash 'rest_user' 'rest_pass' 'localhost' 'rest_api_db')
psql "$RDBMS_URI"
```

## License

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or <https://www.apache.org/licenses/LICENSE-2.0>)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or <https://opensource.org/licenses/MIT>)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.
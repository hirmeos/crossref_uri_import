# Crossref URI importer
[![Build Status](https://travis-ci.org/hirmeos/crossref_uri_import.svg?branch=master)](https://travis-ci.org/hirmeos/crossref_uri_import) [![Release](https://img.shields.io/github/release/hirmeos/crossref_uri_import.svg?colorB=58839b)](https://github.com/hirmeos/crossref_uri_import/releases) [![License](https://img.shields.io/github/license/hirmeos/crossref_uri_import.svg?colorB=ff0000)](https://github.com/hirmeos/crossref_uri_import/blob/master/LICENSE)


Find identifiers in Crossref and submit them to the identifier translation service if they are missing.

## Run via crontab
```
0 13,21 * * * docker run --rm --name "uri_importer" --env-file /path/to/config.env openbookpublishers/crossref_uri_import
```

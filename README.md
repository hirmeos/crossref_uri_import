# OBP Crossref chapter import

Find missing chapters and/or chapter identifiers in Crossref and submit new findings to the identifier translation service.

## Run via crontab
```
0 13,21 * * * docker run --rm --name "chapter_importer" --env-file /path/to/config.env openbookpublishers/obp_crossref_chapter_import
```

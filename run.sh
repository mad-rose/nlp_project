export PGPASSWORD='nlpproj'
createdb -U nlpprojectuser -h localhost dbliscu
psql -U nlpprojectuser -h localhost dbliscu -f database/create_tables.sql
cd scraper
scrapy crawl wayback_lit
scrapy crawl wayback_char
cd ..
python3 main.py
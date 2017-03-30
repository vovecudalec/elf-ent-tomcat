#!/bin/bash

# Создаем бд file_storage если ее нет
psql -U postgres -tc "SELECT 1 FROM pg_database WHERE datname = 'reporting'" | grep -q 1 || psql -U postgres -c "CREATE DATABASE reporting"

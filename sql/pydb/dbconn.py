#!/usr/bin/python2
import psycopg2

conn = psycopg2.connect("dbname=itemhut user=postgres")

cur = conn.cursor()

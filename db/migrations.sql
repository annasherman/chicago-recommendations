CREATE DATABASE chicago_recommendations;
\c chicago_recommendations
CREATE TABLE recommendations (id SERIAL PRIMARY KEY, contributor TEXT, place TEXT, notes TEXT, type_of_place TEXT);
